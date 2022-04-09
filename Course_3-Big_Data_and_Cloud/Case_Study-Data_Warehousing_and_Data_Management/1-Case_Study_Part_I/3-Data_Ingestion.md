# Data Ingestion

ETL is the traditional data ingestion process for extracting data from various sources and loading it into a warehouse. Now, before proceeding to understand the different steps of the ETL process, let us quickly understand what data ingestion is in our next video.

**VIDEO**

Data ingestion is the process of accessing and importing data for immediate use or storage from one database to another. In this case study, you will learn how data is ingested from traditional RDBMSs into big data platforms such as Hadoop.

Data ingestion is necessary, since traditional systems which majorly store transactional data such as MySQL databases, Teradata, Netezza, Oracle, etc., are often unable to handle growing volumes of data, and you need to import data from these systems to big data systems.

Here, the instructor mentioned JDBC which stands for  Java Database Connectivity. It's a Java API to connect and execute the query with the database. If interested, you can learn more about it [here](https://www.javatpoint.com/java-jdbc#:~:text=JDBC%20stands%20for%20Java%20Database,to%20connect%20with%20the%20database.).

To summarise, when organisations initially tried using big data platforms, they faced the problem of transferring data from their RDBMSs to the Hadoop Distributed File System (HDFS) quickly and efficiently. They needed an ingestion tool that was fast, efficient and affordable. This need resulted in the development of data ingestion tools such as Sqoop and Flume. An interesting thing to note here is that Sqoop is used to ingest structured data, whereas Flume is used for ingesting semi-structured or unstructured data.

Since most of the data stored in RDBMSs is structured, Sqoop is used more commonly than Flume, and, hence, we will focus only on Sqoop over the next course of videos.
