# Asthma_Analysis_in_California_Counties
## Machine Learning

The general flow of the machine learning process will be as follows:

![Flowchart](https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/flowchart_MachineLearning.png)

All team members will have input into the process to optimize the model, providing the highest target accuracy without overfitting. The 
main challenge here is the abundance of data and ensuring how well predictions can be made regarding areas that are at a much higher risk 
of having children being born with asthma or developing asthma in adolescence.

Data preprocessing:

Description of feature and feature selection:

The Features of our models are as follows: 'County' 'Pollutant: 1,3-butadiene', 'Pollutant: Acetaldehyde',
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

Description of how data was split into training and test sets:

The data was split into training and test sets using the train_test_split function from sklearn. 
The random state was set to 1 for this process to keep the predictions consistent.

Explanation of model choice:

2 models were chosen to see which one was more accurate.
The first model used was BalancedRandomForestClassifier was chosen because its use of boolean values provides an accurate score consistently.
The second model used was Neural learning which was chosen because it can learn over time to be near or completely accurate after X amount of epochs.

Explanation of changes in model choice (if any):

There will be no changes made. The models chosen work appropriately.

Description of model training:

The model is trained using the train_test_split function from the sklearn kit which is then fit using the X_train, 
and y_train variables. The neural learning model uses the same function but uses StandardScaler to completely scale 
and train the data to properly be used for the neural learning model.

Description of current accuracy:

The first model, BalancedRandomForestClassifier would give an accuracy score of around .598.

In the process of running a balanced forest tree model the results solely depend on the values from the matrix.  An example of the balanced forest tree being run is as follows:

![Forest](https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/forest.png)

The second model ran was a neural learning model which acheived maximum accuracy in very few epochs. It was run over 100 epochs and acheived 1.00 accuracy in approximately 14 epochs. Results are as follows:

![Neural](https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/neural.png)

Recommendations for enhancing the models would be 
-Enlarge the dataset that is used.

-Change the activation method of the neural model.

## Endgame

The end result of the forest classifer will attempt to visualize the tree assuming the results provide sufficient accuracy to do so. 
The generalized idea is shown in the pictures below:

![endgame1](https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/basic%20tree%20sample.png)

![endgame2](https://github.com/Bropell/Asthma_Analysis_in_California_Counties/blob/Andrew_Stein/Pictures/Possible%20tree%20end%20result.png)

