ALTER TABLE IF EXISTS "message" DROP CONSTRAINT IF EXISTS "message_fk0";
ALTER TABLE IF EXISTS "unit_data" DROP CONSTRAINT IF EXISTS "unit_data_fk0";
DROP TABLE IF EXISTS "unit_data";
DROP TABLE IF EXISTS "message";
DROP TABLE IF EXISTS "unit";

CREATE TABLE "unit"
(
    "id"                     serial  NOT NULL,
    "unit_name"              varchar NOT NULL UNIQUE,
    "device_imei"            varchar NOT NULL UNIQUE,
    CONSTRAINT unit_pk PRIMARY KEY ("id")
);

CREATE TABLE "message"
(
    "id"               bigserial    NOT NULL,
    "datetime"         timestamp(6) NOT NULL,
    "unit_id"          integer      NOT NULL,
    "latitude"         FLOAT        NOT NULL,
    "longitude"        FLOAT        NOT NULL,
    "altitude"         SMALLINT     NOT NULL,
    "speed"            SMALLINT     NOT NULL,
    "amount_satellite" SMALLINT     NOT NULL,
    "course"           SMALLINT     NOT NULL,
    "params"           text         NOT NULL,
    "is_archive"       boolean      NOT NULL DEFAULT true,
    "is_valid"         boolean      NOT NULL DEFAULT true,
    "received"         TIMESTAMP(6) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT message_pk PRIMARY KEY ("id")
);

CREATE TABLE unit_data (
    "unit_id" integer,
    "last_message_id" integer,
    CONSTRAINT unit_data_pk PRIMARY KEY ("unit_id")
);

ALTER TABLE "unit_data"
    ADD CONSTRAINT "unit_data_fk0" FOREIGN KEY ("last_message_id") REFERENCES "message" ("id");

ALTER TABLE "message"
    ADD CONSTRAINT "message_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

