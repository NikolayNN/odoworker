CREATE EXTENSION if NOT EXISTS Postgis;

DROP FUNCTION IF EXISTS aur_findAllUserChilds(bigint);

DROP FUNCTION IF EXISTS aur_findAllOwnUnits(bigint);

DROP FUNCTION IF EXISTS aur_findAllOwnAndShareUnits(userId bigint);

DROP FUNCTION IF EXISTS aur_findDealer(userId bigint);

DROP FUNCTION IF EXISTS aur_findUserParents(userId bigint);

DROP FUNCTION IF EXISTS aur_deleteMessage(messageId bigint);

DROP FUNCTION IF EXISTS aur_updateMessageIsValid(messageId bigint[], isValid boolean);

DROP FUNCTION IF EXISTS aur_updateMessageIsValid(messageId text[], isValid boolean);

DROP FUNCTION IF EXISTS aur_clearTripCache(unitId integer, fromTime timestamp);

DROP FUNCTION IF EXISTS aur_getlastvalidmessage(bigint);
DROP FUNCTION IF EXISTS aur_getlastvalidmessage(integer);
DROP FUNCTION IF EXISTS aur_getlastmessage;

ALTER TABLE IF EXISTS "unit"
    DROP CONSTRAINT IF EXISTS "unit_fk0";

ALTER TABLE IF EXISTS "unit"
    DROP CONSTRAINT IF EXISTS "unit_fk1";

ALTER TABLE IF EXISTS "unit"
    DROP CONSTRAINT IF EXISTS "unit_fk2";

ALTER TABLE IF EXISTS "unit"
    DROP CONSTRAINT IF EXISTS "unit_fk3";

ALTER TABLE IF EXISTS "message"
    DROP CONSTRAINT IF EXISTS "message_fk0";

ALTER TABLE IF EXISTS "iuser"
    DROP CONSTRAINT IF EXISTS "iuser_fk0";
ALTER TABLE IF EXISTS "iuser"
    DROP CONSTRAINT IF EXISTS "iuser_fk1";
ALTER TABLE IF EXISTS "iuser"
    DROP CONSTRAINT IF EXISTS "fk_iuser_role";

ALTER TABLE IF EXISTS "iuser"
    DROP CONSTRAINT IF EXISTS "fk_iuser_language";

ALTER TABLE IF EXISTS "user_unit"
    DROP CONSTRAINT IF EXISTS "user_unit_fk0";

ALTER TABLE IF EXISTS "user_unit"
    DROP CONSTRAINT IF EXISTS "user_unit_fk1";

ALTER TABLE IF EXISTS "sensors"
    DROP CONSTRAINT IF EXISTS "sensors_fk0";

ALTER TABLE IF EXISTS "sensors"
    DROP CONSTRAINT IF EXISTS "sensors_fk1";

ALTER TABLE IF EXISTS "sensors"
    DROP CONSTRAINT IF EXISTS "sensors_fk2";

ALTER TABLE IF EXISTS "sensors"
    DROP CONSTRAINT IF EXISTS "sensors_fk3";

ALTER TABLE IF EXISTS "device_parameter"
    DROP CONSTRAINT IF EXISTS "device_parameter_fk0";

ALTER TABLE IF EXISTS "device_model_parameter"
    DROP CONSTRAINT IF EXISTS "device_model_parameter_fk0";

ALTER TABLE IF EXISTS "device_model_parameter"
    DROP CONSTRAINT IF EXISTS "device_model_parameter_fk1";

ALTER TABLE IF EXISTS "device_model"
    DROP CONSTRAINT IF EXISTS "device_model_fk0";

ALTER TABLE IF EXISTS "mode"
    DROP CONSTRAINT IF EXISTS "mode_fk1";

ALTER TABLE IF EXISTS "mode"
    DROP CONSTRAINT IF EXISTS "mode_fk2";

ALTER TABLE IF EXISTS "mode"
    DROP CONSTRAINT IF EXISTS "mode_fk3";

ALTER TABLE IF EXISTS "mechanism"
    DROP CONSTRAINT IF EXISTS "mechanism_fk0";

ALTER TABLE IF EXISTS "mileage_norm_consumption"
    DROP CONSTRAINT IF EXISTS "mileage_norm_consumption_fk0";

ALTER TABLE IF EXISTS "unit_data"
    DROP CONSTRAINT IF EXISTS "unit_data_fk0";
ALTER TABLE IF EXISTS "unit_data"
    DROP CONSTRAINT IF EXISTS "unit_data_fk1";
ALTER TABLE IF EXISTS "unit_data"
    DROP CONSTRAINT IF EXISTS "unit_data_fk2";
ALTER TABLE IF EXISTS "unit_data"
    DROP CONSTRAINT IF EXISTS "unit_data_fk3";

ALTER TABLE IF EXISTS "vehicle"
    DROP CONSTRAINT IF EXISTS "vehicle_fk0";

ALTER TABLE IF EXISTS "trip"
    DROP CONSTRAINT IF EXISTS "trip_fk0";

ALTER TABLE IF EXISTS "fuel_tank"
    DROP CONSTRAINT IF EXISTS "fuel_tank_fk0";

ALTER TABLE IF EXISTS "fuel_tank_v2"
    DROP CONSTRAINT IF EXISTS "fuel_tank_v2_fk0";

ALTER TABLE IF EXISTS "unit_group"
    DROP CONSTRAINT IF EXISTS "unit_group_fk0";

ALTER TABLE IF EXISTS "unit_unit_group"
    DROP CONSTRAINT IF EXISTS "unit_unit_group_fk0";

ALTER TABLE IF EXISTS "unit_unit_group"
    DROP CONSTRAINT IF EXISTS "unit_unit_group_fk1";

ALTER TABLE IF EXISTS "signum_subscription"
    DROP CONSTRAINT IF EXISTS "signum_subscription_fk0";

ALTER TABLE IF EXISTS "command"
    DROP CONSTRAINT IF EXISTS "command_fk0";

ALTER TABLE IF EXISTS "geofence"
    DROP CONSTRAINT IF EXISTS "geofence_fk0";

ALTER TABLE IF EXISTS "api_project"
    DROP CONSTRAINT IF EXISTS "api_project_fk0";

ALTER TABLE IF EXISTS trip_meta
    DROP CONSTRAINT IF EXISTS fk_trip_meta;

ALTER TABLE IF EXISTS "announcement_source"
    DROP CONSTRAINT IF EXISTS "announcement_source_fk0";

ALTER TABLE IF EXISTS "announcement"
    DROP CONSTRAINT IF EXISTS "announcement_fk0";

ALTER TABLE IF EXISTS "announcement"
    DROP CONSTRAINT IF EXISTS "announcement_fk1";

ALTER TABLE IF EXISTS "announcement"
    DROP CONSTRAINT IF EXISTS "announcement_fk1";

ALTER TABLE IF EXISTS "cargo_settings"
    DROP CONSTRAINT IF EXISTS "cargo_settings_fk0";

ALTER TABLE IF EXISTS "vehicle_v2"
    DROP CONSTRAINT IF EXISTS "vehicle_v2_fk0";

ALTER TABLE IF EXISTS "front_customization"
    DROP CONSTRAINT IF EXISTS "front_customization_fk0";

ALTER TABLE IF EXISTS "notification_source"
    DROP CONSTRAINT IF EXISTS "notification_source_fk0";

ALTER TABLE IF EXISTS "notification_statistic"
    DROP CONSTRAINT IF EXISTS "notification_statistic_fk0";

ALTER TABLE IF EXISTS "notification_statistic_counts"
    DROP CONSTRAINT IF EXISTS "notification_statistic_counts_fk1";

ALTER TABLE IF EXISTS "notification_statistic_counts"
    DROP CONSTRAINT IF EXISTS "notification_statistic_counts_fk0";

ALTER TABLE IF EXISTS "notification_statistic"
    DROP CONSTRAINT IF EXISTS "notification_statistic_fk1";

ALTER TABLE IF EXISTS "notification_source_unit"
    DROP CONSTRAINT IF EXISTS "notification_source_unit_fk0";

ALTER TABLE IF EXISTS "notification_source_unit"
    DROP CONSTRAINT IF EXISTS "notification_source_unit_fk1";

ALTER TABLE IF EXISTS "notification_source_geofence"
    DROP CONSTRAINT IF EXISTS "notification_source_geofence_fk0";

ALTER TABLE IF EXISTS "notification_source_geofence"
    DROP CONSTRAINT IF EXISTS "notification_source_geofence_fk1";

ALTER TABLE IF EXISTS "device_model_protocol"
    DROP CONSTRAINT IF EXISTS "device_model_protocol_fk0";

ALTER TABLE IF EXISTS "device_model_protocol"
    DROP CONSTRAINT IF EXISTS "device_model_protocol_fk1";


ALTER TABLE IF EXISTS "public_access"
    DROP CONSTRAINT IF EXISTS "public_access_fk0";

ALTER TABLE IF EXISTS "public_access_unit"
    DROP CONSTRAINT IF EXISTS "public_access_unit_fk0";

ALTER TABLE IF EXISTS "public_access_unit"
    DROP CONSTRAINT IF EXISTS "public_access_unit_fk1";

ALTER TABLE IF EXISTS "telegram"
    DROP CONSTRAINT IF EXISTS "telegram_fk0";

ALTER TABLE IF EXISTS "notification_source_telegram"
    DROP CONSTRAINT IF EXISTS "notification_source_telegram_fk0";

ALTER TABLE IF EXISTS "notification_source_telegram"
    DROP CONSTRAINT IF EXISTS "notification_source_telegram_fk1";

ALTER TABLE IF EXISTS "user_data"
    DROP CONSTRAINT IF EXISTS "user_data_fk0";

ALTER TABLE IF EXISTS "user_actions_log"
    DROP CONSTRAINT IF EXISTS "user_actions_log_fk0";

ALTER TABLE IF EXISTS "unit_actions_log"
    DROP CONSTRAINT IF EXISTS "unit_actions_log_fk0";

ALTER TABLE IF EXISTS "sensor_templator"
    DROP CONSTRAINT IF EXISTS "sensor_templator_fk0";

ALTER TABLE IF EXISTS "sensor_templator_device_model"
    DROP CONSTRAINT IF EXISTS "sensor_templator_device_model_fk0";

ALTER TABLE IF EXISTS "sensor_templator_device_model"
    DROP CONSTRAINT IF EXISTS "sensor_templator_device_model_fk1";

ALTER TABLE IF EXISTS "sensor_template"
    DROP CONSTRAINT IF EXISTS "sensor_template_fk0";

ALTER TABLE IF EXISTS "user_push_device"
    DROP CONSTRAINT IF EXISTS "user_push_device_fk0";

ALTER TABLE IF EXISTS "activation_code"
    DROP CONSTRAINT IF EXISTS "activation_code_fk0";

DROP TABLE IF EXISTS "device_model_parameter";

DROP TABLE IF EXISTS "db_info";

DROP TABLE IF EXISTS "device_brand";
DROP TABLE IF EXISTS "device_model";

DROP TABLE IF EXISTS "device_parameter";

DROP TABLE IF EXISTS "unit";

DROP TABLE IF EXISTS "message";

DROP TABLE IF EXISTS "iuser";

DROP TABLE IF EXISTS "language";

DROP TABLE IF EXISTS "user_unit";

DROP TABLE IF EXISTS "geocoding";

DROP TABLE IF EXISTS "time_zone";

DROP TABLE IF EXISTS "trip";

DROP TABLE IF EXISTS "role";

DROP TABLE IF EXISTS "iuser_role";

DROP TABLE IF EXISTS "sensors";

DROP TABLE IF EXISTS "sensor_type";

DROP TABLE IF EXISTS "unit_of_measure";

DROP TABLE IF EXISTS "device_protocol";

DROP TABLE IF EXISTS "mileage_norm_consumption";

DROP TABLE IF EXISTS "mode";

DROP TABLE IF EXISTS "mechanism";

DROP TABLE IF EXISTS "unit_data";

DROP TABLE IF EXISTS "vehicle";

DROP TABLE IF EXISTS "vehicle_type";

DROP TABLE IF EXISTS "fuel_tank";

DROP TABLE IF EXISTS "fuel_tank_v2";

DROP TABLE IF EXISTS "signum_subscription";

DROP TABLE IF EXISTS "command";

DROP TABLE IF EXISTS "announcement_source";

DROP TABLE IF EXISTS "announcement";

DROP TABLE IF EXISTS "cargo_settings";

DROP TABLE IF EXISTS "vehicle_v2";

DROP TABLE IF EXISTS "unit_group";

