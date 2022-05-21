# Graded Questions

So far, you have developed an end-to-end recommendation model using the ALS algorithm. In this segment, we will be giving you a very interesting exercise.

You have been a user whose user id equals 162542. This user has rated about 50 movies from the movie data set. Now, based on the ratings given by him/her, you need to recommend the movies to him. You have been provided with the following three data sets:

- **movies.csv:** This data set contains information about the movies. It has the following three fields:  
    - **movieId**: This is the unique identification number for a particular movie.  
    - **title:** This is the title of a movie, or, we can say, the name of the movie.  
    - **genres:** This field represents the genre of a movie, for example, adventure, animation, comedy, thriller, etc.

Here is the S3 link to access the movie.csv file:

[S3_Link_Movies_Dataset](https://sparkdemonstration-mlc.s3.amazonaws.com/movies.csv)

- **ratings.csv:** This data set contains information about the users and the ratings that they have given to the set of movies. It has the following three fields:  
    - **userId:** This is the unique identification number for a particular user who has rated a movie.  
    - **movieId:** This is the unique identification number for a particular movie that is rated by a particular user.  
    - **rating:** This is the rating that has been given by a particular user to a particular movie.  
    - **timestamp:** This field represents the specific timestamp on which a particular user has rated a particular movie.

Here is the S3 link to access the rating.csv file:

[S3_Link_User_Rating_Dataset](https://sparkdemonstration-mlc.s3.amazonaws.com/ratings.csv)

- **New_user_rating.csv:** This data set contains information about the user with userID: 162542 and the ratings that he/she has given to the set of 50 movies. This data set has the following three fields:  
    - **userId:** This is the unique identification number for a particular user who has rated a movie.  
    - **movieId:** This is the unique identification number for a particular movie that is rated by a particular user.  
    **- rating**: This is the rating that has been given by a particular user to a particular movie.

Here is the S3 link to access the new_user_rating.csv file:

[S3_Link_New_User_Rating_Dataset](https://sparkdemonstration-mlc.s3.amazonaws.com/New_user_rating.csv)

You need to build the recommendation model using the ALS algorithm and recommend the movie to the new user whose user id is equal to 162542.

Note: You need to separate the whole data into training, validate and test in the ratio of 0.6, 0.2 and 0.2 respectively.

You have been provided with a well-commented Jupyter notebook, which you need to run on the EMR cluster. And based on the model, you need to answer the following questions.

Download [ALS_Graded_Exercise](ALS_Graded_Commented.ipynb)

#### Rating Values

Qn: Suppose you read the ratings.csv file into a dataframe named ‘ratings’ and the New_user_rating.csv file into a dataframe named ‘New_user_rating’. Now, to build the ALS model, you need to merge these two data sets. Once you merge these data sets after dropping timestamp from 'ratings', what would be the mean value of ratings in the new merged dataframe?

- 3.555

- 3.434

- 3.534

- 3.654

Ans: C. *You need to concatenate the two dataframes into a single dataframe as follows:

`rating_final = ratings.union(New_user_rating)`

*Next, to obtain the mean rating value, you need to use the following code lines*

`rating_final.describe().show()`

#### Drop the Column

Qn: Which of the following is the correct command to remove the ‘timestamp’ column from the ‘ratings’ dataframe?

- `ratings = ratings.drop('timestamp')`

- `ratings = ratings(~'timestamp')`

- `ratings = remove.ratings.('timestamp')`

- None of the above

Ans: A. *This is the correct command to drop the timestamp column from the ratings dataframe.*

#### RMSE Value

Qn: What is the range of the RMSE value when you build the model with an iteration value of 3 on the merged dataframe, 'rating_final' created in Question 1 with regParam=0.05?

- 0.00- 0.10

- 0.71 - 1.00

- 2.01 -2.10

- 0.31 - 0.40

Ans: B. *You need to build the model with maxIter equals 3 and print the RMSE values which comes in this range.*

```python
# Build the ALS model for iteration value = 3
als = ALS(userCol="userId", 
    itemCol="movieId", 
    ratingCol="rating", 
    maxIter=3, 
    regParam=0.05, 
    coldStartStrategy="drop")
model = als.fit(training)
predictions = model.transform(test)
evaluator = RegressionEvaluator(metricName="rmse", labelCol="rating",predictionCol="prediction")
rmse = evaluator.evaluate(predictions)
rmse
```

#### Data Structure

Qn: You can run the following command to get the top 20 movie recommendations for all the users:

`userRecs = model.recommendForAllUsers(20)`

Now, you filter out the user with userId = 162542 form the ‘userRecs’ dataframe into the df.

`df= userRecs.where(userRecs.userId == 162542).collect()`

What is the type of the data structure of the “df”?

- Tuple

- List

- Dataframe

- Array

Ans: B. *The data structure of “df” is a list type. And you have to convert it into the data frame type in order to apply join on this dataframe with movie dataframe to get the recommended movies’ names.*

`df = spark.createDataFrame(df)`
