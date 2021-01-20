ALTER TABLE IF EXISTS unit_odo_temp DROP CONSTRAINT unit_odo_temp_fk0;
DROP table if exists unit_odo_temp;

CREATE TABLE unit_odo_temp
(
    unit_id                   integer,
    last_processed_datetime   timestamp,
    last_processed_message_id integer,
    created_time              timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    updated_time              timestamp(0) NOT NULL DEFAULT timezone('UTC', now()),
    CONSTRAINT unit_odo_temp_pk PRIMARY KEY ("unit_id")
);

ALTER TABLE "unit_odo_temp"
    ADD CONSTRAINT "unit_odo_temp_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");

ALTER TABLE unit_odo_temp ADD COLUMN created_time timestamp(0) NOT NULL DEFAULT timezone('UTC', now());


CREATE OR REPLACE FUNCTION tr_update_unit_odo_temp_before() RETURNS TRIGGER AS
'
    DECLARE
    BEGIN
        NEW.updated_time = timezone(''UTC'', now());
        return NEW;
    END
' LANGUAGE plpgsql;
CREATE TRIGGER on_update_unit_odo_temp_trigger_before
    BEFORE UPDATE
    ON unit_odo_temp
    FOR EACH ROW
EXECUTE PROCEDURE tr_update_unit_odo_temp_before();
