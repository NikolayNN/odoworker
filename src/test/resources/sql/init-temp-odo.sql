DROP TABLE IF EXISTS unit_odo_temp;

CREATE TABLE unit_odo_temp (
    unit_id integer,
    last_processed_datetime timestamp,
    last_processed_message_id integer,
    CONSTRAINT unit_odo_temp_pk PRIMARY KEY ("unit_id")
)
