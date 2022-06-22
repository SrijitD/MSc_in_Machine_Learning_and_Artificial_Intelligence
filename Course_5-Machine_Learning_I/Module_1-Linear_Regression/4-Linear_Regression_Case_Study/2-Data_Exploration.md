# Data Exploration

In any model building process, you first start by data exploration, which in turn help you in data preparation for model building. Moreover, you do this on a smaller dataset and not on the whole dataset as it'll be computationally expensive. But, you'll see that in this video, Jaidev takes a different approach. Jaidev straightaway starts with a naive regression model using the numerical features available on a 1 million dataset. This is to understand the minimum performance that we currently can get without any effort on data preparation on a smaller dataset.

**Important Note:**

You need to run this exercise on EMR (1 Master node M4.large and 2 Core nodes M4.large ). Use the notebook given below to follow along with the expert.

s3 link for data used in the demonstration -[s3a://linear-regression-mlc/train.csv](https://linear-regression-mlc.s3.amazonaws.com/train.csv)

Download [Case_Study_Notebook](Case_Study_Notebook.ipynb)

Let's begin to start solving this case study by watching the video given below.

**VIDEO**

Let us summarise the steps performed in this video.

-   The first step is to invoke the spark session context and read the data from s3. 
    
-   The VectorAssembler and LinearRegression functions were imported from the MLlib library.
    
-   Create the Spark dataframe with the help of VectorAssembler 
    
-   Create a linear Regression model by providing the input and the output features
    
-   Fit the model on the dataset
    
-   Create a summary instance using the evaluate() function
    
-   Compute the r2 value.
    
    **Note**: At this point, the r2 value comes out to be 0.0002, meaning there is very little correlation between the target variable and the independent features. Hence you need to explore and transform the data to get a better fit.
    
-   On exploring the feature, ‘pickup_latitude’, it is found that there are several inconsistencies such as negative values and non-viable values. Hence it is important to remove such values and outliers before fitting the model.
    
-   You should also note that Jaidev has cached the dataframe as it is used frequently in the data preparation phase.
    

In the next segment, we will learn how we can remove such outliers from the dataset.