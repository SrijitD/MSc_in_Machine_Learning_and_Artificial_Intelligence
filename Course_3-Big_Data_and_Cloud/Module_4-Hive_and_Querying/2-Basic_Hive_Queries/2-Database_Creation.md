# Database Creation

In the previous module, you learnt about databases and tables, and how to create them in MySQL. Now, in the case of Hive, you will be dealing with big data and, hence, the files will be available on a distributed storage platform such as HDFS or S3. You need to load the data into the databases and tables first in order to run queries on them. In this module, you will learn how to do that using an EMR (Elastic MapReduce) cluster.

The first step in the process will be to create an EMR cluster, which will provide you with a platform to launch the Hive service. Now, you have already learnt how to do that in the previous module. Therefore, adhere to the steps mentioned in this [link](https://learn.upgrad.com/course/1853/segment/15131/96402/290074/1511158).

Once the cluster is ready, you can follow appropriate steps to connect to its master node based on whether you are working on a Windows OS or a Mac/Linux OS. Now, the next step is to obtain the data that you wish to load into the database. You will be working on a data set that is placed under a public S3 bucket.

Now, when working with Hive on an EMR cluster, there are different methods to work with data stored in S3:

- You can load the data stored in S3 into Hive directly through the S3 link. However, any changes made to the bucket will cause changes while loading the data in Hive.

- Another method could be to copy the data from S3 in the cluster and then load it into the Hive tables. This will help you keep your data safe within the cluster.

As a part of this demonstration, you will use the second method. Hence, you will next learn how to copy the data present in the S3 into the master node. Let’s watch the next video and learn how to do that.

**VIDEO**

Here you can connect to the EMR using ssh (secure shell). It is a **network communication protocol** that enables two computers to communicate and share data. You need to provide a path for the hive key and EMR cluster to connect. You can find the command from AWS platform as mentioned in the video.

Since the EMR cluster comes with AWS CLI pre-installed, you can use the following command to copy the data from S3 to the instance hosting the master node:

_**aws s3 cp <s3_path> <instance_path>**_

Note that the <instance_path> is represented with ‘.’ in the video, which means the data is copied in the EC2 directory where you are present. Once the data is inside the cluster, you are ready for the demonstration part of the Hive query. For the entire demonstration in this module, you will be using the single data set and will learn how to perform queries in Hive.

So, let us get acquainted with the data set first. Here, you will have a movies_rating data set. In this case study, each user has rated movies, and there are a total of five attributes in the data set:

- User_id: The unique id of a particular user

- Age: The age of a user who has rated a movie

- Gender: The gender of a user

- Profession: The users’ profession, i.e., whether they are doctors, artists, engineers, etc.

- Ratings: The total rating given by a particular user to various movies

Each field in the data set is separated by a ‘| from the other, and each line is separated by ‘\n’.

You have been given this data set in the S3 bucket, and you need to copy this data into the EMR cluster. Public s3 link to dataset  [https://ml-cloud-dataset.s3.amazonaws.com/u.user](https://ml-cloud-dataset.s3.amazonaws.com/u.user)

 and you can use the below command to download the dataset  

`wget https://ml-cloud-dataset.s3.amazonaws.com/u.user`

You are expected to code along with the demonstration itself, as this will help you understand the concepts better and you will also get hands-on with querying in Hive.

Now, let us learn about the very first aspect of database creation in the next video.

**VIDEO**

Let us summarise the above video:

- You learnt that you can create a database with the help of the following query:

    `create database if not exists demo;`

    So, this database named ‘demo’ is created in the Hive warehouse itself.

- To print the description of the database, you can write a query with the keyword “**extended**”:

    `describe database extended demo2;`

In the next segment, you learn about the internal and external tables.
