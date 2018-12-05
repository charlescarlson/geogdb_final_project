# Geog DB Final Project

## The below might not be necessary

## The Data Set
Our data comes from a free public dataset on Kaggle: https://www.kaggle.com/currie32/crimes-in-chicago. Downloading this dataset will give you multiple very large CSVs. We are only concerned with the data from 2015, which can be found in the CSV corresponding to the years 2012-2017.

## Formating the data [OLD]
Make sure you save the CSVs from Kaggle in the geogdb_final_project directory. Then, run the command  
  `$ python data_format.py [--all] [args]`  
The parameter `--all` will create all of the CSVs, but you can also provide multiple arguments correspoding to the specific CSVs you want to generate. For example:  
  `$ python data_format.py --all` will generate all CSVs.  
  `$ python data_format.py crime` will generate only the CSV that will populate the 'Crime' Table.  
  `$ python data_format.py crime crime_type ward` will generate the CSvs that will populate the 'Crime', 'CrimeType', and 'Ward' tables.
  
## Formating the data [CURRENT]
Make sure you save the CSVs from Kaggle in the geogdb_final_project directory. Then, run the command  
  `$ python shrink.py [file] [number_of_crimes]`
      e.g `python shrink.py Chicago_Crime_2012_2017.csv 1000000`
This will create a csv_files directory and place your new CSV within it.

## Creating the Databas

## Create the Schema
Create a schema and call it chicago_crime.

## Create the staging table 
Open a SQL Query window and run the SQL in create_staging.sql

## Create tables and populate
The tables will be populated by the staging table. There are also a few hardcoded entries that will be added to the
Attraction table. Ward geometries will come from the Chicago Wards shape file, which there instructions on how to
import to your database on ICON.

  
