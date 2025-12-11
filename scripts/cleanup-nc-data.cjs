/**
 * Cleanup NC Cities Data
 *
 * Filters out malformed entries and fixes data issues
 */

const fs = require('fs');
const path = require('path');

const INPUT_FILE = path.join(__dirname, '..', 'data', 'nc-cities-cleaned.json');
const OUTPUT_JSON = path.join(__dirname, '..', 'data', 'nc-cities-final.json');
const OUTPUT_SQL = path.join(__dirname, '..', 'data', 'nc-cities-import.sql');

// Load data
const vendors = JSON.parse(fs.readFileSync(INPUT_FILE, 'utf8'));
console.log(`Loaded ${vendors.length} vendors\n`);

// Filter criteria for bad entries
const badNamePatterns = [
  /^make your/i,
  /^contact us/i,
  /^events$/i,
  /^rentals\b/i,  // Starts with "rentals"
  /^rentals providing/i,
  /^discover our/i,
  /^phone \d/i,
  /^eastern north carolina/i,
  /^carolina\. our/i,
  /^nc counties/i,
  /^foothills restrooms serves/i,
  /^container service/i,
  /^\d+-\d+-\d+/,  // Phone numbers as names
  /^chapel hill$/i,
  /comfortabl/i,
  /^a north carolina/i,
  /^licensed\s*&/i,
  /^mailing address/i,
  /^\d+\s+old\s+/i,  // Addresses like "1224 Old Lystra Road"
  /^\d+\s+miller/i,  // "77016 Miller"
  /^greenebros@/i,  // Email as name
  /@gmail\.com/i,  // Any email
  /business hours:/i,
  /^harbor freight$/i,
  /^the plush flush\./i,  // The bad one with junk after
  /^foothills restrooms on/i,
  /^booking to pickup/i,
];

// Valid business name check
function isValidBusinessName(name) {
  if (!name || name.length < 3 || name.length > 100) return false;
  for (const pattern of badNamePatterns) {
    if (pattern.test(name)) return false;
  }
  // Must have at least one letter
  if (!/[a-zA-Z]/.test(name)) return false;
  return true;
}

// Valid website check
function isValidWebsite(url) {
  if (!url) return true; // null is ok
  if (url.length > 200) return false;
  if (!url.startsWith('https://')) return false;
  // Must have a proper domain
  try {
    const parsed = new URL(url);
    if (!parsed.hostname.includes('.')) return false;
    return true;
  } catch (e) {
    return false;
  }
}

// City corrections
const CITY_CORRECTIONS = {
  'Winston-salem': 'Winston-Salem',
  'High point': 'High Point',
  'Mount airy': 'Mount Airy',
  'Rocky mount': 'Rocky Mount',
  'Chapel hill': 'Chapel Hill',
  'Fuquay-varina': 'Fuquay-Varina',
  'Boiling springs': 'Boiling Springs',
};

// Filter and clean
const cleaned = [];
const removed = [];

for (const v of vendors) {
  // Check for bad entries
  if (!isValidBusinessName(v.business_name)) {
    removed.push({ reason: 'bad name', name: v.business_name });
    continue;
  }

  if (!isValidWebsite(v.website)) {
    // Try to fix or remove bad website
    v.website = null;
  }

  // Fix city names
  if (CITY_CORRECTIONS[v.city]) {
    v.city = CITY_CORRECTIONS[v.city];
  }

  // Filter out placeholder emails
  if (v.email) {
    const badEmails = ['your@email.com', 'user@domain.com', 'filler@godaddy.com'];
    if (badEmails.includes(v.email)) {
      v.email = null;
    }
    v.all_emails = v.all_emails?.filter(e => !badEmails.includes(e)) || [];
  }

  // Filter out personal emails from all_emails (but they were already filtered in enrich)
  // Just remove empty all_emails
  if (!v.all_emails || v.all_emails.length === 0) {
    delete v.all_emails;
  }

  // If city is Unknown but we have lat/lng, try to infer
  if (v.city === 'Unknown' && v.latitude && v.longitude) {
    const inferred = inferCityFromCoords(v.latitude, v.longitude);
    if (inferred) v.city = inferred;
  }

  // Keep vendors even with Unknown city - but log them
  cleaned.push(v);
}

