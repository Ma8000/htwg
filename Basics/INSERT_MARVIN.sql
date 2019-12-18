/*
* Airports
*/
INSERT INTO airports (code, name, address) VALUES ('FRA', 'Frankfurt', 7);
INSERT INTO airports (code, name, address) VALUES ('ISL', 'Istanbul', 8);
INSERT INTO airports (code, name, address) VALUES ('ZRH', 'Zuerich', 9);
INSERT INTO airports (code, name, address) VALUES ('CDG', 'Paris', 10);
INSERT INTO airports (code, name, address) VALUES ('BCN', 'Barcelona', 11);

/*
* Countries
*/
INSERT INTO countries (code, name) VALUES ('DE', 'Deutschland');
INSERT INTO countries (code, name) VALUES ('CH', 'Schweiz');
INSERT INTO countries (code, name) VALUES ('TR', 'Tuerkei');
INSERT INTO countries (code, name) VALUES ('FR', 'Frankreich');
INSERT INTO countries (code, name) VALUES ('ES', 'Spanien');
INSERT INTO countries (code, name) VALUES ('GL', 'Groenland');

/*
* Cities
*/
INSERT INTO cities (id, name, country, airport) VALUES (1, 'Konstanz', 'DE', 'FRA');
INSERT INTO cities (id, name, country, airport) VALUES (2, 'Stuttgart', 'DE', 'FRA');
INSERT INTO cities (id, name, country, airport) VALUES (3, 'Heidelberg', 'DE', 'FRA');
INSERT INTO cities (id, name, country, airport) VALUES (4, 'Rust', 'DE', 'FRA');
INSERT INTO cities (id, name, country, airport) VALUES (5, 'Bern', 'CH', 'ZRH');
INSERT INTO cities (id, name, country, airport) VALUES (6, 'Zuerich', 'CH', 'ZRH');
INSERT INTO cities (id, name, country, airport) VALUES (7, 'Chur', 'CH', 'ZRH');
INSERT INTO cities (id, name, country, airport) VALUES (8, 'Flims-Laax', 'CH', 'ZRH');
INSERT INTO cities (id, name, country, airport) VALUES (9, 'Oeludeniz', 'TR', 'ISL');
INSERT INTO cities (id, name, country, airport) VALUES (10, 'Anatlya', 'TR', 'ISL');
INSERT INTO cities (id, name, country, airport) VALUES (11, 'Bordeaux', 'FR', 'CDG');
INSERT INTO cities (id, name, country, airport) VALUES (12, 'Pairs', 'FR', 'CDG');
INSERT INTO cities (id, name, country, airport) VALUES (13, 'Disneyland', 'FR', 'CDG');
INSERT INTO cities (id, name, country, airport) VALUES (14, 'Barcelona', 'ES', 'BCN');
INSERT INTO cities (id, name, country, airport) VALUES (15, 'Frankfurt', 'DE', 'FRA');
INSERT INTO cities (id, name, country, airport) VALUES (16, 'Istanbul', 'TR', 'ISL');

/*
* Distances
*/
INSERT INTO distances (a, b, distance) VALUES (1, 4, 180);
INSERT INTO distances (a, b, distance) VALUES (7, 6, 120);
INSERT INTO distances (a, b, distance) VALUES (7, 8, 40);
INSERT INTO distances (a, b, distance) VALUES (11, 13, 420);
INSERT INTO distances (a, b, distance) VALUES (12, 13, 30);

