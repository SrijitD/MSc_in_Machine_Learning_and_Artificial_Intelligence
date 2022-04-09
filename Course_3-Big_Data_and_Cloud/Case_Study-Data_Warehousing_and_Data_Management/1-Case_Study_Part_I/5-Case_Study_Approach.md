# Case Study Approach

You have already learnt about the different stages of the ETL pipeline namely Extracting, Transforming and Loading the data. In this segment, you will decode the different steps involved in building the ETL pipeline.

**VIDEO**

The steps involved in building the pipeline are as follows:

1. Launching an EMR(Elastic MapReduce) cluster with Hive, Hue, Oozie and Sqoop services

2. Downloading the data sets (link to the data sets will be provided)

3. Creating an RDS instance

4. Connecting to the RDS instance:

   - You will use an EMR cluster to connect to the RDS instance and create tables

   - You can also do this from your local machine if you have SQL installed on it or use MySQLWorkbench and connect to the RDS instance  
     (In the demonstration, Ganesh will be connecting to the RDS using the EMR cluster, since EMR comes default with SQL installed on it.)

5. Creating tables on the RDS instance

6. Moving the data from the DBMS tables to the HDFS using Sqoop:

   - Explore different ways to use the sqoop command

   - How is the data stored in different file formats?

7. Creating a Hive database and Hive tables, and loading data into these tables

8. Understanding the Avro and Parquet file formats, and their impact on the performance of the run query

9. Analyzing the data by running Hive queries

10. Starting the hue service to run Oozie jobs for orchestrating different steps in the process

11. Performing cleanup:

    - Dropping Hive tables and the Hive database

    - Terminating the EMR cluster

![Process](https://i.ibb.co/b6y1jBB/Case-Study-Telecom-Process.jpg)

In the next segment, we will understand in detail the first step of building an ETL pipeline i.e. launching the EMR cluster.
