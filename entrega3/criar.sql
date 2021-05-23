PRAGMA foreign_keys = on;

-- Table Location
DROP TABLE IF EXISTS location;

CREATE TABLE location (
	location_id INTEGER PRIMARY KEY,
	latitude    DOUBLE NOT NULL,
	longitude   DOUBLE NOT NULL,
	address     TEXT UNIQUE NOT NULL
);

-- Table Client
DROP TABLE IF EXISTS client;

CREATE TABLE client (
	client_id INTEGER PRIMARY KEY,
	email           TEXT UNIQUE NOT NULL,
	name            TEXT NOT NULL,
	nif             INTEGER UNIQUE,
	phone_num       INTEGER UNIQUE NOT NULL,
	credit_card_num INTEGER UNIQUE
);

-- Table Driver
DROP TABLE IF EXISTS driver;

CREATE TABLE driver (
	driver_id 	INTEGER PRIMARY KEY AUTOINCREMENT,
	email           TEXT UNIQUE NOT NULL,
	name            TEXT NOT NULL,
	nif             INTEGER UNIQUE NOT NULL,
	phone_num       INTEGER UNIQUE NOT NULL,
	credit_card_num INTEGER UNIQUE NOT NULL,
	num_ratings     INTEGER,
	sum_ratings     INTEGER
);

-- Table Car
DROP TABLE IF EXISTS car;

CREATE TABLE car (
	license_plate TEXT PRIMARY KEY,
	model               TEXT NOT NULL,
	capacity            INT NOT NULL CHECK (capacity > 1),
	is_reduced_mobility INTEGER NOT NULL DEFAULT 0 CHECK (is_reduced_mobility IN (0,1)),
	is_electric         INTEGER NOT NULL DEFAULT 0 CHECK (is_electric IN (0,1)),
	is_premium          INTEGER NOT NULL DEFAULT 0 CHECK (is_premium IN (0,1)),
	driver_id           INTEGER NOT NULL REFERENCES driver(driver_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

-- Table OberService
DROP TABLE IF EXISTS ober_service;

CREATE TABLE ober_service (
    service_id INTEGER PRIMARY KEY AUTOINCREMENT,
    initial_time        DATETIME,
    final_time          DATETIME,
	initial_location_id TEXT NOT NULL REFERENCES location(location_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	final_location_id   TEXT NOT NULL REFERENCES location(location_id),
	driver_id           INTEGER NOT NULL REFERENCES driver(driver_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	client_id           INTEGER NOT NULL REFERENCES client(client_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);


-- Table OberRide
DROP TABLE IF EXISTS ober_ride;

CREATE TABLE ober_ride (
	ober_ride_id INTEGER PRIMARY KEY AUTOINCREMENT,
    service_id          INTEGER NOT NULL REFERENCES ober_service(service_id) 
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	license_plate       TEXT NOT NULL REFERENCES car(license_plate)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	chosen_ride_type    TEXT NOT NULL CHECK (chosen_ride_type in ("oberx","oberxl","assist","confort","green"))
);

-- Table OberPackage
DROP TABLE IF EXISTS ober_package;

CREATE TABLE ober_package(
	ober_package_id INTEGER PRIMARY KEY AUTOINCREMENT,
	third_party_phone_num INTEGER UNIQUE NOT NULL,
    service_id          INTEGER NOT NULL REFERENCES ober_service(service_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);



-- Table Package
DROP TABLE IF EXISTS package;

CREATE TABLE package(
	package_id INTEGER PRIMARY KEY AUTOINCREMENT,
	pack_value      INT NOT NULL CHECK (pack_value > 0 AND pack_value <= 100),
	weight          DOUBLE NOT NULL CHECK (weight <= 20),
	ober_package_id INTEGER NOT NULL REFERENCES ober_package(ober_package_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);



-- Table ServiceFeedback
DROP TABLE IF EXISTS service_feedback;

CREATE TABLE service_feedback(
	rating      INTEGER NOT NULL CHECK (rating > 0),
	comment     TEXT,
	driver_id   INTEGER NOT NULL REFERENCES driver(driver_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	service_id  INTEGER NOT NULL REFERENCES ober_service(service_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY(service_id, driver_id)
);

-- Table ServicePayment
DROP TABLE IF EXISTS service_payment;

CREATE TABLE service_payment(
	method      TEXT NOT NULL CHECK(method in ("visa","mastercard","american_express")),
	amount      INTEGER NOT NULL CHECK(amount > 0),
	service_id  INTEGER NOT NULL REFERENCES ober_service(service_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	client_id   INTEGER NOT NULL REFERENCES client(client_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (service_id, client_id)
);
