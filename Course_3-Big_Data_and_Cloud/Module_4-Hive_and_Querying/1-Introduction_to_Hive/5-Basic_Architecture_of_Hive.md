# Basic Architecture of Hive

So, you learned about the features of Hive and understood that the main purpose of developing Hive is to query into the Hadoop File Storage System and read data from it for analytical purposes. Now, let’s move on to the architectural aspect of Hive and understand how Hive functions and how it is built over the Hadoop ecosystem.

Let’s hear from Vishwa and learn about the architecture of Hive in detail.

**VIDEO**

So, any Hive ecosystem is divided into the following three parts:

- **Hive Client**: This acts as the face of the Hive system through which users interact with Hive and query into the HDFS.

- **Hive Core**: This is the core part of the Hive architecture, which links the Hive client and the Hadoop cluster.

- **Hadoop Cluster**: This is the file storage system where users can store files in either structured or unstructured format and can query into the HDFS using the MapReduce.

![Hive Ecosystem](https://i.ibb.co/hVY1bgJ/Hive-Ecosystem.png)

Let’s first learn about **Hadoop Cluster**, which is the bottom-most block of the Hive architecture. It consists of the following two parts:

- **HDFS**: The Hadoop Distributed File System (HDFS) allows you to store large volumes of data across multiple nodes in a Hadoop cluster. It is used to perform distributed computing on structured or unstructured data.

- **MapReduce**: This is a programming framework that is used by Hadoop for processing data. Afterusers store the data in the HDFS, MapReduce is used to query into the HDFS to perform the data analysis. Note that even if you are running the Hive job, the MapReduce job gets triggered to query into the HDFS, in the background.

Now, let’s understand Hive Client and Hive Core.

**VIDEO**

Now, as you know, Hive is just a software tool that works over the HDFS; it is a tool through which you can query into its server the HDFS using an SQL like programming language. Underlying the HDFS, all the Hive jobs are converted into the MapReduce job.

Let’s understand the first block of the Hive architecture, i.e., Hive Client.

- **Command Line Interface (CLI)**: This is an interface between Hive and its users. You need to write the queries in the Hive Query Language in order to derive results from the data available in the HDFS. It acts as the command line tool for the Hive server.

- **Web Interface**: This is a graphical user interface of Hive; it is an alternative to the Hive CLI, where you query into the HDFS through the Hive tool.

Now, let's move on to the most important part of the Hive architecture, which is Hive Core.

**Hive Core** consists of the following three aspects:

- **Hive QL Process Engine**: When you write the query in the Hive query language through the CLI or web interface, it goes into the Hive QL Proces Engine, which checks the syntax of the query and analyses it. The HQL is similar to SQL to query and uses the schema information available in the Metastore. Instead of writing a MapReduce program in Java, you can write the query in an SQL-like language, i.e., HQL for a MapReduce job, and process it.

- **Hive Metastore**: Metastore can be considered the heart of the Hive ecosystem. Let’s try to understand this with the help of an example. Suppose an e-commerce company has to manage its employees, customers, orders, etc. The data is available in the HDFS and you want to perform analytics on this data.

    You already have an understanding of DDL and DML statements. In Hive, when you create the tables of entities such as employees, customers, orders etc., all the schema information, including names of entities, data types and relations among the tables, is stored in the Hive Metastore. In Hive, whenever you query for this schema information in the Metastore, the Hive QL Process Engine refers to the Metastore each time and retrieves the schema information.

    This information about the tables and the database is called **Metadata**. Metadata is nothing but information or data about some given data”.

    It is important to note that Hive is not a database, and Metastore acts as a storage space for Hive, where the schema information of all the tables that have been created is stored. Metastore does not store the actual data; it stores the metadata of the tables that have been created. It contains its own embedded RDBMS to store the relational tables and uses Apache’s “Derby” RDBMS for it.

- **Execution Engine**: Execution engine is used to convert Hive queries into MapReduce jobs. Execution engine processes the query and generates results that match the MapReduce results.

In the next video, you will see how a particular query flows throughout the 'Hive Architecture'.

**VIDEO**

So, in the video, you learnt how a particular query is executed and understood how you can query into the HDFS using the Hive Query Language.

![Hive Query Language](https://i.ibb.co/VtPdPYV/Hive-Query-Language.png)

Let’s understand this process step by step:

- When you create a particular table with DDL statements using HQL, its schema gets stored in the Hive metastore.

- Once Hive core receives the HQL commands from CLI, it passes this command to the Hive QL process Engine. It requests the Metastore to verify the information that you have sent in the form of a query. The Hive QL Process Engine also checks the syntax of the query and then sends the query into the Execution Engine (EE).

- The EE sends the request again to the metastore to receive additional information about partitioning, bucketing or any other relevant information and ultimately triggers the MapReduce job to convert all the Hive queries into MapReduce jobs.
    x
- MapReduce interacts with the HDFS and provides the result of the query. Note that the actual data of the table with ‘user_info’ does not carry into the metastore but it is carried by the HDFS itself. However, the schema of the table is carried by the metastore only.

In the next segment, you will learn about the differences between RDBMS and Hive.

#### Hive Architecture: Metastore

Qn: Now that you are aware that Metastore is an important component of Hive, what are its main functions? More than one option may be correct.

- Metastore stores information regarding the Hive tables in a central repository

- Metastore is highly essential for interpreting flat files stored in the HDFS as tables.

- In order to store tables, you need a storage system, and Metastore meets this requirement.

- Performing joins between tables can be difficult without clear schemas or information about the relations between internal tables. The Metastore solves this problem

Ans: A, C & D.

- *When you create a Hive table, the table definition (column names, data types, comments, etc.) are stored in the Hive Metastore. Hence, it acts as a central repository.*

- *Information such as the number of columns, column names, the type of columns, column delimiters, etc. is required to interpret the flat files as tables in Hive. This information is stored in the Hive metastore.*

- *Metastore provides clear information of the tables and its contents, making it easier to perform join operations*

#### Hive QL Process Engine

Qn: Which of the following statements describes the main function of the Hive QL Process Engine?

- It stores the schema of all the tables that you have defined in Hive.

- Instead of writing queries in Java, you can write the query in a language that is similar to SQL and process it.

- It acts as an interface between the users and the HDFS.

- It processes the data of the HDFS and creates a structured database to query into the HDFS.

Ans: B. *Hive is designed over the HDFS. It is like a pointer to HDFS and you can query into the HDFS using an SQL-like language, and the Hive execution engine converts these queries into MapReduce codes.*

#### Hive Architecture

Qn: Consider the following statements and choose the correct one:

1. Deleting the data or the schema from the Metastore also deletes the data from the HDFS.

2. Using Metastore, you can create a schema or structured tables in the HDFS.

3. The Hive Metastore stores each and every entry of the tables that you have called from HQL.

- 1, 2

- 2, 3

- 1, 3

- None of the above

Ans: D.

- *Deleting data from the metastore does not delete the data from the HDFS.*

- *Hive cannot update or delete anything from the HDFS; it only points towards the HDFS.*

- *Also, Metastore does not store the data of tables all the time. It only stores the schema of the tables. However, in the case of internal tables, it sometimes does store the data, which you will learn in further segments.*

Qn: Which of the following statements are correct?.

- Hive works on the HDFS and all the Hive queries fetch the data directly from the HDFS.

- All the Hive queries are converted into MapReduce jobs in order to read the data from the HDFS. This job is performed by the Hive QL Process Engine.

- All the Hive queries are converted into MapReduce jobs in order to read the data from the HDFS. This job is performed by the Execution Engine.

- Hive Metastore provides information about the relational tables to the Hive QL Process Engine in order to read the data from the HDFS.

Ans: C & D.

- *All the Hive queries are converted into MapReduce jobs in order to read the data from the HDFS. This job is performed by the Execution Engine.*

- *Hive Metastore is meant for providing schema information to the Hive QL Process Engine. It then verifies the query based on the schema available in the metastore.*
