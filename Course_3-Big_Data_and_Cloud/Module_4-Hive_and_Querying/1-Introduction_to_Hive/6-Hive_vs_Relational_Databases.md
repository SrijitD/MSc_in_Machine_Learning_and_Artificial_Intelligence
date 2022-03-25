# Hive vs Relational Databases

In the previous segments, you learnt about the features and architecture of Hive. Now, you will understand the basic difference between Hive and RDBMS.

Let’s hear from Vishwa and learn how Hive is different from RDBMS.

**VIDEO**

Let’s go through the differences between Hive and RDBMS:

![Hive vs Relational Database](https://i.ibb.co/qkLSQL4/Hive-vs-Relational-Database.png)

![Hive vs RDBMS](https://i.ibb.co/1G6Nb7k/Hive-vs-Relational-Database-2.jpg)

So, these are the major differences between the RDBMS and Hive.

#### Hive Vs RDBMS

Qn: What do you understand by the phrase ‘Hive works on the schema on read’? And it is different from “Schema on write”? And how is this function different from ‘schema on write’?

Ans: *In Hive, you have to define the schema every time you want to read the data from the HDFS in order to perform the operations on the data set. On the other hand, RDBMS functions on ‘schema on write’, which means the relations between the contents of the tables are predefined at the time of writing the data into those tables.*

Qn: Based on your understanding of Hive and RDBMS, which of the following statements is correct:

1. In Hive, you can delete or update/change the data from the HDFS multiple times.

2. In RDBMS, you can only append the data but cannot delete or update it from the databases.

- 1, 2

- Only 1

- Only 2

- None of the above

Ans: D. *This statement is correct, as Hive is just the pointer to the HDFS. You cannot delete or update the data in the HDFS using Hive. However, in RDBMS, you can alter the data completely.*

Qn: Choose the correct statements from the options given below

- Hive is used to perform static data analysis, which means you cannot perform transactional level operations on Hive.

- In RDBMS, you can perform both OLTP and OLAP operations.

- In RDBMS, every time you want to read the data, you have to define the schema of the tables.

- Predefined schemas are available in the HDFS. All you need to do is read those schemas into the metastore and perform the query into the HDFS.

- Data integrity is essential in RDBMS systems.

Ans: A, B & D.

- *Hive is meant for performing OLAP operations. It is mainly used for analytical purposes. This means you cannot perform transactional level operations in the HDFS using Hive.*

- *RDBMS supports both OLTP and OLAP operations.*

- *As RDBMS works on ‘schema on write’, data integrity becomes extremely important.*
