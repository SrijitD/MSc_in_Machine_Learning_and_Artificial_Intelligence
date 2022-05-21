# Recommendation using the ALS Model

In the previous segments, you built the ALS model, evaluated it and also did hyperparameter tuning of one of the hyperparameters, maxIter. In this segment, you will use the model to recommend movies to users based on the predicted ratings.

Let us first generate a list of the top 10 user recommendations for a particular movie.

**VIDEO**

So, in the video, you learnt that for every movie, Sajan has generated a list of top 10 user recommendations using the inbuilt function _.recommendForAllItems(10)_. How do you think this can help? Consider a movie that is going to be released and you want to have good reviews from the viewers. Hence, you would want to recommend it to the users whom you know that they’ll like it. You can get the list of such users using the above function.

In the next video, you will find the list of the top 10 movies for each user. Also, you will learn how to load the data into csv files and perform further analysis in Pandas using Python. But these commands won't work in the EMR cluster when you have selected the kernel as PySpark.

**VIDEO**

So, in this way, you have generated the list of top 10 movies for each user using the function _.recommendForAllItems(10)_. This will help you in recommending the next movies they can watch. In the next video, you will list the top 20 movies based on user ratings.

**VIDEO**

An important point to note here is that you can fine-tune the model even further by taking appropriate hyperparameters in the model and get more appropriate values of the user predicted ratings.

Please remember, it is a good practice to terminate the EMR cluster and stop the EC2 machine after all the tasks have been done.