DROP TABLE IF EXISTS "unit_unit_group";

DROP TABLE IF EXISTS "front_customization";

DROP TABLE IF EXISTS "user_data";

DROP TABLE IF EXISTS "user_actions_log";

DROP TABLE IF EXISTS "unit_actions_log";

DROP TABLE IF EXISTS "notification_source_telegram";

DROP TABLE IF EXISTS "user_push_device";

DROP TABLE IF EXISTS "activation_code";

DROP Function IF EXISTS processSegmentLine(geometry, geofence);

DROP Function IF EXISTS processSegmentPoint(geometry, geofence);

DROP FUNCTION IF EXISTS processPoint(bigint, geometry);

DROP FUNCTION IF EXISTS motion_state(speed integer);

DROP TABLE IF EXISTS "geofence";

DROP TABLE IF EXISTS "api_project";

DROP TABLE IF EXISTS "trip_meta";

DROP TABLE IF EXISTS "notification_source";

DROP TABLE IF EXISTS "notification_source_unit";

DROP TABLE IF EXISTS "notification_source_geofence";

DROP TABLE if exists "notification_statistic";

DROP TABLE if exists "notification_statistic_counts";

DROP TABLE IF EXISTS "device_model_protocol";

DROP TABLE IF EXISTS "public_access";

DROP TABLE IF EXISTS "public_access_unit";

DROP TABLE IF EXISTS "telegram";

DROP TABLE IF EXISTS "sensor_templator";

DROP TABLE IF EXISTS "sensor_templator_device_model";

DROP TABLE IF EXISTS "sensor_template";

DROP TABLE IF EXISTS partitions_settings_date;

DROP TYPE IF EXISTS "mode_type";
DROP TYPE IF EXISTS "geocoder_name";
DROP TYPE IF EXISTS "filter_type";
DROP TYPE IF EXISTS "sensor_type";
DROP TYPE IF EXISTS "command_type";
DROP TYPE IF EXISTS "file_type";
DROP TYPE IF EXISTS "provider_type";
DROP TYPE IF EXISTS "motion_state";
DROP TYPE IF EXISTS "enabling_state";
DROP TYPE IF EXISTS "notification_type";
DROP TYPE IF EXISTS "notification_method";
DROP TYPE IF EXISTS "notification_status";
DROP TYPE IF EXISTS "http_method";
DROP TYPE IF EXISTS "action_type";
DROP TYPE IF EXISTS "api_project_access";

DROP FUNCTION IF EXISTS "insert_or_delete_unit_id()";
DROP FUNCTION IF EXISTS "DateDiff()";

DROP TRIGGER IF EXISTS "unit_trigger" ON unit;

CREATE TABLE "db_info"
(
    "version" varchar NOT NULL UNIQUE
);
INSERT INTO "db_info" (version)
VALUES ('2.2.5');

CREATE TABLE "unit"
(
    "id"                     serial       NOT NULL,
    "unit_name"              varchar      NOT NULL UNIQUE,
    "mileage_factor"         FLOAT        NOT NULL DEFAULT '1' CHECK (mileage_factor >= 0.949 AND mileage_factor <= 1.05),
    "mileage_offset"         integer      NOT NULL DEFAULT '0',
    "phone_number"           varchar UNIQUE,
    "device_imei"            varchar      NOT NULL UNIQUE,
    "device_model_id"        integer      NOT NULL,
    "device_protocol_id"     integer      NOT NULL,
    "user_id"                integer      NOT NULL,
    "color"                  varchar(7)            DEFAULT '#2b8cf7',
    "data_storage_time_days" integer      NOT NULL DEFAULT 0,
    "updated_time"           timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    "created_time"           timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    "deleted"                boolean               DEFAULT false,
    CONSTRAINT unit_pk PRIMARY KEY ("id")
);

CREATE TYPE motion_state AS ENUM ('GO', 'STOP');

CREATE TABLE "unit_data"
(
    "unit_id"                                 integer NOT NULL,
    "last_message_id"                         bigint,
    "last_message_datetime"                   timestamp(0),
    "last_valid_message_id"                   bigint,
    "last_valid_message_datetime"             timestamp(0),
    "last_valid_coordinates_message_id"       bigint,
    "last_valid_coordinates_message_datetime" timestamp(0),
    "last_motion_state_change_time"           timestamp(0) DEFAULT timezone('UTC', now()),
    "last_deleted_message_id"                 bigint,
    "last_deleted_message_datetime"           timestamp(0),
    "last_motion_state"                       motion_state DEFAULT 'STOP',

    CONSTRAINT unit_data_pk PRIMARY KEY ("unit_id")
) WITH (
      OIDS= FALSE
    );

CREATE TABLE vehicle_type
(
    "id"   serial,
    "type" varchar,
    CONSTRAINT vehicle_type_pk PRIMARY KEY ("id")
) WITH (
      OIDS= FALSE
    );


CREATE TABLE "mileage_norm_consumption"
(
    "unit_id"                    integer NOT NULL UNIQUE,
    "winter_start_date"          date    NOT NULL DEFAULT '001201',
    "winter_end_date"            date    NOT NULL DEFAULT '000301',
    "summer_consumption_mileage" integer NOT NULL DEFAULT '0',
    "summer_consumption_idle"    integer NOT NULL DEFAULT '0',
    "winter_consumption_mileage" integer NOT NULL DEFAULT '0',
    "winter_consumption_idle"    integer NOT NULL DEFAULT '0',
    CONSTRAINT mileage_norm_consumption_pk PRIMARY KEY ("unit_id")
) WITH (
      OIDS= FALSE
    );


CREATE TABLE "mode"
(
    "id"           serial      NOT NULL,
    "name"         varchar(50) NOT NULL,
    "fuel_rate"    real        NOT NULL,
    "sensor_id"    integer     NOT NULL,
    "mechanism_id" integer     NOT NULL,
    CONSTRAINT mode_pk PRIMARY KEY ("id")
) WITH (
      OIDS= FALSE
    );

CREATE TABLE "mechanism"
(
    "id"      serial      NOT NULL,
    "name"    varchar(50) NOT NULL,
    "unit_id" integer     NOT NULL,
    CONSTRAINT mechanism_pk PRIMARY KEY ("id")
) WITH (
      OIDS= FALSE
    );

CREATE TABLE "message"
(
    "id"               bigserial    NOT NULL,
    "datetime"         timestamp(0) NOT NULL,
    "unit_id"          integer      NOT NULL,
    "latitude"         FLOAT        NOT NULL,
    "longitude"        FLOAT        NOT NULL,
    "altitude"         SMALLINT     NOT NULL,
    "speed"            SMALLINT     NOT NULL,
    "amount_satellite" SMALLINT     NOT NULL,
    "course"           SMALLINT     NOT NULL,
    "params"           text         NOT NULL,
    "is_valid"         boolean      NOT NULL DEFAULT true,
    "is_archive"       boolean      NOT NULL DEFAULT true,
    "received"         TIMESTAMP(0) NOT NULL DEFAULT timezone('UTC', now()),
    "deleted"          boolean      NOT NULL DEFAULT false,
    CONSTRAINT message_pk PRIMARY KEY ("id", "datetime")
) PARTITION by RANGE (datetime);

CREATE TABLE "iuser"
(
    "id"                         serial       NOT NULL,
    "user_parent_id"             integer,
    "username"                   varchar      NOT NULL UNIQUE,
    "password"                   varchar      NOT NULL,
    "email"                      varchar      NOT NULL UNIQUE,
    "legal_name"                 varchar      NOT NULL UNIQUE,
    "time_zone_id"               integer      NOT NULL,
    "is_account_non_expired"     BOOLEAN      NOT NULL DEFAULT 'true',
    "is_account_non_locked"      BOOLEAN      NOT NULL DEFAULT 'true',
    "is_credentials_non_expired" BOOLEAN      NOT NULL DEFAULT 'true',
    "is_enabled"                 BOOLEAN      NOT NULL DEFAULT 'true',
    "last_password_reset_time"   TIMESTAMP(0) NOT NULL DEFAULT timezone('UTC', now()),
    language_id                  integer      NOT NULL default 1,
    role_id                      integer      NOT NULL,
    position                     jsonb        NOT NULL DEFAULT '{
      "latitude": 53.9,
      "longitude": 27.56,
      "scale": 7
    }',
    last_action_time             timestamp(0),
    deleted                      boolean               DEFAULT false,
    created                      TIMESTAMP(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT iuser_pk PRIMARY KEY ("id")
);

CREATE TABLE "language"
(
    "id"   serial     NOT NULL,
    "name" varchar(2) NOT NULL UNIQUE,
    CONSTRAINT language_pk PRIMARY KEY ("id")
);


CREATE TABLE "user_unit"
(
    "user_id" integer NOT NULL,
    "unit_id" integer NOT NULL,
    CONSTRAINT user_unit_pk PRIMARY KEY ("user_id", "unit_id")
);


CREATE TYPE geocoder_name AS ENUM ('OSM', 'GOOGLE');

CREATE TABLE "geocoding"
(
    "id"               serial        NOT NULL,
    "boundaries"       geometry      NOT NULL,
    "center_latitude"  float         NOT NULL,
    "center_longitude" float         NOT NULL,
    "building_name"    TEXT,
    "house"            TEXT,
    "street"           TEXT,
    "city_district"    TEXT,
    "hamlet"           TEXT,
    "city"             TEXT,
    "county"           TEXT,
    "state"            TEXT,
    "country"          TEXT,
    "neighbourhood"    TEXT,
    "other"            TEXT,
    "geocoder"         geocoder_name NOT NULL,
    "save_datetime"    timestamp(0)  NOT NULL DEFAULT now(),
    "language"         varchar(2)    NOT NULL DEFAULT 'ru',
    CONSTRAINT geocoding_pk PRIMARY KEY (id)
);


CREATE TABLE "time_zone"
(
    "id"   serial  NOT NULL,
    "name" varchar NOT NULL UNIQUE,
    CONSTRAINT time_zone_pk PRIMARY KEY ("id")
);



CREATE TABLE "role"
(
    "id"   serial  NOT NULL,
    "name" varchar NOT NULL UNIQUE,
    CONSTRAINT role_pk PRIMARY KEY ("id")
);

CREATE TYPE filter_type AS ENUM ('MEDIAN', 'KALMAN');

CREATE TYPE sensor_type AS ENUM ('DEFAULT', 'CUSTOM', 'IGNITION', 'FUEL_LEVEL', 'FUEL_TANK_LEVEL', 'FUEL_TANK_REFILLING',
    'FUEL_TANK_DRAIN', 'FUEL_FLOW_METER_INSTANT', 'FUEL_FLOW_METER_ABSOLUTE', 'DISCRETE', 'ANALOG', 'DIGITAL', 'FREQUENCY', 'RANGE',
    'DEVICE_BATTERY', 'GSM_STRENGTH', 'ONBOARD_VOLTAGE', 'CONDITION_TRUE_VALUE', 'CONDITION_FALSE_VALUE', 'CONDITION_TRUE_FALSE_VALUE',
    'LIMIT_MIN', 'LIMIT_MAX', 'LIMIT_MIN_MAX', 'KEY_VALUE', 'AXLE_LOAD', 'TOTAL_LOAD', 'COOLANT_TEMPERATURE', 'TEMPERATURE_SENSOR', 'ENGINE_RPM_METER');

CREATE TABLE "sensors"
(
    "id"                  serial       NOT NULL,
    "sensor_type"         sensor_type  NOT NULL,
    "name"                varchar      NOT NULL,
    "device_parameter_id" integer,
    "unit_of_measure_id"  integer      NOT NULL,
    "unit_id"             integer      NOT NULL,
    "sensor_calibration"  jsonb,
    "formula_raw"         TEXT         NOT NULL,
    "condition_raw"       TEXT,
    "options"             jsonb        NOT NULL DEFAULT '{}',
    "visible"             boolean      NOT NULL DEFAULT true,
    "updated_time"        timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    "created_time"        timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT sensors_unique_name_and_unit_id UNIQUE (name, unit_id),
    CONSTRAINT check_parameter_or_formula_not_null CHECK (device_parameter_id IS NOT NULL OR formula_raw IS NOT NULL),
    CONSTRAINT check_formula_and_condition_has_own_name CHECK (formula_raw NOT LIKE concat('%{', name, '}%') AND
                                                               condition_raw NOT LIKE concat('%{', name, '}%')),
    CONSTRAINT sensors_pk PRIMARY KEY ("id"),
    CONSTRAINT check_formula_and_parameter CHECK (device_parameter_id IS NOT NULL OR formula_raw IS NOT NULL)
);

