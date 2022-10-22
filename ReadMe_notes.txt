## Week 2: Deep Cleaning and Creating Database

Mel and I further cleaned and combine out datasets to create our database. 

- Air Polutants datae: 

	- Created a pivot table to clean the data and rearrange the columns/rows to use Counties as the index.

- Asthma by County data: 

	- Removed unneccessary columns from the dataset.

	- Filled in missing values from 2015-2016 years with values form 2017- 2018.
 
	- Replaced Asthma Prevelance column with Target values which assigned 1 (above) or 0 (below) for if they were above the 8.8% state average prevelance.
 
	- Imported the data base to SQL and joined on the "County" column.

-Demographics data:

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

- Ev_charging station:
 
	- Removed States that were not CA.

	- Found and added a Zip code database as EV Charging Station only has zipcodes by not County information and merged the two sets together for the Zip-Code Dataset to fill in the Counties. 

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

	- We ran into issue of "County" column duplicating as we merge. We rectified by removing the added colum by using "ALTER TABE", "DROP COLUMN"
	- We got an error due to spaces in the dataset and used the "TRIM" funtion in order to properly merge columns. 

### Resources used:

- https://stackoverflow.com/questions/54497059/pandas-filling-column-in-dataset-with-data-from-another-dataset-based-on-matchi

- https://www.geeksforgeeks.org/how-to-add-one-row-in-an-existing-pandas-dataframe/

- Zipcode Dataset:

https://www.unitedstateszipcodes.org/zip-code-database/

**Database and changes to Raw Data were pushed directly to the main branch for convenience 