/**
 * SC CSV Import Script
 *
 * Processes the Outscraper CSV export for South Carolina vendors
 * Cleans, filters, and generates SQL for Supabase import
 */

const fs = require('fs');
const path = require('path');

const dataDir = path.join(__dirname, '..', 'data');
const csvPath = '/Users/jbm/new-project/directory-factory/outscraper-portable toilet supplier-2025-12-11.csv';

// ============================================
// CSV PARSER (handles quoted fields with commas)
// ============================================

function parseCSV(text) {
  const rows = [];
  let currentRow = [];
  let currentField = '';
  let inQuotes = false;

  for (let i = 0; i < text.length; i++) {
    const char = text[i];

    if (char === '"') {
      if (inQuotes && text[i+1] === '"') {
        currentField += '"';
        i++;
      } else {
        inQuotes = !inQuotes;
      }
    } else if (char === ',' && !inQuotes) {
      currentRow.push(currentField);
      currentField = '';
    } else if (char === '\n' && !inQuotes) {
      currentRow.push(currentField);
      rows.push(currentRow);
      currentRow = [];
      currentField = '';
    } else if (char !== '\r') {
      currentField += char;
    }
  }
  if (currentField || currentRow.length) {
    currentRow.push(currentField);
    rows.push(currentRow);
  }
  return rows;
}

// ============================================
// UTILITY FUNCTIONS
// ============================================

function normalizePhone(phone) {
  if (!phone) return null;
  const digits = phone.replace(/\D/g, '');
  const cleaned = digits.length === 11 && digits.startsWith('1') ? digits.slice(1) : digits;
  if (cleaned.length !== 10) return phone;
  return `(${cleaned.slice(0, 3)}) ${cleaned.slice(3, 6)}-${cleaned.slice(6)}`;
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

  // Remove tracking parameters
  try {
    const urlObj = new URL(cleaned);
    // Keep only the base URL without query params for cleaner display
    cleaned = urlObj.origin + urlObj.pathname;
    // Remove trailing slash
    if (cleaned.endsWith('/')) cleaned = cleaned.slice(0, -1);
  } catch (e) {
    // If URL parsing fails, just clean up basics
    if (!cleaned.startsWith('http')) cleaned = 'https://' + cleaned;
  }

  // Convert http to https
  if (cleaned.startsWith('http://')) {
    cleaned = cleaned.replace('http://', 'https://');
  }

  return cleaned;
}