CREATE TABLE "trip"
(
    "id"               serial       NOT NULL,
    "unit_id"          integer      NOT NULL,
    "start_datetime"   timestamp(0) NOT NULL,
    "finish_datetime"  timestamp(0) NOT NULL,
    "start_latitude"   FLOAT        NOT NULL,
    "start_longitude"  FLOAT        NOT NULL,
    "start_position"   varchar      NOT NULL,
    "finish_latitude"  FLOAT        NOT NULL,
    "finish_longitude" FLOAT        NOT NULL,
    "finish_position"  varchar      NOT NULL,
    "mileage"          integer      NOT NULL,
    "max_speed"        SMALLINT     NOT NULL,
    "created_time"     timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    "deleted"          boolean      NOT NULL DEFAULT false,
    CONSTRAINT trip_pk PRIMARY KEY ("id")
);

ALTER TABLE trip
    ADD CONSTRAINT unique_trip UNIQUE (unit_id, start_datetime);



CREATE TABLE "unit_of_measure"
(
    "id"   serial  NOT NULL,
    "name" varchar NOT NULL UNIQUE,
    CONSTRAINT unit_of_measure_pk PRIMARY KEY ("id")
);



CREATE TABLE "device_protocol"
(
    "id"   serial  NOT NULL,
    "name" varchar NOT NULL,
    CONSTRAINT device_protocol_pk PRIMARY KEY ("id")
);



CREATE TABLE "device_brand"
(
    "id"   serial  NOT NULL,
    "name" varchar NOT NULL UNIQUE,
    CONSTRAINT device_brand_pk PRIMARY KEY ("id")
);



CREATE TABLE "device_parameter"
(
    "id"              serial  NOT NULL,
    "name"            varchar NOT NULL,
    "description"     TEXT    NOT NULL,
    "device_brand_id" integer NOT NULL,
    CONSTRAINT device_parameter_pk PRIMARY KEY ("id")
);



CREATE TABLE "device_model_parameter"
(
    "device_model_id"     integer NOT NULL,
    "device_parameter_id" integer NOT NULL,
    CONSTRAINT device_model_parameter_pk PRIMARY KEY ("device_model_id", "device_parameter_id")
);



CREATE TABLE "device_model"
(
    "id"              serial  NOT NULL,
    "name"            varchar NOT NULL UNIQUE,
    "device_brand_id" integer NOT NULL,
    CONSTRAINT device_model_pk PRIMARY KEY ("id")
);

CREATE TABLE "fuel_tank"
(
    "id"                        serial  NOT NULL,
    "unit_id"                   integer NOT NULL UNIQUE,
    "min_filling"               integer NOT NULL default 10000, /*ml*/
    "detect_filling_difference" integer NOT NULL default 100, /*ml*/
    "filling_message_timeout"   integer NOT NULL default 65, /*seconds*/
    min_drain                   integer not null default 15000, /*ml*/
    max_idle_consumption        integer not null default 0,
    CONSTRAINT fuel_tank_pk PRIMARY KEY ("id")
);

CREATE TABLE "fuel_tank_v2"
(
    "unit_id"                   integer NOT NULL,
    "min_filling"               integer NOT NULL default 10000, /*ml*/
    "detect_filling_difference" integer NOT NULL default 100, /*ml*/
    "filling_message_timeout"   integer NOT NULL default 65, /*seconds*/
    min_drain                   integer not null default 15000, /*ml*/
    max_idle_consumption        integer not null default 0,
    CONSTRAINT fuel_tank_v2_pk PRIMARY KEY ("unit_id")
);

CREATE TABLE "signum_subscription"
(
    "signum_id"                  integer      NOT NULL,
    "aurora_id"                  integer      NOT NULL,
    "is_new"                     boolean      NOT NULL DEFAULT true,
    "is_active"                  boolean      NOT NULL DEFAULT true,
    "last_received_message_time" TIMESTAMP(0),
    "last_sync"                  TIMESTAMP(0),
    "from_time"                  TIMESTAMP(0),
    "created"                    TIMESTAMP(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT signum_subscription_pk PRIMARY KEY ("signum_id", "aurora_id")
) WITH (
      OIDS= FALSE
    );

CREATE TABLE "geofence"
(
    "id"          serial     NOT NULL,
    "name"        varchar    NOT NULL,
    "description" varchar(256),
    "color"       varchar(7) NOT NULL default '#3ec78e',
    "max_speed"   integer    NOT NULL default 0,
    "user_id"     bigint     NOT NULL,
    "boundaries"  geometry,

    CONSTRAINT geofence_pk PRIMARY KEY ("id"),
    CONSTRAINT unique_user_id_name unique (user_id, name)
);

CREATE TYPE command_type AS ENUM ('TCP_COMMAND', 'TCP_ANSWER');
CREATE TYPE provider_type AS ENUM ('COMMON', 'BI_DVR', 'NOTIFICATION_ACTION');

CREATE TABLE command
(
    "id"            serial,
    "unit_id"       integer       NOT NULL,
    "creation_time" timestamp(0)  NOT NULL DEFAULT timezone('UTC', now()),
    "actual_time"   timestamp(0),
    "command_type"  command_type  NOT NULL,
    "provider_type" provider_type NOT NULL,
    "text"          text          NOT NULL,

    CONSTRAINT command_pk PRIMARY KEY ("id")
) WITH (OIDS= FALSE);

CREATE TYPE api_project_access AS ENUM ('READ_ONLY', 'READ_WRITE');

CREATE TABLE api_project
(
    id           serial,
    user_id      integer     NOT NULL,
    name         varchar(50) NOT NULL,
    available_ip text array  NOT NULL,
    api_key      varchar     NOT NULL,
    access       api_project_access NOT NULL DEFAULT 'READ_WRITE',
    created_time timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT api_project_pk PRIMARY KEY ("id")
);

create table trip_meta
(
    unit_id          integer      NOT NULL,
    last_update_time timestamp(0) NOT NULL,
    updated_time     timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT trip_meta_pk PRIMARY KEY ("unit_id")
);

CREATE TABLE "announcement_source"
(
    "id"              serial  NOT NULL,
    "json_text"       jsonb   NOT NULL,
    "user_id_creator" integer NOT NULL,
    CONSTRAINT announcement_source_pk PRIMARY KEY (id)
);
ALTER TABLE "announcement_source"
    ADD CONSTRAINT "announcement_source_fk0" FOREIGN KEY ("user_id_creator") REFERENCES "iuser" ("id");


CREATE TABLE "announcement"
(
    "id"                     serial       NOT NULL,
    "announcement_source_id" integer      NOT NULL,
    "user_id_recipient"      integer      NOT NULL,
    "created_time"           timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    "is_read"                boolean               DEFAULT false,
    CONSTRAINT announcement_pk PRIMARY KEY (id)
);

CREATE TABLE cargo_settings
(
    id                            serial   NOT NULL,
    min_load                      integer  NOT NULL DEFAULT 2000 CHECK (min_load >= 0),
    min_unload                    integer  NOT NULL DEFAULT 2000 CHECK (min_unload >= 0),
    measurement_duration          integer  NOT NULL DEFAULT 300 CHECK (measurement_duration >= 0),
    measurement_max_change_value  integer  NOT NULL DEFAULT 50 CHECK (measurement_max_change_value >= 0),
    measurement_min_message_count smallint NOT NULL DEFAULT 8 CHECK (measurement_min_message_count >= 0),
    CONSTRAINT cargo_settings_pk PRIMARY KEY ("id")
);

ALTER TABLE "cargo_settings"
    ADD CONSTRAINT "cargo_settings_fk0" FOREIGN KEY ("id") REFERENCES "unit" ("id");

CREATE TABLE vehicle_v2
(
    "unit_id"                     integer,
    "model"                       varchar(50),
    "date_manufacture"            date,
    "start_operation"             date,
    "vehicle_type_id"             integer,
    "description"                 varchar(50),
    "state_number"                varchar(15),
    "expiry_date_tech_inspection" date,
    "expiry_date_insurance"       date,
    "expiry_date_speedometer"     date,
    "vin"                         varchar(17),
    "chassis_number"              varchar(20),
    inventory_number              varchar(20),
    "driver_name"                 varchar(50),
    CONSTRAINT vehicle_v2_pk PRIMARY KEY ("unit_id")
) WITH (
      OIDS= FALSE
    );

ALTER TABLE "vehicle_v2"
    ADD CONSTRAINT "vehicle_v2_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");


CREATE TABLE "unit_group"
(
    "id"       serial,
    "name"     varchar(50) NOT NULL CHECK (length(name) >= 1),
    "owner_id" integer     NOT NULL,
    "color"    varchar(7) DEFAULT '#2b8cf7',
    unique (owner_id, name),
    CONSTRAINT unit_group_pk PRIMARY KEY ("id")
);

ALTER TABLE "unit_group"
    ADD CONSTRAINT "unit_group_fk0" FOREIGN KEY ("owner_id") REFERENCES "iuser" ("id");

CREATE TABLE "unit_unit_group"
(
    "unit_id"       integer,
    "unit_group_id" integer,
    CONSTRAINT unit_unit_group_pk PRIMARY KEY ("unit_id", "unit_group_id")
);

CREATE TABLE "front_customization"
(
    "dealer_id"    integer NOT NULL,
    "domain"       varchar(50) UNIQUE,
    "logo_url"     text,
    "favicon_url"  text,
    "favicon_text" varchar(15),
    "title"        varchar(15),
    "color_theme"  varchar(15),
    CONSTRAINT front_customization_pk PRIMARY KEY ("dealer_id")
);

CREATE TYPE enabling_state AS ENUM ('ENABLE', 'DISABLE');
CREATE TYPE notification_type AS ENUM ('SENSOR_RANGE_CONTROL', 'SENSOR_NOT_VALID_CONTROL', 'MAX_SPEED_CONTROL',
    'LOW_BATTERY_CONTROL', 'POWER_OFF_CONTROL', 'TRIP_DETECT_CONTROL', 'PARKING_DETECT_CONTROL',
    'IGNITION_OFF_CONTROL', 'IGNITION_ON_CONTROL', 'DOWNTIME_WITH_IGNITION_CONTROL',
    'ENTRY_GEOFENCE_CONTROL', 'EXIT_GEOFENCE_CONTROL', 'STAYING_GEOFENCE_CONTROL',
    'GSM_STRENGTH_CONTROL', 'SATS_STRENGTH_CONTROL', 'FUEL_LEVEL_CHANGE_CONTROL', 'GPS_ODOMETER_PERIOD_CONTROL',
    'CONNECTION_LOST_CONTROL');

CREATE TYPE notification_method AS ENUM ('PUSH', 'TELEGRAM', 'EMAIL');
CREATE TYPE notification_status AS ENUM ('COMPLETED', 'ACTIVE', 'PENDING', 'CANCELLED', 'DELETED');

CREATE TABLE "notification_source"
(
    "id"              bigserial,
    "name"            varchar(50)           NOT NULL,
    "description"     text,
    "enabling_state"  enabling_state        NOT NULL DEFAULT 'ENABLE',
    "type"            notification_type     NOT NULL,
    "methods"         notification_method[] NOT NULL DEFAULT '{}',
    "user_id"         integer               NOT NULL,
    "message"         varchar(150)          NOT NULL,
    "pending_seconds" integer               NOT NULL DEFAULT 0,
    "params"          jsonb                 NOT NULL,
    "action_command"  jsonb,
    "push_enabled"    boolean               NOT NULL DEFAULT true,
    "color"           varchar(7),
    "deleted"         boolean               NOT NULL DEFAULT false,
    "created"         timestamp(0)          NOT NULL DEFAULT timezone('UTC', now()),
    "updated"         timestamp(0)          NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT notification_source_pk PRIMARY KEY ("id")
);

CREATE TABLE "notification_source_unit"
(
    "notification_source_id" bigint,
    "unit_id"                integer,
    "created"                timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT notification_source_unit_pk PRIMARY KEY ("notification_source_id", "unit_id")
);

CREATE TABLE "notification_source_geofence"
(
    "notification_source_id" bigint,
    "geofence_id"            bigint,
    "created"                timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT notification_source_geofence_pk PRIMARY KEY ("notification_source_id", "geofence_id")
);

CREATE TABLE notification_statistic
(
    "id"                     bigserial,
    "notification_source_id" bigint              NOT NULL,
    "unit_id"                integer             NOT NULL,
    "start_time"             timestamp(0)        NOT NULL,
    "finish_time"            timestamp(0),
    "status"                 notification_status NOT NULL,
    "is_read"                boolean             NOT NULL DEFAULT false,
    "created_time"           timestamp(0)                 DEFAULT timezone('UTC', now()),
    "updated_time"           timestamp(0)                 DEFAULT timezone('UTC', now()),
    CONSTRAINT notification_statistic_pk PRIMARY KEY ("id")
);

