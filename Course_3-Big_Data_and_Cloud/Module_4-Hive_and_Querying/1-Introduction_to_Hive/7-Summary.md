# Summary

You have learned about the basic features of Hive, its architecture and the difference between Hive and RDBMS.

Let’s now summarise all the concepts that you have understood so far.

**VIDEO**

These are the points that you learnt in the previous segments:

- **OLAP vs OLTP**: The key difference between OLAP and OLTP is that OLAP (Online Analytical Processing) systems are meant for analysis, whereas OLTP (Online Transactional Processing) systems are used for real-time data processing.

  - OLTP systems are used for writing the data into the database, while OLAP systems are used for reading the already created database for analytical purposes.

  - OLTP systems require less query time than OLAP systems.

  - OLTP systems maintain strict data integrity, whereas OLAP systems do not have this requirement.

  - Hive is an OLAP system, while RDBMS can be both an OLAP and an OLTP system.

- **Key features of Hive**:

  - Hive works on the HDFS, and you can query into the HDFS with an SQL-like querying language using Hive.

  - Hive supports multiple read operations but a single write function.

  - Hive supports the Hive Query Language, which is similar to the SQL, in order to query into the HDFS. However, all the queries are converted into the MapReduce jobs only.

  - Hive stores all the information of the tables, including data types, relational structure and schema, into its metastore.

  - Hive has a variety of aggregate functions and a special user-defined function (UDF) feature.

  - Hive supports batch processing to process the data after each time period.

  - Along with the feature of querying into the HDFS using the HQL, Hive supports several applications that are written in Java or Python and can also interact with the HDFS using Hive drivers. Therefore, Hive is highly extensible.

- **Architecture of Hive**: You learnt that the architecture of Hive consists of the following three components:

  - **Hive client**: It contains CLI and web interface to interact with Hive using the Hive Querying language.

  - **Hive core**: This is an integral part of the Hive architecture. It consists of the following three aspects:

    - **Metastore**: It stores the schema information of the data that has been read using the Hive queries from the HDFS. It uses Derby RDBMS to store the schema of the tables.

    - **Hive QL process engine**: It checks the syntax of the HQL queries and sends it to the metastore in order to derive the schema information for the query.

    - **Execution engine**: It converts the HQL queries into MapReduce jobs in order to read the data from the HDFS.

  - **Hadoop cluster**: It consists of HDFS and MapReduce. HDFS is a file storage system that stores the files in a distributed manner, whereas MapReduce is used to query into the HDFS.

- **RDBMS vs Hive**: One of the main differences between RDBMS and Hive is that Hive works on ‘schema on read’ while RDBMS works on schema on write’. Apart from this, Hive takes longer to compute, whereas RDBMS requires less time to query. The data size is larger in Hive than in RDBMS.

Now that you have a clear understanding of Hive and its architecture, in the next sessions, you will learn how to query into the HDFS using Hive. You will also learn query optimisation techniques to improve the performance of the queries.
