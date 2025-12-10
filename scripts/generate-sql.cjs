const fs = require('fs');
const path = require('path');

const dataDir = path.join(__dirname, '..', 'data');
const inputFile = process.argv[2] || 'cleaned-vendors-nc2.json';
const outputFile = process.argv[3] || 'import-nc2.sql';

const vendors = JSON.parse(fs.readFileSync(path.join(dataDir, inputFile), 'utf8'));

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

let sql = `-- NC2 Import - ${vendors.length} vendors
-- Generated: ${new Date().toISOString()}
-- Run this in Supabase SQL Editor

`;

vendors.forEach(v => {
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
);

`;
});

fs.writeFileSync(path.join(dataDir, outputFile), sql);
console.log(`Generated ${outputFile} with ${vendors.length} INSERT statements`);
