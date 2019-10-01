--
-- File generated with SQLiteStudio v3.2.1 on Mon Jun 24 01:40:21 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: flights_schedule
DROP TABLE IF EXISTS flights_schedule;
CREATE TABLE flights_schedule (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, airline varchar (200) NOT NULL, flight_no varchar (10) NOT NULL, trip_type varchar (100) NOT NULL, departure_airport varchar (255) NOT NULL, arrival_airport varchar (255) NOT NULL, departure_date date NOT NULL, return_date date NOT NULL);
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (1, 'United Airlines', 'UA1234', 'Round Trip', 'ORD', 'LAX', '2019-06-24', '2019-06-25');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (2, 'American Airlines', 'AA1952', 'Round Trip', 'LAX', 'ABQ', '2019-06-25', '2019-06-26');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (3, 'Southwest Airlines', 'WN4307', 'Round Trip', 'ORD', 'DEN', '2019-06-25', '2019-06-26');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (4, 'Alaska Airlines', 'AS1677', 'One Way', 'BOS', 'CLT', '2019-06-27', '2019-06-28');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (5, 'Hawaiian Airlines', 'HA4233', 'Round Trip', 'HNL', 'LAX', '2019-06-28', '2019-06-29');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (6, 'Virgin Atlantic', 'VS1980', 'Round Trip', 'SEA', 'LHR', '2019-06-29', '2019-07-02');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (7, 'Korean Air', 'KE5233', 'Round Trip', 'ORD', 'ICN', '2019-06-28', '2019-07-02');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (8, 'Delta Air Lines', 'DL1889', 'Round Trip', 'MIA', 'ORD', '2019-07-01', '2019-07-02');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (9, 'Malasia Airlines', 'MH9880', 'Round Trip', 'JFK', 'KUL', '2019-06-29', '2019-07-03');
INSERT INTO flights_schedule (id, airline, flight_no, trip_type, departure_airport, arrival_airport, departure_date, return_date) VALUES (10, 'Air New Zealand', 'NZ8029', 'Round Trip', 'DEN', 'ALR', '2019-06-28', '2019-07-02');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