/*
* Addresses
*/
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (1, 'Reutestrasse', 104, '78456', 1);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (2, 'Hauptstrasse', 12, '69115', 3);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (3, 'Schlossstrasse', 54, '70173', 2);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (4, 'Alpenstrasse', 11, '3001', 5);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (5, 'Seeweg', 23, '8005', 6);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (6, 'Rheingutstrasse', 14, '78462', 1);
-- Airports
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (7, 'Am Flughafen', 2, '60541', 15);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (8, 'Sabiha Goekcen', 1, '1452', 16);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (9, 'Flughafen-Allee', 100, '5098', 6);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (10, 'Chales de Gaulle', 1, '8792', 12);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (11, 'Aeropuerto de Barcelona', 10, '08820', 14);
-- Attractions
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (12, 'Europapark', 1, '78231', 4);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (13, 'Seestrasse', 12, '78463', 1);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (14, 'Bergweg', 78, '2371', 8);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (15, 'GreenOne', 29, '1352', 6);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (16, 'Rue de Gaulle', 10, '8787', 13);
-- Flats
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (17, 'Highway', 5, '2349', 9);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (18, 'Markgrafenstrasse', 5, '78461', 1);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (19, 'Zur Piste', 189, '2234', 7);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (20, 'Rue Monsieur', 980, '8234', 11);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (21, 'Rue de Gaulle', 22, '8787', 13);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (22, 'Rue de la Maison Blanche', 32, '8792', 12);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (23, 'Rue Liberte', 78, '8792', 12);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (24, 'Strandweg', 90, '2321', 10);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (25, 'Strandweg', 91, '2321', 10);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (26, 'Calle del Torro', 821, '5221', 14);
INSERT INTO addresses (id, street, street_number, postcode, city) VALUES (27, 'Strandweg', 45, '2321', 10);


/*
* Airlines
*/
INSERT INTO airlines (id, name, quality) VALUES (1, 'Lufthansa', 1);
INSERT INTO airlines (id, name, quality) VALUES (2, 'German Wings', 4);
INSERT INTO airlines (id, name, quality) VALUES (3, 'Thomas Cook', 8);
INSERT INTO airlines (id, name, quality) VALUES (4, 'Hapag Lloyd', 9);
INSERT INTO airlines (id, name, quality) VALUES (5, 'Swiss', 8);

/*
* Air Routes
*/
INSERT INTO air_routes (a, b, airline) VALUES ('FRA', 'BCN', 1);
INSERT INTO air_routes (a, b, airline) VALUES ('FRA', 'ISL', 2);
INSERT INTO air_routes (a, b, airline) VALUES ('FRA', 'CDG', 2);
INSERT INTO air_routes (a, b, airline) VALUES ('FRA', 'CDG', 1);
INSERT INTO air_routes (a, b, airline) VALUES ('FRA', 'CDG', 3);
INSERT INTO air_routes (a, b, airline) VALUES ('CDG', 'BCN', 4);
INSERT INTO air_routes (a, b, airline) VALUES ('CDG', 'ZRH', 2);
INSERT INTO air_routes (a, b, airline) VALUES ('ISL', 'BCN', 3);

/*
* Attractions
*/
INSERT INTO attractions (id, name, description, address) VALUES (1, 'Europapark', 'Freizeitpark', 12);
INSERT INTO attractions (id, name, description, address) VALUES (2, 'Hoernle', 'Badestrand', 13);
INSERT INTO attractions (id, name, description, address) VALUES (3, 'Flims-Laax Arena', 'Skigebiet', 14);
INSERT INTO attractions (id, name, description, address) VALUES (4, 'GreenOne', 'Golfplatz', 15);
INSERT INTO attractions (id, name, description, address) VALUES (5, 'Disneyland', 'Freizeitpark', 16);

/*
* Bank accounts
*/
INSERT INTO bank_accounts (iban, account_number, blz, bic) VALUES ('DE93782321269271723', '7823212', '69271723', 'NA');
INSERT INTO bank_accounts (iban, account_number, blz, bic) VALUES ('DE55892936832793968', '8929368', '32793968', 'NA');
INSERT INTO bank_accounts (iban, account_number, blz, bic) VALUES ('DE13134729169271723', '1347291', '69271723', 'NA');
INSERT INTO bank_accounts (iban, account_number, blz, bic) VALUES ('DE41879297829788431', '8792978', '29788431', 'NA');
INSERT INTO bank_accounts (iban, account_number, blz, bic) VALUES ('DE93908278087890271', '9082780', '87890271', 'NA');
INSERT INTO bank_accounts (iban, account_number, blz, bic) VALUES ('DE14732289069271723', '7322890', '69271723', 'NA');

