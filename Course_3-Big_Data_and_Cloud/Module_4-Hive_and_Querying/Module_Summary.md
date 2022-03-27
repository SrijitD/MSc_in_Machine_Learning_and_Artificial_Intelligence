# Module Summary

Congratulations on completing this module on Hive. We hope that you enjoyed this learning journey. Now, we will conclude all the concepts that we covered in this module.

First, let us get a module summary from Vishwa.

**VIDEO**

So, let us summarise the module by revising all the concepts one by one.

- **OLTP vs OLAP Systems:** Here, you learnt about the concepts of OLTP and OLAP systems.
    OLTP is transactional processing, which is used to create a database. The real-time entry of data is done by OLTP systems; bank ATMs are an example of OLTP systems. In contrast, OLAP systems are used to perform analytics on a data set; data analysis in an e-commerce company can be one of the examples of OLAP systems. The original source of data is basically an OLTP system, whereas an OLAP system uses that data for analytical purposes.

- **Key Features of Hive:**

  - **Hive works on HDFS:** Clients interact with the HDFS using Hive tools and query into it using the Hive Query Language, which ultimately initiates a MapReduce job to  fetch the data.

  - **Single Write, Multi Read:** As you learnt, Hive is an OLAP system, which is designed to read data for analytical purposes. Hence, you can read data as many times as you want, although you are allowed to perform write operations into the HDFS only once.

  - **Hive Query language (HQL):** Hive supports the HQL to query into the HDFS, but ultimately, the HQL is translated into MapReduce jobs internally. Hence, internally, you have MapReduce and the HDFS even if you are using Hive.

  - **Tabular Structure:** In Hive, you read the data into tables after creating the schema for such tables using the HQL. There are two types of tables, namely, internal and external.

  - **Aggregation Functions:** As you have learnt already, Hive is an OLAP system that is used for analytical purposes. Hence, it has a variety of aggregation functions such as sorting, average, sum, count, min and max.  

  - **User-Defined Functions:** Hive supports one of the very dynamic features called User-Defined Functions (UDFs). In addition to its in-built functions, Hive allows you to customise functions to process records and groups of records.

  - **Batch Processing:** Batch processing in Hadoop refers to processing on a group of transactions that have been collected over a particular period of time.

  - **Highly Extensible:** Hive is highly extensible. Suppose a particular application is written in Java or Python. It can interact with Hive and fetch relevant data from the HDFS.

- **Basic Architecture of Hive:**

    ![Basic Architecture of Hive](https://i.ibb.co/VJSJYdW/Basic-Architecture-of-Hive.png)

  - **Hive Client**: It acts as the interface of the Hive system. Users interact with Hive and query into the HDFS through the Hive Client.

  - **Hive Core**: This is the core part of the Hive architecture, which links the Hive Client and the Hadoop cluster. The heart of the Hive core is the metastore. It acts as a storage space for Hive, where the schema information of all the tables that have been created is stored. The metastore does not store the actual data; it stores the metadata of the tables that have been created.

  - **Hadoop Cluster**: This is the file storage system, where users can store files in either a structured or an unstructured format, and can query into the HDFS using MapReduce.

- **Hive vs RDBMSs**: A very important difference between Hive and an RDBMS is that Hive works on ‘**Schema on READ**’, whereas an RDBMS works on ‘**Schema on WRITE**’.

Further in the module, you learnt how to code in Hive. You can summarise the demonstration part as follows.

- **Creation of Tables**: There are two types of tables in Hive:

  - **Internal Tables**: In case of an internal table, Hive is responsible for the data itself. It takes control of the entire life cycle of the metadata as well as the actual data itself. When you drop an internal table, both the schema information and the actual table data get deleted.

  - **External Table**: When you create an external table, Hive is responsible for taking care of only the table's schema. It does not take care of the actual data. When you drop an external table, the schema information gets deleted, but the actual table data is still available in the HDFS.

- **ORDER BY and SORT BY**: In many situations, you are supposed to perform sorting operations on the given data:

  - The “**ORDER BY**” clause gives you a total sorted list of the data. It guarantees total ordering in the output. It may use multiple mappers, but it uses only one reducer.

  - The “**SORT BY**” clause sorts the data at the reducer level only, and it does not guarantee total sorting of the data. Here, you will not get a complete sorted list. Also, you may get overlapping data in the two reducers.

- **DISTRIBUTE BY and CLUSTER BY:**

  - The “**DISTRIBUTE BY**” clause simply distributes the data into multiple reducers, but the data is not sorted in each reducer.

  - The “**CLUSTER BY**” clause distributes the data into multiple reducers, and the data in each reducer will be sorted and non-overlapping with one another.

- **Indexing**: This is a query optimisation technique, with which you can reduce the running time of a query. There are two types of indexing, namely, Compact indexing and Bitmap indexing.

In the third session, you learnt about advanced Hive. Here, we mainly covered the following topics:

- **Map Joins**: It is a technique to speed up queries by specifying the hint to the join query. In this method, you just avoid performing operations using reducers, and only the mapper performs the join operations, thus making the queries faster.

- **Partitioning**: Partitioning basically refers to dividing the whole table into different groups to make queries faster. There are two types of partitioning methods:

  - **Static partitioning**: In static partitioning, you need to load the data manually into the partitions.

  - **Dynamic partitioning**: In dynamic partitioning, data gets allocated into the partitions automatically.

Static partitioning is faster than dynamic partitioning.

- **Bucketing**: Bucketing is similar to partitioning, It is also a query optimisation technique.

One of the very basic differences between bucketing and partitioning is that when you create partitions, new folders are created for each partition, but in the case of bucketing, multiple files (buckets) are created inside a single folder.

With this, you have completed this module on Hive.
