/*
 * TABLES
 */
CREATE TABLE countries (
    code   CHAR(2) PRIMARY KEY,
    name   VARCHAR2(256) NOT NULL
);

CREATE TABLE airports (
    code      CHAR(3) PRIMARY KEY,
    name      VARCHAR2(256) NOT NULL,
    address   NUMBER NOT NULL UNIQUE
);

CREATE TABLE cities (
    id        NUMBER PRIMARY KEY,
    name      VARCHAR2(256) NOT NULL,
    country   CHAR(2) NOT NULL,
    airport   CHAR(3) NOT NULL,
    CONSTRAINT cities_airport_code_fk FOREIGN KEY ( airport )
        REFERENCES airports
        --ON DELETE CASCADE --sinnlos
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT cities_countries_code_fk FOREIGN KEY ( country )
        REFERENCES countries
        --ON DELETE CASCADE --dangerous
        DEFERRABLE INITIALLY DEFERRED
);

CREATE TABLE addresses (
    id              NUMBER PRIMARY KEY,
    street          VARCHAR2(256) NOT NULL,
    street_number   VARCHAR2(8) NOT NULL,
    postcode        VARCHAR2(256) NOT NULL,
    city            NUMBER NOT NULL,
    CONSTRAINT address_cities_id_fk FOREIGN KEY ( city )
        REFERENCES cities
        --ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED
);

ALTER TABLE airports ADD CONSTRAINT airports_addresses_id_fk FOREIGN KEY ( address )
    REFERENCES addresses
    ON DELETE CASCADE
    DEFERRABLE INITIALLY DEFERRED;

CREATE TABLE bank_accounts (
    iban             VARCHAR2(64) PRIMARY KEY,
    account_number   VARCHAR2(64) NOT NULL,
    blz              VARCHAR2(32) NOT NULL,
    bic              VARCHAR2(32) NOT NULL
);

CREATE TABLE accounts (
    id             NUMBER PRIMARY KEY,
    surname        VARCHAR2(256) NOT NULL,
    givenname      VARCHAR2(256) NOT NULL,
    birthdate      DATE NOT NULL,
    email          VARCHAR2(256) NOT NULL,
    phone          VARCHAR2(16) NOT NULL,
    address        NUMBER NOT NULL UNIQUE,
    bank_account   VARCHAR2(64) NOT NULL,
    CONSTRAINT accounts_addresses_id_fk FOREIGN KEY ( id )
        REFERENCES addresses
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT accounts_bank_accounts_iban_fk FOREIGN KEY ( bank_account )
        REFERENCES bank_accounts
        --ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED
);

CREATE TABLE airlines (
    id        NUMBER PRIMARY KEY,
    name      VARCHAR2(256) NOT NULL,
    quality   NUMBER NOT NULL,
    CONSTRAINT valid_quality_number CHECK ( quality BETWEEN 1 AND 10 )
);

CREATE TABLE attractions (
    id            NUMBER PRIMARY KEY,
    name          VARCHAR2(256) NOT NULL,
    description   VARCHAR2(2048) NOT NULL,
    address       NUMBER UNIQUE,
    CONSTRAINT attractions_addresses_id_fk FOREIGN KEY ( address )
        REFERENCES addresses
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED
);

CREATE TABLE flats (
    id              NUMBER PRIMARY KEY,
    price_per_day   FLOAT NOT NULL,
    square_meters   NUMBER NOT NULL,
    room_number     NUMBER NOT NULL,
    description     VARCHAR2(2048) NOT NULL,
    address         NUMBER NOT NULL UNIQUE,
    CONSTRAINT flats_addresses_id_fk FOREIGN KEY ( address )
        REFERENCES addresses
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT valid_price_per_day CHECK ( price_per_day >= 0 ),
    CONSTRAINT valid_room_number CHECK ( room_number > 0 ),
    CONSTRAINT valid_square_meters CHECK ( square_meters > 0 )
);

