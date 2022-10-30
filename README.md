# Asthma_Analysis_in_California_Counties

We decided to develop a machine learning model that will try and help determine what, if any features might cause / correlate with increased rates of asthma in California and its counties.

We plan on training this ML model to predict whether or not a county is ABOVE or BELOW the California's collective asthma rate (8.8%). If a county is 8.8% or above, it should receive a score of 1, on the other hand, if the county is below that threshold, it should receive a score of 0. From this analysis, we would like to propose how clean energy policies can be beneficial both environmentally and for public health.

## Week 1: Conceptualization

This week we found most of the datasets that we are going to need for this project. The idea was sparked from us finding raw data on asthma rates in California, as well as a dataset on the demographical breakdowns. With this secured, we searched for other datasets with the ability to identify which California counties were represented such that it would be able to connect to the rest of our database.

## ERD

Here is the outline for our database:

![ERD](https://user-images.githubusercontent.com/106599446/197090181-b0a1c58a-e84a-48ce-9a50-2419f31dd483.png)

• Asthma Rates

• Demographics Data

• EV charging Stations

• Registered EVs

• Wildfire data

• Air pollutants

## Week 2: Cleaning and Creating the Database

Christina and I worked together to clean and combine the datasets for our database, using both Python and SQL.

Air Polutants datae:

Created a pivot table to clean the data and rearrange the columns/rows to use Counties as the index.

Asthma by County data:

Removed unneccessary columns from the dataset.

Filled in missing values from 2015-2016 years with values form 2017- 2018.

Replaced Asthma Prevelance column with Target values which assigned 1 (True) or 0 (False) for if they were above the 8.8% state average prevelance.

Imported the data base to SQL and joined on the "County" column.

Demographics data:

Removed the word "County" from the County column values so the data could properly merge in SQL.

Removed unneccessary columns from the dataset.

Grouped by counties to remove duplicates and get the sum().

Learned the "TRIM" funtion to remove spaces inorder for the columns to merge properly.

Dropped duplicate County Column created by merge.

Imported the data base to SQL and joined on the "County" column.

Electric Substation:

Removed the word "County" from the County column values so the data could properly merge in SQL.

Removed unneccessary columns from the dataset.

Agreigated County column.

Imported the data base to SQL and joined on the "County" column.

Ev_charging station:

Removed States that were not CA.

Found and added a Zip code database as EV Charging Station only has zipcodes but no County information. We merged the two sets together for the Zip-Code Dataset to fill in the Counties.

Created Columns for Private, Public and Total EV Chargers available inorder to groupby County and merge.

Added "Glenn" County as it was dropped due to no chargers.

Imported the data base to SQL and joined on the "County" column.

Wildfires:

Removed non-California states [Nevada, Mexico, and Oregon].

Aggrigated the Acres burned by County.

Added "Imperial" and "San Fransisco" County as it was dropped due to no wildfires.

Imported the data base to SQL and joined on the "County" column.

EV_Registration

Removed the word "County" from the County column values so the data could properly merge in SQL.

Renamed Columns for clarification.

Dropped "Unknown" Column.

Dropped duplicate County Column created by merge.

Imported the data base to SQL and joined on the "County" column.

### Issues encountered:

We ran into issue of "County" column duplicating as we merge. We rectified by removing the added colum by using "ALTER TABLE", "DROP COLUMN"

We got an error due to spaces in the dataset and used the "TRIM" funtion in order to properly merge columns.

When Mergeing the datasets in SQL we continously had to delete added County columns

### Resources used:

https://stackoverflow.com/questions/54497059/pandas-filling-column-in-dataset-with-data-from-another-dataset-based-on-matchi

https://www.geeksforgeeks.org/how-to-add-one-row-in-an-existing-pandas-dataframe/

Zipcode Dataset: Added as EV Charging Station only has zipcodes but no County information. We merged the two sets together for the Zip-Code Dataset to fill in the Counties.

https://www.unitedstateszipcodes.org/zip-code-database/

**Database and changes to Raw Data were pushed directly to the main branch for convenience

Outlining Our Dashboard
Google Slides : https://docs.google.com/presentation/d/1Qc1UkTimTW8qoDVL0oc98rq40LpqYVSDRFU-2wVUdho/edit#slide=id.g1765ef05a45_0_15
