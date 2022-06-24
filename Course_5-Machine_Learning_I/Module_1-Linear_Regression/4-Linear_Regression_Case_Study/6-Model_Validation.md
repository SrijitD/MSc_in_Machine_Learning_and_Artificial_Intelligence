# Model Validation

In this video, we will split the dataset into a train and test data. The model will be trained on the train data and this model will be evaluated on a test data. Let's see what is the r2 score we get on the test data.

**VIDEO**

Let us summarise the steps performed in this video.

-   We began by creating a train and test split of the dataset. For this, we use the randomSplit function and perform a 2:1 split. These data frames are stored in the ‘trainDataset‘ and ‘testDataset‘ data frames respectively
    
-   Using the features created after cleaning and modifying the data, the training data is fit using the LinearRegression library.
    
-   The summary is computed by using the model .evaluate function on the test dataset.
    
-   The r2 value is computed as 0.681 which is similar to the r2 value computed on the entire dataset. This indicates that the model is not overfitting on the train data.
    

The entire case study was performed by considering only 1 million rows from the dataset. In the next video, we will run the algorithm over the entire set of 10 million rows and check if the model is performing better by increasing dataset size.

**VIDEO**

You have seen in the above video that Jaidev has removed most of the **.show()** commands to take advantage of the lazy evaluation of spark. It would be a good exercise to execute the above code using a pipeline.

Now, let's summarise all the steps that were performed in this case study to build the Linear Regression model.

-   The data is imported and all rows having null values are dropped.
    
-   All the outliers from the latitudes and longitudes are filtered out so that the final coordinates contain only those values within the range of the coordinates of New York City.
    
-   Any datapoint having a number of passengers as zero or negative are eliminated. Similarly, fare amounts having zero or negative values are also eliminated.
    
-   The timestamp function is used to convert the datetime feature into the timestamp datatype. Before proceeding to extract new features, the UTC timestamp is converted to the EST timestamp. Then, using the PySpark API, we have extracted features such as hour, month, year and dayofWeek from the timestamp feature.
    
-   We compute the l1 distance between two coordinates and save this as an additional feature for fitting the model.
    
-   The data is split into train and test data having a ratio of 2:1. The training data is fit using the LinearRegression library and the model is built.
    
-   This model is used to evaluate the performance of the test data by computing the r2 score. The r2 score is computed as 0.674 which is fairly aligned with what we had computed earlier.
    
-   You can try fitting your model on different train test splits and dataset size.