CREATE TABLE flats_images (
    path          VARCHAR2(2048) PRIMARY KEY,
    shown_flat    NUMBER NOT NULL,
    description   VARCHAR(2048) NOT NULL,
    CONSTRAINT flat_images_flats_id_fk FOREIGN KEY ( shown_flat )
        REFERENCES flats
        ON DELETE CASCADE --good
        DEFERRABLE INITIALLY DEFERRED
);

CREATE TABLE flats_extras (
    name VARCHAR2(256) PRIMARY KEY
);

CREATE TABLE flats_extras_relations (
    flat    NUMBER NOT NULL,
    extra   VARCHAR2(256) NOT NULL,
    CONSTRAINT flats_extras_relations_pk PRIMARY KEY ( flat, extra ),
    CONSTRAINT flats_extras_fk FOREIGN KEY ( extra )
        REFERENCES flats_extras
        ON DELETE CASCADE --good
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT flats_extras_flats_fk FOREIGN KEY ( flat )
        REFERENCES flats
        ON DELETE CASCADE --good
        DEFERRABLE INITIALLY DEFERRED
);

CREATE TABLE reservations (
    id                 NUMBER PRIMARY KEY,
    reservation_date   TIMESTAMP(6) DEFAULT current_timestamp NOT NULL,
    start_date         DATE NOT NULL,
    end_date           DATE NOT NULL,
    is_binding         NUMBER(1) NOT NULL,
    customer           NUMBER NOT NULL,
    flat               NUMBER NOT NULL,
    CONSTRAINT reservations_accounts_id_fk FOREIGN KEY ( customer )
        REFERENCES accounts
        --ON DELETE CASCADE --to keep all reservations in case of a lookback, make customer nullable or use "DELETED" CUSTOMER
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT reservations_flats_id_fk FOREIGN KEY ( flat )
        REFERENCES flats
        ON DELETE CASCADE --no need to see reservations of non existing flats
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT valid_date_range CHECK ( start_date < end_date ),
    CONSTRAINT valid_start_date CHECK ( start_date >= reservation_date )
);

CREATE TABLE receipts (
    id             NUMBER PRIMARY KEY,
    issue_date     DATE NOT NULL,
    amount         FLOAT NOT NULL,
    payment_date   DATE,
    reservation    NUMBER NOT NULL,
    CONSTRAINT receipts_reservations_id_fk FOREIGN KEY ( reservation )
        REFERENCES reservations
        --ON DELETE CASCADE --make nullable or on delete cascade
        DEFERRABLE INITIALLY DEFERRED
);

CREATE TABLE distances (
    a          NUMBER NOT NULL,
    b          NUMBER NOT NULL,
    distance   FLOAT NOT NULL,
    CONSTRAINT distances_pk PRIMARY KEY ( a, b ),
    CONSTRAINT distances_cities_id_fk FOREIGN KEY ( a )
        REFERENCES cities
        ON DELETE CASCADE --good
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT distances_cities_id_fk_2 FOREIGN KEY ( b )
        REFERENCES cities
        ON DELETE CASCADE --good
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT distances_valid CHECK ( distance > 0 ),
    CONSTRAINT distances_distinct CHECK ( a <> b )
);

CREATE TABLE air_routes (
    a         CHAR(3) NOT NULL,
    b         CHAR(3) NOT NULL,
    airline   NUMBER NOT NULL,
    CONSTRAINT air_routes_pk PRIMARY KEY ( a, b, airline ),
    CONSTRAINT air_routes_airlines_id_fk FOREIGN KEY ( airline )
        REFERENCES airlines
        ON DELETE CASCADE --must be, because a,b and airline are PKs
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT air_routes_airports_code_fk FOREIGN KEY ( a )
        REFERENCES airports
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT air_routes_airports_code_fk_2 FOREIGN KEY ( b )
        REFERENCES airports
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT air_routes_distinct CHECK ( a <> b )
);


