# Internal and External Tables II

In the previous segment, you learnt how to create internal tables. In this segment, you will learn how to create external tables and how they are stored in the HDFS.

**VIDEO**

The syntax to create an external table is almost the same as that for creating an internal table; you just need to specify the keyword “EXTERNAL” while creating an external table. You can see the query below to create an external table and load data into it:

![1](https://i.ibb.co/dJH55ng/4.png)

Once you have created an external table, you can use the following query to see its location in the HDFS:

![2](https://i.ibb.co/xSKQvyK/5.png)

```shell
hive> create external table if not exists user_info_external (id int, age int, gender string, profession string, reviews int) row format delimited fields terminated by '|' lines terminated by '\n' stored as textfile;
OK
Time taken: 0.177 seconds
hive> load data local inpath '/home/hadoop/u.user' into table user_info_external;
Loading data to table demo.user_info_external
OK
Time taken: 0.377 seconds
hive> exit;
[hadoop@ip-172-31-31-128 ~]$ hadoop fs -ls
Found 1 items
drwxr-xr-x   - hadoop hdfsadmingroup          0 2022-03-26 17:58 .hiveJars
[hadoop@ip-172-31-31-128 ~]$ hadoop fs -ls /user/hive/warehouse/
Found 3 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 18:28 /user/hive/warehouse/demo.db
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 18:07 /user/hive/warehouse/demo2.db
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 18:13 /user/hive/warehouse/demo3.db
[hadoop@ip-172-31-31-128 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db
Found 2 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 18:23 /user/hive/warehouse/demo.db/user_info
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 18:29 /user/hive/warehouse/demo.db/user_info_external
```

So, there are three databases, namely, demo, demo2 and demo3, that have been created in the Hadoop warehouse. And the database ‘demo’ contains the internal (user_info) and external (user_info_external) tables.

Now, let us learn how to drop the internal and external tables.

**VIDEO**

So, in the video, Vishwa wrote the following query to see the tables available in the demo database:

![3](https://i.ibb.co/Fbz7G3Y/6.png)

You can use the _“**drop table table_name**”_ command to drop the tables, as shown in the snapshot below:

![4](https://i.ibb.co/Y7CTw19/7.png)

![5](https://i.ibb.co/ngyjRw9/8.png)

```shell
[hadoop@ip-172-31-31-128 ~]$ hive

Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j2.properties Async: false
hive> use demo;
OK
Time taken: 2.172 seconds
hive> show tables;
OK
user_info
user_info_external
Time taken: 0.58 seconds, Fetched: 2 row(s)
hive> drop table user_info;
OK
Time taken: 0.308 seconds
hive> select * from user_info;
FAILED: SemanticException [Error 10001]: Line 1:14 Table not found 'user_info'
hive> drop table user_info_external;
OK
Time taken: 0.106 seconds
hive> select * from user_info_external;
FAILED: SemanticException [Error 10001]: Line 1:14 Table not found 'user_info_external'
hive> exit;
[hadoop@ip-172-31-31-128 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db
Found 1 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 18:29 /user/hive/warehouse/demo.db/user_info_external
```

You can see that although the internal table data has been deleted from the HDFS, the external table data is still there, even after you dropped the external table.

In the next segment, you will learn how to perform alter table operations and how you can copy the data of one table to another table using HQL commands.

#### Internal and External Tables

Qn: Which of the following statements about dropping internal and external tables is correct?

- When you drop an internal table, both the metadata and the table data get deleted.

- When you drop an internal table, only the actual table data gets deleted from the HDFS; you can find the schema information of that table in the Hive metastore.

- When you drop an external table, only the schema gets deleted from the Hive metastore.

- When you drop an external table, only the actual table data gets deleted from the HDFS; the schema is stored in Hive metastore itself.

Ans: A & C.

- _When you drop an internal table, both the schema and the actual table data get deleted from the metastore and the HDFS, respectively._

- _When you drop an external table, only the schema information gets deleted from the Hive metastore._

Qn: Which of the following tables will be created if you do not specify any keyword such as “INTERNAL” or “EXTERNAL” while creating the table DDL statement?

- An Internal/managed table

- An External table

- An Error message

Ans: A. _By default, any table you create is an internal table in Hive._

Qn: Suppose you are the branch manager at a particular branch of a bank. You want to perform an analysis on your customers and want to find out those who have not paid their loan installments for 6 months. You create a table of the customers, which contains information such as name, loan amount, date of payment of the last instalment, amount remaining, loan type, etc. Suppose this data is also relevant to the marketing team for contacting the customers for promoting various banking schemes.

Based on the scenario above, which table type you would prefer creating?

- An Internal table

- An External table

- Any type of table can be created as if you drop the table, only schema information gets deleted.

Ans: B. _When you create an external table and drop it, only the schema gets deleted. Hence, even if you delete the table, other teams, such as the marketing team, will find it in the HDFS._

Next, you will learn about storage location analysis of internal and external tables in the HDFS:
