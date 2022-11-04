# Asthma_Analysis_in_California_Counties
## Machine Learning

The general flow of the machine learning process is as follows:

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/flowchart_MachineLearning.png"/>
</p>

An attempt to optimize the model was made, trying to provide the highest target accuracy without overfitting. The 
main challenge here is the lack of abundance of data and ensuring how well predictions can be made regarding areas 
that are at a much higher risk of having children being born with asthma or developing asthma in adolescence.

### Data Preprocessing:
There are 7 datasets where preprocessing was needed, here are the steps taken to clean the data:
- Reduced the duplicates in the datasets
- Reduced the null values in the datasets
- Created a TRUE/FALSE column for machine learning use based on Asthma Prevalence
- Created consistencies in datasets (ZIPCODE and County) to ensure merging goes as planned
- Created mostly numerical values in the columns for smooth transition into machine learning
- Made sure everything was merged properly into sql and then successfully exported into a csv 

### Description of feature and feature selection:
The model features are as follows: 'County' 'Pollutant: 1,3-butadiene', 'Pollutant: Acetaldehyde',
       'Pollutant: Benzene', 'Pollutant: Carbon tetrachloride',
       'Pollutant: Formaldehyde', 'Target', 'TotalPop', 'Men', 'Women',
       'Hispanic', 'White', 'Black', 'Native', 'Asian', 'Pacific', 'Income',
       'IncomePerCap', 'Poverty', 'ChildPoverty', 'Professional', 'Service',
       'Office', 'Construction', 'Production', 'Drive', 'Carpool', 'Transit',
       'Walk', 'OtherTransp', 'WorkAtHome', 'MeanCommute', 'Employed',
       'PrivateWork', 'PublicWork', 'SelfEmployed', 'FamilyWork',
       'Unemployment', 'Max_Voltage', 'Total EV Chargers',
       'Private EV Chargers', 'Public EV Chargers', 'AcresBurned',
       'Registered EV Count'

The features contain all of the merged columns minus the "Target_t" & "Target_f" aka True & False columns meaning that asthma prevalence is over or under 8.8%.
The Target is defined as "Target_t" which we are looking for those Counties that had asthma prevalence over 8.8%

### Description of how data was split into training and test sets:
The data was split into training and test sets using the train_test_split function from sklearn with a 70/30 split. The training set is 70% of the actual data
where the test set is 30% of the actual data. The random state was set to 1 for this process to keep the predictions consistent.

### Explanation of model choice:
Two models were chosen to see which one was more accurate for the type of data being used. The first model used was the BalancedRandomForestClassifier because its 
use of boolean values provides an accurate score consistently. An example image of how this model works is shown below.

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Machine%20Learning/Pictures/basic%20tree%20sample.png"/>
</p>

Alternatively, the second model used was Neural learning because it can learn over time to be at or
near 100% accurate after some amount of epochs. A visual example of this model is shown below.

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Machine%20Learning/Pictures/Deep%20Neural%20Network.png"/>
</p>

### Explanation of changes in model choice (if any):
There will be no changes necessary here since the deep learning model was able to achieve a perfect accuracy. This model choice was superior to the 
BalancedRandomForestClassifier model since that model only achieved an accuracy of approximately 59.8%. 

### Description of model training:
The model is trained using the train_test_split function from the sklearn kit which is then fit using the X_train, 
and y_train variables. The neural learning model uses the same function but uses StandardScaler to completely scale 
and train the data to properly be used in optimization of the neural learning model.

### Description of current accuracy:

The first model used was the BalancedRandomForestClassifier and it gave an accuracy score of around .598.

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/bfrc.png"/>
</p>

The second model was a neural model which produces an accuracy score of 1.0 in approximately 10 epochs of 100. 

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/neural.png"/>
</p>

Recommendations for enhancing the models would be 

-Enlarge the dataset that is used.

-Change the activation method of the neural model.