/*
 * VIEWS
 */

/*
 * Sichten "Buchung" und "Reservierung" (mit allen Informationen von "Belegungen"
 * außer dem Belegungsstatus) zur Nachbildung der Generalisierung/Spezialisierung.
 */
CREATE VIEW V_BOOKINGS AS
	SELECT
		r.ID,
		r.CUSTOMER,
		r.FLAT,
		r.START_DATE,
		r.END_DATE,
		r.RESERVATION_DATE
	FROM
		RESERVATIONS r
	WHERE
		r.IS_BINDING = 1;

CREATE VIEW V_RESERVATIONS AS
	SELECT
		r.ID,
		r.CUSTOMER,
		r.FLAT,
		r.START_DATE,
		r.END_DATE,
		r.RESERVATION_DATE
	FROM
		RESERVATIONS r
	WHERE
		r.IS_BINDING = 0;

/*
 * Sicht "Familienwohnungen": beinhaltet alle Ferienwohnungen mit mehr als 100 qm Wohnfläche.
 * Die Sicht soll genau die gleichen die Informationen wie die Tabelle für Ferienwohnungen bieten.
 *
 * Dabei sollen Änderungen der Wohnfläche über diese Sicht nur erlaubt sein, falls die geänderten
 * Datensätze in der Sicht bleiben. Ebenso soll das Einfügen von Ferienwohnungen in die Datenbank
 * über diese Sicht nur erlaubt sein, falls die Wohnfläche größer als 100 qm ist.
 */
CREATE VIEW V_FAMILY_FLATS AS
	SELECT
		*
	FROM
		FLATS f
	WHERE f.SQUARE_METERS > 100
WITH CHECK OPTION;

/*
 * Sicht "UebersichtKunden": enthält die wichtigsten Angaben aller Kunden (inkl. Adresse und Bankverbindung),
 * deren Buchungen und Reservierungen (Status, von/bis, Reservierungs- bzw. Buchungsdatum) und die
 * wichtigsten Angaben über die zugehörigen Ferienwohnungen (Nr., Beschreibung).
 */

CREATE VIEW V_CUSTOMER_OVERVIEW AS
	SELECT
		a.GIVENNAME || ' ' || a.SURNAME AS NAME,
		ad.STREET || ' ' || ad.STREET_NUMBER AS STREET,
		c.NAME AS CITY,
		ba.IBAN,
		r.IS_BINDING,
		r.START_DATE,
		r.END_DATE,
		r.RESERVATION_DATE,
		f.ID AS FLAT,
		f.DESCRIPTION AS FLAT_DESCRIPTION
	FROM
		ACCOUNTS a
		LEFT OUTER JOIN RESERVATIONS r ON r.CUSTOMER = a.ID
		LEFT OUTER JOIN FLATS f ON r.FLAT = f.ID,
		ADDRESSES ad,
		BANK_ACCOUNTS ba,
		CITIES c
	WHERE
		a.ADDRESS = ad.ID
		AND ad.CITY = c.ID
		AND a.BANK_ACCOUNT = ba.IBAN;

/*
 * Sicht "Zahlungstatus": enthält alle Buchungen inkl. der wichtigsten Angaben bzgl. Ferienwohnung
 * (Nr., Beschreibung) und Kunde (Nr., Name), sowie die Angaben über die zugehörigen Rechnungen
 * (Rechnungsnummer, Datum, Rechnungsbetrag) und den Zahlungsstatus ("bezahlt"/"offen") mit Datum
 * des Zahlungseingangs.
 */
