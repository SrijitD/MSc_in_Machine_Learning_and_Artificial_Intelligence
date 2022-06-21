# Linear Regression using Spark MLlib

So far you have learned how to use the Spark ML library to perform some basic EDA and also build regression and classification models. You have been already introduced on how to build linear regression models during the earlier demonstration of building regression models. However, you haven’t performed any feature selection steps while doing this. In the next video, Jaidev will be using spark MLlib library and recreating some of the steps performed during the model building session.

Download [LR_SparkML](LR_SparkML.ipynb)

**Note:**

In this notebook, you will also use python libraries for basic plotting activities. In general, when you are building models, you do a lot of exploratory data analysis which involves visualisation. However, spark capabilities are limited, and visualisation is one among them, because of which you need to use python libraries for performing basic plotting.

**VIDEO**

In this video, you understood the model building procedure in pyspark. You also learnt how to build models by taking a subset of input features.

As an exercise, before watching the next video you can try to fit a linear regression model on the diabetes dataset. 

Step 1: Create a spark DataFrame, and prepare the dataset  
Step 2: Find the R2 score and explained variance  
Step 3: Find a subset of features with the highest absolute coefficients (by plotting)  
Step 4: Train a new model on this subset, and find R2 and explained variance

Execute the above-listed steps and cross-check your results with the results shown in the next video.

**VIDEO**

To summarize, in this segment you learnt how to build linear models by taking a subset of features. Till now in the module, you learnt a lot about feature selection about model building but you haven't explored about model performance on the unseen dataset. You will learn this in the next segment.