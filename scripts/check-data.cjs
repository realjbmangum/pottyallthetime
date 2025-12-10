const data = require('../data/cleaned-vendors-nc2.json');

console.log('=== NC2 Data Quality Check ===');
console.log('Total vendors:', data.length);

// Check for required fields
const missingName = data.filter(v => !v.business_name).length;
const missingCity = data.filter(v => !v.city).length;
const missingState = data.filter(v => !v.state).length;
const missingSlug = data.filter(v => !v.slug).length;

console.log('\n--- Required Fields ---');
console.log('Missing business_name:', missingName);
console.log('Missing city:', missingCity);
console.log('Missing state:', missingState);
console.log('Missing slug:', missingSlug);

// Check data richness
const hasPhone = data.filter(v => v.phone).length;
const hasEmail = data.filter(v => v.email).length;
const hasWebsite = data.filter(v => v.website).length;
const hasRating = data.filter(v => v.rating).length;
const hasPhoto = data.filter(v => v.photo_url).length;
const hasHours = data.filter(v => v.hours).length;
const hasLinkedin = data.filter(v => v.linkedin).length;
const hasInstagram = data.filter(v => v.instagram).length;
const hasCoords = data.filter(v => v.latitude && v.longitude).length;

console.log('\n--- Data Richness ---');
console.log('Has phone:', hasPhone, '(' + Math.round(hasPhone/data.length*100) + '%)');
console.log('Has email:', hasEmail, '(' + Math.round(hasEmail/data.length*100) + '%)');
console.log('Has website:', hasWebsite, '(' + Math.round(hasWebsite/data.length*100) + '%)');
console.log('Has rating:', hasRating, '(' + Math.round(hasRating/data.length*100) + '%)');
console.log('Has photo:', hasPhoto, '(' + Math.round(hasPhoto/data.length*100) + '%)');
console.log('Has hours:', hasHours, '(' + Math.round(hasHours/data.length*100) + '%)');
console.log('Has linkedin:', hasLinkedin, '(' + Math.round(hasLinkedin/data.length*100) + '%)');
console.log('Has instagram:', hasInstagram, '(' + Math.round(hasInstagram/data.length*100) + '%)');
console.log('Has coordinates:', hasCoords, '(' + Math.round(hasCoords/data.length*100) + '%)');

// Check for duplicates
const slugs = data.map(v => v.slug);
const uniqueSlugs = new Set(slugs);
console.log('\n--- Duplicates ---');
console.log('Unique slugs:', uniqueSlugs.size, 'of', data.length);

// Cities breakdown
const cities = {};
data.forEach(v => { cities[v.city] = (cities[v.city] || 0) + 1; });
console.log('\n--- Top 10 Cities ---');
Object.entries(cities).sort((a,b) => b[1] - a[1]).slice(0,10).forEach(([city, count]) => {
  console.log('  ' + city + ':', count);
});

// Rating distribution
console.log('\n--- Rating Distribution ---');
const ratings = { '5 stars': 0, '4-4.9': 0, '3-3.9': 0, '<3': 0, 'none': 0 };
data.forEach(v => {
  if (!v.rating) ratings['none']++;
  else if (v.rating === 5) ratings['5 stars']++;
  else if (v.rating >= 4) ratings['4-4.9']++;
  else if (v.rating >= 3) ratings['3-3.9']++;
  else ratings['<3']++;
});
Object.entries(ratings).forEach(([k,v]) => console.log('  ' + k + ':', v));
