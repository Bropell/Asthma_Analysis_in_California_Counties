# Asthma_Analysis_in_California_Counties

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Resources/Asthma_banner.png"/>
</p>

<h4 align="left">Google Slides Presentation</h4>
https://docs.google.com/presentation/d/1Qc1UkTimTW8qoDVL0oc98rq40LpqYVSDRFU-2wVUdho/edit#slide=id.p

<h4 align="left">Tableau Dashboard</h4>
https://public.tableau.com/app/profile/mel.phillips/viz/Asthma_Workbook/WhyAsthma?publish=yes 

## Project Overview
The purpose of this project was to develop a machine learning model that will try and help determine what features, 
if any have a correlation with asthma rates in California counties. Based on the relationships discovered between 
the features, the machine learning model will be used to answer questions regarding why certain counties may be above 
or below California's collective asthma rate of 8.8%. The following list includes some of the types of datasets being
used for this analysis:<br>

- Asthma Rates
- Wildfire Data
- Air Pollution 
- Demographics Data
- Registered EVs
- EV Charging Stations
- Clean Energy Generation (GwH)
- California Electric Substations
- Zip Code Database

## Technologies
| Technology |  |
| ---------- | ------ |
| Python     | ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)|
| Pandas     | ![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white) |
| PostgreSQL | ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) |
| Matplotlib | ![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black) |
| Keras      | ![Keras](https://img.shields.io/badge/Keras-%23D00000.svg?style=for-the-badge&logo=Keras&logoColor=white) |
| Tensorflow | ![TensorFlow](https://img.shields.io/badge/TensorFlow-%23FF6F00.svg?style=for-the-badge&logo=TensorFlow&logoColor=white) |

## Project Outline
### 1) Sourcing Clean Energy Data 
Raw data sources were collected. The links and features for each dataset has been provided in the Resources section below. Raw
data may also be downloaded and/or previewed in the Resources folder. 

### 2) Cleaning Data and Exporting to PostgreSQL Database
Data was cleaned using Python scripts and Pandas in Jupyter Notebooks, then exported to a PostgreSQL database. The cleaned data
and commented coding scripts are provided within the Resources folder. The scripts also contain instructions on importing the 
cleaned data into the database in the last cell of the notebooks. The Databases folder contains the Entity Relationship Diagram (ERD)
for the datasets used as well as the schema to generate the tables. 

### 3) Machine Learning
A flow chart image of the machine learning process is displayed in the README within the Machine Learning folder. This folder also 
contains Jupyter Notebooks for both machine learning models used for this project. The scripts have commented code to show the user 
what is being done in terms of creating features and target arrays, training the model, fitting the model and creating prediction 
arrays. The balanced accuracy score, confusion matrix and imbalanced classification report are also generated to evaluate the efficacy 
of the model. The neural network model script has additional cells defining the model, compiling the model, and prints the results from
each epoch. The deep learning model can be modified by changing several parameters including adding/removing hidden layers, adjusting the 
number of perceptrons within these layers and changing the activation function used at each layer. The final output shows the model loss 
and accuracy.

### 4) Visualizing the Data

## Resources
- <h4 align="left">Cali Clean Energy Generation</h4>
    https://cecgis-caenergy.opendata.arcgis.com/documents/CAEnergy::2019-utility-scale-renewable-electrical-generation-totals-by-county-energy-produced/explore 

    - County<br>
    - Biomass<br>
    - Small Hydro<br>
    - Geothermal<br>
    - Solar Thermal<br>
    - Solar Photovoltaic<br>
    - Wind<br>
    - Total County Features

- <h4 align="left">Demographics</h4>
    https://www.kaggle.com/datasets/muonneutrino/us-census-demographic-data?select=acs2017_county_data.csv

- <h4 align="left">Asthma Rates</h4>
    https://data.world/chhs/01f456c3-db34-44f2-a52c-6811bef8ba6d

    - County<br>
    - Current Prevalence converted to True (over 8.8%) or False (under 8.8%)

- <h4 align="left">Air Pollution</h4>
    https://ephtracking.cdc.gov/DataExplorer/?c=11

    - County<br>
    - Pollutant: 1,3-butadiene<br>
    - Pollutant: Acetaldehyde<br>
    - Pollutant: Benzene<br>
    - Pollutant: Carbon Tetrachloride<br>
    - Pollutant: Formaldehyde

- <h4 align="left">EV Charging Stations</h4>
    https://www.kaggle.com/datasets/prasertk/electric-vehicle-charging-stations-in-usa
    
    - Zip Code<br> 
    - Total EV Chargers<br>
    - Private EV Chargers<br>
    - Public EV Chargers

- <h4 align="left">Wildfire Data</h4>
    https://www.kaggle.com/datasets/ananthu017/california-wildfire-incidents-20132020

    - Counties<br>
    - Acres Burned

- <h4 align="left">Registered EVs</h4>
    https://www.atlasevhub.com/materials/state-ev-registration-data/#data
    
    - County<br> 
    - Registered EV Count

- <h4 align="left">California Electric Substations</h4>
    https://data.cnra.ca.gov/dataset/california-electric-substations1/resource/8077a564-ea00-49b7-8ca2-304f4dc16604 
    
    - County<br>
    - Max Voltage

- <h4 align="left">Zip Code Database</h4>
    https://www.unitedstateszipcodes.org/zip-code-database/

    - Zip Code<br>
    - County 
