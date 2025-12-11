-- NC Cities Import - 182 vendors
-- Generated: 2025-12-11T17:11:54.175Z
-- Run this in Supabase SQL Editor
-- Uses UPSERT to avoid duplicates

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Site Services',
  'Monroe',
  'North Carolina',
  '(800) 864-5387',
  NULL,
  'https://www.unitedsiteservices.com/locations/north-carolina/charlotte/monroe',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-site-services',
  35.0137152,
  -80.6085577,
  '3213 Union Power Way',
  '28110',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPEbck57P1DHgKstTTFLHBpeqaG70fg0bBIPpzL=w800-h500-k-no',
  '{"Wednesday":"7AM-8PM"}',
  'https://www.linkedin.com/company/united-site-services/',
  'https://www.instagram.com/unitedsiteservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'TOI TOI USA',
  'Unknown',
  'North Carolina',
  '(704) 703-1840',
  'ar@toitoiusa.com',
  'https://toitoiusa.com/locations/porta-potty-rental-monroe-nc',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'toi-toi-usa',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  'https://www.linkedin.com/company/toitoiusa',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Nacht Toilets',
  'Winston-Salem',
  'North Carolina',
  '(336) 733-7396',
  'info@nachttoilets.com',
  'https://nachttoilets.com/cities/winston-salem/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'nacht-toilets',
  36.0973342,
  -80.2460271,
  '124 W 3rd St',
  '27101',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOkKlhGdJRwaseYuveOlbDdjQvYq4lk0HPAprN2=w800-h500-k-no',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'New Life 2 Septic & Rent-A-Jon',
  'Winston-Salem',
  'North Carolina',
  '(336) 699-3868',
  NULL,
  'https://www.newlifesepticandjons.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'new-life-2-septic-rent-a-jon',
  36.158906,
  -80.0661485,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwIei9s-QG_YO-afXi2yoEkcq1gJNz5oQvVhhIB_wF4taXsyN-b3kz-bEJEmrR-A2WtyFVpaLV4q95P9V6ool8GXyJTXxTCt_2LlhvEeXLG8hEfE4J9_2zFOdY0uMt-fJjAQLKJ=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  'https://www.instagram.com/newlifeseptic'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Greensboro Porta Potty Rental | LooHub',
  'Greensboro',
  'North Carolina',
  '(743) 256-9427',
  'contact@greensboroportapotties.com',
  'https://greensboroportapotties.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'greensboro-porta-potty-rental-loohub',
  36.0722381,
  -79.7898726,
  '101 S Elm St',
  '27401',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOU2h_Ucko6TEfvYOyg5QNGgi2Gkn_yMza8pXeR=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  'https://www.linkedin.com/company/greensboro-porta-potty-rental-loohub/',
  'https://www.instagram.com/greensboroportapotty'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'A & B Portable Toilets, Inc.',
  'Greensboro',
  'North Carolina',
  '(336) 421-2076',
  'b.young@abportabletoilets.com',
  'https://www.abportabletoilets.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'a-b-portable-toilets-inc',
  35.9993616,
  -79.678122,
  '2544 Alamance Church Rd',
  '27406',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOTPle2eeSQbNRO_nMFEjlWT0au0tLWT2a6fObk=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Summey Portable Restrooms, LLC',
  'Mebane',
  'North Carolina',
  '(984) 253-8293',
  'office@summeyportablerestrooms.com',
  'https://www.summeysportable.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'summey-portable-restrooms-llc',
  36.046488,
  -79.2465124,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSx2wyET5NM3nUiD57TvOXAWDZfACpnsMsc2eWep6gFQJk-QLX_ZRc7jOq1QlTh2FdJ7AeWSsim93p9LuBAIXLSfFmxzJPFiPXBW8oO-92b2AWALAHI-YUbjZSthqRcoF2_qGGUc=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  '64 Portables, Inc.',
  'Lexington',
  'North Carolina',
  '(336) 474-1436',
  'j.gibson@64portables.com',
  'https://64portables.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  '64-portables-inc',
  35.7943397,
  -80.1417079,
  '280 Cunningham Brick Yard Rd',
  '27292',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMbU8F9ne_hc-1Xkix6lerqgEpS_QDjjjSq7PTr=w800-h500-k-no',
  '{"Wednesday":"8AM-4PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Voydrom Potties',
  'Greensboro',
  'North Carolina',
  '(743) 219-4585',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'voydrom-potties',
  36.0694825,
  -79.7996535,
  '220 College Br Wy',
  '27403',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNSCkurfKNDmMOZYppyi9sj9wqmy80cw3AT-zv3=w800-h500-k-no',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Piedmont Portables',
  'Burlington',
  'North Carolina',
  '(800) 918-8901',
  'kmanda@piedmontportables.com',
  'https://www.piedmontportables.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'piedmont-portables',
  36.0474867,
  -79.4647416,
  '3158 Lear Dr',
  '27215',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPS11vCIls19Di1sVYJ5IYBUBSz5ge7qL6tEZab=w800-h500-k-no',
  '{"Wednesday":"8AM-4PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Azura Portable Toilets',
  'High Point',
  'North Carolina',
  '(336) 546-9103',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'azura-portable-toilets',
  35.9926326,
  -79.9979088,
  '1124 Nc-68',
  '27265',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=11PgKatvJx1CiSKj_RMD8A&cb_client=search.gws-prod.gps&w=800&h=500&yaw=133.49649&pitch=0&thumbfov=100',
  '{"Wednesday":"6AM-11PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'JNKC Portables and Backflow testing - Statesville',
  'Statesville',
  'North Carolina',
  '(980) 248-3952',
  NULL,
  'https://www.jnkcportables.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'jnkc-portables-and-backflow-testing-statesville',
  35.8335855,
  -80.865929,
  '197 Jane Sowers Rd',
  '28625',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipN-Gg8LInlL2XWnhe339oQJrhGSf_bCI4IkyBSr=w800-h500-k-no',
  '{"Wednesday":"8:30AM-5:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Triad Restroom Rentals',
  'Unknown',
  'North Carolina',
  '(336) 421-2076',
  'ryan@triadrestroomrentals.com',
  'https://www.triadrestroomrentals.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'triad-restroom-rentals',
  35.1705075,
  -79.86097,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPhj2caT9jP8QaaIwXIxLm3dLFBlQQqtsyabugB=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Piedmont Disposal',
  'Winston-Salem',
  'North Carolina',
  '(336) 777-8805',
  'kevinlong@piedmontdisposal.com',
  'https://www.piedmontdisposal.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'piedmont-disposal',
  36.151929,
  -80.2702057,
  '4420 Providence Ln',
  '27106',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOgncGjBeE2mXWh8RZTw5wgJSKfBBplXBiO8n_f=w800-h500-k-no',
  '{"Wednesday":"7AM-4PM"}',
  'http://www.linkedin.com/company/6548123',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Regal Restroom Rentals',
  'Mooresville',
  'North Carolina',
  '(704) 237-6704',
  'sales@regalrestroomrentals.com',
  'https://regalrestroomrentals.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'regal-restroom-rentals',
  35.6164832,
  -80.8480066,
  '325 Cornelius Rd',
  '28117',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPS1rKLPpJCtrZ1u1Hh-C3XzCUq7cEpZG-wWXCD=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Cooke Rentals of King, NC',
  'King',
  'North Carolina',
  '(336) 985-8222',
  'networksystems@southdata.com',
  'https://www.cookerentals.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'cooke-rentals-of-king-nc',
  36.265817,
  -80.371757,
  '145 Industrial Dr',
  '27021',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPiEPYOAXBWbQJSPsbTx9LkS3e3KDydoTvCMzJ9=w800-h500-k-no',
  '{"Wednesday":"7:30AM-5PM"}',
  'http://www.linkedin.com/company/2062052',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'A Sani-Can',
  'Denver',
  'North Carolina',
  '(704) 249-2625',
  'neeley@dellinger-inc.com',
  'https://asanican.com/?utm_campaign=gbp&utm_medium=organic&utm_source=google',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'a-sani-can',
  35.5238445,
  -80.9801225,
  '8151 Webbs Rd',
  '28037',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNlh5JzEOk64uPZjWZ8GYOjnLbDWPl9GzOtscYz=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/a-sani-can-service-inc-',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'A Sani-Can',
  'Greensboro',
  'North Carolina',
  '(336) 375-5001',
  'neeley@dellinger-inc.com',
  'https://asanican.com/?utm_source=google&utm_medium=organic&utm_campaign=gbp',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'a-sani-can-1',
  36.124389,
  -79.746398,
  '2316 Joe Brown Dr',
  '27405',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSxHPe_iDWtY2tkj0eHx-GiBvvG2oOQh2syFSmT5xgGbuG9xOXvVxbAHfXUdQ-SVThqgmiGxMnGRpr5EbHCn2aoJfp0et9zEuVhOoH8g5wAPnUhSrWAz4DZgR9tM4p8Q9tZUbOreLp3giP0=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/a-sani-can-service-inc-',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Rentals - Reliable Onsite Services',
  'Greensboro',
  'North Carolina',
  '(336) 334-6088',
  'stylor@unitedrentals.com',
  'https://www.unitedrentals.com/locations/nc/greensboro/sanitation-rentals/718?utm_source=google&utm_medium=distrib&utm_campaign=yext',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-rentals-reliable-onsite-services',
  36.054113,
  -79.9349147,
  '1409 Boulder Ct',
  '27409',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPhKSiwLPD37ZUR7oRT_2BXHGIp9GG6j7-vnhKh=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  'https://www.linkedin.com/company/trench-safety',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Big Yellow Services, LLC',
  'Winston-Salem',
  'North Carolina',
  '(336) 600-5177',
  'info@bigyellowservice.com',
  'https://bigyellowservice.com/service-area/winston-salem-dumpster-rentals.html',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'big-yellow-services-llc',
  36.0273854,
  -80.3892756,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipP8hjl8GX0boizbL1geLSo1-gNE78O7M7sihQo3=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  'https://www.instagram.com/bigyellowservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Jordyn Portable Toilet Rental',
  'Asheboro',
  'North Carolina',
  '(743) 238-5935',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'jordyn-portable-toilet-rental',
  35.7043899,
  -79.8129254,
  '151 Cranford St',
  '27203',
  NULL,
  0,
  NULL,
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Capital Waste',
  'Mooresville',
  'North Carolina',
  '(336) 648-8808',
  'office@capitalwastetrash.com',
  'https://capitalwastetrash.com/?utm_source=omg-gbp&utm_medium=webclick',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'capital-waste',
  35.60687,
  -80.8032866,
  '730 Oakridge Farm Hwy',
  '28115',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPPqyYd4gaF530P2YvrC80ZVJhsiDpWVPHGfuH3=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Mobile Thrones Restroom Trailers',
  'Durham',
  'North Carolina',
  '(919) 886-6890',
  'info@mobilethronesusa.com',
  'https://mobilethronesusa.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'mobile-thrones-restroom-trailers',
  35.9121602,
  -78.8909169,
  '4324 S Alston Ave',
  '27713',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNGM49D9o67Z-zMEk9FC3aX5z_0k0BKQJ8nX_K1=w800-h500-k-no',
  '{"Wednesday":"9AM-6PM"}',
  NULL,
  'https://www.instagram.com/mobilethronesnc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Big Yellow Services',
  'Burlington',
  'North Carolina',
  '(336) 313-0500',
  'info@bigyellowservice.com',
  'https://bigyellowservice.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'big-yellow-services',
  36.044996,
  -79.4435834,
  '1658 Whites Kennel Rd',
  '27215',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMNUqBSpFEc8c7z2qBvXCkRxMNpmFX3UTJrEmHh=w800-h500-k-no',
  '{"Wednesday":"7AM-8PM"}',
  NULL,
  'https://www.instagram.com/bigyellowservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Willenborg Rental Services',
  'Durham',
  'North Carolina',
  '(919) 759-6285',
  'info@willenborgrentalservices.com',
  'https://willenborgrentalservices.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'willenborg-rental-services',
  35.997733,
  -78.9080662,
  '301 S Duke St 1st Flr',
  '27701',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=HpvL5zHeWNUGR2slgcyyig&cb_client=search.gws-prod.gps&w=800&h=500&yaw=111.562904&pitch=0&thumbfov=100',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Elegant Johns',
  'Unknown',
  'North Carolina',
  '(919) 578-6030',
  'info@elegantjohns.com',
  'https://www.elegantjohns.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'elegant-johns',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Field Offices in Charlotte & Raleigh NC',
  'Charlotte',
  'North Carolina',
  '',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'field-offices-in-charlotte-raleigh-nc',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Durham Porta Potties LooBox',
  'Durham',
  'North Carolina',
  '(919) 503-4438',
  'contact@durhamportapotties.com',
  'https://durhamportapotties.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'durham-porta-potties-loobox',
  35.9948848,
  -78.9010196,
  '101 W Main St',
  '27701',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipP6JXsgH0_Su3y1lxZWz25tA4gpFEU3rxYgki41=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  'https://www.linkedin.com/company/durham-porta-potties-loobox/',
  'https://www.instagram.com/durhamportapottiesloobox'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Lloyd''s Portable Toilet Rental',
  'Graham',
  'North Carolina',
  '(336) 516-0444',
  'contact@lloydsepticservices.com',
  'https://lloydsepticservices.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'lloyd-s-portable-toilet-rental',
  35.9862523,
  -79.3891157,
  '3748 Nc-87',
  '27253',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=V8zSSyN0TZySU_W03EjRAQ&cb_client=search.gws-prod.gps&w=800&h=500&yaw=241.20415&pitch=0&thumbfov=100',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  'https://www.instagram.com/lloyd_pump'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'MD Portable Toilets',
  'Cary',
  'North Carolina',
  '(919) 883-1352',
  NULL,
  'https://cary.mdportablepottyrentals.biz/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'md-portable-toilets',
  35.7870185,
  -78.8475541,
  '125 Quarrystone Cir',
  '27519',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSxVJXMY46GRsahKAmiTM77fhA-33DmftN8ls2FSza99W-XHdM20-Yej5YJO5qXhttH_G7iGPIWiVD9ECiS3YvtV7RP1BR2QdyKbv4payJdFEZxN5jdMDK8n1kL1xigEVxdJdZzZPB2emFSL=w800-h500-k-no',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Eichner Rental Services',
  'Raleigh',
  'North Carolina',
  '(919) 893-0682',
  'info@eichnerrentalservices.com',
  'https://eichnerrentalservices.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'eichner-rental-services',
  35.7843151,
  -78.6436138,
  '310 W Lane St',
  '27603',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=qo9hQEkedpAuhkfXQflvdg&cb_client=search.gws-prod.gps&w=800&h=500&yaw=10.82077&pitch=0&thumbfov=100',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Too The Loo, LLC',
  'Unknown',
  'North Carolina',
  '(336) 860-8904',
  'info@tootheloo.com',
  'https://www.tootheloo.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'too-the-loo-llc',
  35.1705075,
  -79.86097,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNA5IFQzvGRzBWsLn7ZnmUvZIw5yJUdgijb8qTN=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Grand Restrooms',
  'Clover',
  'North Carolina',
  '(803) 628-7600',
  'info@grandrestrooms.com',
  'https://www.grandrestrooms.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'grand-restrooms',
  35.1385995,
  -81.2143685,
  '1453 Us-321',
  '29710',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMz46Tp1-78RlDE1-7FdKQGctEXq6cTHpY3VS1X=w800-h500-k-no',
  '{"Wednesday":"7AM-10PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Sustainable Waste Management',
  'Denver',
  'North Carolina',
  '(704) 929-5408',
  'khumphrey@sustainablewastemgmt.com',
  'https://www.sustainablewastemgmt.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'sustainable-waste-management',
  35.4340859,
  -80.914222,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMr__H01ukRHMTE3CroReH_92HQ_2K12yQVX8f_=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Halftime Rentals',
  'Denver',
  'North Carolina',
  '(980) 410-8463',
  'info@halftimerentals.com',
  'https://www.halftimerentals.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'halftime-rentals',
  35.5721655,
  -81.0401423,
  '6255 North Carolina Hwy 150',
  '28037',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipM99jMyTIzWd5nFVXk88QeeXbdwoHsOWLXHt_nk=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  'https://www.linkedin.com/company/halftime-rentals/',
  'https://www.instagram.com/halftimerentals'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Sustainable Waste Management',
  'Charlotte',
  'North Carolina',
  '(704) 929-5408',
  'khumphrey@sustainablewastemgmt.com',
  'https://www.sustainablewastemgmt.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'sustainable-waste-management-1',
  35.3595195,
  -80.906635,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Purple Heart Restrooms',
  'Charlotte',
  'North Carolina',
  '(704) 947-9811',
  NULL,
  'https://purpleheartrestrooms.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'purple-heart-restrooms',
  35.3492007,
  -80.8238393,
  '9327 Old Statesville Rd',
  '28269',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipP3pEnTaoJVAeZURhOqrbdq7hlELyBIKmwfCt8R=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Cardinal Rents, LLC / A Prettier Potty',
  'Charlotte',
  'North Carolina',
  '(704) 968-6271',
  'hello@cardinalrents.com',
  'https://cardinalrents.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'cardinal-rents-llc-a-prettier-potty',
  35.2053334,
  -80.8221609,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPNqa1Ac77azRNNeqXNbTIRMaUOBeGs9Wv8bRl-=w800-h500-k-no',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Viking Dumpsters',
  'Charlotte',
  'North Carolina',
  '(704) 269-4747',
  'sales@vikingdumpsters.com',
  'https://vikingdumpsters.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'viking-dumpsters',
  35.2255342,
  -80.7250174,
  '6141 Lawson Ln',
  '28215',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipN7CWQy4VV2-3OpzQ8NGbXDJnkH2QiLlnJquxp8=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WillScot',
  'Charlotte',
  'North Carolina',
  '(704) 921-2313',
  'wbowser@willscot.com',
  'https://www.willscot.com/en/locations/north-carolina/charlotte-nc-modular?utm_source=google&utm_medium=organic&utm_campaign=gbp-listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'willscot',
  35.2773313,
  -80.8156008,
  '3925 Trailer Dr',
  '28269',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNiln02p-6X-axfBMR0NLsoe_8aGAbWkiYcZ0Zd=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/william-scottsman',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'CGR Rentals, LLC',
  'Unknown',
  'North Carolina',
  '(743) 542-0265',
  NULL,
  'https://www.rentcgr.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'cgr-rentals-llc',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  'http://instagram.com/squarespace'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Halftime Rentals',
  'Charlotte',
  'North Carolina',
  '(980) 410-8463',
  'info@halftimerentals.com',
  'https://www.halftimerentals.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'halftime-rentals-1',
  35.2297855,
  -80.8772085,
  '1742 Fleetwood Dr',
  '28208',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNVMkAVLVQt8h-8bNz47uIj6J5a_SCzOiXV9Hwk=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  'https://www.linkedin.com/company/halftime-rentals/',
  'https://www.instagram.com/halftimerentals'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Halftime Rentals',
  'Charlotte',
  'North Carolina',
  '(980) 410-8463',
  'info@halftimerentals.com',
  'https://halftimerentals.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'halftime-rentals-2',
  35.2643218,
  -80.7411114,
  '7221 Cove Creek Dr',
  '28215',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNkeOELLeYbwvq5D9IVuYWxfJmVpFdDsmnF9PjZ=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  'https://www.linkedin.com/company/halftime-rentals/',
  'https://www.instagram.com/halftimerentals'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Full Service Septic',
  'Salisbury',
  'North Carolina',
  '(704) 224-4199',
  'fullserviceseptic@gmail.com',
  'https://www.fullserviceseptic.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'full-service-septic',
  35.6231867,
  -80.5951995,
  '430 Cooper Rd',
  '28147',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMDm6sle_q5JnKp3KSv5KIVw4RWzx6CNbpZ-JcR=w800-h500-k-no',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Rowan Septic Tank & Ditching Co Inc',
  'Salisbury',
  'North Carolina',
  '(704) 633-2412',
  'dianak@rowanedc.com',
  'https://www.rowanseptictank.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'rowan-septic-tank-ditching-co-inc',
  35.7468508,
  -80.4983392,
  '7321 Old Mocksville Rd',
  '28144',
  NULL,
  0,
  NULL,
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Nomad Rentals of Charlotte',
  'Charlotte',
  'North Carolina',
  '(704) 900-9761',
  'info@rent-nomad.com',
  'https://www.charlotteportapotty.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'nomad-rentals-of-charlotte',
  35.1119296,
  -80.9030693,
  '911 E Westinghouse Blvd',
  '28273',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMventmdHFqGNHfDeZlmhTRgoEhRPjKs4hQVpRF=w800-h500-k-no',
  '{"Wednesday":"8AM-8PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Peachy Cheeks Restrooms',
  'Asheboro',
  'North Carolina',
  '(910) 220-1969',
  NULL,
  'https://peachycheeksrestrooms.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'peachy-cheeks-restrooms',
  35.540657,
  -79.8915039,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNKj59hdYqDBtHXPEdXqiMC0R6CrheGN8od3-s=w800-h500-k-no',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Portable Toilets Champ',
  'Charlotte',
  'North Carolina',
  '(704) 440-3491',
  'brooklyn@portabletoiletschamp.com',
  'https://portabletoiletschamp.com/location/portable-toilet-services-in-charlotte-your-comprehensive-guide',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'portable-toilets-champ',
  35.2692502,
  -80.8245436,
  '3301 Woodpark Blvd',
  '28206',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPqtaBKHeAXLrluw86wqn8KKzCqHZdTr2dfvTbS=w800-h500-k-no',
  '{"Wednesday":"8AM-8PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Viking Thrones',
  'Charlotte',
  'North Carolina',
  '(704) 269-4747',
  'sales@vikingdumpsters.com',
  'https://www.vikingdumpsters.com/viking-thrones',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'viking-thrones',
  35.2255342,
  -80.7250174,
  '6141 Lawson Ln',
  '28215',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNKOlD_rg-5pgbyoXZcY9nmOK1UOnb3_cGPthcn=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Faulkner''s Royal Flush Inc.',
  'Charlotte',
  'North Carolina',
  '(704) 835-4557',
  'hi@mystore.com',
  'https://faulkners-royal-flush.square.site/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'faulkner-s-royal-flush-inc',
  35.2053334,
  -80.8221609,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMkr1WD4awukgGpFodUZcMhfiudieSvCoXS8DiZ=w800-h500-k-no',
  '{"Wednesday":"9AM-9PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'The Plush Flush',
  'Unknown',
  'North Carolina',
  '(704) 574-9421',
  'info@theplushflush.com',
  'https://www.theplushflush.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'the-plush-flush',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  'http://instagram.com/theplushflush'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Rentals - Reliable Onsite Services',
  'Charlotte',
  'North Carolina',
  '(704) 252-5480',
  'stylor@unitedrentals.com',
  'https://www.unitedrentals.com/locations/nc/charlotte/sanitation-rentals/88b?utm_source=google&utm_medium=distrib&utm_campaign=yext',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-rentals-reliable-onsite-services-1',
  35.1109861,
  -80.9236842,
  '11420 Texland Blvd',
  '28273',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMqME2Rv63PNt5R6e3YtbQG-tOuICQL8v7wllEG=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  'https://www.linkedin.com/company/trench-safety',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Portable Restroom Trailers, LLC',
  'Lake Wylie',
  'North Carolina',
  '(803) 810-2924',
  'info@portablerestroomtrailers.com',
  'https://www.portablerestroomtrailers.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'portable-restroom-trailers-llc',
  35.1149126,
  -81.0596526,
  '4607 Charlotte Hwy #11',
  '29710',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSy5NJ88ZfDu5PidIhIMUVltoLWO30F5jVQL9dU8rzG22f57XxEcleCzE7XtVps3gmnWiC8xxS-jXoVjNEKtzB4Iel-zQKHQM_Kwe08qxxoRhE00MLo1YlsNQ-W6ibpYKf9xqiI3xQ=w800-h500-k-no',
  '{"Wednesday":"8AM-8PM"}',
  'https://www.linkedin.com/company/portable-restroom-trailers-llc',
  'http://instagram.com/portablerestrooms'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Combs Porta',
  'Greensboro',
  'North Carolina',
  '(336) 729-1338',
  'info@combsporta.com',
  'https://combsporta.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'combs-porta',
  36.0807473,
  -79.7586014,
  '2103 Sullivan St',
  '27405',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=Y6E4YeiSZ5qCxPZinvJ9Vw&cb_client=search.gws-prod.gps&w=800&h=500&yaw=91.462456&pitch=0&thumbfov=100',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'ENC Restroom Rentals',
  'Wilmington',
  'North Carolina',
  '(910) 538-2051',
  'sales@encrestroomrentals.com',
  'https://encrestroomrentals.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'enc-restroom-rentals',
  34.2582549,
  -77.8711166,
  '705 N College Rd',
  '28405',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMBYPEtaqkZrHMkWm3mDWnMluaWSkvSZTavbfFl=w800-h500-k-no',
  '{"Wednesday":"8AM-5:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Oasis Restroom Trailers',
  'Castle Hayne',
  'North Carolina',
  '(339) 203-0523',
  'brian@oasisrestrooms.com',
  'https://www.oasisrestroomtrailersnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'oasis-restroom-trailers',
  34.328815,
  -77.854362,
  '2013 Emerald Ave',
  '28429',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipN5UP7jKJMolyJVVhxrCHiEnzu3DC8YI9Fn8fIY=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Rent-A-John',
  'Unknown',
  'North Carolina',
  '(910) 791-8333',
  'cheylee@rentajohninc.com',
  'https://rentajohninc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'rent-a-john',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  'https://www.instagram.com/rentajohn'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Carolina Moon Outhouses',
  'Unknown',
  'North Carolina',
  '(910) 612-4383',
  'carolinamoonouthouses@gmail.com',
  'https://www.carolinamoonouthouses.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'carolina-moon-outhouses',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Forever Clean',
  'Bolivia',
  'North Carolina',
  '(910) 392-5700',
  'jmcgi@foreverclean.com',
  'https://foreverclean.com/wilmington',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'forever-clean',
  34.0385887,
  -78.2457318,
  '967 Old Ocean Hwy',
  '28422',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMrG8kak2pE2BewS43rr6_3w4KyQUwrd9igGQex=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  'http://www.linkedin.com/company/6016927',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Rentals - Reliable Onsite Services',
  'Hampstead',
  'North Carolina',
  '(910) 323-3113',
  'stylor@unitedrentals.com',
  'https://www.unitedrentals.com/locations/nc/hampstead/sanitation-rentals/a1t?utm_source=google&utm_medium=distrib&utm_campaign=yext',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-rentals-reliable-onsite-services-2',
  34.3688957,
  -77.7131764,
  '220 Nc-210',
  '28443',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOlOZ4GxsZ0s3f_UOZTeLwGua4BPU2fComjOdIj=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  'https://www.linkedin.com/company/trench-safety',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Triple AAA Portable Toilets',
  'Nakina',
  'North Carolina',
  '(910) 642-6417',
  'tripleaaatoilets@yahoo.com',
  'https://www.tripleaaatoilets.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'triple-aaa-portable-toilets',
  34.0514999,
  -78.6141271,
  '5779 Manley Smith Rd',
  '28455',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipP_xwvyPC3TaZXSFgJBKDlLgyFBxgCu2McuNP9g=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'KTJ Portable Toilets, LLC.',
  'Richlands',
  'North Carolina',
  '(910) 548-2444',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ktj-portable-toilets-llc',
  34.9640686,
  -77.6392155,
  '216 A I Taylor Rd',
  '28574',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMR5LPIa1SegNC6lxGV0vALyMwwSRK24vEQX4Go=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Luxury Loo Rental',
  'Asheville',
  'North Carolina',
  '(828) 658-5667',
  'info@luxuryloosrental.com',
  'https://www.luxuryloosrental.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'luxury-loo-rental',
  35.5762486,
  -82.462743,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNUL3tbcUG0TBBCIyjwU4Dl7FByKa5qGIE0xAkg=w800-h500-k-no',
  '{"Wednesday":"7:30AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Master Porta-Jon Service',
  'Lenoir',
  'North Carolina',
  '(828) 754-1074',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'master-porta-jon-service',
  35.9001005,
  -81.5453986,
  '729 Harrisburg Dr Sw',
  '28645',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipN13EzGPfXuY4S4Kzp1R7vw_xx0kTuJairIewN4=w800-h500-k-no',
  '{"Wednesday":"8AM-6PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Griffin Waste',
  'Asheville',
  'North Carolina',
  '(828) 281-4549',
  NULL,
  'https://griffinportabletoilets.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'griffin-waste',
  35.6313566,
  -82.61941,
  '432 Old Leicester Hwy',
  '28806',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwAT-4Ua1Sx6ULXQISkyE4NH9VVKJ56ldR10opXua9vbn0SKus5DemjElYZFH6MJ0AwWAVoPXTphK_c6ABifk-M6T6iUnJA2rBc08BB8KV2urHcxXzcCp3rI_VjIl_IE4gNdQ6V=w800-h500-k-no',
  '{"Wednesday":"7AM-4:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Viking Environmental and Septic Services',
  'King',
  'North Carolina',
  '(828) 782-0003',
  'r.laws@ymail.com',
  'https://vikingavl.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'viking-environmental-and-septic-services',
  35.7873826,
  -82.17458,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMiPfBHyioZYSjdXM7C3P7ODlGAh4URzTxDHNk0=w800-h500-k-no',
  '{"Wednesday":"8AM-6PM"}',
  'https://www.linkedin.com/company/viking-septic-services/',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Ross Waste',
  'Fletcher',
  'North Carolina',
  '(828) 215-3988',
  'info@ezrolloffs.com',
  'https://www.ezrolloffs.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ross-waste',
  35.442299,
  -82.476809,
  '563 Mills Gap Rd',
  '28732',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipO-uMpf-sXiEPlOe6DP2MC3gKvF3vAcwQvSrEWG=w800-h500-k-no',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Hendersonville Portable Toilets',
  'Hendersonville',
  'North Carolina',
  '(828) 692-3438',
  NULL,
  'https://www.hendersonvilleportabletoilets.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'hendersonville-portable-toilets',
  35.425752,
  -82.3743794,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOlAxEDqfw-V5TVaPcSCUEXeLJdoIDBoE-ALy7O=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WNC Portable Toilet & Roll Off Container Service',
  'Unknown',
  'North Carolina',
  '(828) 586-5550',
  NULL,
  'https://aaagreenebros.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'wnc-portable-toilet-roll-off-container-service',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Able Rent A Jon & Waste Services',
  'Asheville',
  'North Carolina',
  '(828) 575-2253',
  'asheville@griffinwaste.com',
  'https://ablerentajon.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'able-rent-a-jon-waste-services',
  35.564133,
  -82.532725,
  '108 Sweeten Creek Rd',
  '28803',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPXLk41HbL3rjkDNirZZoLxCKrNSm5-ce2_YSpi=w800-h500-k-no',
  NULL,
  NULL,
  'https://www.instagram.com/able_asheville'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Porta Potty Rentals of Raleigh',
  'Raleigh',
  'North Carolina',
  '(916) 232-6092',
  'info@proportapottyrental.com',
  'https://proportapottyrental.com/locations/raleigh-nc',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'porta-potty-rentals-of-raleigh',
  35.837987,
  -78.640717,
  '4242 Six Forks Rd',
  '27609',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=PdItdqYaSELk-qs8XHMT3Q&cb_client=search.gws-prod.gps&w=800&h=500&yaw=242.23631&pitch=0&thumbfov=100',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Rentals - Reliable Onsite Services',
  'Raleigh',
  'North Carolina',
  '(919) 767-3400',
  'stylor@unitedrentals.com',
  'https://www.unitedrentals.com/locations/nc/raleigh/sanitation-rentals/85k?utm_source=google&utm_medium=distrib&utm_campaign=yext',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-rentals-reliable-onsite-services-3',
  35.8817418,
  -78.5911892,
  '2951 Rowland Rd',
  '27615',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMVfa9GaQuWwieT7o3WgQMrLuUcHtxtWEoDBc4c=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  'https://www.linkedin.com/company/trench-safety',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'P2 Potties, Inc',
  'Raleigh',
  'North Carolina',
  '(919) 818-2780',
  'p2potties@gmail.com',
  'https://p2potties.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'p2-potties-inc',
  35.863393,
  -78.3218574,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSyXHhXNY61W_PDsX5_HnJ5Iiz2n8RT03jC6I27lgPXZ-levkUELUT9v52JrZ-MoubTsizWKQlSkzaKgsJy3D3ISVBX_EaMK7K16orryvvSDRdAgn1locWRWhzseBfh1oEuIcN0C=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Posh Potty and Events',
  'Sanford',
  'North Carolina',
  '(919) 696-0188',
  'contact@sansoxygen.com',
  'https://poshpottyandevents.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'posh-potty-and-events',
  35.4407729,
  -79.399659,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNXuR74beNq4KOPUqyJXYWaIaDSu16Vyihps0-0=w800-h500-k-no',
  '{"Wednesday":"8AM-8PM"}',
  'https://www.linkedin.com/company/poshpottyandevents',
  'https://www.instagram.com/poshpottyandeventsnc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Transou''s Septic Tank Service & Rent-A-Jon',
  'High Point',
  'North Carolina',
  '(336) 331-5712',
  'service@transous.com',
  'https://www.transousseptic.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'transou-s-septic-tank-service-rent-a-jon',
  35.9543478,
  -80.0357041,
  '1407 Chestnut Dr B',
  '27262',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwKVoTWwJfsj-sUcSZaszNYMc8XcKUkpLcYn_InDxUtTiFD9ndyRFXHIaJGcmqrsfvvFjwD4NhGZwfHzw8l0Gc7hx-_Kib0Cids-n9vNLdofiHxmDZQxxjJzBE7Gql9mJZCcwdQ5Q=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/18322388/',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Tidy Services',
  'Salem',
  'North Carolina',
  '(540) 345-0168',
  'a.phillips@tidyinc.com',
  'https://www.tidyinc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'tidy-services',
  37.2689594,
  -80.023504,
  '2011 Cook Dr',
  '24153',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOnWwNPsn_MiOjOCN5qQDw0T1gB5ytHKUbeO3jq=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Home Outlet',
  'Winston-Salem',
  'North Carolina',
  '(336) 896-1014',
  'ecommercesupport@ecbarton.com',
  'https://www.homeoutlet.com/store/home-outlet-winston-salem-nc',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'home-outlet',
  36.1523245,
  -80.2817407,
  '7766 North Point Blvd',
  '27106',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipO8jH4GyTStnBaijG7dMNPrbUfBY3yBpS0n8m3F=w800-h500-k-no',
  '{"Wednesday":"8:30AM-6PM"}',
  'https://www.linkedin.com/company/e.c.-barton-\u0026-company',
  'https://www.instagram.com/homeoutletstores'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Comer Sanitary Service, Inc',
  'Thomasville',
  'North Carolina',
  '(336) 249-6920',
  'info@comersanitary.com',
  'https://www.comersanitary.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'comer-sanitary-service-inc',
  35.8553471,
  -80.1953768,
  '1176 Caldcleugh Rd',
  '27360',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=WDPSne9xi3C0eyPzuzrTxQ&cb_client=search.gws-prod.gps&w=800&h=500&yaw=313.63446&pitch=0&thumbfov=100',
  '{"Wednesday":"8AM-4PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Site Services',
  'Gastonia',
  'North Carolina',
  '(800) 864-5387',
  NULL,
  'https://www.unitedsiteservices.com/locations/north-carolina/charlotte/gastonia',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-site-services-1',
  35.2915232,
  -81.1861787,
  '212 Bulb Ave',
  '28052',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPcCah18-KlFRLgErmYw7_HIFPg_0uI6-T3Gtrd=w800-h500-k-no',
  '{"Wednesday":"7AM-8PM"}',
  'https://www.linkedin.com/company/united-site-services/',
  'https://www.instagram.com/unitedsiteservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WillScot',
  'Greensboro',
  'North Carolina',
  '(336) 698-9400',
  'wbowser@willscot.com',
  'https://www.willscot.com/en/locations/north-carolina/greensboro-nc-modular?utm_source=google&utm_medium=organic&utm_campaign=gbp-listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'willscot-1',
  36.0879075,
  -79.6846666,
  '5010 Burlington Rd',
  '27405',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNsbaBxH8Lz8-whm0_0QFEUq38CDN_tadFoUxup=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/william-scottsman',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'B&G Solutions of NC',
  'Unknown',
  'North Carolina',
  '(336) 688-7225',
  'micah@micahrich.com',
  'https://bgrestrooms.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'b-g-solutions-of-nc',
  35.1705075,
  -79.86097,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPILzDPLZgQQrTvhiZ30haBBq9CfmvBJd8cvT0k=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Red Carpet Services Portable Restrooms',
  'Unknown',
  'North Carolina',
  '(704) 668-2179',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'red-carpet-services-portable-restrooms',
  35.1705075,
  -79.86097,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwfVPlMy6S7X8RiMrnm-b5H9owJ72mgzWcxORQ9NL7cqrPWpvSkmWiQ0NLaVRaczs7EMtH7BKpVhWLLrR5PZ0OTcRs1rTHk1BZcEvIyjIPlz9n0qgWiH7_8etT1Q3FXzjdd9Grvps3ddkEI=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Raleigh Restroom Co',
  'Raleigh',
  'North Carolina',
  '(919) 307-9601',
  NULL,
  'https://raleighrestroom.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'raleigh-restroom-co',
  35.749054,
  -78.810294,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOkqwj-Ozhtuk9sCCm5jQgf9xDg9SIhSG0x3fnq=w800-h500-k-no',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Big Yellow Services, LLC',
  'Raleigh',
  'North Carolina',
  '(919) 321-9305',
  'info@bigyellowservice.com',
  'https://bigyellowservice.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'big-yellow-services-llc-1',
  35.7877274,
  -78.6479414,
  '608 W Johnson St #3',
  '27603',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNHPc317Lp5rhkcQAaBmoTHLnRLEQAhmwq9-8J_=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  'https://www.instagram.com/bigyellowservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Site Services',
  'Raleigh',
  'North Carolina',
  '(800) 864-5387',
  NULL,
  'https://www.unitedsiteservices.com/locations/north-carolina/raleigh/raleigh',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-site-services-2',
  35.791438,
  -78.555977,
  '708 Freedom Dr',
  '27610',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNJ6ZZtjoV7AIR5PZFX5FmC4poQQPDH4f0UGFnJ=w800-h500-k-no',
  '{"Wednesday":"4AM-5PM"}',
  'https://www.linkedin.com/company/united-site-services/',
  'https://www.instagram.com/unitedsiteservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WasteAway Site Services',
  'Mebane',
  'North Carolina',
  '(919) 621-9111',
  'alex@gowasteaway.com',
  'https://gowasteaway.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'wasteaway-site-services',
  36.0978725,
  -79.306862,
  '130 N Gibson Rd',
  '27302',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPkBY_wSMobmQljuAYgBzr5DVJNIyN6V19Rh15t=w800-h500-k-no',
  '{"Wednesday":"7:30AM-4:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Forever Clean',
  'Fuquay-Varina',
  'North Carolina',
  '(919) 552-0200',
  'jmcgi@foreverclean.com',
  'https://www.foreverclean.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'forever-clean-1',
  35.5140214,
  -78.8144768,
  '9027 Us-401',
  '27526',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwxoe89TstpFEmQ1L__Ui-DoBx5RnwAElNCfJY_ELEhpreJ3dMr5vTS6qv5SAQFm7sckIz_Wr2PMsB-ITXP4G9t7tXYTYrGUBf1EDYbw6PEXytL3x0mnmOUwTaW390FNF4OEvPC=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  'http://www.linkedin.com/company/6016927',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  '2 Pees in A Pot Mooresville North Carolina',
  'Mooresville',
  'North Carolina',
  '(704) 746-3574',
  'saoffice@2peesinapot.com',
  'https://www.2peesinapot.com/ncsc/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  '2-pees-in-a-pot-mooresville-north-carolina',
  35.5841938,
  -80.8629331,
  '179 Gasoline Aly Dr #104',
  '28117',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNNq65UVG5V_r34s1uiVar4RFTq7CLzrciuShbd=w800-h500-k-no',
  NULL,
  NULL,
  'https://www.instagram.com/2piap_sanantonio'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Ambroise Party Rentals',
  'Unknown',
  'North Carolina',
  '(984) 245-9641',
  NULL,
  'https://www.ambroisepartyrentals.square.site/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ambroise-party-rentals',
  37.2461494,
  -79.0016655,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPEohVCZuHg4KxaqZPrLYDU1SEq7tqkyeDmG9QZ=w800-h500-k-no',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Advanced Portable Toilets',
  'Rocky Mount',
  'North Carolina',
  '(252) 443-3670',
  'b.james@advancedportabletoiletsnc.com',
  'https://www.advancedportabletoiletsnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'advanced-portable-toilets',
  35.9869882,
  -77.7886406,
  '321 Jeffreys Rd',
  '27804',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPIRc4zlcGgN2ftnUdZKZDleSZWQ7sqaSpEEgTM=w800-h500-k-no',
  '{"Wednesday":"7:30AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'LoftieLoo',
  'Unknown',
  'North Carolina',
  '(714) 809-1872',
  'contact@loftieloo.com',
  'https://www.loftieloo.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'loftieloo',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  'http://instagram.com/loftieloo'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WillScot - Portable Storage & Offices',
  'Knightdale',
  'North Carolina',
  '(919) 365-0377',
  'wbowser@willscot.com',
  'https://www.willscot.com/en/locations/north-carolina/raleigh-nc?utm_source=google&utm_medium=organic&utm_campaign=gbp-listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'willscot-portable-storage-offices',
  35.8013461,
  -78.4348297,
  '618 Three Sisters Rd',
  '27545',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPBcHd2axVB9dS6MqOdisLGXBXG-kL-CdjTzc2q=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/william-scottsman',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'The Luxury Outhouse',
  'Rocky Mount',
  'North Carolina',
  '(252) 450-0888',
  NULL,
  'https://www.facebook.com/profile.php?id=100087264143846&mibextid=LQQJ4d',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'the-luxury-outhouse',
  35.8686395,
  -77.9198957,
  '5565 Bend Of The River Rd',
  '27803',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMZBMTffSQ5a9NCrjWAtbqrlWxEzU1Bv7lxMFUM=w800-h500-k-no',
  '{"Wednesday":"8AM-8PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'HBGB United LLC',
  'Raleigh',
  'North Carolina',
  '(984) 920-2950',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'hbgb-united-llc',
  35.8406256,
  -78.6720354,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipM_nbwykX9JjchJw0gHw9PdSbBZcTcKVocfcmV0=w800-h500-k-no',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Restrooms On The Go',
  'Fayetteville',
  'North Carolina',
  '(984) 310-9729',
  'astigma@astigmatic.com',
  'https://restroomsonthegousa.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'restrooms-on-the-go',
  35.2355259,
  -78.5952859,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOebmZTOy5Zc6phNtNkFstrcCyQP3j9vCmkwaY7=w800-h500-k-no',
  '{"Wednesday":"10AM-5PM"}',
  NULL,
  'https://www.instagram.com/restroomsonthegonc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Arrowse Potties',
  'Fayetteville',
  'North Carolina',
  '(910) 212-9238',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'arrowse-potties',
  35.0468657,
  -78.8791107,
  '351 Dick St',
  '28301',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipO18u8eshKUtQsOrjgRJABzmBixKpsHF7fc7DPO=w800-h500-k-no',
  '{"Wednesday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Surry Port-A-John & Dumpster Rental of NC, Inc.',
  'Mt Airy',
  'North Carolina',
  '(336) 789-6052',
  NULL,
  'https://www.surryportajohn.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'surry-port-a-john-dumpster-rental-of-nc-inc',
  36.4720409,
  -80.6134164,
  '1656 Park Dr',
  '27030',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSxbKBrT62jyjMSJ26dFveqRlHIjipLEF1lehDf4KpAZ4bFHz86blLSKsaQGIsD7YUPCrNH21fQmlYivZ4hB6F6gcAS6vu8wQpZtX1X2fzKjqhESAeKGA8Hfsj_5MZVnpFvNthx2=w800-h500-k-no',
  '{"Wednesday":"8AM-10PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Capital Waste',
  'Mt Airy',
  'North Carolina',
  '(336) 648-8808',
  'office@capitalwastetrash.com',
  'https://capitalwastetrash.com/?utm_source=omg-gbp&utm_medium=webclick',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'capital-waste-1',
  36.4717203,
  -80.6130695,
  '1668 Park Dr',
  '27030',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipM14thB5slYu9fJFhZL-tTJJVfW5YwvVjyCEd63=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Compass Construction Containers',
  'High Point',
  'North Carolina',
  '(336) 967-6002',
  'sales@compassconstructioncontainers.com',
  'https://compassconstructioncontainers.com/kernersville/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'compass-construction-containers',
  36.0771216,
  -80.0265451,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOmu-qARy8X5Nxn7rtOOF5TYhLMqLWAS9GmWUeS=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Newcomb Construction and Maintenance Company, INC.',
  'Winston-Salem',
  'North Carolina',
  '(336) 546-7303',
  NULL,
  'https://www.newcombmaintenance.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'newcomb-construction-and-maintenance-company-inc',
  36.0949007,
  -80.3766809,
  '5723 Country Club Rd M',
  '27104',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNtpjKzLeX468ZlbiESJgc-6aEFDXoQZHewzfBB=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  'https://instagram.com/newcomb_construction'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Rushin'' Roll-Offs',
  'Winston-Salem',
  'North Carolina',
  '(336) 999-0027',
  'sales@rushinrolloffs.com',
  'https://www.rushinrolloffs.com/winston-salem/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'rushin-roll-offs',
  36.077127,
  -80.1690525,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOLJpXygKzu_iWAbJ0bHSEssc5vi2VlmhO-q7N9=w800-h500-k-no',
  '{"Wednesday":"8AM-6PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Bargain Porta Potty Rental Winston-Salem',
  'Winston-Salem',
  'North Carolina',
  '(336) 697-6616',
  'info@budgetportapotty.com',
  'https://budgetportapotty.com/north-carolina/portable-toilet-rental-winston-salem-nc/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bargain-porta-potty-rental-winston-salem',
  36.094286,
  -80.277449,
  '159 S Stratford Rd',
  '27104',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=iiXev-yctf78shVjqngz9w&cb_client=search.gws-prod.gps&w=800&h=500&yaw=13.569945&pitch=0&thumbfov=100',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'New Life II Septic',
  'Winston-Salem',
  'North Carolina',
  '(336) 767-7760',
  NULL,
  'https://www.newlifesepticandjons.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'new-life-ii-septic',
  36.1127336,
  -80.2358478,
  '704 Edmon Ct',
  '27105',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPQhIo4bi9BOzjX-gW2Kf6MMp2NZhmS3y1aR-wy=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  'https://www.instagram.com/newlifeseptic'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Mills Septic Service',
  'Spring Hope',
  'North Carolina',
  '(252) 478-4133',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'mills-septic-service',
  35.9559017,
  -78.1057958,
  '312 N Louisburg Rd',
  '27882',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwOQA4Z5_FgJrkwYlLe1xPfzNLkylvfKpeahym8F0AV6xmTnIr8lbAkPRzfg0nOuIVBWQkmK7gl8W8Wehd6lbnweigVaAWKWAClN6a1yiwfDhObZptZiR0jCp4ymwlkPpaQkB4nXA=w800-h500-k-no',
  '{"Wednesday":"8:30AM-6:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Bragg Waste Services Inc',
  'Boiling Springs',
  'North Carolina',
  '(864) 599-0350',
  'k.bragg@braggwasteservices.com',
  'https://www.braggwasteservices.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bragg-waste-services-inc',
  35.0379519,
  -81.9761373,
  '169 Giles Dr',
  '29316',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPbGhWxHg3PDOoLGXi1Ej2j-3QXbYgmpgQ0YZMd=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  'https://www.linkedin.com/company/bragg-waste-services-inc',
  'https://www.instagram.com/bragg_wasteservicesinc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Vip To Go',
  'Ringwood',
  'North Carolina',
  '(877) 564-6977',
  'info@viptogo.com',
  'https://www.viptogo.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'vip-to-go',
  41.1244044,
  -74.277706,
  '21 Van Natta Dr',
  '7456',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNO_KuHfFiPgZKMYo0lEzOvkZwC1pt5kvFk85hd=w800-h500-k-no',
  '{"Wednesday":"6AM-8PM"}',
  'https://www.linkedin.com/company/vip-to-go-llc',
  'https://www.instagram.com/vipandjohntogo'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Kc property maintance and porta johns',
  'Rural Retreat',
  'North Carolina',
  '(336) 200-1010',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'kc-property-maintance-and-porta-johns',
  36.8539578,
  -81.2532193,
  '206 Hawthorne Holw Rd',
  '24368',
  NULL,
  0,
  NULL,
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Portable Outdoor Equipment',
  'Durham',
  'North Carolina',
  '(919) 471-1197',
  'kim@webact.com',
  'https://www.portableoutdoorequipmentnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'portable-outdoor-equipment',
  36.0658988,
  -78.9050369,
  '4914 N Roxboro St',
  '27704',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSywcdW3o4LQw-sVxIiD4jCCkD194Jwtz_5EVIwFd5UpSz1Kz-YQsd4qOqsoj-iwDnP2NxHz5xGpPy-22QWPRHPdsmf0Z2wKcpFjjWgN-7RtCJ7A1LD56sOxOZzIpBM--oa7kN-I=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Monarch Mobile Restrooms',
  'Lumberton',
  'North Carolina',
  '(877) 777-8027',
  'info@monarchmobilerestrooms.com',
  'https://www.monarchmobilerestrooms.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'monarch-mobile-restrooms',
  34.6095253,
  -79.0401976,
  '2870 Kenny Biggs Rd',
  '28358',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOvf1V4QH7wJvTH6WQUYQjfLQxCsuhgdspSAUv5=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  'https://www.instagram.com/monarchmobilerestrooms'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Restroom Trailer Solutions',
  'Lumberton',
  'North Carolina',
  '(919) 341-6737',
  'info@royalrestroomscarolinas.com',
  'https://www.restroomtrailersolutions.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'restroom-trailer-solutions',
  34.6169042,
  -79.0681486,
  '2353 Kenric Rd',
  '28360',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipO75Nmu3EvCslVJxTCsjvgq4fi-8tp9ncIZKWEl=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  NULL,
  'https://www.instagram.com/royal_restrooms_carolinas'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Rachel Locklear''s Portable Toilets',
  'Pembroke',
  'North Carolina',
  '(910) 734-1759',
  NULL,
  'https://www.rachellocklearsportabletoilets.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'rachel-locklear-s-portable-toilets',
  34.6923673,
  -79.1217328,
  '2161 Evergreen Church Rd',
  '28372',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipN5ch3R63jrb-HoBrYQZCuwVlemnjfsP45ifbn-=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'LuxeLavs',
  'Charlotte',
  'North Carolina',
  '(704) 669-8394',
  'hello@luxelavsnc.com',
  'https://www.luxelavsnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'luxelavs',
  35.2053334,
  -80.8221609,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMBo-UhZlxanLDnqaUVJwkstA1oOwz7fVdfhpnD=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Next Day Potty - Durham',
  'Charlotte',
  'North Carolina',
  '(980) 372-3724',
  'service@nextdaypotty.com',
  'https://www.nextdaypotty.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'next-day-potty-durham',
  35.1903231,
  -80.9278589,
  '2770 Yorkmont Rd',
  '28208',
  NULL,
  0,
  NULL,
  '{"Wednesday":"7AM-5PM"}',
  'https://www.linkedin.com/company/next-day-potty',
  'https://www.instagram.com/shopify'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Ground Thunder Toilets Inc',
  'Charlotte',
  'North Carolina',
  '(704) 791-4624',
  'info@gt1253.com',
  'https://groundthundernc.com/toilets/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ground-thunder-toilets-inc',
  35.3123001,
  -80.906635,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNwsows8KDm_EZeiIs9VAZdbiBubWwVXUrfQotn=w800-h500-k-no',
  '{"Wednesday":"7AM-4:30PM"}',
  NULL,
  'https://www.instagram.com/groundthundernc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Restroom Trailer Solutions',
  'Bessemer City',
  'North Carolina',
  '(704) 761-4523',
  'info@royalrestroomscarolinas.com',
  'https://www.restroomtrailersolutions.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'restroom-trailer-solutions-1',
  35.2681754,
  -81.3213111,
  '1404 Bessemer City-kings Mountain Hwy',
  '28016',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOYpCKSy6svj0d6eqK0EvrAs5EpOlGZ8NFaLJq2=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  NULL,
  'https://www.instagram.com/royal_restrooms_carolinas'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Lavish Loo, LLC',
  'Unknown',
  'North Carolina',
  '(704) 251-5059',
  'info@lavish-loo.com',
  'https://www.lavish-loo.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'lavish-loo-llc',
  34.2920456,
  -79.86097,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Carson''s Construction Containers',
  'Concord',
  'North Carolina',
  '(980) 581-2130',
  NULL,
  'https://carsonsconstructioncontainers.com/richfield/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'carson-s-construction-containers',
  35.4763189,
  -80.3799665,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNJleOE-uzp4jf3X_yh9OKZsSj8ck6X1MW_4eTa=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Tractor Supply Co.',
  'Harrisburg',
  'North Carolina',
  '(980) 258-0126',
  'chetan_sharma4u@yahoo.co.in',
  'https://www.tractorsupply.com/tsc/store_Harrisburg-NC-28075_2547',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'tractor-supply-co',
  35.3181766,
  -80.6703428,
  '5655 Tractor Ln',
  '28075',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSxanrG42Wq6GwxnnKlSOqq2YrgN_-2NfBR1PvADNH3WrPAKPbrwECU-M9l_9T7hsLSjpKJXYWRyUOxBzcf8SMQF007kK1B-VCF9qJz8xXyU7ew7Q7X6-A_T0VLYuC1w47oglFE=w800-h500-k-no',
  '{"Wednesday":"8AM-9PM"}',
  'http://www.linkedin.com/company/tractor-supply-company',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Lowe''s Home Improvement',
  'Concord',
  'North Carolina',
  '(704) 720-9000',
  'carlos.barrington@lowes.com',
  'https://www.lowes.com/store/NC-Concord/0697?cm_mmc=lod-_-c-_-lcl-_-awr-_-yxt-_-go-_-697-_-na-_-0-_-0&y_source=1_MTE4MzgzNS03MTUtbG9jYXRpb24ud2Vic2l0ZQ%3D%3D',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'lowe-s-home-improvement',
  35.425653,
  -80.61266,
  '940 Concord Pkwy N',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwpv5MaUGyGgGhaKdLtad-eDuw-MxRyhy5sbMjsAX9h9pxnbl6x_YxR84DjnD3cqUzp6ylCttcnsu2_U0uLinozoe_COLacLXCcUrvqNVqRRB7IU9CR94mb3hADLViuw7UU7YYB=w800-h500-k-no',
  '{"Wednesday":"6AM-9PM"}',
  'https://www.linkedin.com/company/lowe%27s-home-services-llc',
  'https://instagram.com/loweshomeimprovement'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'BJ''s Wholesale Club',
  'Concord',
  'North Carolina',
  '(704) 979-3900',
  'lcoffee@bjsrestaurants.com',
  'https://www.bjs.com/cl/concord/0134/?trc=locl%7Cggmb%7Cweb%7Cxlob%7Cxlob%7Clocdist%7C0134%7Cstore%7C20240816',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bj-s-wholesale-club',
  35.3642908,
  -80.7132909,
  '7905 Lyles Ln Nw',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzQV-PB7NchhV2vkSn7Xa-3YGi3QWUo1eIm2ZKfURr-wgc7tu8h6hwl_UiTO3c635PWm0aYvDvcGlbuYGIhB4PxKQ34VDjOAgr2HAJuq56V3SBNvzLcAmDzy_VUp4Ntcneb0VE=w800-h500-k-no',
  '{"Wednesday":"8AM-9PM"}',
  'https://www.linkedin.com/company/bj-s-services',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WillScot',
  'Fletcher',
  'North Carolina',
  '(828) 585-5031',
  'wbowser@willscot.com',
  'https://www.willscot.com/en/locations/north-carolina/asheville-nc?utm_source=google&utm_medium=organic&utm_campaign=gbp-listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'willscot-2',
  35.4130352,
  -82.5041072,
  '30 Old Brickyard Rd',
  '28732',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipObelEe-pEydyXuOHpF1aIU5D3Omc397kt3_xVd=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/william-scottsman',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Jeff''s Portable Toilets',
  'Robersonville',
  'North Carolina',
  '(252) 795-4782',
  NULL,
  'https://jeffsportabletoiletsnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'jeff-s-portable-toilets',
  35.8250906,
  -77.2510475,
  '204 Ne Railroad St',
  '27871',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOkVzvjtjNQyjIdj8ULsNfKOLtNVEzovJp51HQF=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'REI',
  'New York',
  'North Carolina',
  '(212) 680-1938',
  'tfagerness@rei.com',
  'https://www.rei.com/stores/soho?y_source=1_MTQ1MzQzNC03MTUtbG9jYXRpb24ud2Vic2l0ZQ%3D%3D',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'rei',
  40.724848,
  -73.9952085,
  '303 Lafayette St',
  '10012',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwcGqQTx-0S58rUmVagB5p4oDYIPXJ2PyDlQJB6PT84zWJyFJwx1m7i_GS38mpfoqYLYsPSoTrmFIVjIfsQpB_psP3T8Y4sDWxM2kOYjy_yRURQNwn4MEXuz47Z6jGkczMgBbEN=w800-h500-k-no',
  '{"Wednesday":"10AM-8PM"}',
  'http://www.linkedin.com/company/rei',
  'https://www.instagram.com/rei'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Grainger Industrial Supply',
  'Brooklyn',
  'North Carolina',
  '(800) 472-4643',
  'brad.nollmeyer@grainger.com',
  'https://www.grainger.com/branch/Brooklyn-Branch-556',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'grainger-industrial-supply',
  40.6595273,
  -74.0014591,
  '815 3rd Ave',
  '11232',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzcerogl4EHFJE2FGUtmxUXAI30i3i3TymPnr3Le4sz5Av3AjEI_hKN7z6IQOd8tH_cEH7nXzKwLUrkuP_1zblINufEAHwCtTNDRPwwCJ7dmw7e6Pk_Avjc_HUTq8tkQMtQaChelQ=w800-h500-k-no',
  '{"Wednesday":"7:30AM-4PM"}',
  'http://www.linkedin.com/company/w.w.-grainger',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Attends/Domar Healthcare Warehouse - Shipping And Receiving',
  'Greenville',
  'North Carolina',
  '',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'attends-domar-healthcare-warehouse-shipping-and-receiving',
  35.6444564,
  -77.3573056,
  '350 Industrial Blvd',
  '27834',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwY-WThBHxeMiZynr32RHEyWKe2Z9N-ES7l1y1hhwF8ljKHtDOIoxIihO14XVycXxsiWngynZ9TEw39DS2U_PGUUaOdXFTa2F3rhcwishd2eO5MfnTV5dV5CwJFmKsdmwC86AZbTQ=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Agri Supply of Greenville',
  'Greenville',
  'North Carolina',
  '(800) 445-6814',
  'erik@triadanalytics.com',
  'https://www.agrisupply.com/retail-store-greenville-north-carolina/a/88/?utm_source=google&utm_medium=organic&utm_campaign=GMB',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'agri-supply-of-greenville',
  35.6409132,
  -77.3345245,
  '4500 M.l.k. Jr Hwy',
  '27834',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzCbh1mGZued9K7071RZHNLpGTY5GhCpBJsgOP7m-7jtKHPVngnFDfA9mOdVwzgyjpwGQQVQ-1eoxpIYd5733FsvZSHcB5IGts8MRWSOFcJDJcaFiYrM0Ek6aoeX1MPvyu0W4ig=w800-h500-k-no',
  '{"Wednesday":"7:30AM-5:30PM"}',
  'http://www.linkedin.com/company/agri-prosper',
  'https://www.instagram.com/agrisupplyco/'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Robersonville Ice & Coal Septic service',
  'Robersonville',
  'North Carolina',
  '(252) 795-4782',
  NULL,
  'https://jeffsportabletoiletsnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'robersonville-ice-coal-septic-service',
  35.8248535,
  -77.2514938,
  '202 Ne Railroad St',
  '27871',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOQC0vet1qKr3oV8RgXi81LpJntGnv31SHF7nxc=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WasteAway Site Services - Smithfield',
  'Smithfield',
  'North Carolina',
  '(919) 621-9111',
  'alex@gowasteaway.com',
  'https://gowasteaway.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'wasteaway-site-services-smithfield',
  35.5031669,
  -78.4297515,
  '258 County Home Rd',
  '27577',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPiCxSiB3k6Fa-syBth1bn4WWdJ-9VZWrR-Apzt=w800-h500-k-no',
  '{"Wednesday":"7:30AM-4:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WillScot',
  'Maysville',
  'North Carolina',
  '(252) 522-2340',
  'wbowser@willscot.com',
  'https://www.willscot.com/en/locations/north-carolina/maysville-nc?utm_source=google&utm_medium=organic&utm_campaign=gbp-listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'willscot-3',
  34.8515699,
  -77.2723807,
  '6152 New Bern Hwy',
  '28555',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPXV_7RNb1i_uiT29RdpMqoPWCErlS89DIsjiB_=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/william-scottsman',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Advanced Portable Toilets',
  'Havelock',
  'North Carolina',
  '(252) 247-3066',
  'b.james@advancedportabletoiletsnc.com',
  'https://www.advancedportabletoiletsnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'advanced-portable-toilets-1',
  34.8818837,
  -76.8823313,
  '802 Fontana Blvd',
  '28532',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPIRc4zlcGgN2ftnUdZKZDleSZWQ7sqaSpEEgTM=w800-h500-k-no',
  '{"Wednesday":"7:30AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'The Home Depot',
  'Kannapolis',
  'North Carolina',
  '(704) 786-8300',
  'saber32@excite.com',
  'https://www.homedepot.com/l/Kannapolis/NC/Kannapolis/28083/3607?emt=MSGMBGoogleMaps',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'the-home-depot',
  35.4486864,
  -80.6053255,
  '3313 Cloverleaf Plaza',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzrqgODS4fwmHKCHuzWmvGLsJElOC1xQGWNrN-Kv-xMGCFYU8mtRuDWJSVRclbXhF6-JUX-5W5fmKKNRVE2tq_VxpMbV4XZDvFKiPVb2muvY8EY-H7ZcGX8Ceq-XQ6tcblKIKPz=w800-h500-k-no',
  '{"Wednesday":"6AM-9PM"}',
  'https://www.linkedin.com/company/home-depot-at-home-services',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Satellite Shelters, Inc.',
  'Denver',
  'North Carolina',
  '(704) 271-5040',
  'tallyho2u@mchsi.com',
  'https://www.satelliteco.com/locations/charlotte-nc/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'satellite-shelters-inc',
  35.5641999,
  -81.054486,
  '4688 Mountain Creek Ave Ste 101',
  '28037',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPHCDcd06Rf9j_svR525SPsCxh1kVzqfv-TmNJ0=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  'https://www.linkedin.com/company/satellite-shelters-inc',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Kohl''s',
  'Kannapolis',
  'North Carolina',
  '(704) 788-2256',
  'julie.eberly@kohls.com',
  'https://www.kohls.com/stores/nc/kannapolis-649.shtml?utm_source=google&utm_medium=organic&utm_campaign=local',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'kohl-s',
  35.4609413,
  -80.5937652,
  '2450 Supercenter Dr Ne',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSyy9fpI7lef1rrx6PaNXEuDq85XcdrwCI3sLxb1iYJXOEivw-c1Ax5bVeNXzccPhzuz69VD2vpVAlJeL78beAqraPKKVTnuz28vpt5aMHY2odc82E_NWFbX1q9kBV2ajMMBZ2hNOQ=w800-h500-k-no',
  '{"Wednesday":"9AM-10PM"}',
  'https://www.linkedin.com/company/kohl%E2%80%99s',
  'https://www.instagram.com/kohls'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'WillScot',
  'Charlotte',
  'North Carolina',
  '(704) 597-9544',
  'wbowser@willscot.com',
  'https://www.willscot.com/en/locations/north-carolina/charlotte-nc-storage?utm_source=google&utm_medium=organic&utm_campaign=gbp-listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'willscot-4',
  35.3181608,
  -80.8420424,
  '7121 Statesville Rd',
  '28269',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPzx4pYt2z6nAxD_JOZ1EyOyXphmtUYlp_Q_8lm=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/william-scottsman',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Safe Home Pro, Inc.',
  'Cornelius',
  'North Carolina',
  '(704) 948-4125',
  'info@safehomepro.com',
  'https://www.safehomepro.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'safe-home-pro-inc',
  35.46055,
  -80.8530443,
  '18635 Starcreek Dr Suite B',
  '28031',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSx315Rnc-IZxi7NlsG2XGcPOSZSlObv1KpBk8jQaS1xlKGQ7_gUSK6v-xtcP1ftmiLH6TCgScZ7ktY5CM-YoyhU-8YPJ254rgF8FMRGmJteuRsmUK5eTTtXGP4YfxajeqshYutX=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'http://www.linkedin.com/company/2794375',
  'https://www.instagram.com/safehomepro'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Sam''s Club',
  'Kannapolis',
  'North Carolina',
  '(704) 792-9000',
  'dave@whalsay.com',
  'https://www.samsclub.com/club/4797-kannapolis-nc',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'sam-s-club',
  35.4633922,
  -80.5906341,
  '2421 Supercenter Dr Ne',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzEqpa1y5a-Fik1OhAcnrCDz96g8cghyXiSTUn9NfvcHaG_6VN7HC0rd55p--X7HbhEYXS1CRAz-soKjSJunPLmw6YQ4YnDigXXiPwUEU1kCUrW_gZox44HG4b1b4csra8fZ8V5=w800-h500-k-no',
  '{"Wednesday":"9AM-8PM"}',
  'https://www.linkedin.com/company/sam''s-club',
  'https://www.instagram.com/samsclub'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Goodwill Store and Donation Center',
  'Kannapolis',
  'North Carolina',
  '(704) 784-9000',
  'elizabeth.walls@centerstone.org',
  'https://www.goodwillnwnc.org/locations/goodwill-store-east-kannapolis/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'goodwill-store-and-donation-center',
  35.4686632,
  -80.5909898,
  '2303 Coldwater Ridge Dr',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSw92-dPwpLcw7GrvVbaLnIXfpcgg_aSIGLYO-tqEhWJtOKTdKUiCI-VY6E8blAUbZ_K2XM9SwecJaAac8fpNr1azOR7rig0krZMa83GOoYmVJGz7RG0U0qNbdGz7dJrwh-3yLKp=w800-h500-k-no',
  '{"Wednesday":"10AM-8PM"}',
  'https://www.linkedin.com/company/goodwillnwnc/',
  'https://www.instagram.com/goodwillnwnc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Goodwill Store and Donation Center',
  'Kannapolis',
  'North Carolina',
  '(704) 938-2218',
  'elizabeth.walls@centerstone.org',
  'https://www.goodwillnwnc.org/locations/goodwill-store-south-kannapolis/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'goodwill-store-and-donation-center-1',
  35.4690116,
  -80.6106191,
  '1806 S Cannon Blvd',
  '28083',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=LUInOJcazvj0GQr1F1KLYQ&cb_client=search.gws-prod.gps&w=800&h=500&yaw=256.4132&pitch=0&thumbfov=100',
  '{"Wednesday":"10AM-8PM"}',
  'https://www.linkedin.com/company/goodwillnwnc/',
  'https://www.instagram.com/goodwillnwnc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Ground Thunder Construction, Inc.',
  'Charlotte',
  'North Carolina',
  '(704) 791-4624',
  'info@gt1253.com',
  'https://groundthundernc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ground-thunder-construction-inc',
  35.2606025,
  -80.8093159,
  '511 Johnson Rd',
  '28206',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPTlX_NdtjcM7O_v6-fjkh3CogSLlprgVtUXed8=w800-h500-k-no',
  '{"Wednesday":"6AM-5PM"}',
  NULL,
  'https://www.instagram.com/groundthundernc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Lowe''s Home Improvement',
  'Kannapolis',
  'North Carolina',
  '(704) 720-9810',
  'carlos.barrington@lowes.com',
  'https://www.lowes.com/store/NC-Kannapolis/2368?cm_mmc=lod-_-c-_-lcl-_-awr-_-yxt-_-go-_-2368-_-na-_-0-_-0&y_source=1_MTE4MzgzNi03MTUtbG9jYXRpb24ud2Vic2l0ZQ%3D%3D',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'lowe-s-home-improvement-1',
  35.4689509,
  -80.5872738,
  '3025 Dale Earnhardt Blvd',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzrF4XGOOT2TuPKVHZxE_NiAf-LpA9HI_kbNgwyNe8CItBy-cGwKT1KW3Cq36lve-EAR2McmYf8mJfc-JYjaBf3ZAKtieqFikgxsa7w-U-9lIrSEtbHBOo7y3sfrGcSZJRel1E=w800-h500-k-no',
  '{"Wednesday":"6AM-9PM"}',
  'https://www.linkedin.com/company/lowe%27s-home-services-llc',
  'https://instagram.com/loweshomeimprovement'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Jim''s Liquid Waste Hauling LLC',
  'Unknown',
  'North Carolina',
  '(252) 830-1016',
  'jlwh@earthlink.net',
  'https://www.jimsliquidwaste.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'jim-s-liquid-waste-hauling-llc',
  35.1705075,
  -79.86097,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOchMR4dsRXW80Pl-oiAmPy9_PHdMVpthDC5IgJ=w800-h500-k-no',
  '{"Wednesday":"7:30AM-4PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'redbox+ Dumpsters of Eastern NC',
  'Greenville',
  'North Carolina',
  '(252) 300-3322',
  'suncoast@redboxplus.com',
  'https://www.redboxplus.com/eastern-nc/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'redbox-dumpsters-of-eastern-nc',
  35.6890081,
  -77.520769,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNa-Sc_IBAoVafVPfGilSx8E5gEhlZLYg2VuCBB=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/redboxplus-of-lehigh-valley/',
  'https://www.instagram.com/redboxplusdumpsterscorp'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Ace Construction Containers',
  'Greenville',
  'North Carolina',
  '(252) 999-6412',
  'sales@aceconstructioncontainers.com',
  'https://aceconstructioncontainers.com/greenville/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ace-construction-containers',
  35.599262,
  -77.4175016,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMfI90zYeqbXCqiOkzQzuFAa3AW8i5LI_65VSbe=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'A & E Portable Restrooms',
  'Unknown',
  'North Carolina',
  '(252) 537-2338',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'a-e-portable-restrooms',
  36.2867031,
  -77.4651024,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Craven Ag Services, Inc.',
  'New Bern',
  'North Carolina',
  '(252) 633-5334',
  'cas71@suddenlink.net',
  'https://cravenag.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'craven-ag-services-inc',
  35.1658027,
  -77.1619378,
  '2115 Nc-55',
  '28562',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMqXoxLkozyWTi3xuVSAABE7H0YPXCTnd9tWUsk=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/craven-ag-services-inc',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Classic Party & Equipment Rentals',
  'Ahoskie',
  'North Carolina',
  '(252) 209-8400',
  NULL,
  'https://classicrentalsnc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'classic-party-equipment-rentals',
  36.2696151,
  -76.9682237,
  '2109 Us-13',
  '27910',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSztP9e0-T19MBlDCeY8QzfSZNGZ3aMoep9SIy-WhwOpKIK7rf4p2yvTjZ9kDUyZ6WaUaoWrfef9Nfo_trtlm0rO3m44Vvg3Z7yzPYh0fdTdQtnlwcOdAJouXyaVlHOeFPF5vb9-F1Q7pYxf=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  'https://www.instagram.com/classicrentalsnc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Gladiator Dumpster Rental',
  'Greenville',
  'North Carolina',
  '(252) 999-6931',
  'sales@gladiatordumpsterrental.com',
  'https://gladiatordumpsterrental.com/greenville/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'gladiator-dumpster-rental',
  35.599262,
  -77.4175016,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNeZp94fILl_nVO-pJ9eiv9Gm8RDXlLJXve7gil=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Site Services of Apex NC',
  'Apex',
  'North Carolina',
  '(800) 864-5387',
  'help-myuss@unitedsiteservices.com',
  'https://www.unitedsiteservices.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-site-services-of-apex-nc',
  35.7474597,
  -78.8976658,
  '2532b Us-64',
  '27523',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPSXLn60DfzocicTRgA1dl_j9EWLSuCu50Whtoc=w800-h500-k-no',
  NULL,
  'https://www.linkedin.com/company/united-site-services/',
  'https://www.instagram.com/unitedsiteservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'BSI Portable Toilets',
  'Greer',
  'North Carolina',
  '(864) 884-0758',
  'andy@burnssepticsc.com',
  'https://www.burnssepticsc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bsi-portable-toilets',
  35.007698,
  -82.256972,
  '3685 Sc-14',
  '29651',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPpLoKxuwbn3mlq_0aGchrZ4BABwKhgYTkNnzWh=w800-h500-k-no',
  NULL,
  NULL,
  'https://www.instagram.com/burnssepticsc'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'BAR Environmental Services LLC',
  'Wellford',
  'North Carolina',
  '(864) 336-5243',
  'brandon@baressc.com',
  'https://baressc.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bar-environmental-services-llc',
  34.9405868,
  -82.0942761,
  '105 David Ave',
  '29385',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNwac39xsM85ri3MBdpONFnnIO8OxDQFgLEtIVo=w800-h500-k-no',
  '{"Wednesday":"8AM-3:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Royal Flush Toilet Rental',
  'Piedmont',
  'North Carolina',
  '(864) 238-8800',
  NULL,
  'https://www.royalflushtoiletrental.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'royal-flush-toilet-rental',
  34.712743,
  -82.391284,
  '7766 Augusta Rd',
  '29673',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPxbQWC0ueRoZdiqjLQo8EWPdxgJ_cAw1pHaXo=w800-h500-k-no',
  '{"Wednesday":"7AM-5:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Wesson Septic Tank Services Inc',
  'Shelby',
  'North Carolina',
  '(704) 487-9997',
  'kbeaver@wessonseptictanks.com',
  'https://www.wessonseptictanks.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'wesson-septic-tank-services-inc',
  35.2731556,
  -81.5957432,
  '707 Poplar Springs Church Rd',
  '28152',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSyzTq1lY1gYacCZLysgjFETGSXzZurbFIV19WVcdS5F2ohDsuR53cT2JjGFTHb541ZREIsYCbs0j3dyEO8MazA8oXTJMNtbXc0X0fUgbKorykm3AjhHKiCSpzrNmqwk4PNgZp6K=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Site Services',
  'Duncan',
  'North Carolina',
  '(800) 864-5387',
  NULL,
  'https://www.unitedsiteservices.com/locations/south-carolina/greenville/duncan',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-site-services-3',
  34.8758546,
  -82.1228874,
  '1655 Duncan Reidville Rd',
  '29334',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=eT-9Oo9n2ZOSU4_FxeXMaw&cb_client=search.gws-prod.gps&w=800&h=500&yaw=13.009139&pitch=0&thumbfov=100',
  '{"Wednesday":"4AM-5PM"}',
  'https://www.linkedin.com/company/united-site-services/',
  'https://www.instagram.com/unitedsiteservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Rentals - Reliable Onsite Services',
  'Spartanburg',
  'North Carolina',
  '(864) 345-7371',
  'stylor@unitedrentals.com',
  'https://www.unitedrentals.com/locations/sc/spartanburg/sanitation-rentals/c84?utm_source=google&utm_medium=distrib&utm_campaign=yext',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-rentals-reliable-onsite-services-4',
  34.9691102,
  -81.9317423,
  '402 Mccravy Dr',
  '29303',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMSrO9tIfeks6mYCbje6IIuazcShfZfygUxJfTg=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'https://www.linkedin.com/company/trench-safety',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'HST LLC',
  'Mooresboro',
  'North Carolina',
  '(828) 453-0548',
  NULL,
  'https://www.hstnorthcarolina.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'hst-llc',
  35.2885646,
  -81.7517825,
  '1356 Race Path Church Rd',
  '28114',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMFtlGaQ8cuPGFT5_ce0K8NT9ev1hySmKMaGd6S=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Anna Portable Toilets',
  'Greenville',
  'North Carolina',
  '(864) 405-9943',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'anna-portable-toilets',
  34.8197412,
  -82.2818433,
  '10 Hendrix Dr',
  '29607',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNTAGNeuDDe_PCaLmp6byOiA2MPdUY_QkiK4MeP=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'LittleJohn Portable Toilets',
  'Greenville',
  'North Carolina',
  '(864) 295-2969',
  'qdexxqdexxmail@4sale4u.net',
  'https://littlejohntoilets.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'littlejohn-portable-toilets',
  34.7975967,
  -82.4376833,
  '312 Park Commerce Rd',
  '29611',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOpDsAt0SgXgYfosDZQ9caKmwDZ69SXxhknF2yh=w800-h500-k-no',
  '{"Wednesday":"7:30AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Garbage Pal',
  'Fletcher',
  'North Carolina',
  '(828) 280-8868',
  'jmb@mygarbagepal.com',
  'https://www.mygarbagepal.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'garbage-pal',
  35.4098402,
  -82.5085004,
  '145 Brickton Dr',
  '28732',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOeW1J6tqisgCuc43ltouZymf2HEQc3jMYY0VO2=w800-h500-k-no',
  '{"Wednesday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Southside Building Center',
  'Winston-Salem',
  'North Carolina',
  '(336) 784-0396',
  'newsletter@southsidebuildingcenter.com',
  'https://www.southsidebuildingcenter.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'southside-building-center',
  36.0542349,
  -80.2101712,
  '3410 Thomasville Rd',
  '27107',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSxWpMCFN21ntNxZSNh5eZng5GZVZRGmreW5MXEVLOZU5DtOLVjw5Bxoi3Vls24i1LPTP2x83k70pYryBZHilM5y5J4fpIk205djyYL56tmgsOTrz_s0LZNSV5ueWvjUiJT1MP6E=w800-h500-k-no',
  '{"Wednesday":"7AM-6PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Pilot Travel Center',
  'Kannapolis',
  'North Carolina',
  '(704) 938-6800',
  'social@pilotflyingj.com',
  'https://locations.pilotflyingj.com/us/nc/kannapolis/2825-lane-st',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'pilot-travel-center',
  35.4984556,
  -80.5609626,
  '2825 Ln St',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzqfu8U_UuRVz-ntW725CEXmJuOggEQUh-_ReS3cYLH6llXMpXUkAWQKc7lgH8Qi8BxnivYGA8BR6LuTqnIa4TJAQwe8em6C21bsuiokO9KIUZzAdWWQl9X09L3HktyXpPLfhQQ=w800-h500-k-no',
  '{"Wednesday":"Open 24 hours"}',
  NULL,
  'https://www.instagram.com/pilotflyingj'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'pOpshelf',
  'Concord',
  'North Carolina',
  '(704) 800-6638',
  'customercare@popshelf.com',
  'https://www.popshelf.com/store/23379',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'popshelf',
  35.3726153,
  -80.7156378,
  '8062 Concord Mills Boulevard #10',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOMnegj7iIr-ju3HHyZYmn_k7FwXRmpDZQBnvFa=w800-h500-k-no',
  '{"Wednesday":"9AM-9PM"}',
  'https://www.linkedin.com/company/popshelf',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Pointer''s Ace Hardware',
  'Concord',
  'North Carolina',
  '(704) 786-8195',
  'info@pointershardware.com',
  'https://www.pointershardware.com/?utm_source=google&utm_medium=local&utm_campaign=localmaps&utm_content=17707',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'pointer-s-ace-hardware',
  35.4205084,
  -80.6165294,
  '775 Concord Pkwy N',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNIYBEFXNnfMyayaPlFvUmW7893u26yN1at5lTJ=w800-h500-k-no',
  '{"Wednesday":"8AM-6PM"}',
  NULL,
  'https://www.instagram.com/pointershardware'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Tractor Supply Co.',
  'Concord',
  'North Carolina',
  '(704) 782-2462',
  'chetan_sharma4u@yahoo.co.in',
  'https://www.tractorsupply.com/tsc/store_Concord-NC-28027_464',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'tractor-supply-co-1',
  35.3924467,
  -80.6195692,
  '104 Commercial Park Dr Sw',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSy2gUUlQWtUslP6Y6KBZurEEaBnjR2Z5mOs1FOb1eyqIjIIgf9Z1oKyUBlmyQBySKSnMLgn530OLQXUSc9ROmgwIf3P2EX3NzV_g8M7lopS_7nJ9A44uPq6iNu-O-ItpsmlhTCD6Q=w800-h500-k-no',
  '{"Wednesday":"8AM-9PM"}',
  'http://www.linkedin.com/company/tractor-supply-company',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Staples',
  'Concord',
  'North Carolina',
  '(704) 262-3503',
  'gm1078@staples.com',
  'https://stores.staples.com/nc/concord/1480-concord-pkwy-north-suite-350?cmpid=st_ll_goo&cid=LS:RETAIL:G&utm_source=google&utm_medium=organic&utm_campaign=Google_Business_Listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'staples',
  35.4398178,
  -80.6034517,
  '1480 Concord Pkwy N Suite 350 Suite 350',
  '28025',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSxiF6q007BSPDQfOYwKXyIMN1hYds40Kwc0v_M2CQYjBOBKn0GphIXn0mnyVwRojyvypLmMCsTQU34QhrunnkIsDW12r3pA2B55EwQwYn3gE_NZdulmGvQbVlL7ZmPnUP5I0wTo=w800-h500-k-no',
  '{"Wednesday":"9AM-8PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Bass Pro Shops',
  'Concord',
  'North Carolina',
  '(704) 979-2200',
  'manager_san_jose_ca@basspro.com',
  'https://stores.basspro.com/us/nc/concord/8181-concord-mills-blvd.html?y_source=1_MzAxMTQ5OC03MTUtbG9jYXRpb24ud2Vic2l0ZQ%3D%3D',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bass-pro-shops',
  35.3672812,
  -80.7191974,
  '8181 Concord Mills Boulevard',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSziD_LzIt1dnAEcM1ISYEjmZH9KR3J4s20LCLC6y7_JiAGqwNjAq_R2OC1X9hw9pCXXUcMgkKOyo5nroLgwEjwYWLiCFKZ6COwCPwAwcJbdw6R1evMc5X3GBoGdKXohVrnGfoMCmQ=w800-h500-k-no',
  '{"Wednesday":"9AM-9PM"}',
  NULL,
  'https://www.instagram.com/bassproshops'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Blue Compass RV Charlotte',
  'Concord',
  'North Carolina',
  '(704) 743-5280',
  'broc.hervey@bluecompassrv.com',
  'https://www.bluecompassrv.com/locations/north-carolina/charlotte?utm_source=google-gmb&utm_medium=organic&utm_campaign=charlotte',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'blue-compass-rv-charlotte',
  35.4339059,
  -80.6632908,
  '5051 Davidson Hwy',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMYlSRd4d113zqjwNSi8yYerJbD6A3AvnJHbfWd=w800-h500-k-no',
  '{"Wednesday":"9AM-7PM"}',
  'https://www.linkedin.com/company/bluecompassrv',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Kohl''s',
  'Concord',
  'North Carolina',
  '(704) 549-9847',
  'julie.eberly@kohls.com',
  'https://www.kohls.com/stores/nc/concord-1525.shtml?utm_source=google&utm_medium=organic&utm_campaign=local',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'kohl-s-1',
  35.373926,
  -80.7337412,
  '8875 Christenbury Pkwy',
  '28027',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSz7bgckL3Gs6W8F1Rah7oTGc4RB3VN0MPqvzUKdSX3swWwBX382RaalgL-d-4TBZTP0S8_OtxovM3fPD9uWkgtBCFfH5br9yGMxnlJCNDEOb_wroI4oKW1EDhAFcj57KmwTj8v7fw=w800-h500-k-no',
  '{"Wednesday":"9AM-10PM"}',
  'https://www.linkedin.com/company/kohl%E2%80%99s',
  'https://www.instagram.com/kohls'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Discount Porta Potty Rental Cary',
  'Cary',
  'North Carolina',
  '(919) 343-0864',
  NULL,
  'https://www.portablepotties.com/toilet-rental-cary-nc',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'discount-porta-potty-rental-cary',
  35.8185263,
  -78.8040704,
  '1015 Passport Way',
  '27513',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=KxcqxrB7s3-AWbJIrupNMQ&cb_client=search.gws-prod.gps&w=800&h=500&yaw=168.24617&pitch=0&thumbfov=100',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Oak City Restrooms',
  'Cary',
  'North Carolina',
  '(919) 335-4926',
  'contact@mysite.com',
  'https://oakcityrestrooms.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'oak-city-restrooms',
  35.866758,
  -78.7391625,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOECML3EsGN_6HP7ar_M4CGjPTOxhVZkYteRY8e=w800-h500-k-no',
  '{"Wednesday":"8AM-8PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'United Site Services',
  'Barhamsville',
  'North Carolina',
  '(800) 864-5387',
  NULL,
  'https://www.unitedsiteservices.com/locations/virginia/richmond/barhamsville',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'united-site-services-4',
  37.456439,
  -76.8439486,
  '18423 Heath Industrial Dr',
  '23011',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPFuigBD6HVDFw2FucAIuedKDjLER-Jx8GVycae=w800-h500-k-no',
  '{"Wednesday":"7AM-8PM"}',
  'https://www.linkedin.com/company/united-site-services/',
  'https://www.instagram.com/unitedsiteservices'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Inflate-A-Party',
  'Apex',
  'North Carolina',
  '(919) 740-2429',
  'rentals@inflate-a-party.com',
  'https://www.inflate-a-party.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'inflate-a-party',
  35.7370147,
  -78.9815119,
  '11781 Us-64',
  '27523',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipO5N2g6oMfxhwBWovdvpF1CfjeRZVIh8rHCEZsH=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  NULL,
  'https://www.instagram.com/inflateaparty'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Northwest Hardware Company',
  'Winston-Salem',
  'North Carolina',
  '(336) 768-3886',
  'arusk@northwesthardware.com',
  'https://www.northwesthardware.com/?utm_source=google&utm_medium=local&utm_campaign=localmaps&utm_content=17486',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'northwest-hardware-company',
  36.1167052,
  -80.3162378,
  '3450 Robinhood Rd',
  '27106',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzxKVSt9hnfzHMi6JWWpQnkA0n-LKaiD70H_UjyyDCNUICDeFoQevQbKRoq-dUe-gBCj2Q429ATpDUulIaRz6Fjv52b3PiIN01kfQhvMusr2SYgneP863cq1u0XQ0d3CU2flSU=w800-h500-k-no',
  '{"Wednesday":"7:45AM-7:15PM"}',
  NULL,
  'https://www.instagram.com/nwacehardware'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Palmetto Oxygen, an AdaptHealth company',
  'Kannapolis',
  'North Carolina',
  '(704) 317-1903',
  'chamblissb@adapthealth.com',
  'https://www.adapthealth.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'palmetto-oxygen-an-adapthealth-company',
  35.4684683,
  -80.5961316,
  '1767 Old Earnhardt Rd',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwcDtRg4O-ROEF_kjPW1z0z5l0__8YfJDH33KVWZpcPdO4a0ntnhkeOVEcazPHO8uQ46WrD3S8zV2pBEWpHfMzytIKfaOIIdHJUZM9ov39Xs94sOqN9KTIlWJyvcEVx-ZFRcTRd=w800-h500-k-no',
  '{"Wednesday":"9AM-5PM"}',
  'https://www.linkedin.com/company/adapthealth---missouri-llc',
  'https://www.instagram.com/adapthealthco'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Shortys Septic LLC',
  'Rockingham',
  'North Carolina',
  '(910) 995-9040',
  'shortysseptic@gmail.com',
  'https://www.shortysseptic.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'shortys-septic-llc',
  34.925075,
  -79.7413677,
  '232 County Home Rd',
  '28379',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipO7AxPQlv7kpRk7J3XujKzilIabzWvJtHPaJWcO=w800-h500-k-no',
  '{"Wednesday":"7:30AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Academy Sports + Outdoors',
  'Kannapolis',
  'North Carolina',
  '(704) 260-4100',
  'p.ansley@ssss.com',
  'https://www.academy.com/storelocator/north-carolina/kannapolis/store-0149',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'academy-sports-outdoors',
  35.4665228,
  -80.59494,
  '2211 Elder Ln',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNmH7_J5MVwZiKsCwvk_gcu31KLJTlrokCEJ7HN=w800-h500-k-no',
  '{"Wednesday":"8AM-10PM"}',
  'http://www.linkedin.com/company/academy-sports-and-outdoor',
  'https://www.instagram.com/academy'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Carson''s Construction Containers',
  'Charlotte',
  'North Carolina',
  '(980) 381-3789',
  NULL,
  'https://carsonsconstructioncontainers.com/charlotte/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'carson-s-construction-containers-1',
  35.2522105,
  -80.9240664,
  NULL,
  NULL,
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOsC8o3jLkaLgx-4FiYr2AZlSi2hOE1AdfIVNTy=w800-h500-k-no',
  '{"Wednesday":"8AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Roses Discount Store',
  'Kannapolis',
  'North Carolina',
  '(704) 721-6010',
  'rosewatcher@sbcglobal.net',
  'https://www.rosesdiscountstores.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'roses-discount-store',
  35.4500737,
  -80.6065671,
  '924 Cloverleaf Plaza',
  '28083',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSyolDh1TjSCIuOtl_7O_5Pq2JG6mDTf5dR4ecs_4Lmq5B2gxTjAn_yOXV2LIhVZug9vMe8oKHVYxMhPtDGMmnYQGZjkvA7mdrpUNfTtt8nzbc7bixpkkhhKsvKg6Ijaab_ZJFFeZA=w800-h500-k-no',
  '{"Wednesday":"9AM-8PM"}',
  'https://www.linkedin.com/company/roses-discount',
  'https://www.instagram.com/roses_discountstores'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Midway General Store',
  'Winston-Salem',
  'North Carolina',
  '(336) 764-0230',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'midway-general-store',
  35.9741834,
  -80.2253171,
  '11503 Old U.s. Hwy 52',
  '27107',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSyW8u-o5qDWE7Ywvq8fgW5LhmtR3Pb2SLshWLCq9RPYcO12KvlCwvos-aCPR3G-T6esB--ymGVrQ5lTYbisCKEUK7EHPe71Ltge-GtFE81ZnYAu6f3mLNO8ObPEUppH1uiH-DTi=w800-h500-k-no',
  '{"Wednesday":"7AM-5:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Liberty Hardware Mfg. Corp',
  'Winston-Salem',
  'North Carolina',
  '(336) 769-4077',
  'gjacobson@libertyhardware.com',
  'https://www.libertyhardware.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'liberty-hardware-mfg-corp',
  36.0403524,
  -80.1411629,
  '140 Business Park Dr',
  '27107',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSy3sx-mknJeYwIpHHESWJkV7qgIJWasUyu2hi5oJ9CDDE92xyQcO_94khUOvFqnZWf6oPzW0bX8fVhTkuN0-B23BV1k2A9W9x45d3CLyED6vICPmgCFLZE73xTTSCEJnY_vyLPv=w800-h500-k-no',
  '{"Wednesday":"8AM-5PM"}',
  'http://www.linkedin.com/company/29489',
  'https://www.instagram.com/libertyhardwarebrands'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Northwest Ace Hardware',
  'Walkertown',
  'North Carolina',
  '(336) 595-2241',
  'arusk@northwesthardware.com',
  'https://www.northwesthardware.com/?utm_source=google&utm_medium=local&utm_campaign=localmaps&utm_content=18572',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'northwest-ace-hardware',
  36.1696039,
  -80.1581216,
  '2700 Old Hollow Rd',
  '27051',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSxhUc5v-2gosARiE5rEH44v6FsuPbxz6_3AS74f6RqbEMjxqaNkAwgYYNnCW0GgGCaPpUEf3sK2gMQInxoWt3wifrK1h6vFQ0on88YuNydCOo7Ea9b9evbBaOx7vx6z4Chr1JfU=w800-h500-k-no',
  '{"Wednesday":"7AM-7:15PM"}',
  NULL,
  'https://www.instagram.com/nwacehardware'
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Office Depot',
  'Winston-Salem',
  'North Carolina',
  '(336) 773-1080',
  'dmontgomery@officedepot.com',
  'https://www.officedepot.com/storelocator/nc/winston-salem/office-depot-321?utm_source=google&utm_medium=organic&utm_campaign=gmb_321_website_retail',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'office-depot',
  36.0675405,
  -80.2551544,
  '1235 Silas Creek Pkwy',
  '27127',
  NULL,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSzbWlvSun7OUeWvRAdWN-ie3evwtFxO4KbbXQti1xhVS_XVwF3O6CqNrdjKar1iik08g47ErtvmhLdMS_YO1J5-qUmjk5Rre9rJFGCP_Fxsrw9q_N5FQkG7Q-kh09oEdLABrxkT=w800-h500-k-no',
  '{"Wednesday":"8AM-8PM"}',
  'http://www.linkedin.com/company/office-depot',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Marshalls',
  'Winston-Salem',
  'North Carolina',
  '(336) 377-9556',
  't.davis@marshallsonline.com',
  'https://www.marshalls.com/',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'marshalls',
  36.1919824,
  -80.2728452,
  '320 E Hanes Mill Rd',
  '27105',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNtH8-lKQ0PxPT39Ws_rSAJz-PRh3FZygvvuUVM=w800-h500-k-no',
  '{"Wednesday":"7AM-11PM"}',
  'https://www.linkedin.com/company/marshalls-llc',
  NULL
)
ON CONFLICT (slug) DO UPDATE SET
  phone = COALESCE(NULLIF(EXCLUDED.phone, ''), vendors.phone),
  email = COALESCE(EXCLUDED.email, vendors.email),
  website = COALESCE(EXCLUDED.website, vendors.website),
  rating = COALESCE(EXCLUDED.rating, vendors.rating),
  review_count = GREATEST(EXCLUDED.review_count, vendors.review_count),
  photo_url = COALESCE(EXCLUDED.photo_url, vendors.photo_url),
  hours = COALESCE(EXCLUDED.hours, vendors.hours);

