/**
 * NC Cities Data Enrichment Script
 *
 * Processes Outscraper CSV data:
 * 1. Deduplicates businesses (merges contact info from multiple rows)
 * 2. Validates phone/email formats
 * 3. Scrapes websites to fill missing contact info
 * 4. Outputs cleaned JSON and SQL for Supabase import
 *
 * Usage:
 *   node scripts/enrich-nc-cities.cjs
 */

const fs = require('fs');
const path = require('path');
const https = require('https');
const http = require('http');

// ============================================
// CONFIGURATION
// ============================================

const INPUT_FILE = path.join(__dirname, '..', 'data', 'OutscraperNCCITIES - Sheet1.csv');
const OUTPUT_JSON = path.join(__dirname, '..', 'data', 'nc-cities-cleaned.json');
const OUTPUT_SQL = path.join(__dirname, '..', 'data', 'nc-cities-import.sql');
const ENRICH_LOG = path.join(__dirname, '..', 'data', 'enrichment-log.json');

const DEFAULT_SERVICES = ['Standard Units', 'Portable Restrooms'];

// Known NC city coordinates for inference
const CITY_COORDINATES = {
  'Asheville': { lat: 35.5951, lng: -82.5515 },
  'Apex': { lat: 35.7327, lng: -78.8503 },
  'Asheboro': { lat: 35.7079, lng: -79.8136 },
  'Burlington': { lat: 36.0957, lng: -79.4378 },
  'Cary': { lat: 35.7915, lng: -78.7811 },
  'Charlotte': { lat: 35.2271, lng: -80.8431 },
  'Concord': { lat: 35.4088, lng: -80.5795 },
  'Denver': { lat: 35.5318, lng: -81.0298 },
  'Durham': { lat: 35.9940, lng: -78.8986 },
  'Fayetteville': { lat: 35.0527, lng: -78.8784 },
  'Fletcher': { lat: 35.4307, lng: -82.5012 },
  'Gastonia': { lat: 35.2621, lng: -81.1873 },
  'Graham': { lat: 36.0690, lng: -79.4006 },
  'Greensboro': { lat: 36.0726, lng: -79.7920 },
  'Greenville': { lat: 35.6127, lng: -77.3664 },
  'Hendersonville': { lat: 35.3187, lng: -82.4612 },
  'Hickory': { lat: 35.7332, lng: -81.3412 },
  'High Point': { lat: 35.9557, lng: -80.0053 },
  'Jacksonville': { lat: 34.7541, lng: -77.4302 },
  'King': { lat: 36.2807, lng: -80.3592 },
  'Kannapolis': { lat: 35.4874, lng: -80.6217 },
  'Lenoir': { lat: 35.9140, lng: -81.5387 },
  'Lexington': { lat: 35.8240, lng: -80.2534 },
  'Mebane': { lat: 36.0960, lng: -79.2670 },
  'Monroe': { lat: 34.9854, lng: -80.5495 },
  'Mooresville': { lat: 35.5849, lng: -80.8101 },
  'Mount Airy': { lat: 36.4993, lng: -80.6073 },
  'Raleigh': { lat: 35.7796, lng: -78.6382 },
  'Rocky Mount': { lat: 35.9382, lng: -77.7905 },
  'Salisbury': { lat: 35.6710, lng: -80.4742 },
  'Sanford': { lat: 35.4799, lng: -79.1803 },
  'Smithfield': { lat: 35.5085, lng: -78.3394 },
  'Statesville': { lat: 35.7826, lng: -80.8873 },
  'Sylva': { lat: 35.3734, lng: -83.2260 },
  'Wilmington': { lat: 34.2257, lng: -77.9447 },
  'Winston-Salem': { lat: 36.0999, lng: -80.2442 },
};

// ============================================
// UTILITY FUNCTIONS
// ============================================

function parseCSV(content) {
  const lines = content.split('\n');
  const headers = parseCSVLine(lines[0]);
  const records = [];

  for (let i = 1; i < lines.length; i++) {
    if (!lines[i].trim()) continue;
    const values = parseCSVLine(lines[i]);
    const record = {};
    headers.forEach((header, idx) => {
      record[header] = values[idx] || '';
    });
    records.push(record);
  }
  return records;
}

function parseCSVLine(line) {
  const result = [];
  let current = '';
  let inQuotes = false;

  for (let i = 0; i < line.length; i++) {
    const char = line[i];
    if (char === '"') {
      if (inQuotes && line[i + 1] === '"') {
        current += '"';
        i++;
      } else {
        inQuotes = !inQuotes;
      }
    } else if (char === ',' && !inQuotes) {
      result.push(current.trim());
      current = '';
    } else {
      current += char;
    }
  }
  result.push(current.trim());
  return result;
}

