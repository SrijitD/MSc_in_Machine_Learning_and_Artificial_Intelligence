# Summary

In this session, you have mainly covered query optimisation concepts, which are as follows:

- **Map joins**: This is a technique to speed up queries by specifying the hint to the join query. In this method, you just avoid performing operations using reducers, and only the mapper performs the operations of join, thus making the queries faster.

- **Partitioning**: It basically refers to dividing the whole table into different groups to make the query faster. There are two types of partitioning methods:

  - **Static partitioning**: In static partitioning, you need to load the data into the partitions manually.

  - **Dynamic partitioning**: In dynamic partitioning, data gets allocated to the partitions automatically.

Static partitioning is faster than dynamic partitioning.

- **Bucketing**: Bucketing is similar to partitioning, It is also a query optimisation technique.

One of the very basic differences between bucketing and partitioning is that when you create partitions, new folders are created for each of the partitions; however, in the case of bucketing, multiple files (buckets) are created inside a single folder.

In the next video, Vishwa will summarise the query optimisation techniques.

**VIDEO**

So, here is a list of the query optimisations techniques:

- Indexing

- Partitioning

- Bucketing

- Execution Engine Selection

- Map Joins

- File Formats

You have already learnt about indexing, partitioning, bucketing and map joins. Let us summarise the remaining optimisation techniques.

- **Execution Engine Selection**: Most of the queries in this entire Hive module are performed on the MapReduce execution engine. But the newer version of Hive contains other execution engines that reduce the query time.  
    Here are the different types of execution engines in Hive:

  - Map Reduce: mr

  - Tez

  - Spark

You can use the following query to change the execution engine:

`SET hive.execution.engine=mr;`

`SET hive.execution.engine=tez;`

`SET hive.execution.engine=spark;`

Note: File Formats have not been covered in this course but they are important to understand. You can read about it through the short explanation and additional links provided below.

- **File Formats**: You have already learnt that Hive works on the HDFS and Hadoop is simply a data storage system that stores data in different file formats. Now, there are many file formats that reduce latency in queries. Some of these file formats include the following:

  - ORC file formats: You can refer to [this](https://cwiki.apache.org/confluence/display/Hive/LanguageManual+ORC) link for a better understanding of these file formats.

  - Parquet file format: You refer to [this](https://www.ellicium.com/parquet-file-format-structure/) link for a better understanding of this file format.

With this, you have learnt about query optimisation techniques.