function inferCityFromCoords(lat, lng) {
  const CITY_COORDINATES = {
    'Monroe': { lat: 34.9854, lng: -80.5495 },
    'Gastonia': { lat: 35.2621, lng: -81.1873 },
    'Charlotte': { lat: 35.2271, lng: -80.8431 },
    'Greensboro': { lat: 36.0726, lng: -79.7920 },
    'Raleigh': { lat: 35.7796, lng: -78.6382 },
    'Durham': { lat: 35.9940, lng: -78.8986 },
    'Winston-Salem': { lat: 36.0999, lng: -80.2442 },
    'Fayetteville': { lat: 35.0527, lng: -78.8784 },
    'Wilmington': { lat: 34.2257, lng: -77.9447 },
    'Asheville': { lat: 35.5951, lng: -82.5515 },
    'Hickory': { lat: 35.7332, lng: -81.3412 },
    'Mooresville': { lat: 35.5849, lng: -80.8101 },
    'Concord': { lat: 35.4088, lng: -80.5795 },
    'Kannapolis': { lat: 35.4874, lng: -80.6217 },
    'Statesville': { lat: 35.7826, lng: -80.8873 },
    'High Point': { lat: 35.9557, lng: -80.0053 },
    'Burlington': { lat: 36.0957, lng: -79.4378 },
    'Cary': { lat: 35.7915, lng: -78.7811 },
    'Apex': { lat: 35.7327, lng: -78.8503 },
  };

  let nearestCity = null;
  let minDistance = Infinity;

  for (const [city, coords] of Object.entries(CITY_COORDINATES)) {
    const distance = Math.sqrt(
      Math.pow(lat - coords.lat, 2) + Math.pow(lng - coords.lng, 2)
    );
    if (distance < minDistance) {
      minDistance = distance;
      nearestCity = city;
    }
  }

  // Only assign if within ~20 miles (0.3 degrees roughly)
  if (minDistance <= 0.3) return nearestCity;
  return null;
}

console.log(`Removed ${removed.length} bad entries:`);
removed.forEach(r => console.log(`  - ${r.reason}: "${r.name?.substring(0, 50)}..."`));

console.log(`\nCleaned to ${cleaned.length} vendors`);
console.log(`  With phone: ${cleaned.filter(v => v.phone).length}`);
console.log(`  With email: ${cleaned.filter(v => v.email).length}`);
console.log(`  With website: ${cleaned.filter(v => v.website).length}`);
console.log(`  Unknown city: ${cleaned.filter(v => v.city === 'Unknown').length}`);

// Remove all_emails from final output (it was just for debugging)
const finalOutput = cleaned.map(v => {
  const { all_emails, ...rest } = v;
  return rest;
});

// Save JSON
fs.writeFileSync(OUTPUT_JSON, JSON.stringify(finalOutput, null, 2));
console.log(`\nWrote: ${OUTPUT_JSON}`);

// Generate SQL with UPSERT
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
-- Uses UPSERT to avoid duplicates

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

fs.writeFileSync(OUTPUT_SQL, generateSQL(finalOutput));
console.log(`Wrote: ${OUTPUT_SQL}`);

// Show vendors with Unknown city for manual review
const unknownCity = cleaned.filter(v => v.city === 'Unknown');
if (unknownCity.length > 0) {
  console.log(`\n--- Vendors with Unknown city (${unknownCity.length}) ---`);
  unknownCity.forEach(v => {
    console.log(`  ${v.business_name} | lat: ${v.latitude}, lng: ${v.longitude}`);
  });
}

console.log('\nDone!');
