-- SC Import - 23 vendors
-- Generated: 2025-12-11T20:56:27.421Z
-- Run this in Supabase SQL Editor

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Portable Services, Inc. - Columbia',
  'Columbia',
  'South Carolina',
  '(803) 754-5768',
  NULL,
  'https://portableservices.net/%3Fy_source%3D1_MzI2NzU1MDEtNzE1LWxvY2F0aW9uLndlYnNpdGU%253D',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'portable-services-inc-columbia',
  34.1135921,
  -80.96433069999999,
  '1728 Hard Scrabble Rd, Columbia, SC 29203',
  '29203',
  4.3,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOjPQCINz88TO33XRpb-lmj7HOmOUO_5B9IFSSW=w800-h500-k-no',
  '{"Thursday":"7:30AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Barnhill''s Services Inc.',
  'Lexington',
  'South Carolina',
  '(803) 618-3600',
  NULL,
  'https://www.barnhillsservices.com',
  ARRAY['Standard Units', 'Portable Restrooms', 'Septic Services'],
  'barnhill-s-services-inc',
  33.961019799999995,
  -81.2161024,
  '1022 Two Notch Rd, Lexington, SC 29073',
  '29073',
  4.6,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSy3d4Hi_73ZrnR9T9-Kp9s29kLFfNTukupEOoYLpqjLHBq7DbufRb3jzycQkTPejXmd-gLQqPOXCahMrv2j8XSvA1GIaC02iAAeovEYTZ14qaxt-SSV3joOMxgcglIc-yzuZeo=w800-h500-k-no',
  '{"Thursday":"7:30AM-4:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Pushup Toilet Rentals',
  'Columbia',
  'South Carolina',
  '',
  NULL,
  'https://sites.google.com/view/rentportabletoilets',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'pushup-toilet-rentals',
  34.0287296,
  -81.0263513,
  '3021-3011 Farrow Rd, Columbia, SC 29203',
  '29203',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=nOCOWBgxUqER6Z1APw8m2w&cb_client=search.gws-prod.gps&w=800&h=500&yaw=313.31808&pitch=0&thumbfov=100',
  '{"Thursday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Access Portable Toilets',
  'North Charleston',
  'South Carolina',
  '(843) 824-2954',
  NULL,
  'https://www.accessportabletoilets.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'access-portable-toilets',
  32.9237052,
  -80.08410549999999,
  '3753 Ashley Phosphate Rd, North Charleston, SC 29418',
  '29418',
  3.6,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPUrvQPRuQHwQN4Xt3VgYQlI0zZZc9O1HB34w39=w800-h500-k-no',
  '{"Thursday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Charleston Restroom Trailers',
  'Huger',
  'South Carolina',
  '(843) 693-3699',
  NULL,
  'https://www.quotecharlestonrestroomtrailers.com/about-us',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'charleston-restroom-trailers',
  32.986852,
  -79.84434499999999,
  '128 Dickerson Rd, Huger, SC 29450',
  '29450',
  5,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipP27RNeA9IuM5P1ZQh8FL8rwifMhQurz2bpIKYa=w800-h500-k-no',
  '{"Thursday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'McGraw Event Pros',
  'Moncks Corner',
  'South Carolina',
  '(843) 754-7605',
  NULL,
  'https://mcgraweventpros.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'mcgraw-event-pros',
  33.064356,
  -80.0934206,
  '2900 N Main St, Moncks Corner, SC 29461',
  '29461',
  5,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPFZI0cBdwd8tS4PsWYewKtTdtuOueZ1t5Ecd5P=w800-h500-k-no',
  '{"Thursday":"9AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Toilets of Charleston LLC',
  'Summerville',
  'South Carolina',
  '(843) 800-8345',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'toilets-of-charleston-llc',
  33.0119694,
  -80.1627828,
  '665 Lincoln Ave, Summerville, SC 29485',
  '29485',
  5,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOjtTiBiQ5-LKfGub75GjtUe9BUu5JGUObP6z9o=w800-h500-k-no',
  '{"Thursday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Elvis Service Company',
  'Myrtle Beach',
  'South Carolina',
  '(843) 448-5016',
  NULL,
  'https://elvisservicecompany.com',
  ARRAY['Standard Units', 'Portable Restrooms', 'Septic Services'],
  'elvis-service-company',
  33.7083103,
  -78.9007024,
  '2200 Executive Ave, Myrtle Beach, SC 29577',
  '29577',
  4.7,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOyrdFAJVnHAE9YZ4PqyEa_iwgmXRbJxMU_yXjw=w800-h500-k-no',
  '{"Thursday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Royal Restrooms Savannah/Hilton Head Island',
  'Garden City',
  'Georgia',
  '(912) 234-6800',
  NULL,
  'https://georgiaportablerestrooms.com',
  ARRAY['Standard Units', 'Portable Restrooms', 'Event Rentals'],
  'royal-restrooms-savannah-hilton-head-island',
  32.0873091,
  -81.1742723,
  '2403 US-80, Garden City, GA 31408',
  '31408',
  4.9,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipOrR6kL4_iOwMig3m25OBjSTFA6Cs81XFmmEJAD=w800-h500-k-no',
  '{"Thursday":"9AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Trash Gurl LLC.',
  'Moncks Corner',
  'South Carolina',
  '(843) 552-1880',
  NULL,
  'https://www.trashgurl.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'trash-gurl-llc',
  33.089335,
  -80.070382,
  '327 Cypress Gardens Rd, Moncks Corner, SC 29461',
  '29461',
  4.4,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMGigNM0e7OYYpdH_maMwCVT2Nh4gVUBudlaz1N=w800-h500-k-no',
  '{"Thursday":"7AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'AMERI-CANS',
  'Summerville',
  'South Carolina',
  '(203) 803-4924',
  NULL,
  'https://ameri-cans.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ameri-cans',
  33.0550041,
  -80.2259024,
  '282 Thorpe St, Summerville, SC 29483',
  '29483',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNPiKJDunw79rensVOyw92re9POdu2oe0ZHA0mH=w800-h500-k-no',
  '{"Thursday":"9AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Backwoods Portalet Rentals, LLC',
  'St George',
  'South Carolina',
  '(843) 563-7729',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'backwoods-portalet-rentals-llc',
  33.1158757,
  -80.5815928,
  '283 Bluebird Trail, St George, SC 29477',
  '29477',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=J2kxAsMeLOM0z4muSulAdA&cb_client=search.gws-prod.gps&w=800&h=500&yaw=334.97934&pitch=0&thumbfov=100',
  '{"Thursday":"8AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Dixie Dumpsters',
  'North Charleston',
  'South Carolina',
  '(854) 800-3469',
  NULL,
  'https://dixiedumpsters.com/north-charleston',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'dixie-dumpsters',
  32.8813398,
  -80.0762092,
  '4995 Lambs Rd #4d, North Charleston, SC 29418',
  '29418',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=Pifm7Da7QGs8ID-pxw4beg&cb_client=search.gws-prod.gps&w=800&h=500&yaw=95.55643&pitch=0&thumbfov=100',
  '{"Thursday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'LittleJohn Portable Toilets',
  'Greenville',
  'South Carolina',
  '(864) 295-2969',
  NULL,
  'https://littlejohntoilets.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'littlejohn-portable-toilets',
  34.7975967,
  -82.4376833,
  '312 Park Commerce Rd, Greenville, SC 29611',
  '29611',
  4.5,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMfYplnom98yInlGAARB5skC1IsE4X_5_VlRS9a=w800-h500-k-no',
  '{"Thursday":"7:30AM-5PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Royal Flush Toilet Rental',
  'Piedmont',
  'South Carolina',
  '(864) 238-8800',
  NULL,
  'https://www.royalflushtoiletrental.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'royal-flush-toilet-rental',
  34.712742999999996,
  -82.391284,
  '7766 Augusta Rd, Piedmont, SC 29673',
  '29673',
  4.3,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNBB-7-kjqxwSyam4jFVGDbCIgjuqisQReBWqE=w800-h500-k-no',
  '{"Thursday":"7AM-5:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'BSI Portable Toilets',
  'Greer',
  'South Carolina',
  '(864) 884-0758',
  NULL,
  'https://www.burnssepticsc.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bsi-portable-toilets',
  35.007698,
  -82.25697199999999,
  '3685 SC-14, Greer, SC 29651',
  '29651',
  NULL,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipPpLoKxuwbn3mlq_0aGchrZ4BABwKhgYTkNnzWh=w800-h500-k-no',
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Party John LLC',
  'Anderson',
  'South Carolina',
  '(864) 863-5874',
  NULL,
  'https://partyjohn.com/%3Futm_source%3Dgoogle%26utm_medium%3Dorganic%26utm_campaign%3Dgmb-listing',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'party-john-llc',
  34.5408197,
  -82.6906151,
  '233 Camson Rd, Anderson, SC 29625',
  '29625',
  5,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSwZLonlrs7haGcUQ61aRtadQOXtKukdzyZt8NaXO4MJrjlNtNSE2Ok8FwNRawA4FQZyBzqDuXz9sa3naoTHIKFER8_6YbP14gvVw6VaQ85VCLfurh7Q3dg5sC0_fuas4APQ0wAL=w800-h500-k-no',
  '{"Thursday":"8AM-4PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'BAR Environmental Services LLC',
  'Wellford',
  'South Carolina',
  '(864) 336-5243',
  NULL,
  'https://baressc.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'bar-environmental-services-llc',
  34.9405868,
  -82.0942761,
  '105 David Ave, Wellford, SC 29385',
  '29385',
  5,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipNwac39xsM85ri3MBdpONFnnIO8OxDQFgLEtIVo=w800-h500-k-no',
  '{"Thursday":"8AM-3:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Palmetto Portables',
  'Myrtle Beach',
  'South Carolina',
  '(843) 602-4888',
  NULL,
  'https://palmettoportables.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'palmetto-portables',
  33.6491967,
  -79.0160387,
  '114 Lichen Rd, Myrtle Beach, SC 29588',
  '29588',
  5,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMRudtZ_vWlvCCClL58ksZCS7qv88KDNPGbVwJM=w800-h500-k-no',
  '{"Thursday":"7AM-6PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Ricky''s Portable Toilet Solutions',
  'Myrtle Beach',
  'South Carolina',
  '(843) 508-4355',
  NULL,
  'https://www.rickyspottysolutions.com',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'ricky-s-portable-toilet-solutions',
  33.692755999999996,
  -78.8875233,
  '606 Broadway St, Myrtle Beach, SC 29577',
  '29577',
  NULL,
  0,
  'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=LYQXOz84XmLvTwN3eXeEEg&cb_client=search.gws-prod.gps&w=800&h=500&yaw=156.97969&pitch=0&thumbfov=100',
  '{"Thursday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Naresh Rental Services',
  'Myrtle Beach',
  'South Carolina',
  '(843) 874-6487',
  NULL,
  NULL,
  ARRAY['Standard Units', 'Portable Restrooms'],
  'naresh-rental-services',
  33.6919281,
  -78.8860545,
  '604 N Oak St, Myrtle Beach, SC 29577',
  '29577',
  NULL,
  0,
  NULL,
  '{"Thursday":"7AM-7PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'OnSite Companies, LLC',
  'Hardeeville',
  'South Carolina',
  '(843) 379-9911',
  NULL,
  'https://www.onsitellc.net',
  ARRAY['Standard Units', 'Portable Restrooms'],
  'onsite-companies-llc',
  32.2955201,
  -81.07777449999999,
  '203 Hardeeville Industrial Park Rd, Hardeeville, SC 29927',
  '29927',
  5,
  0,
  'https://lh3.googleusercontent.com/gps-cs-s/AG0ilSyLwWwz2_JQgZ7-ZVxkZ-T4gISkoWcoss9lsElk1ZiSyXZV3q-jHmzUtPRqv0OA9i5g4pYiWNK4YFehv-W_aSkY8urmggYgsvKT_F48yorvKtd8b9iM8BO_5LzCp4fCW3ycTDQAAB2X6s4z=w800-h500-k-no',
  '{"Thursday":"7:30AM-4:30PM"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO vendors (business_name, city, state, phone, email, website, services_offered, slug, latitude, longitude, street_address, postal_code, rating, review_count, photo_url, hours, linkedin, instagram)
VALUES (
  'Chastains Septic Tank Services, LLC and Chastain''s Portable Toilets, LLC',
  'Anderson',
  'South Carolina',
  '(864) 991-4470',
  NULL,
  'https://www.chastainssepticservices.com',
  ARRAY['Standard Units', 'Portable Restrooms', 'Septic Services'],
  'chastains-septic-tank-services-llc-and-chastain-s-portable-toilets-llc',
  34.454989999999995,
  -82.6499161,
  '3554 Keys St, Anderson, SC 29624',
  '29624',
  4.9,
  0,
  'https://lh3.googleusercontent.com/p/AF1QipMl9uLs1Nw1MbXYRZQ20pZAB6LyoCo1OQGfkcQf=w800-h500-k-no',
  '{"Thursday":"Open 24 hours"}',
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

