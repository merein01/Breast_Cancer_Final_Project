# Breast_Cancer_Final_Project

"This is not the end. It is not even the beginning of the end. But it is, perhaps, the end of the beginning." - Winston Churchill.

## Overview
In this project, our team will use data from the Wisconsin University Research Lab in order to identify breast cancer using historical data to help predict malignant or benign cancer trends. The Project will be divided in different segments to demonstrate our skills with the different tools learned in class. First off we will clean and process the data and build a database with SQL. Second with 70% of our data, we will build machine learning model that is trained to classify the information and predict the trend. Third, we will build different visualizations of the whole project with Tableau to finalize the project with our results.

## Reason for Selecting Topic
* We want to build a model that will predict whether the cancer is benign or malignant based on characteristics of the tumor cells.
* This information can be used by healthcare professionals to help with early detection that will significantly increase the chance of recovery.

## Data Sources
[data_diagnosis.csv](https://github.com/merein01/Breast_Cancer_Final_Project/files/9650582/data_diagnosis.csv),
[data_mean.csv](https://github.com/merein01/Breast_Cancer_Final_Project/files/9650583/data_mean.csv),
[data_se.csv](https://github.com/merein01/Breast_Cancer_Final_Project/files/9650584/data_se.csv),
[data_worst.csv](https://github.com/merein01/Breast_Cancer_Final_Project/files/9650585/data_worst.csv)

We will use 4 different .csv files listed above that contain related information obtained by a study in the Winsconsin University Research Lab. The datasets contain the following information:
* Diagnosis (M = malignant, B = benign) (3-32)
* radius (mean of distances from center to points on the perimeter)
* texture (standard deviation of gray-scale values)
* perimeter (distance around nuclear border)
* area (area within the outlined nuclear perimeter)
* smoothness (local variation in radius lengths)
* compactness (perimeter^2 / area - 1.0)
* concavity (severity of concave portions of the contour)
* concave points (number of concave portions of the contour)
* symmetry (how the cell divides)
* fractal dimension ("coastline approximation" - 1)

## Questions to Answer
* What trends can we discover that leads to a malignant or benign diagnosis?
* How do different tumor cells characteristics affect malignant or benign diagnosis?

## Communication Protocols 
In order to stay up to date on the final project, we message each other frequently through Slack on a seperate channel created for the project. Any other questions or concerns that arise are addressed during class, in our group organized Zoom meetings outside of class, and during office hours with the TA. 

## Machine Learning Model
For our machine learning model, we will start with converting our dataset to categorical data or text data into numbers so our predictive model works better. Then, we will split the data into training data and test data. The training data contains a known output and the model learns with this data in order to be generalized to other data late on. The test data is used to test our model's prediction on this subset by using the train_test_split method. We will then scale the data within a specific sale, such as 0-100 or 0-1 by using the StandardScaler method from the SciKit-Learn library. We will finally use supervised machine learning Classification models such as **logistic regression** to evaluate our results. 
Below, we included a visualized model: 

![Machine_Learning_Model](https://user-images.githubusercontent.com/105119376/192317658-fe9da560-8450-47a9-9639-751520005fb0.png)

## Software Used:
* PostgreSQL for creating and storing database
* Jupyter Notebook
* Google Collab Notebook
* Extracting data from CSV file
* Python for cleaning the data, creating data frames with pandas, merging, eliminating columns not needed, sklearn creating machine learning model
* Tableau to create Dashboard and Visualizations
* MatPlotLib to create charts and graphs as part of Data Visualizations

## Database
Below, we included an ERD from our database built with QuickDBD for use with Postgres SQL. 

<img width="916" alt="Screen Shot 2022-09-29 at 12 53 19 PM" src="https://user-images.githubusercontent.com/105124485/193092329-8e0fd95c-1379-4f92-9eb2-e024cd7dea08.png">

