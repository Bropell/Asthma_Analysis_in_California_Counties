![flag-of-california-logo-png-transparent](https://user-images.githubusercontent.com/105950742/197089346-ab589b04-9119-4170-9fa6-559f70933828.png)



# Asthma_Analysis_in_California_Counties

Our team has decided to explore if external environmental factors have any impact on asthma in California and its counties. From this analysis, we would like to propose how clean energy policies can be beneficial both enviromentally and for public health. 


## Week 1: Conceptualization 

This week started with the initial search for dataset, as listed below. Firstly, we found datasets for the California demographics and asthma rated. Then, searched for datasets with California counties as the primary connection, to account for the external factors we were interested in exploring. 

  •	Asthma Rates

  •	Demographics Data

  •	EV charging Stations

  •	Registered EVs

  •	Wildfire data

  •	Air pollutants


As there were two people working on this roll, Mel did the pre-processing as I [and the team] located pertenant datesets, please see references for the dataset I located below. We collaberated on the schema, which Mel transcrribed as I reviewed. 

### References 

#### Demographics

Focusing on the Counties in order to join. Using for population count

https://www.kaggle.com/datasets/muonneutrino/us-census-demographic-data?select=acs2017_county_data.csv

#### Asthma Rates

Focusing on the Counties in order to join. This dataset is key as we derive the asthma rates and prevelance in California. 

https://data.world/chhs/01f456c3-db34-44f2-a52c-6811bef8ba6d

#### Air Pollution

Focusing on the Counties in order to join. We will be using the Pollutants and Quantiy per year.

https://ephtracking.cdc.gov/DataExplorer/?c=11



## Week 2: Deep Cleaning and Creating Database

Mel and I further cleaned and combine out datasets to create our database. 

 - Air Polutants datae: 

	- Created a pivot table to clean the data and rearrange the columns/rows to use Counties as the index.

 - Asthma by County data: 

	- Removed unneccessary columns from the dataset.

	- Filled in missing values from 2015-2016 years with values form 2017- 2018.
 
	- Replaced Asthma Prevelance column with Target values which assigned 1 (True) or 0 (False) for if they were above the 8.8% state average prevelance.
 
	- Imported the data base to SQL and joined on the "County" column.

 - Demographics data:

	- Removed the word "County" from the County column values so the data could properly merge in SQL.

	- Removed unneccessary columns from the dataset.

	- Grouped by counties to remove duplicates and get the sum().

	- Learned the "TRIM" funtion to remove spaces inorder for the columns to merge properly.

	- Dropped duplicate County Column created by merge.

	- Imported the data base to SQL and joined on the "County" column.

 - Electric Substation:

	- Removed the word "County" from the County column values so the data could properly merge in SQL.

	- Removed unneccessary columns from the dataset.

	- Agreigated County column.

	- Imported the data base to SQL and joined on the "County" column.
	- 
- Ev_charging station:
 
	- Removed States that were not CA.

	- Found and added a Zip code database as EV Charging Station only has zipcodes but no County information. We merged the two sets together for the Zip-Code Dataset to fill in the Counties.  

	- Created Columns for Private, Public and Total EV Chargers available inorder to groupby County and merge.

	- Added "Glenn" County as it was dropped due to no chargers.

	- Imported the data base to SQL and joined on the "County" column.

- Wildfires:

	- Removed non-California states [Nevada, Mexico, and Oregon].

	- Aggrigated the Acres burned by County.

	- Added "Imperial" and "San Fransisco" County as it was dropped due to no wildfires.

	- Imported the data base to SQL and joined on the "County" column.

- EV_Registration

	- Removed the word "County" from the County column values so the data could properly merge in SQL.

	- Renamed Columns for clarification. 
	 
	- Dropped "Unknown" Column. 

	- Dropped duplicate County Column created by merge.

	- Imported the data base to SQL and joined on the "County" column.


	

### Issues encountered:

-  We ran into issue of "County" column duplicating as we merge. We rectified by removing the added colum by using "ALTER TABLE", "DROP COLUMN"
	
-  We got an error due to spaces in the dataset and used the "TRIM" funtion in order to properly merge columns. 

-  When Mergeing the datasets in SQL we continously had to delete added County columns

### Resources used:

- https://stackoverflow.com/questions/54497059/pandas-filling-column-in-dataset-with-data-from-another-dataset-based-on-matchi

- https://www.geeksforgeeks.org/how-to-add-one-row-in-an-existing-pandas-dataframe/

- Zipcode Dataset: Added as  EV Charging Station only has zipcodes but no County information. We merged the two sets together for the Zip-Code Dataset to fill in the Counties. 

https://www.unitedstateszipcodes.org/zip-code-database/

**Database and changes to Raw Data were pushed directly to the main branch for convenience 


## Week 3: Outlining Our Dashboard

Google Slides : https://docs.google.com/presentation/d/1Qc1UkTimTW8qoDVL0oc98rq40LpqYVSDRFU-2wVUdho/edit#slide=id.g1765ef05a45_0_15
