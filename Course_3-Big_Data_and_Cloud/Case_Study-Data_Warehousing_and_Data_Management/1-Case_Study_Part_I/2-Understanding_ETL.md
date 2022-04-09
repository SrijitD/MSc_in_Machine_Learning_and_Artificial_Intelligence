# Understanding ETL

In the previous module, you learnt how data can be stored in a data warehouse such as Hive. However, an important point to note here is that you need to clean the data and ensure that it conforms to your business requirements before storing it in the data warehouse. The entire process of extracting data from the respective sources, cleaning the data and loading it into the data warehouse is known as the ETL (Extract, Transform, Load) process. Let's learn more about this process in the following video.

**VIDEO**

In the ETL process, data is first extracted from source systems and stored in a staging area. It is then subjected to a couple of steps through which it is cleaned and put in the required format, and, finally, it is loaded into a data warehouse. ETL is generally used as a data ingestion process for loading data into a warehouse.

![ETL](https://i.ibb.co/hmZPC47/ETL.jpg)

The ETL process essentially comprises of three stages:

- **Extract**: This is the stage in which relevant data is extracted from various sources.

- **Transform**: This is the stage where the data is cleaned and converted in the required format. Some of the tasks carried out in this stage include the following:

  - Calculating a new measure

  - Cleaning the data

  - Filtering the data

  - Splitting a column into multiple columns

  - Merging data from different sources

- **Load**: This is the stage in which the cleaned data is loaded into the data warehouse for consumption purposes.

The ETL process diagram is given below:

![ETL Process](https://i.ibb.co/7zdF5HJ/ETL-Process.png)

A critical component of the ETL process is it's staging areas. These staging areas are the temporary data reservoirs. Raw data extracted from various data sources are temporarily stored in the first staging area. The data in the first staging area is then passed through multiple cleaning and conforming steps in the 'transform' stage and is loaded into the second staging area. An important point to note is that the number of staging areas used for ETL process depends on the complexity of the ETL process and may vary from problem to problem. For example, if the size of data is manageable and the storage is expensive - it is possible that the data is transformed on the fly and loaded directly from source to data warehouse.

Oozie, sqoop and hive are the tools that are used in the process.

[Oozie](https://oozie.apache.org/docs/4.3.1/DG_Overview.html) makes it easy to schedule and coordinate Hadoop jobs (such as MapReduce, Sqoop, Hive jobs), track job progresses, and recover from failures. Most importantly, Oozie is very scalable as it can run hundreds or even thousands of jobs concurrently!

[Sqoop](http://sqoop.apache.org/) is an open source software designed to transfer data between relational and Hadoop database systems.

In the upcoming segments, you will learn how to build a basic ETL pipeline and load data into Hive tables to perform further analysis. You will also learn about file formats and their importance while reading, writing, and processing data. Some of the standard file formats used in the Hadoop ecosystem are Avro and parquet files. You will understand their impact on the query performance in the latter part of the module.

**Additional reading**

[Why do we need staging areas for the ETL process?](https://stackoverflow.com/questions/21010045/benefits-of-using-staging-database-while-designing-data-warehouse)

#### Staging Area in the ETL Process

Qn: What is/are the minimum number of staging areas that are required to build the most basic ETL pipeline?

Ans: *Zero. The number of staging areas required for the ETL process depends on the complexity of the process.*
