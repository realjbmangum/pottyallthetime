const XLSX = require('xlsx');
const fs = require('fs');
const path = require('path');

// Utility functions
function slugify(text) {
  return text
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/(^-|-$)/g, '');
}

function formatPhone(phone) {
  if (!phone) return null;
  const cleaned = phone.replace(/\D/g, '');
  if (cleaned.length === 11 && cleaned.startsWith('1')) {
    return '(' + cleaned.slice(1, 4) + ') ' + cleaned.slice(4, 7) + '-' + cleaned.slice(7);
  }
  if (cleaned.length === 10) {
    return '(' + cleaned.slice(0, 3) + ') ' + cleaned.slice(3, 6) + '-' + cleaned.slice(6);
  }
  return phone;
}

function parseHours(hoursStr) {
  if (!hoursStr) return null;
  try {
    return JSON.parse(hoursStr);
  } catch {
    return null;
  }
}

function normalizeState(state) {
  const stateMap = {
    'north carolina': 'NC',
    'nc': 'NC',
    'south carolina': 'SC',
    'sc': 'SC',
    'virginia': 'VA',
    'va': 'VA'
  };
  return stateMap[(state || '').toLowerCase()] || state;
}

// Create dedup key function
function makeKey(name, city) {
  return (name + '|' + city).toLowerCase().replace(/[^a-z0-9|]/g, '');
}

// Main processing
const dataDir = path.join(__dirname, '..', 'data');

// Read existing cleaned vendors
const existingVendors = JSON.parse(fs.readFileSync(path.join(dataDir, 'cleaned-vendors.json'), 'utf8'));
console.log('Existing vendors:', existingVendors.length);

// Build set of existing keys
const seenKeys = new Set();
existingVendors.forEach(v => {
  seenKeys.add(makeKey(v.business_name, v.city));
});

// Read NC2 xlsx
const wb = XLSX.readFile(path.join(dataDir, 'nc2.xlsx'));
const ws = wb.Sheets[wb.SheetNames[0]];
const nc2Data = XLSX.utils.sheet_to_json(ws);
console.log('NC2 raw rows:', nc2Data.length);

// Process and dedupe NC2 data
const newVendors = [];
const skipped = { duplicateInNc2: 0, existsInCurrent: 0, noName: 0, noCity: 0 };

nc2Data.forEach(row => {
  // Skip if no name
  if (!row.name || row.name.trim() === '') {
    skipped.noName++;
    return;
  }

  // Skip if no city
  if (!row.city || row.city.trim() === '') {
    skipped.noCity++;
    return;
  }

  const key = makeKey(row.name, row.city);

  // Check if already exists in current vendors
  const existsInCurrent = existingVendors.some(v => makeKey(v.business_name, v.city) === key);
  if (existsInCurrent) {
    skipped.existsInCurrent++;
    return;
  }

  // Check if duplicate within NC2
  if (seenKeys.has(key)) {
    skipped.duplicateInNc2++;
    return;
  }

  // Mark as seen
  seenKeys.add(key);

  // Transform to target format
  const vendor = {
    business_name: row.name.trim(),
    city: row.city.trim(),
    state: normalizeState(row.state) || 'NC',
    phone: formatPhone(row.phone),
    email: row.email || null,
    website: row.site || null,
    services_offered: ['Standard Units', 'Portable Restrooms'],
    slug: slugify(row.name),
    latitude: row.latitude || null,
    longitude: row.longitude || null,
    street_address: row.street || null,
    postal_code: row.postal_code ? String(row.postal_code) : null,
    rating: row.rating || null,
    review_count: row.reviews || 0,
    photo_url: row.photo || null,
    hours: parseHours(row.working_hours),
    linkedin: row.company_linkedin || null,
    instagram: row.company_instagram || null
  };

  newVendors.push(vendor);
});

console.log('\n=== NC2 Hygiene Summary ===');
console.log('Input rows:', nc2Data.length);
console.log('New unique vendors:', newVendors.length);
console.log('Skipped (duplicate within NC2):', skipped.duplicateInNc2);
console.log('Skipped (exists in current data):', skipped.existsInCurrent);
console.log('Skipped (no name):', skipped.noName);
console.log('Skipped (no city):', skipped.noCity);

// Get unique cities in new vendors
const newCities = [...new Set(newVendors.map(v => v.city))].sort();
console.log('\nNew cities added:', newCities.length);
console.log(newCities.join(', '));

// Check for slug conflicts
const allVendors = [...existingVendors, ...newVendors];
const slugCounts = {};
allVendors.forEach(v => {
  slugCounts[v.slug] = (slugCounts[v.slug] || 0) + 1;
});
const slugConflicts = Object.entries(slugCounts).filter(([k, v]) => v > 1);
console.log('\nSlug conflicts to resolve:', slugConflicts.length);

// Resolve slug conflicts by adding city suffix
if (slugConflicts.length > 0) {
  const conflictSlugs = new Set(slugConflicts.map(([k]) => k));
  const slugIndex = {};

  allVendors.forEach(v => {
    if (conflictSlugs.has(v.slug)) {
      const newSlug = v.slug + '-' + slugify(v.city);
      v.slug = newSlug;
    }

    // Handle any remaining conflicts
    if (slugIndex[v.slug]) {
      let counter = 1;
      let baseSlug = v.slug;
      while (slugIndex[v.slug]) {
        v.slug = baseSlug + '-' + counter;
        counter++;
      }
    }
    slugIndex[v.slug] = true;
  });
}

// Combine and save
const combined = [...existingVendors, ...newVendors];
console.log('\nTotal vendors after merge:', combined.length);

// Write the cleaned data
fs.writeFileSync(path.join(dataDir, 'cleaned-vendors-nc2.json'), JSON.stringify(newVendors, null, 2));
fs.writeFileSync(path.join(dataDir, 'cleaned-vendors-merged.json'), JSON.stringify(combined, null, 2));

console.log('\nFiles written:');
console.log('  - cleaned-vendors-nc2.json (new vendors only)');
console.log('  - cleaned-vendors-merged.json (all vendors)');

// Show sample of new vendors
console.log('\n=== Sample New Vendors ===');
newVendors.slice(0, 5).forEach((v, i) => {
  console.log(`${i+1}. ${v.business_name} - ${v.city} - Rating: ${v.rating || 'N/A'}`);
});

// Stats by city
console.log('\n=== Vendors by City (Top 10) ===');
const byCityCount = {};
combined.forEach(v => {
  byCityCount[v.city] = (byCityCount[v.city] || 0) + 1;
});
Object.entries(byCityCount)
  .sort((a, b) => b[1] - a[1])
  .slice(0, 10)
  .forEach(([city, count]) => {
    console.log(`  ${city}: ${count}`);
  });
