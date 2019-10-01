--
-- File generated with SQLiteStudio v3.2.1 on Mon Jun 24 03:57:29 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
DROP TABLE IF EXISTS auth_group;
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
DROP TABLE IF EXISTS auth_permission;
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_schedule', 'Can add schedule');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_schedule', 'Can change schedule');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_schedule', 'Can delete schedule');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_schedule', 'Can view schedule');

-- Table: auth_user
DROP TABLE IF EXISTS auth_user;
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);

-- Table: auth_user_groups
DROP TABLE IF EXISTS auth_user_groups;
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
DROP TABLE IF EXISTS auth_user_user_permissions;
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: django_admin_log
DROP TABLE IF EXISTS django_admin_log;
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));

-- Table: django_content_type
DROP TABLE IF EXISTS django_content_type;
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'flights', 'schedule');

-- Table: django_migrations
DROP TABLE IF EXISTS django_migrations;
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2019-06-24 07:56:45.138103');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2019-06-24 07:56:45.302693');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2019-06-24 07:56:45.537089');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-06-24 07:56:45.699078');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-06-24 07:56:45.893138');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-06-24 07:56:46.064813');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-06-24 07:56:46.207066');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-06-24 07:56:46.363960');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-06-24 07:56:46.556835');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-06-24 07:56:46.741072');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-06-24 07:56:46.919044');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-06-24 07:56:47.055056');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-06-24 07:56:47.184161');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-06-24 07:56:47.313648');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2019-06-24 07:56:47.419606');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2019-06-24 07:56:47.559524');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'sessions', '0001_initial', '2019-06-24 07:56:47.665526');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'flights', '0001_initial', '2019-06-24 08:07:17.651082');

-- Table: django_session
DROP TABLE IF EXISTS django_session;
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);

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

-- Index: auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
DROP INDEX IF EXISTS auth_user_groups_group_id_97559544;
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
DROP INDEX IF EXISTS auth_user_groups_user_id_6a12ed8b;
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
DROP INDEX IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
DROP INDEX IF EXISTS auth_user_user_permissions_permission_id_1fbb5f2c;
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_a95ead1b;
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
DROP INDEX IF EXISTS django_admin_log_content_type_id_c4bce8eb;
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
DROP INDEX IF EXISTS django_admin_log_user_id_c564eba6;
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
DROP INDEX IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
DROP INDEX IF EXISTS django_session_expire_date_a5c62663;
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
