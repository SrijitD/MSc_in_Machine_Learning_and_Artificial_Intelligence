# Sources of Data - II

Let’s continue to learn more ways to read data into Spark:

## Databases

So far, you have learnt how to read offline datafiles. However, it is highly likely that you will want to read data from a database. Java database connectivity or JDBC is built-in functionality in Spark that allows users to connect to other external databases, such as Microsoft SQL server. To do this, you need to add the driver of your particular database in the configuration lines that are run at the beginning of each notebook. The path for the postgresql driver looks like this:

```shell
bin/spark-shell --driver-class-path postgresql-9.4.1207.jar --jars postgresql-9.4.1207.jar
```

This path will be different for different databases. You will have to add the relevant driver to the classpath first. Then, using the **.read** method in SparkSession, you will be able to directly read the data from the database. Let’s look at how the read command functions when you connect to an external database.

**VIDEO**

Consider an e-commerce company where various types of data are collected in different databases. One database will be private and contain all the customer information. This data will be stored in a highly secure server that is separated from the server that records the bulk data that is being collected from the click-through activities. Suppose you need to perform a customer analysis by joining the secure customer data and the bulk data. Spark enables its users to do these transformations and analysis of the data collected from different data sources.

## HIVE Tables

Spark can also read and write data from HIVE tables. However, directly connecting to HIVE is not enough; you need to specify all the dependencies of HIVE in the classpath. Also, as you will be working on a cluster, the dependencies should be present in all the worker nodes. The last step that you needs to complete before reading or writing files from HIVE tables is to enable HIVE support in the Spark session. Let’s look at how you can do this by watching the following video.

**VIDEO**

## Tables Partitioning

This is a popular technique that people use to divide the data into smaller, manageable chunks. Consider the database of customers on an e-commerce website. As each and every activity that a customer performs on the platform is recorded, the volume of data becomes huge. Suppose the data is partitioned by date in order to make it manageable. For each day, a new table will be created with the same columns. If you give the address of these table partitions to Spark, it combines these tables and infers the schema of the combined table on its own

**VIDEO**

#### Data Sources

Qn: From which of the following sources can Spark directly read structured data?

- Text files

- External databases, such as microsoft databases

- Datafiles such as CSV, parquet, etc

- HIVE databases

Ans: B, C & D.

- *Text files are unstructured; they can be read into Spark.*
- *Users can use Spark along with JDBC data sources to connect to external databases.*
- *There are different ways to read these file types in Spark.*
- *To connect to the HIVE databases, the spark session needs to be enabled with HIVE.*

Download [Data sources Notebook and Data sets](Data_Sources.zip)

Next, we will see what factors affect the choice of APIs.

## Additional reading

You can read about the other ways of reading data from the following links:

1. [JBDC to database](https://spark.apache.org/docs/latest/sql-data-sources-jdbc.html)

2. [HIVE table Documentation](https://spark.apache.org/docs/latest/sql-data-sources-hive-tables.html)  

3. [Generic read/write commands](https://spark.apache.org/docs/2.2.2/sql-programming-guide.html)
