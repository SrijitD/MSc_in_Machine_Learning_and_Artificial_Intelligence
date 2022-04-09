# Introduction

In the last session, you created an RDS instance and loaded your tables with the dataset provided to you. You also got a theoretical understanding of the ETL Process and data ingestion. As discussed, you will be working with a Data Ingestion tool namely sqoop for importing the data from the RDS directly into the Hadoop instance and write Hive queries on top of it. Following this, you will also learn to integrate different steps in a data pipeline and create a workflow with the help of Oozie.

We have prepared technical documentation for your reference which includes all the commands from the beginning of this demonstration to the end.

Download [Technical Documentation](Technical_Documentation.pdf)

You can also download the below Workflow Documentation for understanding the steps involved in scheduling a workflow.

Download [Workflow Documentation](Workflow_Documentation.pdf)

The basic steps followed in this case study are as follows:

1. Launching an EMR(Elastic MapReduce) cluster with Hive, oozie and sqoop services.

2. Downloading the data sets (link to the data sets will be provided)

3. Creating an RDS instance

4. Connecting to the RDS instance

5. Creating tables on the RDS instance

6. Loading these tables with data present in the CSV files

7. Moving the data from the DBMS tables to the HDFS using Sqoop:

    - Explore different ways to use the sqoop command

    - How data can be stored in different file formats

8. Creating a Hive database and Hive tables, and loading data into these tables

9. Understanding the Avro and Parquet file formats, and their impact on the performance while running queries

10. Analysing the data by running Hive queries.

11. Starting the hue service to run oozie jobs for orchestrating different steps in the process

12. Performing cleanup:

    - Dropping Hive tables and the Hive database

    - Terminating the EMR cluster and RDS Instance

So now that you have your RDS instance ready and loaded, we can now begin with learning sqoop commands for ingesting this data.