/*
* Accounts
*/
INSERT INTO accounts (id, surname, givenname, birthdate, email, phone, address, bank_account) VALUES (1, 'Napf', 'Karl', TO_DATE('1960-01-01', 'YYYY-MM-DD'), 'knapf@gmx.de', '+497531123456', 1, 'DE93782321269271723');
INSERT INTO accounts (id, surname, givenname, birthdate, email, phone, address, bank_account) VALUES (2, 'Meier', 'Hans', TO_DATE('1975-02-01', 'YYYY-MM-DD'), 'meiers.hans@t-online.de', '+496221999888', 2, 'DE55892936832793968');
INSERT INTO accounts (id, surname, givenname, birthdate, email, phone, address, bank_account) VALUES (3, 'Huber', 'Franz', TO_DATE('1980-03-01', 'YYYY-MM-DD'), 'huber@t-online.de', '+49711554373', 3, 'DE13134729169271723');
INSERT INTO accounts (id, surname, givenname, birthdate, email, phone, address, bank_account) VALUES (4, 'Eber', 'Klaus', TO_DATE('1985-04-01', 'YYYY-MM-DD'), 'eber@bluewin.ch', '+411719864785', 4, 'DE41879297829788431');
INSERT INTO accounts (id, surname, givenname, birthdate, email, phone, address, bank_account) VALUES (5, 'Meier', 'Egon', TO_DATE('1990-05-01', 'YYYY-MM-DD'), 'meier@gmail.com', '+411719864785', 5, 'DE93908278087890271');
INSERT INTO accounts (id, surname, givenname, birthdate, email, phone, address, bank_account) VALUES (6, 'Knopf', 'Jim', TO_DATE('1995-06-01', 'YYYY-MM-DD'), 'jim.knopf@gmx.de', '+491719876543', 6, 'DE14732289069271723');

/*
* Flats
*/
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (1, 349, 200, 6, 'Finka', 17);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (2, 120, 45, 2, 'Ferienwohnung mit Seeblick', 18);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (3, 249, 150, 3, 'im Schnee', 19);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (4, 249, 100, 4, 'direkt am Meer', 20);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (5, 289, 110, 3, 'direkt am Park', 21);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (6, 549, 70, 2, 'mit Blick auf Eiffelturm', 22);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (7, 159, 110, 6, 'Dachgeschosswohnung zentral', 23);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (8, 240, 200, 12, 'zweigeschoessiges Haus', 24);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (9, 159, 111, 5, 'Topvilla am Strand', 25);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (10, 299, 100, 4, 'Ferienhaus am Strand', 26);
INSERT INTO flats (id, price_per_day, square_meters, room_number, description, address) VALUES (11, 150, 100, 4, 'Strandbungalow', 27);

/*
* Reservations
*/
-- TODO insert reservation_date
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (1, TO_DATE('2016-02-12', 'YYYY-MM-DD'), TO_DATE('2016-03-11', 'YYYY-MM-DD'), TO_DATE('2016-03-13', 'YYYY-MM-DD'), 1, 2, 4);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (2, TO_DATE('2016-03-13', 'YYYY-MM-DD'), TO_DATE('2016-05-11', 'YYYY-MM-DD'), TO_DATE('2016-05-17', 'YYYY-MM-DD'), 0, 2, 5);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (3, TO_DATE('2016-02-10', 'YYYY-MM-DD'), TO_DATE('2016-04-03', 'YYYY-MM-DD'), TO_DATE('2016-04-23', 'YYYY-MM-DD'), 0, 3, 5);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (4, TO_DATE('2016-02-09', 'YYYY-MM-DD'), TO_DATE('2016-07-04', 'YYYY-MM-DD'), TO_DATE('2016-07-05', 'YYYY-MM-DD'), 1, 4, 6);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (5, TO_DATE('2016-02-14', 'YYYY-MM-DD'), TO_DATE('2016-04-28', 'YYYY-MM-DD'), TO_DATE('2016-05-02', 'YYYY-MM-DD'), 0, 2, 10);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (6, TO_DATE('2016-02-18', 'YYYY-MM-DD'), TO_DATE('2016-05-04', 'YYYY-MM-DD'), TO_DATE('2016-05-22', 'YYYY-MM-DD'), 1, 3, 8);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (7, TO_DATE('2016-02-01', 'YYYY-MM-DD'), TO_DATE('2016-05-07', 'YYYY-MM-DD'), TO_DATE('2016-05-08', 'YYYY-MM-DD'), 1, 1, 2);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (8, TO_DATE('2016-02-11', 'YYYY-MM-DD'), TO_DATE('2016-05-22', 'YYYY-MM-DD'), TO_DATE('2016-05-28', 'YYYY-MM-DD'), 1, 5, 9);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (9, TO_DATE('2016-02-07', 'YYYY-MM-DD'), TO_DATE('2016-07-03', 'YYYY-MM-DD'), TO_DATE('2016-07-08', 'YYYY-MM-DD'), 1, 5, 10);
INSERT INTO reservations (id, reservation_date, start_date, end_date, is_binding, customer, flat) VALUES (10, TO_DATE('2016-02-10', 'YYYY-MM-DD'), TO_DATE('2016-05-01', 'YYYY-MM-DD'), TO_DATE('2016-05-24', 'YYYY-MM-DD'), 0, 4, 1);

