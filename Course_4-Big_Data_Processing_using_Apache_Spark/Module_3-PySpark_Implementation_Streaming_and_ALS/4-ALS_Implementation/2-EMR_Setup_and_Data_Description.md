# EMR Setup and Data Description

Before getting into the demonstration, first, let us learn to run a Jupyter notebook on an EMR cluster. This is the first time you will run the notebook on the cluster.

You are provided with a document that provides a detailed description of how to launch an EMR cluster with Spark installed on it.

You are expected to run the EMR cluster (version- **emr-5.29.0**) and code on the Jupyter notebook on the cluster itself.

Download [Spark Setup on EMR Cluster](Docs/Amazon_Web_Services/Spark_Setup_on_EMR.pdf)

Next, let’s take a look at the data set that we are going to use in this demonstration part.

## About the Data Set

All demonstrations to build an ALS model will be performed on the MovieLens data set. You can go through the [MovieLens](http://grouplens.org/datasets/movielens/) website for the different datasets.

You have been provided with the following two files:

- **movies.csv:** This data set contains the following three fields  about movies:
  - movieId: This is the unique identification number for a particular movie.
  - title: This is the title of a movie or, we can say, the name of a movie.
  - genres: This field represents the genre of a movie, for example, adventure, animation, comedy, thriller, etc.

Here is the S3 link to access the movie.csv file: [S3_Link_Movies_Dataset](https://sparkdemonstration-mlc.s3.amazonaws.com/movies.csv)

- **ratings.csv:** This data set contains information about users and the ratings that they have given to the set of movies. It has the following four fields:
  - userId: This is the unique identification number for a particular user who has rated a movie.
  - movieId: This is the unique identification number for a particular movie that is rated by a particular user.
  - rating: This is the rating that has been given by a particular user to a particular movie.
  - timestamp: This field represents the specific timestamp on which a particular user has rated a particular movie.

Here is the S3 link to access the rating.csv file: [S3_Link_User_Ratings_Dataset](https://sparkdemonstration-mlc.s3.amazonaws.com/ratings.csv)

A point to note here is that for the demonstrations, we have used files with fewer data. Nevertheless, you are provided with a huge data set so that you can appreciate the importance of Big Data and model building using a huge data set.

You have been provided with a well-commented Jupyter notebook to write your own code during the demonstration videos. You need to set up the kernel as ‘PySpark’ in the notebook.

Download [ALS_Demonstration_Notebook](ALS_Model_Commented.ipynb)

In the next segment, you will go through the demonstration part of ALS model building.
