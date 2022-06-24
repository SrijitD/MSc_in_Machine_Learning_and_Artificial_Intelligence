# Feature Engineering - I

In this segment, we will extract additional features from the dataset to improve the r2 score of the model.

**VIDEO**

In this video, we have explored the datetime feature in detail.

-   The datetime feature is modified by removing the ‘UTC’ substring so that it can be converted to the timestamp datatype.
    
-   After this, we use the to_timestamp function pyspark.sql.functions library. With this library, the datetime feature is converted to a timestamp datatype for further analysis.
    

In the next video, we will try to extract relevant features from the timestamp feature such as the day or the month.

**VIDEO**

Let us revise the steps covered in this video.

-   In order to extract the features, we have imported the pyspark.sql.functions to extract the year, month, day of the week and hour. Using this API, we create additional features of the year, month, day of week and hour.
    
-   These columns are added to the dataframe as the taxi prices may depend on the time and the day at which you hire the cab.
    
-   The new r2 score is found to be 0.264. However, the r2 score is still very low and more features need to be explored to improve the performance of this model.
    

In the next segment, we will see if we can further modify the features even further and improve the r2 score.