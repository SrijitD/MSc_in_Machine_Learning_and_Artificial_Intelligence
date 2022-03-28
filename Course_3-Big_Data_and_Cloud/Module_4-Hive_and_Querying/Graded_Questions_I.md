# Graded Questions I

You have now completed the entire module on Hive. In this session, you will be attempting some graded questions on the topic.

The first segment of graded questions consists of theoretical questions, which are based on the features of Hive, its architecture, Hive vs RDBMS, etc.

#### Introduction to Hive

Qn: Which of the following best describes Hive?

- Hive is a job scheduler.

- Hive is a data warehouse software.

- Hive is a query language.

- Hive is a relational database.

Ans: B. *Hive is a data warehouse software built on top of Hadoop to provide an SQL-like interface. It has access to the data stored in Hadoop and can query and process this data using MapReduce.*

Qn: Which of the following is **not** one of the features of Hive?

- Hive stores the processed data in HDFS and the schema in the Hive Metastore.

- The Hive infrastructure provides an SQL-like query language called the Hive Query Language.

- The Hive infrastructure consists of a metastore storage, which stores information about the data, including the schema and location of the data. This metastore is created in the HDFS system itself.

- The Hive Metastore does not share the same disk space with HDFS; it has separate storage from the Hadoop file system. The Metastore is a central repository that stores all the information on the Hive tables.

Ans: C. *The Hive Metastore has its own disk storage, which is separate from HDFS.*

#### Hive vs RDBMS

Qn: Which of the following statements is correct about Hive and the RDBMS infrastructure?

- Hive is based on read once and write many times, but RDBMS is based on read and write many times.

- Hive is suitable to be used for OLTP systems

- Hive does not consist of a predefined schema of the tables, and you need to define the schema every time to perform OLAP operations.

- RDBMS is based on write once and read many times, but Hive is based on read and write many times.

Ans: C. *In Hive, you need to create the schema each time you perform OLAP operations.*

#### Hive

Qn: Select the correct statement from the following based on the fact that “Hive works upon schema on read”. (Note: Multiple options may be correct.)

- Data of varying sizes and shapes is dumped into the HDFS and can be retrieved by creating the schema according to the requirement.

- Information on the schema is available in the HDFS when you are dumping data into the HDFS.

- The schema is created when data is required for a particular purpose. It is called a schema on read because the schema is defined at the time of reading the data.

- RDBMS also works upon schema on read.

Ans: A & C. *Data is dumped into the HDFS in an unstructured format and can be fetched after creating the schema according to the need.*

#### Internal and External Tables

Qn: Select the correct statement about internal and external tables. (Note: Multiple options may be correct.)

- When you drop an internal table in Hive, it simply deletes the metadata information as well as the table data.

- When you drop an external table, it drops the metadata information of that table; it does not touch the table data at all. This means that it keeps the table data present in the HDFS untouched, but Hive is ignorant of that data now.

- The data of both the internal and external tables is moved into the Hive Metastore.

- Internal tables’ data is stored in the Hive warehouse directory, but external tables are created in the HDFS itself.

Ans: A & B.

- *Internal tables are stored in the Hive warehouse directory, and deleting the internal table drops the metadata information as well as table data from the Hive warehouse directory.*

- *External tables are stored in the HDFS itself, and dropping an external table simply deletes the metadata information from the Hive warehouse directory and makes Hive unknown to the external tables.*