CREATE TABLE notification_statistic_counts
(
    "unit_id"                bigint,
    "notification_source_id" bigint,
    "unread_count"           integer NOT NULL DEFAULT 0,
    CONSTRAINT notification_statistic_counts_pk PRIMARY KEY ("unit_id", "notification_source_id")
);

CREATE TABLE "device_model_protocol"
(
    "device_model_id"    bigint,
    "device_protocol_id" bigint,
    CONSTRAINT device_model_protocol_pk PRIMARY KEY ("device_model_id", "device_protocol_id")
);

CREATE TABLE "public_access"
(
    "id"              serial,
    "key"             varchar(36)  NOT NULL UNIQUE,
    "expiration_date" timestamp(0) NOT NULL,
    "domain"          varchar(60)  NOT NULL,
    "user_id"         int          NOT NULL,
    "created"         timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT public_access_pk PRIMARY KEY ("id")
);

CREATE TABLE "public_access_unit"
(
    "public_access_id" integer,
    "unit_id"          integer,
    CONSTRAINT public_access_unit_pk PRIMARY KEY ("public_access_id", unit_id)
);

CREATE TABLE "telegram"
(
    "id"                       serial       NOT NULL,
    "user_id"                  integer      NOT NULL,
    "telegram_chat_id"         bigint       NOT NULL,
    "telegram_user_id"         bigint       NOT NULL,
    "telegram_user_first_name" varchar(50),
    "telegram_user_last_name"  varchar(50),
    "telegram_username"        varchar(50),
    "is_activated"             boolean      NOT NULL DEFAULT 'false',
    "language"                 varchar(3)   NOT NULL DEFAULT 'ru',
    "created"                  timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT telegram_pk PRIMARY KEY ("id")
);

CREATE TABLE "notification_source_telegram"
(
    "notification_source_id" integer NOT NULL,
    "telegram_id"            integer,

    CONSTRAINT notification_source_telegram_pk PRIMARY KEY ("notification_source_id", "telegram_id")
);

CREATE TABLE "user_actions_log"
(
    "id"        serial        NOT NULL,
    "user_id"   integer       NOT NULL,
    "time"      timestamp(0)  NOT NULL,
    "ip"        varchar(32)   NOT NULL,
    "message"   text          NOT NULL,
    "params"    text,
    "client"    text,
    CONSTRAINT user_actions_log_pk PRIMARY KEY ("id")
) WITH (
      OIDS= FALSE
    );

CREATE TYPE action_type AS ENUM ('INFO', 'WARN', 'ERROR');

CREATE TABLE "unit_actions_log"
(
    "id"      serial      NOT NULL,
    "unit_id" integer     NOT NULL,
    "time"    timestamp(0)   NOT NULL,
    "action_type" action_type NOT NULL,
    "message" text NOT NULL,
    "count" smallint,

    CONSTRAINT unit_actions_log_pk PRIMARY KEY ("id")
) WITH (
      OIDS= FALSE
    );

CREATE TABLE sensor_templator
(
    "id"          serial,
    "name"        varchar(50)  NOT NULL,
    "description" varchar(200),
    "user_id"     integer      NOT NULL,
    "created"     TIMESTAMP(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT sensor_templator_unique_name_and_user_id UNIQUE (name, user_id),
    CONSTRAINT sensor_templator_pk PRIMARY KEY ("id")
) WITH (
      OIDS= FALSE
    );

CREATE TABLE sensor_templator_device_model
(
    "sensor_templator_id" integer NOT NULL,
    "device_model_id"     integer NOT NULL,
    CONSTRAINT sensor_templator_device_model_pk PRIMARY KEY ("sensor_templator_id", "device_model_id")
) WITH (
      OIDS= FALSE
    );

CREATE TABLE "sensor_template"
(
    "id"                  serial       NOT NULL,
    "sensor_templator_id" integer      NOT NULL,
    "sensor_type"         sensor_type  NOT NULL,
    "name"                varchar      NOT NULL,
    "unit_of_measure_id"  integer      NOT NULL,
    "sensor_calibration"  jsonb,
    "formula_raw"         TEXT         NOT NULL,
    "condition_raw"       TEXT,
    "options"             jsonb        NOT NULL DEFAULT '{}',
    "visible"             boolean      NOT NULL DEFAULT true,
    "created_time"        timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT sensor_template_unique_name_and_sensor_templator_id UNIQUE (name, sensor_templator_id),
    CONSTRAINT check_formula_and_condition_has_own_name CHECK (formula_raw NOT LIKE concat('%{', name, '}%') AND
                                                               condition_raw NOT LIKE concat('%{', name, '}%')),
    CONSTRAINT sensor_template_pk PRIMARY KEY ("id")
);

CREATE TABLE "partitions_settings_date"
(
    "table_name"  varchar   NOT NULL,
    "column_name" varchar   NOT NULL,
    "start_date"  timestamp NOT NULL,
    "end_date"    timestamp NOT NULL,
    "month_pace"  int       NOT NULL,
    CONSTRAINT partitions_settings_date_pk PRIMARY KEY ("table_name")
);

CREATE TABLE "user_push_device"
(
    token text NOT NULL,
    user_id integer,
    updated_time timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    created_time timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT user_push_device_pk PRIMARY KEY ("token")
);

CREATE TABLE activation_code
(
    code         bigint,
    description  text               NOT NULL,
    is_activated boolean            NOT NULL DEFAULT false,
    user_id      integer            NOT NULL,
    access       api_project_access NOT NULL DEFAULT 'READ_ONLY',
    updated_time timestamp(0)       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_time timestamp(0)       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT activation_code_pk PRIMARY KEY ("code")
) WITH (
      OIDS= FALSE
    );

ALTER TABLE "activation_code"
    ADD CONSTRAINT "activation_code_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "user_push_device"
    ADD CONSTRAINT "user_push_device_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "sensor_template"
    ADD CONSTRAINT "sensor_template_fk0" FOREIGN KEY ("sensor_templator_id") REFERENCES "sensor_templator" ("id");

ALTER TABLE "sensor_templator_device_model"
    ADD CONSTRAINT "sensor_templator_device_model_fk0" FOREIGN KEY ("sensor_templator_id") REFERENCES "sensor_templator" ("id");

ALTER TABLE "sensor_templator_device_model"
    ADD CONSTRAINT "sensor_templator_device_model_fk1" FOREIGN KEY ("device_model_id") REFERENCES "device_model" ("id");

ALTER TABLE "sensor_templator"
    ADD CONSTRAINT "sensor_templator_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "unit_actions_log"
    ADD CONSTRAINT "unit_actions_log_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "user_actions_log"
    ADD CONSTRAINT "user_actions_log_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "notification_source_telegram"
    ADD CONSTRAINT "notification_source_telegram_fk0" FOREIGN KEY ("notification_source_id") REFERENCES "notification_source" ("id");
ALTER TABLE "notification_source_telegram"
    ADD CONSTRAINT "notification_source_telegram_fk1" FOREIGN KEY ("telegram_id") REFERENCES "telegram" ("id");

ALTER TABLE "telegram"
    ADD CONSTRAINT "telegram_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "public_access_unit"
    ADD CONSTRAINT "public_access_unit_fk0" FOREIGN KEY ("public_access_id") REFERENCES "public_access" ("id");
ALTER TABLE "public_access_unit"
    ADD CONSTRAINT "public_access_unit_fk1" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");


ALTER TABLE "public_access"
    ADD CONSTRAINT "public_access_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "device_model_protocol"
    ADD CONSTRAINT "device_model_protocol_fk0" FOREIGN KEY ("device_model_id") REFERENCES "device_model" ("id");

ALTER TABLE "device_model_protocol"
    ADD CONSTRAINT "device_model_protocol_fk1" FOREIGN KEY ("device_protocol_id") REFERENCES "device_protocol" ("id");

ALTER TABLE "notification_statistic_counts"
    ADD CONSTRAINT "notification_statistic_counts_fk1" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");
ALTER TABLE "notification_statistic_counts"
    ADD CONSTRAINT "notification_statistic_counts_fk0" FOREIGN KEY ("notification_source_id") REFERENCES "notification_source" ("id");



ALTER TABLE "notification_source_geofence"
    ADD CONSTRAINT "notification_source_geofence_fk0" FOREIGN KEY ("notification_source_id") REFERENCES "notification_source" ("id");

ALTER TABLE "notification_source_geofence"
    ADD CONSTRAINT "notification_source_geofence_fk1" FOREIGN KEY ("geofence_id") REFERENCES "geofence" ("id");

ALTER TABLE "notification_source_unit"
    ADD CONSTRAINT "notification_source_unit_fk0" FOREIGN KEY ("notification_source_id") REFERENCES "notification_source" ("id");

ALTER TABLE "notification_source_unit"
    ADD CONSTRAINT "notification_source_unit_fk1" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "notification_statistic"
    ADD CONSTRAINT "notification_statistic_fk0" FOREIGN KEY ("notification_source_id") REFERENCES "notification_source" ("id");

ALTER TABLE "notification_statistic"
    ADD CONSTRAINT "notification_statistic_fk1" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "notification_source"
    ADD CONSTRAINT "notification_source_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "front_customization"
    ADD CONSTRAINT "front_customization_fk0" FOREIGN KEY ("dealer_id") REFERENCES "iuser" ("id");

ALTER TABLE "unit_unit_group"
    ADD CONSTRAINT "unit_unit_group_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");
ALTER TABLE "unit_unit_group"
    ADD CONSTRAINT "unit_unit_group_fk1" FOREIGN KEY ("unit_group_id") REFERENCES "unit_group" ("id");

ALTER TABLE "announcement"
    ADD CONSTRAINT "announcement_fk0" FOREIGN KEY ("user_id_recipient") REFERENCES "iuser" ("id");
ALTER TABLE "announcement"
    ADD CONSTRAINT "announcement_fk1" FOREIGN KEY ("announcement_source_id") REFERENCES "announcement_source" ("id");


ALTER TABLE "api_project"
    ADD CONSTRAINT "api_project_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "command"
    ADD CONSTRAINT "command_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "unit"
    ADD CONSTRAINT "unit_fk0" FOREIGN KEY ("device_model_id") REFERENCES "device_model" ("id");
ALTER TABLE "unit"
    ADD CONSTRAINT "unit_fk1" FOREIGN KEY ("device_protocol_id") REFERENCES "device_protocol" ("id");
ALTER TABLE "unit"
    ADD CONSTRAINT "unit_fk2" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE "message"
    ADD CONSTRAINT "message_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "trip"
    ADD CONSTRAINT "trip_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "iuser"
    ADD CONSTRAINT "iuser_fk0" FOREIGN KEY ("time_zone_id") REFERENCES "time_zone" ("id");
ALTER TABLE "iuser"
    ADD CONSTRAINT "iuser_fk1" FOREIGN KEY (user_parent_id) REFERENCES "iuser" (id) ON DELETE CASCADE;
ALTER TABLE iuser
    ADD CONSTRAINT fk_iuser_language FOREIGN KEY (language_id) REFERENCES "language" (id);
ALTER TABLE iuser
    ADD CONSTRAINT fk_iuser_role FOREIGN KEY (role_id) REFERENCES "role" (id);

ALTER TABLE "user_unit"
    ADD CONSTRAINT "user_unit_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");
ALTER TABLE "user_unit"
    ADD CONSTRAINT "user_unit_fk1" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id") ON DELETE CASCADE;

ALTER TABLE "sensors"
    ADD CONSTRAINT "sensors_fk1" FOREIGN KEY ("device_parameter_id") REFERENCES "device_parameter" ("id");
ALTER TABLE "sensors"
    ADD CONSTRAINT "sensors_fk2" FOREIGN KEY ("unit_of_measure_id") REFERENCES "unit_of_measure" ("id");
ALTER TABLE "sensors"
    ADD CONSTRAINT "sensors_fk3" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "device_parameter"
    ADD CONSTRAINT "device_parameter_fk0" FOREIGN KEY ("device_brand_id") REFERENCES "device_brand" ("id");

ALTER TABLE "device_model_parameter"
    ADD CONSTRAINT "device_model_parameter_fk0" FOREIGN KEY ("device_model_id") REFERENCES "device_model" ("id");
ALTER TABLE "device_model_parameter"
    ADD CONSTRAINT "device_model_parameter_fk1" FOREIGN KEY ("device_parameter_id") REFERENCES "device_parameter" ("id");

