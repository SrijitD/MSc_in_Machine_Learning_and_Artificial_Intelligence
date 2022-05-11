# Summary

In this practical demonstration of the ALS algorithm, you have built an end-to-end model to recommend movies to users and performed the following steps:

- You learned how to run the Jupyter notebook on the EMR cluster and were provided with an end-to-end document to start the cluster with Spark.
- Next, once you started the notebook, you load all the files into the dataframes.
- Further, after loading the data into the data frames, you split it into training and test data sets to build and test the ALS model.
- Then you saw how the RMSE value varies with the number of iterations and learned that you need to optimize the number of iterations to build the model.
- Finally, once you completed the model-building task, you recommended movies to users and generated a list of top 20 movies based on the predicted ratings of the users.

In the next video, we will summarise the entire session on ALS demonstration with Sajan.

**VIDEO**

So, the main motive of this ALS implementation was to introduce you to some of the machine learning concepts. If you have found any difficulties in understanding some of the concepts, then it is totally fine because you will learn more about these mathematical concepts in further machine learning courses.

If you see, in any machine learning model you should broadly follow the below steps:

- **Data Loading:** In this part, you load the required data into your environment like python, Spark or any other framework.
- **Data Exploration:** You already know about this step, the very first module of this program was the Exploratory Data Analysis (EDA), in which you incur the maximum knowledge from the data set by plotting the various graphs and finding the statistical values like mean, median or mode etc.
- **Data Preparation:** As you have seen in this ALS model, you have basically prepared the data for the model building. you have split the data into test and training data and remove the unnecessary columns from the data and keep only those attributes that are required to build the model.
- **Model Building**: Once you are ready with the dataset, you build the model.
- **Model Evaluation:** Model is evaluated with the help of test/ evaluation data, which you have segregated already from the whole dataset.
- **Model Deployment** (Covered Later): The concept of deployment of the model refers to the application of a model for predicting using new data. In this step, you actually integrate a machine learning model into an existing production environment to make practical business decisions based on data.
