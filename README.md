# Asthma_Analysis_in_California_Counties

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Resources/Asthma_banner.png"/>
</p>

<h4 align="left">Presentation</h4>
https://docs.google.com/presentation/d/1Qc1UkTimTW8qoDVL0oc98rq40LpqYVSDRFU-2wVUdho/edit#slide=id.p

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

## Communication Protocols
- Brandon Ropell: Repository maintenance, help others as needed (Square Role)
- Andrew Stein: Machine learning model (Triangle Role)
- Mel Phillips/Christina Ocampo: Database maintenance and data acquisition (Circle Role) 
- All members: Technology choices for each step of the project (X Role)

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
    
    - County<br> 
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