ALTER TABLE "device_model"
    ADD CONSTRAINT "device_model_fk0" FOREIGN KEY ("device_brand_id") REFERENCES "device_brand" ("id");

ALTER TABLE "mode"
    ADD CONSTRAINT "mode_fk2" FOREIGN KEY ("sensor_id") REFERENCES "sensors" ("id");
ALTER TABLE "mode"
    ADD CONSTRAINT "mode_fk3" FOREIGN KEY ("mechanism_id") REFERENCES "mechanism" ("id");

ALTER TABLE "mechanism"
    ADD CONSTRAINT "mechanism_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "mileage_norm_consumption"
    ADD CONSTRAINT "mileage_norm_consumption_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "unit_data"
    ADD CONSTRAINT "unit_data_fk0" FOREIGN KEY ("last_message_id", "last_message_datetime") REFERENCES "message" ("id", "datetime");
ALTER TABLE "unit_data"
    ADD CONSTRAINT "unit_data_fk1" FOREIGN KEY ("last_valid_coordinates_message_id", "last_valid_coordinates_message_datetime") REFERENCES "message" ("id", "datetime");
ALTER TABLE "unit_data"
    ADD CONSTRAINT "unit_data_fk2" FOREIGN KEY ("last_valid_message_id", "last_valid_message_datetime") REFERENCES "message" ("id", "datetime");
ALTER TABLE "unit_data"
    ADD CONSTRAINT "unit_data_fk3" FOREIGN KEY ("last_deleted_message_id", "last_deleted_message_datetime") REFERENCES "message" ("id", "datetime");

ALTER TABLE "fuel_tank"
    ADD CONSTRAINT "fuel_tank_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "fuel_tank_v2"
    ADD CONSTRAINT "fuel_tank_v2_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE "signum_subscription"
    ADD CONSTRAINT "signum_subscription_fk0" FOREIGN KEY ("aurora_id") REFERENCES "unit" ("id");

ALTER TABLE "geofence"
    ADD CONSTRAINT "geofence_fk0" FOREIGN KEY ("user_id") REFERENCES "iuser" ("id");

ALTER TABLE trip_meta
    ADD CONSTRAINT fk_trip_meta FOREIGN KEY (unit_id) REFERENCES "unit" (id);

------- unique indexes ------
CREATE UNIQUE INDEX partial_index_notification_source_user_id_name_not_deleted
    ON notification_source (user_id, name) WHERE (deleted = false);


--------------------------FUNCTIONS-----------------------------------

-- Replace ' to SS and '' to '

CREATE OR REPLACE FUNCTION aur_getLastValidMessage(unitId bigint) RETURNs setof message AS
'
    DECLARE
        lastValidMessageId bigint;
    lastValidDatetime  timestamp;
begin
    SELECT last_valid_message_id, last_valid_message_datetime
    INTO lastValidMessageId, lastValidDatetime
    FROM unit_data
    where unit_id = unitId;
    return query SELECT * from message where id = lastValidMessageId AND datetime = lastValidDatetime;
    end
' LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION aur_getLastMessage(unitId bigint) RETURNs setof message AS
'
    DECLARE
        lastMessageId bigint;
    lastDatetime  timestamp;
begin
    SELECT last_message_id, last_message_datetime
    INTO lastMessageId, lastDatetime
    FROM unit_data
    where unit_id = unitId;
    return query SELECT * from message where id = lastMessageId AND datetime = lastDatetime;
    end
' LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION aur_getParameterValue(params text, paramName text)
    RETURNS varchar
AS
'
    declare
        paramSplitter constant text = '','';
        valueSplitter constant text = '':'';
        splittedParams         text[];
        tempParam              text;
        likeCondition          text;
        res                    text;
    begin
        splittedParams = string_to_array(params, paramSplitter);
        likeCondition = CONCAT(paramName, valueSplitter, ''%'');
        FOREACH tempParam IN ARRAY splittedParams
            LOOP
                if tempParam LIKE likeCondition THEN
                    res = (string_to_array(tempParam, valueSplitter))[2];
                    return res;
                end if;
            END LOOP;
        return NULL;
    end
' LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION aur_findAllUserChilds(userId bigint) RETURNS SETOF iuser AS
'
    WITH RECURSIVE r AS (
        SELECT u.*
        FROM iuser u
        WHERE id = userId
        UNION
        SELECT u.*
        FROM iuser u
                 JOIN r
                      ON u.user_parent_id = r.id
    )
    SELECT *
    FROM r
    WHERE deleted = false;
' LANGUAGE sql;

CREATE OR REPLACE FUNCTION aur_findAllOwnUnits(userId bigint) RETURNS SETOF unit AS
'
    WITH RECURSIVE r AS (
        SELECT "id",
               "user_parent_id"
        FROM "iuser"
        WHERE "id" = userId
        UNION
        SELECT u."id",
               u."user_parent_id"
        FROM "iuser" u
                 JOIN r
                      ON u."user_parent_id" = r."id"
    )
    SELECT u.*
    FROM r
             JOIN "unit" u
                  ON r."id" = u."user_id"
    where "deleted" = false
' LANGUAGE sql;

CREATE OR REPLACE FUNCTION aur_findAllOwnAndShareUnits(userId bigint) RETURNS SETOF unit AS
'
    WITH RECURSIVE r AS (
        SELECT "id",
               user_parent_id
        FROM iuser
        WHERE id = userId
        UNION
        SELECT u."id",
               u.user_parent_id
        FROM iuser u
                 JOIN r
                      ON u.user_parent_id = r.id
    )
    SELECT t.*
    FROM (
             SELECT u.*
             FROM r
                      JOIN unit u
                           ON r.id = u.user_id
             UNION
             SELECT u.*
             FROM r
                      JOIN user_unit uu
                           ON r.id = uu.user_id
                      JOIN unit u
                           ON uu.unit_id = u.id
         ) t
    where deleted = false
' LANGUAGE sql;

CREATE OR REPLACE FUNCTION aur_findDealer(userId bigint) RETURNS iuser AS
'
    WITH RECURSIVE r AS (
        SELECT iuser.*
        FROM iuser
        WHERE id = userId

        UNION

        SELECT iuser.*
        FROM iuser
                 JOIN r
                      ON r.user_parent_id = iuser.id
    )
    SELECT *
    FROM r
    where deleted = false
      --         dealer role_id
      AND role_id = 1
    LIMIT 1
' LANGUAGE sql;

CREATE OR REPLACE FUNCTION aur_findUserParents(userId bigint) RETURNS setof iuser AS
'
    WITH RECURSIVE r AS (
        SELECT iuser.*
        FROM iuser
        WHERE id = userId

        UNION

        SELECT iuser.*
        FROM iuser
                 JOIN r
                      ON r.user_parent_id = iuser.id
    )
    SELECT *
    FROM r
    where deleted = false
' LANGUAGE sql;


CREATE OR REPLACE FUNCTION aur_deleteMessage(messageId bigint)
    RETURNS void
AS
'
    declare
        messageRow message%rowType;
    begin
        SELECT *
        INTO messageRow
        FROM message
        WHERE id = messageId;
        raise notice ''message time, %'', messageRow.datetime;
        delete from message where id = messageId;
        raise notice ''message: % deleted'', messageId;
        PERFORM aur_clearTripCache(messageRow.unit_id, messageRow.datetime);
    end
' LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION aur_updateMessageIsValid(messageId bigint[], isValid boolean)
    RETURNS SETOF message
AS
'
    declare
        messageRow message%rowType;
    begin
        SELECT *
        INTO messageRow
        from message
        where id IN (select(unnest(messageId)))
        ORDER BY datetime
        LIMIT 1;
        raise notice ''message time, %'', messageRow.datetime;

        UPDATE message
        SET is_valid = isValid
        where id IN (select(unnest(messageId)));
        raise notice ''message: % set is_valid = %'', messageId, isValid;

        Perform
        from aur_clearTripCache(messageRow.unit_id, messageRow.datetime);
        return QUERY (select *
                      from message
                      where id IN (select(unnest(messageId))));
    end
' LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION aur_clearTripCache(unitId integer, fromTime timestamp)
    RETURNS void
AS
'
    declare
        lastTripTime timestamp;
    begin
        if ((select last_update_time
             from trip_meta
             where unit_id = unitId) < fromTime) then
            raise notice ''trip and trip_meta update skipped'';
            return;
        end if;

        raise notice ''delete trip counts: %'',
            (select count(*)
             from trip
             where (start_datetime >= fromTime OR finish_datetime >= fromTime)
               and unit_id = unitId);
        delete
        from trip
        where (start_datetime >= fromTime OR finish_datetime >= fromTime)
          and unit_id = unitId;

        select finish_datetime
        INTO lastTripTime
        from trip
        where unit_id = unitId
        order by start_datetime desc
        limit 1;

        IF lastTripTime IS NULL THEN
            raise notice ''unit % has not trips before: % delete trip_meta'', unitId, fromTime;
            DELETE
            FROM trip_meta
            where unit_id = unitId;
            return;
        end if;

        raise notice ''set trip_meta last_update_time: %'', lastTripTime;
        update trip_meta
        SET last_update_time=lastTripTime
        where unit_id = unitId;
    end
' LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION updateDbVersion(expect_db_version VARCHAR(30), new_db_version VARCHAR(30))
    RETURNS varchar AS
'
    declare
        actual_db_version varchar(30);
    begin
        select version
        into actual_db_version
        from db_info;
        if (actual_db_version != expect_db_version) THEN
            raise exception ''illegal version of db. actual: % expect: %'', actual_db_version, expect_db_version;
        end if;
        UPDATE "db_info"
        SET version = new_db_version;
        raise notice ''*** db version updated from: % to: %'', actual_db_version, new_db_version;
        return new_db_version;
    end;
'
    LANGUAGE plpgsql;

-- calculate diffetence between two dates. units - second, hour ...
CREATE OR REPLACE FUNCTION DateDiff(units VARCHAR(30), start_t TIMESTAMP, end_t TIMESTAMP)
    RETURNS INT AS
'
    DECLARE
        diff_interval INTERVAL;
        diff          INT = 0;
        years_diff    INT = 0;
    BEGIN
        IF units IN (''yy'', ''yyyy'', ''year'', ''mm'', ''m'', ''month'') THEN
            years_diff = DATE_PART(''year'', end_t) - DATE_PART(''year'', start_t);

            IF units IN (''yy'', ''yyyy'', ''year'') THEN
                -- SQL Server does not count full years passed (only difference between year parts)
                RETURN years_diff;
            ELSE
                -- If end month is less than start month it will subtracted
                RETURN years_diff * 12 + (DATE_PART(''month'', end_t) - DATE_PART(''month'', start_t));
            END IF;
        END IF;

        -- Minus operator returns interval ''DDD days HH:MI:SS''
        diff_interval = end_t - start_t;

        diff = diff + DATE_PART(''day'', diff_interval);

        IF units IN (''wk'', ''ww'', ''week'') THEN
            diff = diff / 7;
            RETURN diff;
        END IF;

        IF units IN (''dd'', ''d'', ''day'') THEN
            RETURN diff;
        END IF;

        diff = diff * 24 + DATE_PART(''hour'', diff_interval);

        IF units IN (''hh'', ''hour'') THEN
            RETURN diff;
        END IF;

        diff = diff * 60 + DATE_PART(''minute'', diff_interval);

        IF units IN (''mi'', ''n'', ''minute'') THEN
            RETURN diff;
        END IF;

        diff = diff * 60 + DATE_PART(''second'', diff_interval);

        RETURN diff;
    END;
' LANGUAGE plpgsql;

-- return child user ids
CREATE OR REPLACE FUNCTION getChildUserId(bigint)
    RETURNS
        TABLE
        (
            id int
        )
AS
'
    WITH RECURSIVE r AS (
        SELECT u.id,
               u.user_parent_id,
               u.deleted
        FROM iuser u
        WHERE id = $1
        UNION
        SELECT u.id,
               u.user_parent_id,
               u.deleted
        FROM iuser u
                 JOIN r
                      ON u.user_parent_id = r.id
    )
    SELECT id
    FROM r
    WHERE deleted = false;
' LANGUAGE SQL;


-- определяет лежит ли координата сообщения с id $1 внутри $2
CREATE OR REPLACE FUNCTION processPoint(bigint, geometry)
    RETURNs
        TABLE
        (
            datetime  TIMESTAMP,
            latitude  float,
            longitude float,
            altitude  smallint,
            is_inside boolean
        )
