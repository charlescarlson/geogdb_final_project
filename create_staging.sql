/*
Create Ward Table
*/ 
CREATE TABLE chicago_crime.crime_staging
(
		case_id integer,
		case_number character varying,
		crime_date character varying,
		block character varying,
		iucr character varying,
		primary_type character varying,
		description character varying,
		location_description character varying,
		arrest character varying,
		domestic character varying,
		beat character varying, 
		ward character varying,
		community_area character varying, 
		fbi_code character varying,
		x_coord character varying,
		y_coord character varying, 
		crime_year character varying,
		updated_on character varying,
		lat character varying,
		lon character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE chicago_crime.crime_staging
    OWNER to cmcarlsn;