function normalizePhone(phone) {
  if (!phone) return null;
  const digits = phone.replace(/\D/g, '');
  const cleaned = digits.length === 11 && digits.startsWith('1') ? digits.slice(1) : digits;
  if (cleaned.length !== 10) return null;
  return `(${cleaned.slice(0, 3)}) ${cleaned.slice(3, 6)}-${cleaned.slice(6)}`;
}

function isValidEmail(email) {
  if (!email) return false;
  // Filter out personal emails (gmail, hotmail, yahoo, etc.) - we want business emails
  const personalDomains = ['gmail.com', 'yahoo.com', 'hotmail.com', 'outlook.com', 'aol.com', 'icloud.com', 'att.net', 'cox.net', 'msn.com', 'rr.com'];
  const domain = email.split('@')[1]?.toLowerCase();
  if (personalDomains.some(pd => domain?.includes(pd))) return false;
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}

function generateSlug(name) {
  return name
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/(^-|-$)/g, '');
}

function titleCase(str) {
  if (!str) return '';
  return str.toLowerCase().split(' ').map(w => w.charAt(0).toUpperCase() + w.slice(1)).join(' ');
}

function cleanWebsite(url) {
  if (!url) return null;
  let cleaned = url.trim();
  // Remove tracking params
  cleaned = cleaned.split('?')[0];
  // Remove URL encoding
  try {
    cleaned = decodeURIComponent(cleaned);
  } catch (e) {}
  if (!cleaned.startsWith('http://') && !cleaned.startsWith('https://')) {
    cleaned = 'https://' + cleaned;
  }
  cleaned = cleaned.replace('http://', 'https://');
  return cleaned;
}

function haversineDistance(lat1, lon1, lat2, lon2) {
  const R = 3959;
  const dLat = (lat2 - lat1) * Math.PI / 180;
  const dLon = (lon2 - lon1) * Math.PI / 180;
  const a = Math.sin(dLat/2) * Math.sin(dLat/2) +
            Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
            Math.sin(dLon/2) * Math.sin(dLon/2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
  return R * c;
}

function inferCity(row) {
  // First try the city field
  if (row.city && row.city.trim()) {
    return titleCase(row.city.trim());
  }

  // Try business name
  const name = row.name || '';
  for (const city of Object.keys(CITY_COORDINATES)) {
    if (name.toLowerCase().includes(city.toLowerCase())) {
      return city;
    }
  }

  // Use coordinates
  const lat = parseFloat(row.latitude);
  const lng = parseFloat(row.longitude);
  if (!isNaN(lat) && !isNaN(lng)) {
    let nearestCity = null;
    let minDistance = Infinity;
    for (const [city, coords] of Object.entries(CITY_COORDINATES)) {
      const distance = haversineDistance(lat, lng, coords.lat, coords.lng);
      if (distance < minDistance) {
        minDistance = distance;
        nearestCity = city;
      }
    }
    if (minDistance <= 30) return nearestCity;
  }

  return 'Unknown';
}

function parseHours(hoursStr) {
  if (!hoursStr) return null;
  try {
    return JSON.parse(hoursStr);
  } catch (e) {
    return null;
  }
}

// ============================================
// WEB SCRAPING FUNCTIONS
// ============================================

function fetchPage(url, timeout = 10000) {
  return new Promise((resolve, reject) => {
    const protocol = url.startsWith('https') ? https : http;
    const req = protocol.get(url, {
      timeout,
      headers: {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36'
      }
    }, (res) => {
      // Handle redirects
      if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
        let redirectUrl = res.headers.location;
        if (!redirectUrl.startsWith('http')) {
          const urlObj = new URL(url);
          redirectUrl = urlObj.origin + redirectUrl;
        }
        return fetchPage(redirectUrl, timeout).then(resolve).catch(reject);
      }

      if (res.statusCode !== 200) {
        reject(new Error(`HTTP ${res.statusCode}`));
        return;
      }

      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => resolve(data));
    });

    req.on('error', reject);
    req.on('timeout', () => {
      req.destroy();
      reject(new Error('Timeout'));
    });
  });
}

