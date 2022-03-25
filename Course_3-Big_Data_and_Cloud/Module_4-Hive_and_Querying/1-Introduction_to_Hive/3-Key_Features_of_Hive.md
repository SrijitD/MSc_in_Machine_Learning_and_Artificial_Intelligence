# Key Features of Hive

You learnt about the OLTP and OLAP systems in the previous segment. Now, let’s discuss what Hive is and what it is not.

Let’s recall the discussion from the previous module where you learnt about RDBMS. As you learnt, an RDBMS is a database management system. Similarly, what do you think about Hive? Is it also a database management system?

Let’s learn more about Hive in the next video.

**VIDEO**

In the video above, Vishwa mentioned that Hive was developed by Facebook for analytical purposes because as an analyst, you do not need to know much about hardcore programming languages to query using MapReduce. Hence, Facebook developed Hive for easy querying into the HDFS.

**What is Hive?**

- **A software tool**: Hive is a software tool that processes the data available in the HDFS. It sits on the top of the Hadoop system to summarise the big data and makes querying and analysing easy.

- **An SQL-like syntax**: Hive supports simple SQL-like syntax to query into the HDFS.

- **A lense between the HDFS and MapReduce**: Hive works as the lense between the HDFS and MapReduce, where you write queries in Hive, and ultimately, it hits the MapReduce job to convert the queries into MapReduce codes, which operate on the data available in the HDFS.

- **Multiple storage formats**: One of the very interesting aspects of Hive is that it allows you to fetch or query into any type of file format available in the HDFS.

**What Hive is not**

- **Transactional Tool**: You learned about the OLTP and OLAP systems in the previous segment. Hive only supports OLAP systems. You can only use Hive for analytical purposes. It does not support real-time transactions in the database.

- **Generally no record-level updates**: Hive generally supports only appending in the database; it does not support record-level updates such as delete, update or alter.

- **Limited by SQL syntax**: Since Hive supports only simple SQL-like syntax, you cannot perform very complex analaysis.

Now you have a broad understanding of Hive. Let's jump to the next section where you will learn about the salient features of Hive in detail.

**VIDEO**

Let’s summarise the points that Vishwa covered in the previous video. You already know that the main purpose behind developing the Hive software is to make the query faster and easier for a person with an analytics background. Hive offers the Hive Query language to query into the HDFS, which is almost similar to the SQL.

- **Hive works on the HDFS**: Clients interact with the HDFS using Hive tools and query using the Hive Query Language into the HDFS, which ultimately initiates a MapReduce job to  fetch the data. Note that Hive is not the storage system; it is just a software tool that works on the top of the HDFS to query into the file storage system.

![HIVE Overview](https://i.ibb.co/SwrTNwk/HIVE-Overview.png)

- **Single Write, multi Read**: As you learnt, Hive is an OLAP system, which is made to read data for analytical purposes. Hence, you can read the data as many times as you want, but performing write operations is allowed only once into the HDFS.

- **Hive Query language (HQL)**: Hive supports the HQL to query into the HDFS, but ultimately, the HQL is translated into MapReduce jobs internally. Hence, internally, you have MapReduce and the HDFS even if you are using Hive.

- **Metadata**: Hive fetches data from the HDFS in the form of tables and stores the schema of the data in its metastore. Metadata is data or information about some given data. You will learn more about metastore and metadata when we cover the architecture of the Hive.

Let’s explore more features of Hive in the next video.

**VIDEO**

Let’s summarise the points that Vishwa covered in the video above.

- **Tabular structure**: In Hive, you read the data into the tables after creating the schema of such tables using the Hive Query Language. There are two types of tables: internal and external, which you will learn about in further segments.

- **Aggregation functions**: As you already know, Hive is an OLAP system that is used for analytical purposes. Hence, it has a variety of aggregation functions such as sorting, average, sum, count, min or max.  

- **User-defined functions (UDFs)**: Hive supports one of the very dynamic features of user-defined functions. In addition to the inbuilt functions, Hive allows you to custom functions to process records and groups of records. In many industries, it is necessary to do various jobs using UDFs, which are highly extensible than the existing functions.

- **Batch processing**: Consider a ride-hailing company such as Uber, which needs to process data of all the rides taken, at the end of each day, and distribute the revenue among the drivers. This process is not done immediately after each ride but at the end of each day. This is an example of batch processing.
  Batch processing in Hadoop is considered processing on a group of transactions that have been collected over a particular period of time. As in the aforementioned example, a particular period of time is one day. Multiple rides are taken in one whole day, with money transactions from customers to drivers/Uber, and at the end of the day, the money thus received from all the transactions in the day is allocated.

- **Highly extensible**: Hive is highly extensible. Suppose a particular application is written in Java or Python. Then, it can interact with Hive and get relevant data from the HDFS.

In the next segment, we will discuss the use cases of Hive.

#### Origin of Hive

Qn: What is the main reason behind the development of Hive? (Note: More than one option may be correct.)

- There was no other data warehouse software available at the time.

- There was no other distributed file storage system.

- Writing MapReduce programs for processing data was a time-consuming task.

- Programmers, especially data analysts, were less familiar with MapReduce programming.

Ans: C & D.

- *Writing MapReduce programs using Java/Python is time consuming. A lot of code is written to perform a simple task. Hence, a lot of time and effort are invested in coding, testing and maintaining MapReduce programs.*

- *Programming in MapReduce was a really complex task, and SQL was the most popular and familiar tool for processing data and tables.*

#### Features of Hive

Qn: Select the correct statement about Hive:

- Hive is a relational database.

- Hive is a language to query into a relational database.

- Hive stores the schema and processed data in its data warehouse directory.

- Hive supports an SQL-like query language to get data from the HDFS in a structured format.

Ans: C & D.

- *Hive has a feature to store the schemas of the database that you have defined using queries in its data warehouse directory*

- *Hive is not a language, but a system or tool that works on the top of the HDFS. It works as the pointer to the HDFS. However, it supports a Hive query language which is similar to SQL to query into the HDFS for analytics purposes.*

Qn: Based on your understanding of the features of Hive, select the correct option from below. (Note: Multiple options may be correct.)

- Hive is a database that fetches data into itself from the HDFS, and from there, you can query into the data.

- Hive has its own data warehouse where it can create a schema of the tables and delete it from its own directory.

- You can update/delete the data that is present in the HDFS using Hive, as Hive is the pointer to the HDFS.

- The data available in the HDFS is always in a structured format, and Hive just reads this structured data. You can then query into it.

- In Hive, you can query using SQL-like language, and ultimately, this is converted into MapReduce codes.

Ans: B & E.

- *Hive has its own data warehouse directory where it can create tables and delete them.*

- *Hive provides the Hive Query Language, which is similar to SQL. Ultimately, all the queries are converted into MapReduce codes.*

Qn: Based on your understanding of Hive, select the correct statement from below. (Note: One or more than one options may be correct.)

     a. Hive supports transactional data processing in the HDFS.

     b. Hive is used mainly for analytics purposes, where you create the schema of the data in a structured format from the HDFS and query into it using the HQL.

     c. Hive is exactly the same as RDBMS, where you can store files and fetch data using an already defined schema.

- a, c

- b, c

- Only b

- Only c

Ans: C. *Hive does not support the transactional data processing in HDFS, but it is only used for the analytical purpose.*
