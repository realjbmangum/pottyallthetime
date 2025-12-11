-- New NC Vendors Import - 64 vendors
-- Generated: 2025-12-11T17:52:17.633Z
-- These are NEW vendors not already in NC2
-- Run this in Supabase SQL Editor

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