/*
* Receipts
*/
INSERT INTO receipts (id, issue_date, amount, payment_date, reservation) VALUES (1, TO_DATE('2016-03-15', 'YYYY-MM-DD'), 498, TO_DATE('2016-03-18', 'YYYY-MM-DD'), 1);
INSERT INTO receipts (id, issue_date, amount, payment_date, reservation) VALUES (2, TO_DATE('2016-02-26', 'YYYY-MM-DD'), 549, NULL, 4);

/*
* Flats extras
*/
INSERT INTO flats_extras (name) VALUES ('Aufzug');
INSERT INTO flats_extras (name) VALUES ('Autoabstellplatz');
INSERT INTO flats_extras (name) VALUES ('Dachterrasse');
INSERT INTO flats_extras (name) VALUES ('Garage');
INSERT INTO flats_extras (name) VALUES ('Kinderbetreuung');
INSERT INTO flats_extras (name) VALUES ('Reinigung');
INSERT INTO flats_extras (name) VALUES ('Sat-TV');
INSERT INTO flats_extras (name) VALUES ('Sauna');
INSERT INTO flats_extras (name) VALUES ('Schwimmbad');

/*
* Flats extras relations
*/
INSERT INTO flats_extras_relations (flat, extra) VALUES (1, 'Schwimmbad');
INSERT INTO flats_extras_relations (flat, extra) VALUES (1, 'Sauna');
INSERT INTO flats_extras_relations (flat, extra) VALUES (2, 'Autoabstellplatz');
INSERT INTO flats_extras_relations (flat, extra) VALUES (2, 'Aufzug');
INSERT INTO flats_extras_relations (flat, extra) VALUES (3, 'Sauna');
INSERT INTO flats_extras_relations (flat, extra) VALUES (5, 'Kinderbetreuung');
INSERT INTO flats_extras_relations (flat, extra) VALUES (5, 'Schwimmbad');
INSERT INTO flats_extras_relations (flat, extra) VALUES (6, 'Schwimmbad');
INSERT INTO flats_extras_relations (flat, extra) VALUES (7, 'Schwimmbad');
INSERT INTO flats_extras_relations (flat, extra) VALUES (8, 'Sat-TV');
INSERT INTO flats_extras_relations (flat, extra) VALUES (8, 'Reinigung');
INSERT INTO flats_extras_relations (flat, extra) VALUES (8, 'Dachterrasse');
INSERT INTO flats_extras_relations (flat, extra) VALUES (9, 'Garage');
INSERT INTO flats_extras_relations (flat, extra) VALUES (9, 'Schwimmbad');
INSERT INTO flats_extras_relations (flat, extra) VALUES (11, 'Schwimmbad');

/*
* Flats images
*/
INSERT INTO flats_images (path, shown_flat, description) VALUES ('1_1.jpg', 1, 'Aussenansicht');
INSERT INTO flats_images (path, shown_flat, description) VALUES ('1_2.jpg', 1, 'Innenansicht');
INSERT INTO flats_images (path, shown_flat, description) VALUES ('2_1.jpg', 2, 'Aussenansicht');
INSERT INTO flats_images (path, shown_flat, description) VALUES ('2_2.jpg', 2, 'Innenansicht');
INSERT INTO flats_images (path, shown_flat, description) VALUES ('5_1.gif', 5, 'Garage');
INSERT INTO flats_images (path, shown_flat, description) VALUES ('8.jpg', 8, 'Dachterrasse');


/*
* Reenable airport foreign key
*/

COMMIT;

