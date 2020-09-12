CREATE TABLE IF NOT EXISTS unit_odo_temp (
    unit_id integer NOT NULL,
    last_processed_datetime timestamp NOT NULL,
    CONSTRAINT unit_odo_temp_pk PRIMARY KEY ("unit_id")
);

ALTER TABLE "unit_odo_temp"
    ADD CONSTRAINT "unit_odo_temp_fk0" FOREIGN KEY ("unit_id") REFERENCES "unit" ("id");
