CREATE TABLE "agents" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "contacts" text, "status" varchar(255) DEFAULT 'active', "editor_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "announcements" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "headline" text, "message" text, "starts_at" datetime, "ends_at" datetime, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "areas" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "data" text, "editable" boolean DEFAULT 'f', "faraway" boolean DEFAULT 'f', "mapname" varchar(255), "scale_ppm" float, "iconname" varchar(255), "editor_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "assesment_cards" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "card_id" integer, "driver" boolean DEFAULT 'f', "comment" text, "editor_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "auth_logs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255), "fullname" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "criterias" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "alert" boolean DEFAULT 'f', "number" integer, "editor_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "flags" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "alpha2" varchar(255), "tld" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "instructions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "effective" datetime NOT NULL, "subject" varchar(255), "body" text, "due" datetime, "canceled" boolean, "cancelation" datetime, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "eta_varna" datetime, "vessel_id" integer, "country_receiver" varchar(255), "country_receiver_id" varchar(255), "i18n_cruise_number" integer, "starting_port" varchar(255), "ending_port" varchar(255), "maneuver_state" varchar(255), "maneuver_from" varchar(255), "maneuver_to" varchar(255), "danger_cargo" boolean, "danger_cargo_filename" varchar(255), "tug_company" varchar(255), "requirements" text, "payer" varchar(255), "rejected" boolean, "published" boolean, "draft" boolean, "deleted" boolean, "accepted" boolean, "finished" boolean, "author_id" integer, "accepted_by" varchar(255), "rejected_by" varchar(255), "finished_by" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "profiles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "real_name" varchar(255), "agent" varchar(255), "phones" varchar(255), "fax" varchar(255), "company_email" varchar(255), "website" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "questions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "author" varchar(255), "reply_to" varchar(255), "body" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "quotes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "message" text, "author" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255));
CREATE TABLE "roles_users" ("role_id" integer, "user_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "settings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "label" varchar(255), "identifier" varchar(255), "description" text, "field_type" varchar(255) DEFAULT 'string', "value" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(100), "encrypted_password" varchar(128) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "remember_token" varchar(255), "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "login" varchar(40), "identity_url" varchar(255), "name" varchar(100) DEFAULT '', "state" varchar(255) DEFAULT 'passive', "twitter_token" varchar(255), "activated_at" datetime, "deleted_at" datetime, "confirmation_token" varchar(255), "confirmed_at" datetime, "confirmation_sent_at" datetime, "created_at" datetime, "updated_at" datetime, "last_request_at" datetime, "last_request_url" varchar(255));
CREATE TABLE "vessels" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "imonumber" varchar(255), "name" varchar(255), "callsign" varchar(255), "flag" varchar(255), "owner" varchar(255), "gt" integer, "loa" decimal(5,2), "boa" decimal(5,2), "draftfwd" decimal(5,2), "aft" decimal(5,2), "airdraft" decimal(5,2), "propelers" integer, "proptype" boolean, "thrusters" integer, "order_id" integer, "editor_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "index_users_on_confirmation_token" ON "users" ("confirmation_token");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20100831085111');

INSERT INTO schema_migrations (version) VALUES ('20100831092056');

INSERT INTO schema_migrations (version) VALUES ('20100831101644');

INSERT INTO schema_migrations (version) VALUES ('20100831101816');

INSERT INTO schema_migrations (version) VALUES ('20110426053538');

INSERT INTO schema_migrations (version) VALUES ('20110811020734');

INSERT INTO schema_migrations (version) VALUES ('20110818122310');

INSERT INTO schema_migrations (version) VALUES ('20110822114527');

INSERT INTO schema_migrations (version) VALUES ('20110822150340');

INSERT INTO schema_migrations (version) VALUES ('20110823054427');

INSERT INTO schema_migrations (version) VALUES ('20111212202930');

INSERT INTO schema_migrations (version) VALUES ('20111212224358');

INSERT INTO schema_migrations (version) VALUES ('20111212230144');

INSERT INTO schema_migrations (version) VALUES ('20111212230506');

INSERT INTO schema_migrations (version) VALUES ('20111212231726');

INSERT INTO schema_migrations (version) VALUES ('20111212232047');