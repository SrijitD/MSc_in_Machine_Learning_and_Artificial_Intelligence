# Data Loading

In the previous segment, you were introduced to the data set that we will be using for this demonstration. In this segment, you will learn how to load the data and visualize it in a matrix form using Spark.

**Note**: The demonstration videos have been shot on the EC2 machine, although you are expected to run the EMR cluster and run the Jupyter notebook on this cluster only. Also, in the EMR cluster, you won't be able to perform the operations of Python, as you have selected the kernel as PySpark. Therefore, you need to perform only those operations that have been provided to you in the commented notebook in order to build the ALS model.

In general, when you are working with a machine learning problem, you usually start with a smaller dataset and try to implement the model on it and establish a pipeline that can be deployed for training or production. All the data exploration and visualizations happen on a local or an EC2 machine. Once, the pipeline is ready, you then train the model on a larger dataset using a powerful resource like EMR. In order to get a flavour of the EMR machine and see it's computation power, we expect you to run your codes on EMR. One demerit here is that you won't be able to run the Python components in the code. You will need to configure the EMR to run Python code along with the PySpark code which will take significant effort, hence, we'll skip it for now.

Nevertheless, you are welcome to run the notebook on an EC2 machine. You'll be able to run the complete code but please use the smaller data which you can find here:

[EC2 User Rating Data](http://files.grouplens.org/datasets/movielens/ml-latest-small.zip)

If you run the code files on the EC2 machine, then you can run both the commands of python and PySpark but on the EMR cluster with the configuration mentioned, you can run only one at a time. Also, you can not install the python libraries on EMR cluster using the commands like:

```python
! pip3 install numpy 

! pip3 install matplotlib 

! pip3 install pandas 
```

You will see that the recommendation model building will only be performed in PySpark.

In the next video, Sajan will import some of the useful libraries and load the rating data in a dataframe. You **do not** need to run the following code when you are running the notebook on an EMR cluster:

```python
import os
import sys
os.environ["PYSPARK_PYTHON"] = "/bin/python3"
os.environ["JAVA_HOME"] = "/usr/java/jdk1.8.0_161/jre"
os.environ["SPARK_HOME"] = "/home/ec2-user/spark-2.4.4-bin-hadoop2.7"
os.environ["PYLIB"] = os.environ["SPARK_HOME"] + "/python/lib"
sys.path.insert(0, os.environ["PYLIB"] + "/py4j-0.10.7-src.zip")
sys.path.insert(0, os.environ["PYLIB"] + "/pyspark.zip")
```

Also, to load the data from the S3 bucket into dataframes, you need to specify the path of the files as follows:

**Rating Data:** “s3a://sparkdemonstration-mlc/ratings.csv"  
**Movies Data:** “s3a://sparkdemonstration-mlc/movies.csv”

You may encounter the error of IAM role while reading the data from S3 bucket. You need to follow the below-mentioned instruction before reading the data from S3 into a dataframe.

1. Select the IAM from the services and you will land onto the following page:

![IAM](https://i.ibb.co/52N6J9t/IAM.png)

Now click on the roles button.

2. When you click on the roles button you will see the following roles on the screen and you need to click on the 'EMR_Notebooks_DefaultRole'.

![EMR_Notebooks_DefaultRole](https://i.ibb.co/zHx7kJ1/EMR-Notebooks-Default-Role.png)

3. Once you open the 'EMR_Notebooks_DefaultRole', you need to click on the 'Attach policies' button, and you need to attach the 'AmazonS3FullAccess' policy to 'EMR_Notebooks_DefaultRole' IAM role as shown below.

![AmazonS3FullAccess](https://i.ibb.co/Y8ZVgt9/Amazon-S3-Full-Access.png)

**VIDEO**

You can see that the number of rows is ~25 million. Even with such a huge number of rows, you’ll see that the time taken by Spark is significantly less as compared to Python.

So, once you have loaded the rating data into the data frame, you can visualise the ratings in matrix form using SparkSQL. In the next video, we will show you how you can convert the data into a more understandable matrix format; for this purpose, we have used a very small rating data of just 20 entries. You can specify the following path for this data set in the Jupyter notebook in order to load it:

**Small_Rating Data Set:** "s3a://sparkdemonstration-mlc/ratings_small.csv"

Play Video

3221820

In the next video, you will load the movie data into the data frame to make a better sense of the movieId column in the ratings data.

Play Video

3221820

In this way, you have loaded the two data sets.

Before we move on to the next segment, you should realise that we have performed the intial couple of steps in any machine learning modelling process: Data Loading and Data Exploration. In this particular case, we haven’t gone into a lot of data exploration as the data was already well structured and clean. In the next segment, we shall cover the data preparation and the model building phase in the machine learning modelling process.