CREATE VIEW V_PAYMENT_STATUS AS
	SELECT
		r.ID AS RESERVATION_ID,
		f.ID AS FLAT_ID,
		f.DESCRIPTION AS FLAT_DESCRIPTION,
		a.GIVENNAME || ' ' || a.SURNAME AS CUSTOMER,
		re.ID AS RECEIPT_NUMBER,
		re.ISSUE_DATE AS RECEIPT_DATE,
		re.AMOUNT AS RECEIPT_AMOUNT,
		CASE
			WHEN (re.PAYMENT_DATE IS NULL) THEN
				'offen'
			ELSE
				'bezahlt'
		END AS STATUS,
		re.PAYMENT_DATE
	FROM
		RESERVATIONS r
		LEFT JOIN RECEIPTS re ON r.ID = re.RESERVATION,
		FLATS f,
		ACCOUNTS a
	WHERE
		r.FLAT = f.ID
		AND r.CUSTOMER = a.ID;

/*
 * Sicht "MidAgeKunden": beinhaltet alle Kunden im Alter von 30 bis 40 Jahren.
 * Die Sicht soll alle Informationen wie die Tabelle für Kunden bieten und zusätzlich das
 * Alter des Kunden beinhalten.
 */
CREATE VIEW V_MID_AGE_ACCOUNTS AS
	SELECT *
    FROM (
        SELECT
		    a.*,
		    FLOOR(MONTHS_BETWEEN(CURRENT_DATE, a.BIRTHDATE) / 12) AS AGE
	    FROM
		    ACCOUNTS a
        ) aa
	WHERE
		aa.AGE BETWEEN 30 AND 40;

/*
 * Extension 2.3
 */

CREATE TABLE canceled_bookings (
    id                  NUMBER PRIMARY KEY,
    cancellation_date   DATE NOT NULL,
    reservation         NUMBER NOT NULL UNIQUE,
    start_date          DATE NOT NULL,
    end_date            DATE NOT NULL,
    value               FLOAT NOT NULL,
    status              VARCHAR(7),
    customer            NUMBER NOT NULL,
    customer_name       VARCHAR2(256) NOT NULL,
    flat                NUMBER NOT NULL,
    flat_description    VARCHAR2(2048) NOT NULL,
    CONSTRAINT canc_book_accounts_id_fk FOREIGN KEY (customer)
        REFERENCES accounts
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT canceled_bookings_flats_id_fk FOREIGN KEY (flat)
        REFERENCES flats
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT valid_date_range_c CHECK ( start_date < end_date ),
    CONSTRAINT valid_start_date_c CHECK ( start_date >= cancellation_date ),
    CONSTRAINT status_value_c CHECK ( status IN ('bezahlt','offen'))
);

CREATE SEQUENCE id_inc ;

CREATE OR REPLACE function calc_value (days NUMBER, flat NUMBER) RETURN NUMBER
AS value NUMBER;
price FLOAT;
BEGIN
    
    SELECT price_per_day INTO price FROM flats f WHERE f.id=flat;
    value := price * days;
    
    RETURN value;
END;
/
    

CREATE OR REPLACE TRIGGER cancellation
    BEFORE DELETE
        on reservations
        FOR EACH ROW
        when (old.is_Binding=1)
    DECLARE status VARCHAR(7);
    name varchar(512);
    description varchar(2048);
    BEGIN
        SELECT a.GIVENNAME || ' ' || a.SURNAME INTO name FROM accounts a WHERE a.id=:old.customer;
        SELECT f.description INTO description FROM flats f WHERE f.id=:old.flat;
        SELECT count(reservation) INTO STATUS FROM RECEIPTS r WHERE r.reservation=:old.id;
        if (status>'0') then
            status := 'bezahlt';
        ELSE status := 'offen';
        END IF;
        
        INSERT INTO canceled_bookings VALUES (
        id_inc.NEXTVAL,
        CURRENT_DATE,
        :old.id,
        :old.start_date,
        :old.end_date,
        calc_value(:old.end_date - :old.start_date,:old.flat),
        status,
        :old.customer,
        name,
        :old.flat,
        description);
    END;
/
       show errors; 
       
        