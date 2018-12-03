/*
Create Crime Table
*/
CREATE TABLE chicago_crime.crime
(
    crime_id integer,
    case_number character varying COLLATE pg_catalog."default",
    crime_date character varying COLLATE pg_catalog."default",
    arrest character varying,
    domestic character varying,
    lat character varying,
    lon character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE chicago_crime.crime
    OWNER to cmcarlsn;

/*
Create Crime Type Table
*/ 
CREATE TABLE chicago_crime.crime_type
(
    case_number character varying COLLATE pg_catalog."default",
    iucr character varying,
primary_type character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE chicago_crime.crime_type
    OWNER to cmcarlsn;
/*
Create Ward Table
*/ 
CREATE TABLE chicago_crime.ward
(
    ward character varying,
    ward_rep character varying ,
rep_contact character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE chicago_crime.ward
    OWNER to cmcarlsn;
/*
Create Attraction Table
*/ 
CREATE TABLE chicago_crime.attraction
(
    name character varying,
    lat character varying ,
lon character varying
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE chicago_crime.attraction
    OWNER to cmcarlsn;

/*
Populate Crime Table with Crime Staging Data
*/
INSERT INTO chicago_crime.crime (crime_id, case_number, crime_date, 
arrest,domestic, lat, lon)
  SELECT DISTINCT
crime_id, case_number, crime_date, 
arrest,domestic, lat, lon
  FROM chicago_crime.crime_staging;
  
/*
Populate Crime Table with Crime Type Data
*/
INSERT INTO chicago_crime.crime_type (case_number, iucr, primary_type) 
  SELECT DISTINCT
case_number, iucr, primary_type
  FROM chicago_crime.crime_staging;
  
  
/*
Populate Ward Table with Crime Staging Data
*/  
INSERT INTO chicago_crime.ward (ward) 
  SELECT DISTINCT
ward
  FROM chicago_crime.crime_staging;
  
/*
Populate Attraction table with several (hardcoded) popular locations
*/
INSERT INTO chicago_crime.attraction (name, lat, lon)
    VALUES ('Willis Tower', '41.8798', '87.6359');
VALUES ('Navy Pier', '41.8917', '87.6043'); 
VALUES ('The Shedd Aquarium', '41.8676', '87.6140');
VALUES ('Soldier Field', '41.8623', '87.6167');
VALUES ('Guaranteed Rate Field', '41.8299', '87.6338');
VALUES ('Wrigley Field', '41.9484', '87.6553');
