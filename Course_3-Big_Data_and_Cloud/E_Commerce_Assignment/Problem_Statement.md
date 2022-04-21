# Problem Statement

## Introduction

So far, in this course, you have learnt about the Hadoop Framework, the RDBMS design and Hive Querying. You learnt how to work with an EMR cluster and write optimised queries on Hive. You also went through a practical demonstration on how to ingest data using Sqoop and build a data pipeline by orchestrating various HIVE and Sqoop queries.

This assignment aims to test your skills and understanding of the Hive and Hadoop concepts that were covered throughout this course. Similar to Big Data Engineers, you will be required to extract data, load data into Hive tables and gather insights from the data set.  

## Problem statement

With online sales gaining popularity, tech companies are exploring ways to improve their sales by analysing customer behaviour and deriving insights about product trends. Furthermore, the e-commerce websites make it easier for customers to find the products that they require without much scavenging. Needless to say, the role of big data engineers is among the most sought-after job profiles of this decade. Therefore, as part of this assignment, you, as a big data engineer, will be required to extract data and gather insights from a real-life data set of an e-commerce company.

**VIDEO**

One of the most popular use cases of Big Data is in e-commerce companies such as Amazon and Flipkart. So, before we dive into the details of the data set, let's understand how e-commerce companies use the concepts of Big Data to provide customers with relevant product recommendations. For this, companies track your clicks on their website and search for patterns within them. This type of data is called clickstream data. Let's take a look at the diagram given below to understand how this actually works.

![Data Ingestion Frameworks](https://i.ibb.co/g9mWhkr/Data-Ingestion-Frameworks.png)

Clickstream data contains all the logs related to how you navigated through the website. It also contains other details such as time spent on every page. Based on this data, companies use data ingesting frameworks such as Apache Kafka and AWS Kinesis in order to store the data in frameworks (for example, Hadoop). Next, machine learning engineers or business analysts use this data to derive valuable insights. Let's watch the next video to understand this further.

**VIDEO**

For this assignment, you will be working with a public clickstream data set of a cosmetics store. Your task is to use this data set to extract valuable insights, which is generally done by data engineers for e-retail companies. Now, let's watch the next video to learn about the data set in detail.

**VIDEO**

You will find the data in the links given below.

[https://e-commerce-events-ml.s3.amazonaws.com/2019-Oct.csv](https://e-commerce-events-ml.s3.amazonaws.com/2019-Oct.csv)  
[https://e-commerce-events-ml.s3.amazonaws.com/2019-Nov.csv](https://e-commerce-events-ml.s3.amazonaws.com/2019-Nov.csv)

You can find the description of the attributes in the data set, in the file attached below.

Download [Attribute Description](Data_Desciption.xlsx)

**VIDEO**

The implementation phase can be divided into the following parts:

- Copying the data set into the HDFS:

  - Launch an EMR cluster that utilises the Hive services.

  - Move the data from the S3 bucket into the HDFS

- Creating the database and launching Hive queries on your EMR cluster:

  - Create the structure of your database

  - Use optimised techniques to run your queries as efficiently as possible

  - Show the improvement in the performance after using optimisation on any single query

  - Run Hive queries to answer the questions given below

- Cleaning up
  - Drop your database
  - Terminate your cluster

You are required to provide answers to the questions given below.

- Find the total revenue generated due to the purchases made in October.

- Write a query to yield the total sum of purchases per month in a single output.

- Write a query to find the change in the revenue generated due to purchases made from October to November.

- Find distinct categories of products.

- Find the total number of products available under each category.

- Which brand had the maximum sales in October and November combined?

- Which brands increased their sales from October to November?

- Your company wants to reward the top 10 users of its website with a Golden Customer plan. Write a query to generate a list of top 10 users who spend the most on purchases.

**Note**:

1. To write your queries, please make necessary optimisations such as selecting the appropriate table format and using partitioned/bucketed tables. You will be awarded marks for enhancing the performance of your queries.
2. Each question should have one query only.

3. For the assignment, you can stick to a two-node cluster with 1 master node [M4.large] and 1 core node [M4.large].