function escapeString(str) {
  if (str === null || str === undefined) return 'NULL';
  return "'" + String(str).replace(/'/g, "''") + "'";
}

function formatValue(val) {
  if (val === null || val === undefined) return 'NULL';
  if (typeof val === 'number') return val;
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

// Businesses to exclude (national chains, false positives)
const EXCLUDE_NAMES = [
  'container store',
  'home depot',
  'lowes',
  'walmart',
];

const EXCLUDE_STATES = [
  'Connecticut',
  'New York',
];

// ============================================
// MAIN PROCESSING
// ============================================

console.log('📂 Reading CSV:', csvPath);

const content = fs.readFileSync(csvPath, 'utf8');
const rows = parseCSV(content);
const headers = rows[0];
const data = rows.slice(1).filter(r => r.length > 1);

console.log(`Found ${data.length} records\n`);

// Create header index map
const idx = {};
headers.forEach((h, i) => idx[h] = i);

// Load existing vendors to check for duplicates
let existingVendors = [];
const existingPath = path.join(dataDir, 'cleaned-vendors-merged.json');
if (fs.existsSync(existingPath)) {
  existingVendors = JSON.parse(fs.readFileSync(existingPath, 'utf8'));
  console.log(`Loaded ${existingVendors.length} existing vendors for dedup check\n`);
}

const existingPhones = new Set(existingVendors.map(v => v.phone).filter(Boolean));
const existingNames = new Set(existingVendors.map(v => v.business_name.toLowerCase()));

const cleaned = [];
const skipped = [];
const seenSlugs = new Set(existingVendors.map(v => v.slug));
const seenPhones = new Set(existingPhones);

for (const row of data) {
  const name = row[idx['name']] || '';
  const state = row[idx['state']] || '';
  const city = row[idx['city']] || '';
  const phone = row[idx['phone']] || '';
  const site = row[idx['site']] || '';
  const rating = parseFloat(row[idx['rating']]) || null;
  const reviews = parseInt(row[idx['reviews']]) || 0;
  const lat = parseFloat(row[idx['latitude']]) || null;
  const lng = parseFloat(row[idx['longitude']]) || null;
  const address = row[idx['full_address']] || '';
  const postalCode = row[idx['postal_code']] || '';
  const photo = row[idx['photo']] || '';
  const hoursRaw = row[idx['working_hours']] || '';
  const subtypes = row[idx['subtypes']] || '';

  // Skip if excluded state
  if (EXCLUDE_STATES.includes(state)) {
    skipped.push(`${name}: Out of service area (${state})`);
    continue;
  }

  // Skip if excluded business name
  if (EXCLUDE_NAMES.some(ex => name.toLowerCase().includes(ex))) {
    skipped.push(`${name}: Excluded business type`);
    continue;
  }

  // Skip if no state (unless it's a known SC business)
  if (!state && !city) {
    skipped.push(`${name}: No state/city info`);
    continue;
  }

  // Normalize phone
  const normalizedPhone = normalizePhone(phone);

  // Check for duplicate phone
  if (normalizedPhone && seenPhones.has(normalizedPhone)) {
    skipped.push(`${name}: Duplicate phone ${normalizedPhone}`);
    continue;
  }

  // Check for duplicate name
  if (existingNames.has(name.toLowerCase())) {
    skipped.push(`${name}: Already exists in database`);
    continue;
  }

  // Generate unique slug
  let slug = generateSlug(name);
  let slugSuffix = 1;
  while (seenSlugs.has(slug)) {
    slug = `${generateSlug(name)}-${slugSuffix}`;
    slugSuffix++;
  }
  seenSlugs.add(slug);
  if (normalizedPhone) seenPhones.add(normalizedPhone);

  // Parse hours
  let hours = null;
  if (hoursRaw) {
    try {
      hours = JSON.parse(hoursRaw.replace(/""/g, '"'));
    } catch (e) {
      // Ignore parse errors
    }
  }

  // Determine services from subtypes
  const services = ['Standard Units', 'Portable Restrooms'];
  if (subtypes.toLowerCase().includes('trailer')) {
    services.push('Restroom Trailers');
  }
  if (subtypes.toLowerCase().includes('event')) {
    services.push('Event Rentals');
  }
  if (subtypes.toLowerCase().includes('septic')) {
    services.push('Septic Services');
  }

  const vendor = {
    business_name: name.trim(),
    city: titleCase(city) || 'Unknown',
    state: state || 'South Carolina',
    phone: normalizedPhone || '',
    email: null,
    website: cleanWebsite(site),
    services_offered: services,
    slug: slug,
    latitude: lat,
    longitude: lng,
    street_address: address || null,
    postal_code: postalCode || null,
    rating: rating,
    review_count: reviews,
    photo_url: photo || null,
    hours: hours,
    linkedin: null,
    instagram: null,
  };

  cleaned.push(vendor);
  console.log(`✅ ${vendor.business_name} (${vendor.city}, ${vendor.state})`);
}

console.log(`\n⚠️  Skipped ${skipped.length} records:`);
skipped.forEach(s => console.log(`   - ${s}`));

// Save cleaned JSON
const jsonPath = path.join(dataDir, 'cleaned-vendors-sc.json');
fs.writeFileSync(jsonPath, JSON.stringify(cleaned, null, 2));
console.log(`\n📄 Saved: ${jsonPath}`);

// Generate SQL
let sql = `-- SC Import - ${cleaned.length} vendors
-- Generated: ${new Date().toISOString()}
-- Run this in Supabase SQL Editor

`;

cleaned.forEach(v => {
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
ON CONFLICT (slug) DO NOTHING;

`;
});

const sqlPath = path.join(dataDir, 'import-sc.sql');
fs.writeFileSync(sqlPath, sql);
console.log(`📄 Saved: ${sqlPath}`);

console.log(`
========================================
✅ Import preparation complete!

   New SC vendors: ${cleaned.length}
   Skipped: ${skipped.length}

Next steps:
1. Review ${jsonPath}
2. Run SQL in Supabase: ${sqlPath}
3. Rebuild site: npm run build
========================================
`);