AS
'
    SELECT DISTINCT datetime,
                    latitude,
                    longitude,
                    altitude,
                    ST_INTERSECTS(st_setsrid(ST_MAKEPOINT(longitude, latitude), 4326), $2)
    FROM message
    WHERE id = $1;
' LANGUAGE SQL;

-- определяет лежат ли точки segmentLine внутри geofence и возвращает их характеристики
CREATE OR REPLACE FUNCTION processSegmentPoint(segmentPoint geometry, geofenceRow geofence)
    RETURNs
        TABLE
        (
            geofence_id         integer,
            geofence_name       varchar,

            segment_a_time      TIMESTAMP,
            segment_a_latitude  float,
            segment_a_longitude float,
            segment_a_altitude  smallint,
            segment_a_is_inside boolean,

            segment_b_time      TIMESTAMP,
            segment_b_latitude  float,
            segment_b_longitude float,
            segment_b_altitude  smallint,
            segment_b_is_inside boolean
        )
AS
'
    declare
        tempRow record;
    begin
        geofence_id := geofenceRow.id;
        geofence_name := geofenceRow.name;

        Select *
        from processPoint(ST_M(segmentPoint)::BIGINT, geofenceRow.boundaries)
        INTO tempRow;
        segment_a_time := tempRow.datetime;
        segment_a_latitude := tempRow.latitude;
        segment_a_longitude := tempRow.longitude;
        segment_a_altitude := tempRow.altitude;
        segment_a_is_inside := tempRow.is_inside;

        segment_b_time := tempRow.datetime;
        segment_b_latitude := tempRow.latitude;
        segment_b_longitude := tempRow.longitude;
        segment_b_altitude := tempRow.altitude;
        segment_b_is_inside := tempRow.is_inside;
        return next;
    end
' LANGUAGE plpgsql;

-- определяет лежат ли точки segmentLine внутри geofence и возвращает их характеристики
CREATE OR REPLACE FUNCTION processSegmentLine(segmentLine geometry, geofenceRow geofence)
    RETURNs
        TABLE
        (
            geofence_id         integer,
            geofence_name       varchar,

            segment_a_time      TIMESTAMP,
            segment_a_latitude  float,
            segment_a_longitude float,
            segment_a_altitude  smallint,
            segment_a_is_inside boolean,

            segment_b_time      TIMESTAMP,
            segment_b_latitude  float,
            segment_b_longitude float,
            segment_b_altitude  smallint,
            segment_b_is_inside boolean
        )
AS
'
    declare
        tempRow record;
    begin
        geofence_id := geofenceRow.id;
        geofence_name := geofenceRow.name;

        Select *
        from processPoint(ST_M(ST_PointN(segmentLine, 1))::BIGINT, geofenceRow.boundaries)
        INTO tempRow;
        segment_a_time := tempRow.datetime;
        segment_a_latitude := tempRow.latitude;
        segment_a_longitude := tempRow.longitude;
        segment_a_altitude := tempRow.altitude;
        segment_a_is_inside := tempRow.is_inside;

        Select *
        from processPoint(ST_M(ST_PointN(segmentLine, 2))::BIGINT, geofenceRow.boundaries)
        INTO tempRow;
        segment_b_time := tempRow.datetime;
        segment_b_latitude := tempRow.latitude;
        segment_b_longitude := tempRow.longitude;
        segment_b_altitude := tempRow.altitude;
        segment_b_is_inside := tempRow.is_inside;
        return next;
    end
' LANGUAGE plpgsql;

-- строит трек для объекта c id $1 между $2 и $3
CREATE OR REPLACE FUNCTION buildTrackLine(bigint, timestamp, timestamp)
    RETURNs
        geometry
AS
$$
Select ST_SETSRID(ST_MakeLine(ARRAY(SELECT ST_MAKEPOINTM(longitude, latitude, id)
                                    FROM (select datetime,
                                                 max(id)        as id,
                                                 max(longitude) as longitude,
                                                 max(latitude)  as latitude
                                          from message
                                          WHERE unit_id = $1
                                            AND datetime >= $2
                                            AND datetime <= $3
                                            AND (latitude > 0
                                              OR longitude > 0)
                                          group by datetime
                                          ORDER BY datetime) as foo)), 4326)
$$ LANGUAGE SQL;

-- находит точки пересечения трека с геозонами
CREATE OR REPLACE FUNCTION getIntersectsGeofences(unitId bigint, startTime timestamp, endTime timestamp, userId bigint)
    returns
        TABLE
        (
            geofence_id         integer,
            geofence_name       varchar,

            segment_a_time      TIMESTAMP,
            segment_a_latitude  float,
            segment_a_longitude float,
            segment_a_altitude  smallint,
            segment_a_is_inside boolean,

            segment_b_time      TIMESTAMP,
            segment_b_latitude  float,
            segment_b_longitude float,
            segment_b_altitude  smallint,
            segment_b_is_inside boolean
        )
as
'
    DECLARE
        trackLine geometry; segmentLine geometry; geofenceRow geofence%rowtype; tempRow     record;
    begin Select buildTrackLine(unitId, startTime, endTime)
          INTO trackLine; if trackLine IS NULL THEN
        return; end if;

    DROP TABLE IF EXISTS intersects_geofences;

    CREATE TEMP TABLE intersects_geofences AS
    SELECT g.*
    FROM geofence g,
         getChildUserId(userId) u
    where g.user_id = u.id
      AND st_intersects(trackLine, g.boundaries);

    -- handle case when track is one point
    if (ST_NumPoints(trackLine) = 1)
       THEN
        FOR geofenceRow IN
    select *
    from intersects_geofences
    where ST_WITHIN(trackLine, boundaries) = true LOOP
                geofence_id := geofenceRow.id; geofence_name := geofenceRow.name; Select *
                                                                                  from processPoint(
                                                                                          ST_M(ST_PointN(trackLine, 1))::BIGINT,
                                                                                          geofenceRow.boundaries) INTO tempRow; segment_a_time := tempRow.datetime; segment_b_time := tempRow.datetime; segment_a_latitude := tempRow.latitude; segment_b_latitude := tempRow.latitude; segment_a_longitude := tempRow.longitude; segment_b_longitude := tempRow.longitude; segment_a_altitude := tempRow.altitude; segment_b_altitude := tempRow.altitude; segment_a_is_inside := tempRow.is_inside; segment_b_is_inside := tempRow.is_inside; return next; END LOOP;
    end if;

    -- within start первая точка трека лежит в какойлибо геозоне
    segmentLine = ST_PointN(trackLine, 1); FOR geofenceRow IN select *
                                                              from intersects_geofences
                                                              where ST_WITHIN(segmentLine, boundaries) = true LOOP
            return QUERY select *
                         from processSegmentPoint(segmentLine, geofenceRow);
    END LOOP;

    -- within end последняя точка трека лежит полностью в какойлибо геозоне
    segmentLine = ST_PointN(trackLine, ST_NumPoints(trackLine)); FOR geofenceRow IN select *
                                                                                    from intersects_geofences
                                                                                    where ST_WITHIN(segmentLine, boundaries) = true LOOP
            return QUERY select *
                         from processSegmentPoint(segmentLine, geofenceRow);
    END LOOP;

    -- обработка всех точек
    FOR i IN 1..ST_NumPoints(trackLine) - 1
        LOOP
            segmentLine = ST_MAKELINE(ST_PointN(trackLine, i), ST_PointN(trackLine, i + 1)); if ST_LENGTH(segmentLine)=0 THEN
                CONTINUE; end if; FOR geofenceRow IN select *
                                                     from intersects_geofences
                                                     where ST_INTERSECTS(boundaries, segmentLine) = true
                                                       AND ST_WITHIN(segmentLine, boundaries) = false LOOP
                    return QUERY select *
                                 from processSegmentLine(segmentLine, geofenceRow);
    END LOOP;
    END LOOP;
    end
' LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION aur_createPartitions(rootTableName varchar, partitionByColumnName varchar,
                                                fromDate varchar, toDate varchar,
                                                paceMonth int) RETURNs int AS
'
    DECLARE
        fromTimestamp timestamp;
    toTimestamp   timestamp;
    timestampA    timestamp;
    timestampB    timestamp;
    tableCount    int = 1;
begin
    SELECT * INTO fromTimestamp FROM to_timestamp(fromDate, ''YYYY-MM'');
    SELECT * INTO toTimestamp FROM to_timestamp(toDate, ''YYYY-MM'');

    INSERT INTO partitions_settings_date("table_name", "column_name", "start_date", "end_date", "month_pace")
    VALUES (rootTableName, partitionByColumnName, fromTimestamp, fromTimestamp, paceMonth);

    EXECUTE ''CREATE TABLE '' || concat(rootTableName, ''_default'') || '' PARTITION OF '' || rootTableName || '' DEFAULT'';
    raise notice ''create default table: %_default'', rootTableName;

    PERFORM aursys_createPartition(rootTableName, partitionByColumnName, ''1980-01-01'', ''1980-02-01'');
    PERFORM aursys_createPartition(rootTableName, partitionByColumnName, ''2000-01-01'', ''2000-02-01'');
    PERFORM aursys_createPartition(rootTableName, partitionByColumnName, ''2010-01-01'', ''2010-02-01'');

    timestampA = fromTimestamp;
    while timestampA < toTimestamp
        LOOP
            timestampB = timestampA + interval ''1 MONTH'' * paceMonth;

    PERFORM aursys_createPartition(rootTableName, partitionByColumnName, timestampA, timestampB);

    tableCount = tableCount + 1;
    timestampA = timestampB;
    end loop;
    return tableCount + 4;
    end
' LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION aursys_createPartition(rootTableName varchar, partitionByColumnName varchar,
                                                  timestampA timestamp, timestampB timestamp) RETURNs void AS
'
    DECLARE
        tableName  varchar;
    monthCount int;
begin
    monthCount = extract(month from age(timestampB, timestampA));
    tableName = aursys_createPartitionTableName(rootTableName, timestampA, monthCount);

    EXECUTE format(''CREATE TABLE %I PARTITION OF %I FOR VALUES FROM (%L) TO (%L)'', tableName, rootTableName, timestampA,
        timestampB);

    raise notice ''create table: %, pColumn: %, (% - %)'', tableName, partitionByColumnName, timestampA, timestampB;

    UPDATE partitions_settings_date
    SET end_date = timestampB
    WHERE "table_name" = rootTableName;
    end
' LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION aursys_createPartitionTableName(tableName varchar, timestampA timestamp without time zone, counts int) RETURNs varchar AS
'
    DECLARE
        i int = 0;
    begin
    while i < counts
        LOOP
            tableName = concat(tableName, ''_'', to_char(timestampA, ''YYYYmMM''));
    timestampA = timestampA + interval ''1 MONTH'';
    i = i + 1;
    end loop;
    return tableName;
    end
' LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION aur_continuePartitions(rootTableName varchar, toDate varchar) RETURNs int AS
'
    DECLARE
        fromTimestamp         timestamp;
    toTimestamp           timestamp;
    timestampA            timestamp;
    timestampB            timestamp;
    paceMonth             int;
    partitionByColumnName varchar;
    tableCount            int = 0;
begin
    SELECT end_date INTO fromTimestamp FROM partitions_settings_date;
    SELECT month_pace INTO paceMonth FROM partitions_settings_date;
    select "column_name" INTO partitionByColumnName FROM partitions_settings_date;

    SELECT * INTO toTimestamp FROM to_timestamp(toDate, ''YYYY-MM'');

    timestampA = fromTimestamp;
    while timestampA < toTimestamp
        LOOP
            timestampB = timestampA + interval ''1 MONTH'' * paceMonth;

    PERFORM aursys_createPartition(rootTableName, partitionByColumnName, timestampA, timestampB);

    tableCount = tableCount + 1;
    timestampA = timestampB;
    end loop;
    return tableCount;
    end
' LANGUAGE 'plpgsql';



---------------------------TRIGGERS--------------------------------------

-- run before delete user
-- delete all child users and his units
CREATE OR REPLACE FUNCTION delete_user() RETURNS TRIGGER AS
'
    DECLARE
        del_user iuser%ROWTYPE;
    BEGIN
        FOR del_user IN
            WITH RECURSIVE r AS (
                SELECT u.*
                FROM iuser u
                WHERE id = OLD.id
                UNION
                SELECT u.*
                FROM iuser u
                         JOIN r
                              ON u.user_parent_id = r.id
            )
            SELECT *
            FROM r
            LOOP
                DELETE
                FROM unit
                WHERE user_id = del_user.id;
                DELETE
                FROM user_unit
                where user_id = del_user.id;
            END LOOP;
        return OLD;
    END;