function extractContactInfo(html, domain) {
  const result = { phones: [], emails: [] };

  // Extract phone numbers (US format)
  const phoneRegex = /(?:\+?1[-.\s]?)?(?:\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}/g;
  const phoneMatches = html.match(phoneRegex) || [];
  for (const match of phoneMatches) {
    const normalized = normalizePhone(match);
    if (normalized && !result.phones.includes(normalized)) {
      result.phones.push(normalized);
    }
  }

  // Extract emails
  const emailRegex = /[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/g;
  const emailMatches = html.match(emailRegex) || [];
  for (const match of emailMatches) {
    const email = match.toLowerCase();
    // Prefer emails matching the domain
    if (domain && email.includes(domain.replace('www.', '').split('.')[0])) {
      if (!result.emails.includes(email)) {
        result.emails.unshift(email); // Add to front
      }
    } else if (isValidEmail(email) && !result.emails.includes(email)) {
      result.emails.push(email);
    }
  }

  return result;
}

async function enrichFromWebsite(vendor) {
  if (!vendor.website) return null;

  try {
    console.log(`  Fetching: ${vendor.website}`);
    const html = await fetchPage(vendor.website);
    const domain = vendor.domain || new URL(vendor.website).hostname;
    const info = extractContactInfo(html, domain);

    // Also try contact page
    const contactUrls = ['/contact', '/contact-us', '/about', '/about-us'];
    for (const contactPath of contactUrls) {
      try {
        const contactUrl = vendor.website.replace(/\/$/, '') + contactPath;
        const contactHtml = await fetchPage(contactUrl);
        const contactInfo = extractContactInfo(contactHtml, domain);
        info.phones.push(...contactInfo.phones.filter(p => !info.phones.includes(p)));
        info.emails.push(...contactInfo.emails.filter(e => !info.emails.includes(e)));
      } catch (e) {
        // Contact page doesn't exist, that's fine
      }
    }

    return info;
  } catch (err) {
    console.log(`  Failed: ${err.message}`);
    return null;
  }
}

// ============================================
// MAIN PROCESSING
// ============================================

async function main() {
  console.log('\n=== NC Cities Data Enrichment ===\n');

  // Read CSV
  console.log('Reading CSV...');
  const csvContent = fs.readFileSync(INPUT_FILE, 'utf8');
  const rawRecords = parseCSV(csvContent);
  console.log(`Found ${rawRecords.length} raw records\n`);

  // Step 1: Deduplicate by business
  console.log('Step 1: Deduplicating businesses...');
  const businessMap = new Map(); // key: name+phone+lat/lng

  for (const row of rawRecords) {
    if (!row.name) continue;

    const phone = normalizePhone(row.phone);
    const lat = parseFloat(row.latitude) || 0;
    const lng = parseFloat(row.longitude) || 0;

    // Create unique key based on name + location (rounded to avoid float issues)
    const key = `${row.name.toLowerCase().trim()}|${lat.toFixed(3)}|${lng.toFixed(3)}`;

    if (businessMap.has(key)) {
      // Merge emails from this row into existing
      const existing = businessMap.get(key);
      if (row.email && isValidEmail(row.email) && !existing.emails.includes(row.email.toLowerCase())) {
        existing.emails.push(row.email.toLowerCase());
      }
      // Also collect contact emails
      if (row.contact_email && isValidEmail(row.contact_email)) {
        if (!existing.emails.includes(row.contact_email.toLowerCase())) {
          existing.emails.push(row.contact_email.toLowerCase());
        }
      }
    } else {
      // New business
      const emails = [];
      if (row.email && isValidEmail(row.email)) {
        emails.push(row.email.toLowerCase());
      }

      businessMap.set(key, {
        name: row.name.trim(),
        phone: phone,
        website: cleanWebsite(row.site),
        domain: row.domain,
        city: inferCity(row),
        state: 'North Carolina',
        latitude: lat || null,
        longitude: lng || null,
        street_address: row.street ? titleCase(row.street) : null,
        postal_code: row.postal_code || null,
        rating: parseFloat(row.rating) || null,
        review_count: parseInt(row.reviews) || 0,
        photo_url: row.photo || null,
        hours: parseHours(row.working_hours),
        linkedin: row.company_linkedin || null,
        instagram: row.company_instagram || null,
        facebook: row.company_facebook || null,
        emails: emails
      });
    }
  }

  const uniqueBusinesses = Array.from(businessMap.values());
  console.log(`Deduplicated to ${uniqueBusinesses.length} unique businesses\n`);

  // Step 2: Validate and identify gaps
  console.log('Step 2: Validating entries...');
  const needsEnrichment = [];
  const validated = [];

  for (const biz of uniqueBusinesses) {
    const hasPhone = !!biz.phone;
    const hasEmail = biz.emails.length > 0;
    const hasWebsite = !!biz.website;

    if (!hasPhone && hasWebsite) {
      needsEnrichment.push(biz);
    } else if (!hasEmail && hasWebsite) {
      needsEnrichment.push(biz);
    }

    validated.push(biz);
  }

  console.log(`  Valid businesses: ${validated.length}`);
  console.log(`  Need enrichment (have website but missing phone/email): ${needsEnrichment.length}\n`);

  // Step 3: Enrich from websites
  console.log('Step 3: Enriching from websites...');
  const enrichmentResults = [];
  let enriched = 0;

  for (let i = 0; i < needsEnrichment.length; i++) {
    const biz = needsEnrichment[i];
    console.log(`[${i + 1}/${needsEnrichment.length}] ${biz.name}`);

    const info = await enrichFromWebsite(biz);
    if (info) {
      let updated = false;

      // Add phone if missing
      if (!biz.phone && info.phones.length > 0) {
        biz.phone = info.phones[0];
        updated = true;
        console.log(`    + Phone: ${biz.phone}`);
      }

      // Add emails
      for (const email of info.emails) {
        if (!biz.emails.includes(email)) {
          biz.emails.push(email);
          updated = true;
          console.log(`    + Email: ${email}`);
        }
      }

      if (updated) enriched++;
      enrichmentResults.push({ business: biz.name, found: info });
    }

    // Rate limit
    await new Promise(resolve => setTimeout(resolve, 500));
  }

  console.log(`\nEnriched ${enriched} businesses from websites\n`);

  // Save enrichment log
  fs.writeFileSync(ENRICH_LOG, JSON.stringify(enrichmentResults, null, 2));

  // Step 4: Generate final output
  console.log('Step 4: Generating output files...');

  const seenSlugs = new Set();
  const finalVendors = [];

  for (const biz of validated) {
    // Generate unique slug
    let slug = generateSlug(biz.name);
    let slugSuffix = 1;
    while (seenSlugs.has(slug)) {
      slug = `${generateSlug(biz.name)}-${slugSuffix}`;
      slugSuffix++;
    }
    seenSlugs.add(slug);

    finalVendors.push({
      business_name: biz.name,
      city: biz.city,
      state: biz.state,
      phone: biz.phone || '',
      email: biz.emails[0] || null, // Primary email
      website: biz.website,
      services_offered: DEFAULT_SERVICES,
      slug: slug,
      latitude: biz.latitude,
      longitude: biz.longitude,
      street_address: biz.street_address,
      postal_code: biz.postal_code,
      rating: biz.rating,
      review_count: biz.review_count,
      photo_url: biz.photo_url,
      hours: biz.hours,
      linkedin: biz.linkedin,
      instagram: biz.instagram,
      // Store all emails for outreach
      all_emails: biz.emails
    });
  }

  // Write JSON
  fs.writeFileSync(OUTPUT_JSON, JSON.stringify(finalVendors, null, 2));
  console.log(`  Wrote: ${OUTPUT_JSON}`);

  // Write SQL
  const sql = generateSQL(finalVendors);
  fs.writeFileSync(OUTPUT_SQL, sql);
  console.log(`  Wrote: ${OUTPUT_SQL}`);

  // Summary
  console.log(`
========================================
Enrichment Complete!

  Raw records: ${rawRecords.length}
  Unique businesses: ${uniqueBusinesses.length}
  Enriched from web: ${enriched}

  With phone: ${finalVendors.filter(v => v.phone).length}
  With email: ${finalVendors.filter(v => v.email).length}
  With website: ${finalVendors.filter(v => v.website).length}

  Unknown city: ${finalVendors.filter(v => v.city === 'Unknown').length}

Files:
  ${OUTPUT_JSON}
  ${OUTPUT_SQL}
  ${ENRICH_LOG}

Next steps:
  1. Review the JSON file for any issues
  2. Run the SQL in Supabase SQL Editor
========================================
`);
}

function generateSQL(vendors) {
  function escapeString(str) {
    if (str === null || str === undefined) return 'NULL';
    return "'" + String(str).replace(/'/g, "''") + "'";
  }

  function formatValue(val) {
    if (val === null || val === undefined) return 'NULL';
    if (typeof val === 'number') return val;
    if (typeof val === 'boolean') return val;
    return escapeString(val);
  }

  function formatArray(arr) {
    if (!arr || arr.length === 0) return 'NULL';
    return "ARRAY[" + arr.map(escapeString).join(', ') + "]";
  }

  function formatJson(obj) {
    if (!obj || Object.keys(obj).length === 0) return 'NULL';
    return escapeString(JSON.stringify(obj));
  }

  let sql = `-- NC Cities Import - ${vendors.length} vendors
-- Generated: ${new Date().toISOString()}
-- Run this in Supabase SQL Editor

`;

  for (const v of vendors) {
    sql += `INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  ${escapeString(v.business_name)},
  ${escapeString(v.city)},
  ${escapeString(v.state)},
  ${escapeString(v.phone)},
  ${escapeString(v.email)},
  ${escapeString(v.website)},
  ${formatArray(v.services_offered)},
  ${escapeString(v.slug)},
  ${formatValue(v.latitude)},
  ${formatValue(v.longitude)},
  ${escapeString(v.street_address)},
  ${escapeString(v.postal_code)},
  ${formatValue(v.rating)},
  ${formatValue(v.review_count)},
  ${escapeString(v.photo_url)},
  ${formatJson(v.hours)},
  ${escapeString(v.linkedin)},
  ${escapeString(v.instagram)}
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

`;
  }

  return sql;
}

main().catch(console.error);
