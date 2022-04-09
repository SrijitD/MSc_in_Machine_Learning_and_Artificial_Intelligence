# Summary

Let us summarise what you have learned in this case study.  

You learned about the ETL process. ETL stands for Extract, Transform, Load. In the ETL process, data is first extracted from source systems and stored in a staging area. It is then subjected to a couple of steps through which it is cleaned and put in the required format, and, finally, it is loaded into a data warehouse. ETL is generally used as a data ingestion process for loading data into a warehouse.

![ETL Process](https://i.ibb.co/4K2PgCY/ETL-Process-Case-Study.png)

Following this, you learned about Data ingestion. Data ingestion is the process of accessing and importing data for immediate use or storage from one system to another. Sqoop and Flume are common tools used for data ingestion.

In this case study, we have used data ingestion tools, namely Sqoop, for ingesting the data from the RDBMS. The dataset was of a Telecom company which consisted of the following :

- CRM (Customer Relationship Management) data
- Devices data
- Revenue data

The steps followed in this session were as follows:

- Launching an EMR cluster with Hive, oozie and sqoop services
- Creating an RDS instance and connecting with it
- Creating tables on the RDS instance
- Loading the RDS tables with data

With this, you come to the end of the source setup. In the next session, you will start building the pipeline by first moving the data from the DBMS tables to the HDFS using sqoop. Then, creating a Hive database and Hive tables and loading data into these tables. You will also understand the importance of different file formats and their impact on performance. Finally, you will learn how to orchestrate different steps in the process
