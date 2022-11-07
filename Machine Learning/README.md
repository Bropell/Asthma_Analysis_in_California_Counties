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
The first attempt model features are as follows: 'County' 'Pollutant: 1,3-butadiene', 'Pollutant: Acetaldehyde',
       'Pollutant: Benzene', 'Pollutant: Carbon tetrachloride',
       'Pollutant: Formaldehyde', 'Target', 'TotalPop', 'Men', 'Women',
       'Hispanic', 'White', 'Black', 'Native', 'Asian', 'Pacific', 'Income',
       'IncomePerCap', 'Poverty', 'ChildPoverty', 'Professional', 'Service',
       'Office', 'Construction', 'Production', 'Drive', 'Carpool', 'Transit',
       'Walk', 'OtherTransp', 'WorkAtHome', 'MeanCommute', 'Employed',
       'PrivateWork', 'PublicWork', 'SelfEmployed', 'FamilyWork',
       'Unemployment', 'Max_Voltage', 'Total EV Chargers',
       'Private EV Chargers', 'Public EV Chargers', 'AcresBurned',
       'Registered EV Count'<br>

The second attempt model features are as follows: 'County' 'Pollutant: 1,3-butadiene', 'Pollutant: Acetaldehyde',
       'Pollutant: Benzene', 'Pollutant: Carbon tetrachloride',
       'Pollutant: Formaldehyde', 'Target', 'TotalPop','Income',
       'IncomePerCap', 'Poverty', 'ChildPoverty', 'Professional', 'Service',
       'Office', 'Construction', 'Production', 'Drive', 'Carpool', 'Transit',
       'Walk', 'OtherTransp', 'WorkAtHome', 'MeanCommute', 'Employed',
       'PrivateWork', 'PublicWork', 'SelfEmployed', 'FamilyWork',
       'Unemployment', 'Max_Voltage', 'Total EV Chargers',
       'Private EV Chargers', 'Public EV Chargers', 'AcresBurned',
       'Registered EV Count', 'Biomass', 'Small Hydro', 'Geothermal',
       'Solar Thermal', 'Solar Photovoltaic ', 'Wind', 'Total'

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

Alternatively, the second model used was Neural Learning because it can learn over time to be at or
near 100% accurate after some amount of epochs. A visual example of this model is shown below.

<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Machine%20Learning/Pictures/Deep%20Neural%20Network.png"/>
</p>

### Explanation of changes in model choice (if any):
There will be no changes necessary here since the deep learning model was able to achieve a perfect accuracy in both attempts. This model choice was 
superior to the BalancedRandomForestClassifier model since that model only achieved an accuracy of approximately 52.8% in the first attempt and 
approximately 36.1% in the second attempt. 

### Description of model training:
The model is trained using the train_test_split function from the sklearn kit, as mentioned previously, which is then fit using 
the X_train, and y_train variables using the 70/30 split. The neural learning model uses the same function but uses StandardScaler to 
completely scale and train the data to be used properly in optimization of the neural learning model.

### Description of current accuracy:
The BalancedRandomForestClassifier model yielded an accuracy score of around .528 in the first attempt and .361 in the second attempt. 
Output images of the balanced accuracy score, confusion matrix and imbalanced classification report for each attempt are shown below.

<h4 align="left">First Attempt BRFC</h4>
<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/bfrc.png"/>
</p>

<h4 align="left">First Attempt Feature Importance</h4>
Looking into the feature importance for this model's first attempt, where the clean energy dataset was not used, it was found that the transit 
and percent black population features had the highest influence on the model as seen in the visualization provided below. The importance of other 
features can also be seen but have a lower influence on the model.<br>
<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Machine%20Learning/Pictures/feature_importances_brfc.png"/>
</p> 

<h4 align="left">Second Attempt BRFC</h4>
<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Machine%20Learning/Pictures/bfrc_REDO.png"/>
</p>

<h4 align="left">Second Attempt Feature Importance</h4>
Looking into the feature importance for this model's second attempt, where the clean energy dataset was included, it was found that the total
clean energy (GW) feature had the highest influence on the model. It can also be seen that the importances of other parameters moved around and
the overall performance of the model dropped. For this reason, a neural model was used to handle the complexity of the data.<br>
<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Machine%20Learning/Pictures/feature_importances_brfc_REDO.png"/>
</p>

The Neural Learning model yielded an accuracy score of 1.0 in approximately 10 epochs out of the allotted 100 for the first attempt and 
an accuracy score of 1.0 in approximately 15 epochs. 

<h4 align="left">First Attempt Neural</h4>
<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/neural.png"/>
</p>

<h4 align="left">Second Attempt Neural</h4>
<p align="center">
    <img src= "https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/main/Machine%20Learning/Pictures/nueral_REDO.png"/>
</p>

### Model Improvements
The major limitation for both of these models was the lack of abundance of data. That being said, the Neural Learning model did not require
any improvements for this dataset specifically but may require optimization for larger datasets. Some of these optimizations can include changes
to the number of hidden layers, the number of perceptrons per layer and changing the activation functions. The BalancedRandomForestClassifier 
model could be improved by adjusting the weightings used for the testing and training sets. 