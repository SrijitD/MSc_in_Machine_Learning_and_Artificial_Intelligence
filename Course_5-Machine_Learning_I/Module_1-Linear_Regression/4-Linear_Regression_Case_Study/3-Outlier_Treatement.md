# Outlier Treatement

In the previous segment, you saw that we got a really poor r2 score. We also identified that there must be outliers present in the dataset which might be leading to this result as linear regression is very sensitive to outliers. Hence, in this segment, we shall perform the outlier treatment as a part of the data cleaning step in the model building process. Note that model building is an iterative process. Hence, every time we make a change to the dataset or create new features, we try to see if there has been an improvement in the model performance.

**VIDEO**

Let us revise what was learned earlier in the video.

-   By doing a simple google search, you can check that New York City lies between 73 and 75 degrees West, and 40 and 42 degrees North. Using this information, we filter out the values in the pickup and drop locations that lie outside the given coordinates of latitude and longitude. 
    
-   On further exploring the data, it is found that there are certain rides having zero passengers in them. Since these rides must not be considered for building the pricing model, they are filtered out and only those rides having at least a single passenger is considered.
    
-   It is also found out that the pricing data consists of some rows having negative fare amounts. Hence these rows are removed and only those rows are considered having fare amount greater than 0
    
-   Once, all the data is cleaned, we save this new dataframe and fit the linear regression model. 
    
-   The new r2 value is computed as 0.25. However, this value is still less and more exploration is required on the dataset.
    

In the next segment, we will extract additional features from the dataset to improve the r2 score of the model.