# geogdb_final_project

## The below might not be necessary

## The Data Set
Our data comes from a free public dataset on Kaggle: https://www.kaggle.com/currie32/crimes-in-chicago. Downloading this dataset will give you multiple very large CSVs. We are only concerned with the data from 2015, which can be found in the CSV corresponding to the years 2012-2017.

### Formating the data
Make sure you save the CSVs from Kaggle in the geogdb_final_project directory. Then, run the command  
  `$ python data_format.py [--all] [args]`  
The parameter `--all` will create all of the CSVs, but you can also provide multiple arguments correspoding to the specific CSVs you want to generate. For example:  
  `$ python data_format.py --all` will generate all CSVs.  
  `$ python data_format.py crime` will generate only the CSV that will populate the 'Crime' Table.  
  `$ python data_format.py crime crime_type ward` will generate the CSvs that will populate the 'Crime', 'CrimeType', and 'Ward' tables.  
  
