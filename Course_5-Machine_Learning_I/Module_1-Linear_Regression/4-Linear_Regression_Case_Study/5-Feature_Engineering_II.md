# Feature Engineering - II

Until now, you have extracted the features: day, time, date and hour from the timestamp considering the time to be in UTC which is roughly 4 hours ahead of NYC time. Let' see if changing these features considering the NYC time brings any improvement to the model or not.

**VIDEO**

Let us revise the key steps performed in this video.

-   An interesting point to note is that all the timestamps are corresponding to the [UTC timestamps](https://stackoverflow.com/questions/20822821/what-is-a-unix-timestamp-and-why-use-it) which differ from the New York timestamps by 5 hours. Hence, we must use the spark API to convert this timestamp to the EST time. A new column called NYTime is created and corresponding timestamps in EST time are saved. 
    
-   Post the creation of the timestamp feature, we also replace the year, month, hour and dayofweek with the NYC time.
    
-   The model is fit on this dataset and the r2 score is computed as 0.264. You can notice here that the fit hasn't improved much. This is because you have subtracted roughly 5 hours from the UTC time. Hence, a few of the data points in hour and dayofweek would have changed while the month and year would have remained the same. Since there is a minimalistic change in the dataset, the r2 score does not change much.
    

Let's see what additional features we can extract from the dataset in the next video.

**VIDEO**

In this video, we have created a new feature that gives us the distance that the cab has travelled either horizontally or vertically during a cab ride. Let us understand the steps used to perform this task.

-   The abs function is imported from the PySpark API to compute the l1 norm distance between two latitudes or two longitudes.
    
-   A new column, ‘l1’ is created which contains the sum of the l1 distance travelled horizontally and vertically. The horizontal and vertical distances are computed from the coordinates of the pickup and drop off locations.
    
-   Using the ‘l1’ column as an additional feature, the regression model is fit and the r2 score is found to be 0.679. This significant increase in the r2 score also implies that the distance feature has a high impact on the price of the fare.
    

Now that our model is ready, you would be curious to check how this model performs on unseen data. Let us learn how to check the model performance on unseen data in the next segment.