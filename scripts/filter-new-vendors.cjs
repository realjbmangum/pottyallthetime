/**
 * Filter New Vendors
 *
 * 1. Removes retail stores and non-porta potty businesses
 * 2. Removes duplicates already in NC2
 * 3. Generates SQL for only new, legitimate vendors
 */

const fs = require('fs');
const path = require('path');

const NC_CITIES_FILE = path.join(__dirname, '..', 'data', 'nc-cities-final.json');
const NC2_FILE = path.join(__dirname, '..', 'data', 'cleaned-vendors-nc2.json');
const OUTPUT_JSON = path.join(__dirname, '..', 'data', 'new-vendors-only.json');
const OUTPUT_SQL = path.join(__dirname, '..', 'data', 'new-vendors-import.sql');

// Load data
const ncCities = JSON.parse(fs.readFileSync(NC_CITIES_FILE, 'utf8'));
const nc2 = JSON.parse(fs.readFileSync(NC2_FILE, 'utf8'));

console.log(`Loaded NC Cities: ${ncCities.length} vendors`);
console.log(`Loaded NC2: ${nc2.length} vendors\n`);

// Build NC2 lookup sets
const nc2Names = new Set(nc2.map(v => v.business_name.toLowerCase().trim()));
const nc2Phones = new Set(nc2.filter(v => v.phone).map(v => v.phone));
const nc2Slugs = new Set(nc2.map(v => v.slug));

// Retail stores and non-porta potty businesses to filter out
const retailPatterns = [
  /lowe'?s/i,
  /home depot/i,
  /kohl'?s/i,
  /sam'?s club/i,
  /bj'?s wholesale/i,
  /walmart/i,
  /target/i,
  /costco/i,
  /marshalls/i,
  /ross\s/i,
  /tj\s*maxx/i,
  /academy sports/i,
  /bass pro/i,
  /cabela/i,
  /rei\b/i,
  /dick'?s sporting/i,
  /tractor supply/i,
  /goodwill/i,
  /salvation army/i,
  /staples/i,
  /office depot/i,
  /office max/i,
  /best buy/i,
  /harbor freight/i,
  /northern tool/i,
  /grainger/i,
  /fastenal/i,
  /ace hardware/i,
  /true value/i,
  /home outlet/i,
  /building center/i,
  /hardware\s+(mfg|company|co\.?|store)/i,
  /popshelf/i,
  /roses discount/i,
  /general store/i,
  /compass rv/i,
  /blue compass/i,
  /palmetto oxygen/i,
  /adaptHealth/i,
  /safe home pro/i,
  /midway general/i,
  /liberty hardware/i,
];

// Keywords that suggest porta potty / sanitation business
const portaPottyKeywords = [
  /porta[\s-]?potty/i,
  /portable[\s-]?(toilet|restroom|bathroom|john|jon)/i,
  /restroom/i,
  /septic/i,
  /sanitation/i,
  /waste\s+(service|management|hauling)/i,
  /rent[\s-]?a[\s-]?jo[hn]n?/i,
  /potties/i,
  /loo\b/i,
  /flush/i,
  /throne/i,
  /outhouse/i,
  /lavish/i,
  /lofti/i,
  /luxe/i,
  /posh/i,
  /dumpster/i,
  /roll[\s-]?off/i,
  /container/i,
  /rental/i,
  /party rental/i,
];

function isRetailStore(name) {
  for (const pattern of retailPatterns) {
    if (pattern.test(name)) return true;
  }
  return false;
}

function looksLikePortaPottyBusiness(vendor) {
  const name = vendor.business_name.toLowerCase();
  const website = (vendor.website || '').toLowerCase();

  // Check name and website for porta potty keywords
  for (const pattern of portaPottyKeywords) {
    if (pattern.test(name) || pattern.test(website)) return true;
  }

  // Check if website domain suggests porta potty business
  if (website) {
    const domainKeywords = ['potty', 'toilet', 'restroom', 'septic', 'waste', 'loo', 'jon', 'john', 'portable', 'rental'];
    for (const kw of domainKeywords) {
      if (website.includes(kw)) return true;
    }
  }

  return false;
}

function isDuplicate(vendor) {
  const nameLower = vendor.business_name.toLowerCase().trim();
  return nc2Names.has(nameLower) || nc2Phones.has(vendor.phone) || nc2Slugs.has(vendor.slug);
}

// Filter vendors
const newVendors = [];
const removed = {
  duplicate: [],
  retail: [],
  notPortaPotty: []
};

for (const v of ncCities) {
  // Check if duplicate
  if (isDuplicate(v)) {
    removed.duplicate.push(v.business_name);
    continue;
  }

  // Check if retail store
  if (isRetailStore(v.business_name)) {
    removed.retail.push(v.business_name);
    continue;
  }

  // Check if it looks like a porta potty business
  if (!looksLikePortaPottyBusiness(v)) {
    removed.notPortaPotty.push(v.business_name);
    continue;
  }

  newVendors.push(v);
}

// Report
console.log('=== Filtering Results ===\n');
console.log(`Duplicates (already in NC2): ${removed.duplicate.length}`);
console.log(`Retail stores removed: ${removed.retail.length}`);
console.log(`Non-porta potty businesses removed: ${removed.notPortaPotty.length}`);
console.log(`\nNEW VENDORS TO IMPORT: ${newVendors.length}\n`);

if (removed.retail.length > 0) {
  console.log('--- Retail Stores Removed ---');
  removed.retail.forEach(n => console.log(`  ${n}`));
  console.log('');
}

if (removed.notPortaPotty.length > 0) {
  console.log('--- Non-Porta Potty Removed ---');
  removed.notPortaPotty.forEach(n => console.log(`  ${n}`));
  console.log('');
}

console.log('--- New Vendors to Import ---');
newVendors.forEach(v => console.log(`  ${v.business_name} | ${v.city} | ${v.phone || 'no phone'}`));

// Save JSON
fs.writeFileSync(OUTPUT_JSON, JSON.stringify(newVendors, null, 2));
console.log(`\nWrote: ${OUTPUT_JSON}`);

// Generate SQL
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

  let sql = `-- New NC Vendors Import - ${vendors.length} vendors
-- Generated: ${new Date().toISOString()}
-- These are NEW vendors not already in NC2
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

fs.writeFileSync(OUTPUT_SQL, generateSQL(newVendors));
console.log(`Wrote: ${OUTPUT_SQL}`);

console.log('\nDone!');