' LANGUAGE plpgsql;
CREATE TRIGGER before_user_delete
    BEFORE DELETE
    ON iuser
    FOR EACH ROW
EXECUTE PROCEDURE delete_user();


-------------------------------------
---- обновление last_password_reset_time при обновлении поля password
CREATE OR REPLACE FUNCTION on_update_user_password() RETURNS TRIGGER AS
'
    BEGIN
        UPDATE iuser
        SET last_password_reset_time = timezone(''UTC'', now())
        WHERE id = OLD.id;
        RETURN OLD;
    END;
' LANGUAGE plpgsql;

CREATE TRIGGER after_update_iuser_password_trigger
    AFTER UPDATE
    ON iuser
    FOR EACH ROW
    WHEN (OLD.password IS DISTINCT FROM NEW.password)
EXECUTE PROCEDURE on_update_user_password();
-------------------------------------

CREATE OR REPLACE FUNCTION insert_unit_id() RETURNS TRIGGER AS
'
    DECLARE
        deviceBrand bigint;
    BEGIN
        INSERT INTO unit_data (unit_id)
        VALUES (NEW.id);
        INSERT INTO mileage_norm_consumption (unit_id)
        VALUES (NEW.id);
        -- default sensors
        INSERT INTO sensors (sensor_type, "name", device_parameter_id, unit_of_measure_id, unit_id, sensor_calibration,
                             formula_raw, visible)
        VALUES (''DEFAULT'', ''gps-speed'', null, 1, NEW.id, ''{"processedDataList":[],"rawDataList":[]}'',
                ''{#speed}'', true),
               (''DEFAULT'', ''gps-satellites'', null, 2, NEW.id, ''{"processedDataList":[],"rawDataList":[]}'',
                ''{#amountSatellite}'', true),
               (''DEFAULT'', ''gps-odometer'', null, 12, NEW.id, ''{"processedDataList":[],"rawDataList":[]}'',
                ''{@_odv}*1/1000+0'', true);

        select device_brand_id
        INTO deviceBrand
        from device_model
        where id = NEW.device_model_id;

        -- egts
        IF (NEW.device_protocol_id = 8) THEN
            INSERT INTO sensors (sensor_type, "name", device_parameter_id, unit_of_measure_id, unit_id,
                                 sensor_calibration, condition_raw, formula_raw)
            VALUES (''DEVICE_BATTERY'', ''device-battery'', null, 4, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', ''{x}>=0'', ''({@VBAT}-2.8)*100''),
                   (''ONBOARD_VOLTAGE'', ''onboard-voltage'', null, 5, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', ''{x}>=0'', ''{@VPWR}'');
        end if;

        -- для wialon ips
        IF (NEW.device_protocol_id = 1) THEN
            INSERT INTO sensors (sensor_type, "name", device_parameter_id, unit_of_measure_id, unit_id,
                                 sensor_calibration, condition_raw, formula_raw)
            VALUES (''DEVICE_BATTERY'', ''device-battery'', null, 4, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', ''{x}>=0'', ''({@VBAT}-3.335)*100''),
                   (''ONBOARD_VOLTAGE'', ''onboard-voltage'', null, 5, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', ''{x}>=0'', ''{@VPWR}'');
        end if;

        -- bitrek wialon
        IF (deviceBrand = 1 AND NEW.device_protocol_id = 1) THEN
            INSERT
                INTO sensors (sensor_type, "name", device_parameter_id, unit_of_measure_id, unit_id,
                              sensor_calibration, condition_raw, formula_raw)
            VALUES (''GSM_STRENGTH'', ''gsm-strength'', null, 4, NEW.id, ''{"processedDataList":[],"rawDataList":[]}'',
                    ''{x}>=0'', ''{@21}*20'');
            return NEW;
        end if;

        -- teltonika
        IF (NEW.device_protocol_id = 2) THEN
            INSERT INTO sensors (sensor_type, "name", device_parameter_id, unit_of_measure_id, unit_id,
                                 sensor_calibration, condition_raw, formula_raw)
            VALUES (''DEVICE_BATTERY'', ''device-battery'', null, 4, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', ''{x}>=0'', ''({@67}-3335)/100''),
                   (''GSM_STRENGTH'', ''gsm-strength'', null, 4, NEW.id, ''{"processedDataList":[],"rawDataList":[]}'',
                    ''{x}>=0'', ''{@21}*20''),
                   (''ONBOARD_VOLTAGE'', ''onboard-voltage'', null, 5, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', ''{x}>=0'', ''{@66}/1000'');
            return NEW;
        end if;

        -- cguard
        IF (deviceBrand = 3) THEN
            INSERT
                INTO sensors (sensor_type, "name", device_parameter_id, unit_of_measure_id, unit_id,
                              sensor_calibration, condition_raw, formula_raw)
            VALUES (''DEVICE_BATTERY'', ''device-battery'', null, 4, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', null, ''{@BAT1}''),
                   (''GSM_STRENGTH'', ''gsm-strength'', null, 4, NEW.id, ''{"processedDataList":[],"rawDataList":[]}'',
                    null, ''{@CSQ1}''),
                   (''ONBOARD_VOLTAGE'', ''onboard-voltage'', null, 5, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', null, ''{@PWR1}'');
            return NEW;
        end if;

        -- galileoSky
        IF (NEW.device_protocol_id = 9) THEN
            INSERT
            INTO sensors (sensor_type, "name", device_parameter_id, unit_of_measure_id, unit_id,
                          sensor_calibration, condition_raw, formula_raw)
            VALUES (''DEVICE_BATTERY'', ''device-battery'', null, 4, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', null, ''{@_bat}-2.9''),
                   (''ONBOARD_VOLTAGE'', ''onboard-voltage'', null, 5, NEW.id,
                    ''{"processedDataList":[],"rawDataList":[]}'', null, ''{@_pwr}'');
            return NEW;
        end if;

        RETURN NEW;
    END
' LANGUAGE plpgsql;

CREATE TRIGGER insert_unit_trigger_before
    After INSERT
    ON unit
    FOR EACH ROW
EXECUTE PROCEDURE insert_unit_id();

-----------------

CREATE OR REPLACE FUNCTION delete_unit_id() RETURNS TRIGGER AS
'
    BEGIN
        DELETE
        FROM unit_data
        where unit_id = OLD.id;

        DELETE
        FROM mileage_norm_consumption
        where unit_id = OLD.id;

        DELETE
        FROM user_unit
        where unit_id = OLD.id;

        DELETE
        FROM message
        where unit_id = OLD.id;

        DELETE
        FROM sensors
        where unit_id = OLD.id;

        DELETE
        FROM trip
        where unit_id = OLD.id;

        DELETE
        FROM trip_meta
        where unit_id = OLD.id;

        RETURN OLD;
    END;
' LANGUAGE plpgsql;
CREATE TRIGGER delete_unit_trigger_after
    BEFORE DELETE
    ON unit
    FOR EACH ROW
EXECUTE PROCEDURE delete_unit_id();

CREATE OR REPLACE FUNCTION update_unit_update_time() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        NEW.updated_time = timezone(''UTC'', now());
        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_update_unit_trigger_after
    BEFORE UPDATE
    ON unit
    FOR EACH ROW
EXECUTE PROCEDURE update_unit_update_time();

--------

CREATE OR REPLACE FUNCTION on_before_sensor_delete() RETURNS TRIGGER AS
'
    DECLARE
        dependentSensorsCount integer;
        sensorToken           text;
    BEGIN
        -- check sensor not used in another sensors

        sensorToken = concat(''%{'', OLD.id, ''}%'');

        SELECT count(*)
        INTO dependentSensorsCount
        from sensors
        where unit_id = OLD.unit_id
          AND (
                    formula_raw like sensorToken OR
                    condition_raw like sensorToken
            );

        IF (dependentSensorsCount > 0) THEN
            RAISE EXCEPTION ''cant delete sensor: % it has % dependent sensors'', OLD.id, dependentSensorsCount;
        END IF;

        -- ===>>> add delete dependendent mode before delete sensor
        DELETE
        FROM mode
        where sensor_id = OLD.id;

        RETURN OLD;
    END;
' LANGUAGE plpgsql;

CREATE TRIGGER delete_sensor_trigger
    BEFORE DELETE
    ON sensors
    FOR EACH ROW
EXECUTE PROCEDURE on_before_sensor_delete();

---------------------------------------------------------------------------------------------------------------------
-- отслеживаем изменение имени датчика и если он используется в других датчиках, то корректируем

CREATE OR REPLACE FUNCTION on_before_sensor_update() RETURNS TRIGGER AS
'
    DECLARE
        sensorsRow sensors%ROWTYPE;
        oldToken   varchar;
        newToken   varchar;
    BEGIN
        NEW.updated_time = timezone(''UTC'', now());
        IF (OLD.name = NEW.name) then
            return NEW;
        end if;

        oldToken = concat(''{'', OLD.name, ''}'');
        newToken = concat(''{'', NEW.name, ''}'');
        FOR sensorsRow IN
            SELECT *
            FROM sensors
            where unit_id = OLD.unit_id
            LOOP
                IF (OLD.id = sensorsRow.id) then
                    CONTINUE;
                end if;
                UPDATE sensors
                SET formula_raw = replace(sensorsRow.formula_raw, oldToken, newToken)
                where id = sensorsRow.id;
                UPDATE sensors
                SET condition_raw = replace(sensorsRow.condition_raw, oldToken, newToken)
                where id = sensorsRow.id;
            END LOOP;
        return NEW;
    END;
' LANGUAGE plpgsql;

CREATE TRIGGER sensor_update_trigger
    BEFORE UPDATE
    ON sensors
    FOR EACH ROW
EXECUTE PROCEDURE on_before_sensor_update();

-----------------------------
-- при изменении поля deleted изменяет поля в зависимых пользователях и объектах
CREATE OR REPLACE FUNCTION on_update_user() RETURNS TRIGGER AS
'
    BEGIN

        -- обновление зависимых пользователей
        UPDATE iuser
        SET deleted=NEW.deleted
        where id IN (
            WITH RECURSIVE r AS (
                SELECT u.id
                FROM iuser u
                WHERE id = NEW.id
                UNION
                SELECT u.id
                FROM iuser u
                         JOIN r
                              ON u.user_parent_id = r.id
            )
            SELECT *
            FROM r);

        -- обновление OWNER объектов
        UPDATE unit
        SET deleted=NEW.deleted
        WHERE id IN (
            WITH RECURSIVE r AS (
                SELECT "id",
                       user_parent_id
                FROM iuser
                WHERE id = NEW.id
                UNION
                SELECT u."id",
                       u.user_parent_id
                FROM iuser u
                         JOIN r
                              ON u.user_parent_id = r.id
            )
            SELECT u.id
            FROM r
                     JOIN unit u
                          ON r.id = u.user_id
        );

        RETURN OLD;
    END;
' LANGUAGE plpgsql;

CREATE TRIGGER after_update_iuser_trigger
    AFTER UPDATE
    ON iuser
    FOR EACH ROW
    WHEN (OLD.deleted IS DISTINCT FROM NEW.deleted)
EXECUTE PROCEDURE on_update_user();

-- при добавлении флага deleted для пользователя или объекта добавлять к уникальным полям время в nanoUnix
-- чтобы эти объекты не машали для создания новых объектов

CREATE OR REPLACE FUNCTION add_deleted_suffix(source varchar, deleteTime bigint) RETURNS varchar AS
'
    DECLARE
        delPrefix varchar = ''_(d)_'';
    BEGIN
        return concat(source, delPrefix, deleteTime);
    END;
' LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION remove_deleted_suffix(source varchar) RETURNS varchar AS
'
    DECLARE
        delPrefix varchar = ''_(d)_'';
    BEGIN
        return substring(source, 0, POSITION(delPrefix in source));
    END;
' LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION on_before_user_deleted_update() RETURNS TRIGGER AS
'
    DECLARE
        currentNanoUnix bigint;
    BEGIN

        if (NEW.deleted) THEN
            select extract(epoch from now()) * 100000
            INTO currentNanoUnix;
            NEW.username = add_deleted_suffix(OLD.username, currentNanoUnix);
            NEW.email = add_deleted_suffix(OLD.email, currentNanoUnix);
            NEW.legal_name = add_deleted_suffix(OLD.legal_name, currentNanoUnix);
        ELSE
            NEW.username = remove_deleted_suffix(OLD.username);
            NEW.email = remove_deleted_suffix(OLD.email);
            NEW.legal_name = remove_deleted_suffix(OLD.legal_name);
        end if;

        RETURN NEW;
    END;
' LANGUAGE plpgsql;

CREATE TRIGGER before_update_iuser_deleted_column_trigger
    BEFORE UPDATE
    ON iuser
    FOR EACH ROW
    WHEN (OLD.deleted IS DISTINCT FROM NEW.deleted)
EXECUTE PROCEDURE on_before_user_deleted_update();

-- добавление / удаления суффикса к удаленным / восстановленным объектам
CREATE OR REPLACE FUNCTION on_before_unit_deleted_update() RETURNS TRIGGER AS
'
    DECLARE
        currentNanoUnix bigint;
    BEGIN
        if (NEW.deleted) THEN
            select extract(epoch from now()) * 100000
            INTO currentNanoUnix;
            NEW.unit_name = add_deleted_suffix(OLD.unit_name, currentNanoUnix);

            if (NEW.phone_number IS NOT NULL) THEN
                NEW.phone_number = add_deleted_suffix(OLD.phone_number, currentNanoUnix);
            END IF;

            NEW.device_imei = add_deleted_suffix(OLD.device_imei, currentNanoUnix);
        ELSE
            NEW.unit_name = remove_deleted_suffix(OLD.unit_name);
            NEW.phone_number = remove_deleted_suffix(OLD.phone_number);
            NEW.device_imei = remove_deleted_suffix(OLD.device_imei);
        end if;
        RETURN NEW;
    END;
' LANGUAGE plpgsql;

CREATE TRIGGER before_update_unit_deleted_column_trigger
    BEFORE UPDATE
    ON unit
    FOR EACH ROW
    WHEN (OLD.deleted IS DISTINCT FROM NEW.deleted)
EXECUTE PROCEDURE on_before_unit_deleted_update();


-----------------------------
-- при добавлении нового сообщения проверка его по времени и добавление или нет в unit_data
CREATE OR REPLACE FUNCTION on_insert_message() RETURNS TRIGGER AS
'
    DECLARE
        last                     record;
        motion_state             motion_state;
        motion_state_change_time timestamp(6);
    BEGIN
        -- получаем последние данные
        select m.datetime                      as last_valid_update_time,
               d.last_motion_state             as motion_state,
               d.last_motion_state_change_time as motion_state_change_time
        INTO last
        from unit_data d
                 LEFT JOIN message m
                           ON d.last_valid_message_id = m.id
        where d.unit_id = NEW.unit_id;

        if (last.last_valid_update_time > NEW.datetime) then
            -- обновляем только last_message_id
            UPDATE unit_data
            SET last_message_id       = NEW.id,
                last_message_datetime = NEW.datetime
            where unit_id = NEW.unit_id;
            return NEW;
        end if;

        if (NEW.is_valid) then
            -- определяем motion state
            motion_state = motion_state(NEW.speed);
            IF (motion_state != last.motion_state) then
                motion_state_change_time = NEW.datetime;
            else
                motion_state_change_time = last.motion_state_change_time;
            end if;
            -- обновляем
            IF (NEW.latitude != 0 AND NEW.longitude != 0) THEN
                UPDATE unit_data
                SET last_message_id                         = NEW.id,
                    last_message_datetime                   = NEW.datetime,

                    last_valid_coordinates_message_id       = NEW.id,
                    last_valid_coordinates_message_datetime = NEW.datetime,

                    last_valid_message_id                   = NEW.id,
                    last_valid_message_datetime             = NEW.datetime,

                    last_motion_state_change_time           = motion_state_change_time,
                    last_motion_state                       = motion_state
                where unit_id = NEW.unit_id;
            ELSE
                UPDATE unit_data
                SET last_message_id               = NEW.id,
                    last_message_datetime         = NEW.datetime,

                    last_valid_message_id         = NEW.id,
                    last_valid_message_datetime   = NEW.datetime,

                    last_motion_state_change_time = motion_state_change_time,
                    last_motion_state             = motion_state
                where unit_id = NEW.unit_id;
            END IF;
        ELSE
            UPDATE unit_data
            SET last_message_id       = NEW.id,
                last_message_datetime = NEW.datetime
            where unit_id = NEW.unit_id;
        end if;
        RETURN NEW;
    END;
' LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION motion_state(speed integer)
    RETURNs motion_state
AS
'
    begin
        IF (speed = 0) then
            return ''STOP'';
        else
            return ''GO'';
        end if;
    end
' LANGUAGE plpgsql;

CREATE TRIGGER after_insert_new_message
    AFTER INSERT
    ON message
    FOR EACH ROW
EXECUTE PROCEDURE on_insert_message();

CREATE OR REPLACE FUNCTION tr_update_trip_meta_before() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        NEW.updated_time = timezone(''UTC'', now());
        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_update_trip_meta_trigger_before
    BEFORE UPDATE
    ON trip_meta
    FOR EACH ROW
EXECUTE PROCEDURE tr_update_trip_meta_before();

CREATE OR REPLACE FUNCTION updateNotificationCount(unitId bigint, notificationSourceId bigint, n integer) RETURNs void AS
'
    DECLARE
        notification_source_deleted boolean;
    BEGIN

        select deleted
        INTO notification_source_deleted
        FROM notification_source
        where id = notificationSourceId;

        IF notification_source_deleted = false THEN
            INSERT
                INTO notification_statistic_counts (unit_id, notification_source_id, unread_count)
            VALUES (unitId, notificationSourceId, 1)
            ON CONFLICT (unit_id, notification_source_id)
                DO UPDATE
                SET unread_count = notification_statistic_counts.unread_count + n
            where notification_statistic_counts.unit_id = unitId
              AND notification_statistic_counts.notification_source_id = notificationSourceId;
        end if;
    END;
' LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION tr_update_notification_statistic_before() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        NEW.updated_time = timezone(''UTC'', now());
        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_update_notification_statistic_trigger_before
    BEFORE UPDATE
    ON notification_statistic
    FOR EACH ROW
EXECUTE PROCEDURE tr_update_notification_statistic_before();

CREATE OR REPLACE FUNCTION tr_update_notification_statistic_after() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        IF (OLD.status IN (''ACTIVE'', ''COMPLETED'')) then
            IF (OLD.is_read = true AND NEW.is_read = false) then
                PERFORM updateNotificationCount(OLD.unit_id, OLD.notification_source_id, 1);
                return NEW;
            end if;

            IF (OLD.is_read = false AND NEW.is_read = true) then
                PERFORM updateNotificationCount(OLD.unit_id, OLD.notification_source_id, -1);
                return NEW;
            end if;
        end if;

        IF (OLD.status = ''PENDING'' AND NEW.status = ''ACTIVE'') then
            PERFORM updateNotificationCount(OLD.unit_id, OLD.notification_source_id, 1);
            return NEW;
        end if;

        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_update_notification_statistic_trigger_after
    AFTER UPDATE
    ON notification_statistic
    FOR EACH ROW
EXECUTE PROCEDURE tr_update_notification_statistic_after();

CREATE OR REPLACE FUNCTION tr_insert_notification_statistic_after() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        IF (NEW.status = ''ACTIVE'' OR NEW.status = ''COMPLETED'') then
            PERFORM updateNotificationCount(NEW.unit_id, NEW.notification_source_id, 1);
            return NEW;
        end if;
        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_insert_notification_statistic_trigger_after
    AFTER INSERT
    ON notification_statistic
    FOR EACH ROW
EXECUTE PROCEDURE tr_insert_notification_statistic_after();

CREATE OR REPLACE FUNCTION tr_on_after_update_notification_source_deleted() RETURNS TRIGGER AS
'
    BEGIN
        UPDATE notification_statistic_counts
        SET unread_count = 0
        where notification_source_id = NEW.id;
        RETURN NEW;
    END;
' LANGUAGE plpgsql;
CREATE TRIGGER on_after_update_notification_source_deleted
    AFTER UPDATE
    ON notification_source
    FOR EACH ROW
    WHEN (OLD.deleted IS DISTINCT FROM NEW.deleted)
EXECUTE PROCEDURE tr_on_after_update_notification_source_deleted();

CREATE OR REPLACE FUNCTION tr_after_delete_user_unit() RETURNS TRIGGER AS
'
    DECLARE

    BEGIN

        UPDATE notification_statistic
        SET status = ''CANCELLED''
        where (notification_source_id, unit_id)
                  IN
              (select su.notification_source_id,
                      su.unit_id
               from notification_source_unit su
                        JOIN notification_source s
                             ON s.id = su.notification_source_id
               WHERE su.unit_id = OLD.unit_id
                 and s.user_id = OLD.user_id);

        UPDATE notification_statistic_counts
        SET unread_count = 0
        WHERE (notification_source_id, unit_id)
                  IN
              (select su.notification_source_id,
                      su.unit_id
               from notification_source_unit su
                        JOIN notification_source s
                             ON s.id = su.notification_source_id
               WHERE su.unit_id = OLD.unit_id
                 and s.user_id = OLD.user_id);

        DELETE
        from notification_source_unit
        where (notification_source_id, unit_id)
                  IN
              (select su.notification_source_id,
                      su.unit_id
               from notification_source_unit su
                        JOIN notification_source s
                             ON s.id = su.notification_source_id
               WHERE su.unit_id = OLD.unit_id
                 and s.user_id = OLD.user_id);


        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_after_delete_user_unit_trigger
    AFTER DELETE
    ON user_unit
    FOR EACH ROW
EXECUTE PROCEDURE tr_after_delete_user_unit();

CREATE OR REPLACE FUNCTION tr_before_delete_geofence() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        delete
        from notification_source_geofence
        where geofence_id = OLD.id;
        return OLD;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_before_delete_geofence_trigger
    BEFORE DELETE
    ON geofence
    FOR EACH ROW
EXECUTE PROCEDURE tr_before_delete_geofence();

CREATE OR REPLACE FUNCTION on_after_insert_user_action_log() RETURNS TRIGGER AS
'
    BEGIN
        UPDATE iuser
        SET last_action_time = NEW.time
        where id = NEW.user_id;
        return NEW;
    END;
' LANGUAGE plpgsql;
CREATE TRIGGER tr_after_insert_user_action_log
    AFTER INSERT
    ON user_actions_log
    FOR EACH ROW
EXECUTE PROCEDURE on_after_insert_user_action_log();

CREATE OR REPLACE FUNCTION tr_update_updated_time() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        NEW.updated_time = timezone(''UTC'', now());
        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_update_user_push_device_trigger_before
    BEFORE UPDATE
    ON user_push_device
    FOR EACH ROW
EXECUTE PROCEDURE tr_update_updated_time();

CREATE TRIGGER on_update_activation_code_trigger_before
    BEFORE UPDATE
    ON activation_code
    FOR EACH ROW
EXECUTE PROCEDURE tr_update_updated_time();

------ PROCEDURE -------------
CREATE OR REPLACE PROCEDURE aur_markDeleted(unitId bigint, toTime timestamp(0)) AS
'
    declare
        lastDatetime timestamp(0);
        lastDeletedDatetime timestamp(0);
        startTime    timestamp(0);
        updCount     int = 0;
        toId         bigint;
    begin
        if unitId IS null OR toTime isNull OR toTime > timezone(''UTC'', now()) then
            raise notice ''ERROR illegal input parameters'';
            return;
        end if;

        SELECT last_message_datetime, last_deleted_message_datetime INTO lastDatetime, lastDeletedDatetime
        FROM unit_data where unit_id = unitId;

        if (lastDatetime IS NULL OR lastDatetime < toTime) THEN
            raise notice ''not messages for update, lastMessageDatetime: %, and toTime: %'', lastDatetime, toTime;
        end if;

        if (lastDeletedDatetime IS NOT NULL AND lastDeletedDatetime >= toTime) THEN
            raise notice ''not messages for update, lastDeletedDatetime: %, and toTime: %'', lastDeletedDatetime, toTime;
        end if;

        select last_deleted_message_datetime INTO startTime from unit_data where unit_id = unitId;
        if startTime is null then
            startTime = ''1970-01-01'';
        end if;
        raise notice ''start time: %'', startTime;

        UPDATE message SET deleted = true WHERE unit_id = unitId and datetime >= startTime AND datetime <= toTime;
        get diagnostics updCount = row_count;
        raise notice ''rows updated: %'', updCount;

        SELECT max(datetime) into toTime from message
        WHERE unit_id = unitId and datetime >= startTime AND datetime <= toTime;

        select id, datetime INTO toId, toTime from message where unit_id = unitId and datetime = toTime;
        UPDATE unit_data SET last_deleted_message_id = toId, last_deleted_message_datetime = toTime WHERE unit_id = unitId;

    end
' LANGUAGE plpgsql;
