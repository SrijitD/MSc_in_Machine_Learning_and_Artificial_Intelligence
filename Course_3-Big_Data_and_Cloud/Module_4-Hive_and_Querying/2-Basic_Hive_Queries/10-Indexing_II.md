# Indexing II

In this segment, we will take a look at the demonstration part of indexing and learn how to create indexes. You will understand how it reduces the query time.

**VIDEO**

So, in the video, you learnt how to create indexes. You need to understand the following points while creating indexes:

- **Compact Keyword**: Using this keyword, you can specify the type of indexing that you are going to use for a particular column. For bitmap indexing, you need to use the BITMAP keyword.

- **Deferred Rebuild**: This is used to defer the process of indexing for the future stage, which means indexing is not active currently. If you want to make the indexing active, then you need to write the following query separately:  
  `alter index i1 on user_info rebuild ;`

Now, let’s do a comparative analysis of the time taken to process a query with and without indexing. Vishwa wrote a query for printing the data of all the male doctors. As you saw in the video, without indexing, it took around 0.174 seconds to process the query, whereas, with indexing, it took approximately 0.162 seconds. Therefore, you can conclude that indexing reduces latency.

Now, let's watch a demonstration of bitmap indexing in the next video.

**VIDEO**

As explained in the video, there are different ways to store the index. You can create index i2 using the command to store as a rcfile format.

_**create index i2 on table user_info(profession) as 'COMPACT' with deferred rebuild stored as rcfile ;**_

Here rcfile (Record Columnar File) stores table data in a flat file consisting of binary key/value pairs. You can read about it [here.](https://cwiki.apache.org/confluence/display/Hive/RCFile)  

To make the indexing active, then you need to write the following query separately:  
`alter index i2 on user_info rebuild ;`

In order to create a bitmap index, you need to use the 'BITMAP' keyword.

You can do so using the following command.

_**create index i2 on table user_info(profession) as 'BITMAP' with deferred rebuild**_

To bring it into action i3 is needed to be rebuilt using the following command.

`alter index i3 on user_info rebuild ;`

So, the same table can have multiple types of indexes. To print a list of all the indexes that have been created on the table 'user_info', you can use the following query:

`show formatted index on user_info;`

So, the three indexes created on the profession column are named i1, i2 and i3. Out of these, i3 is a bitmap index. Now, let’s take a look at the query time when you are using ‘BITMAP’ indexing instead of ‘COMPACT’ indexing.

In the next video, you will learn more about indexing.

**VIDEO**

Vishwa has written a query to calculate the average ratings of the profession ‘doctor’.

The query is:

`select avg(ratings) as avg_ratings from user_info where profession = ‘doctor’ ;`

By default, the i1 index will be executed, as it was created first. And the query time was 28.121 seconds.

```shell
[hadoop@ip-172-31-31-128 ~]$ hive

Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j2.properties Async: false
hive> set hive.execution.engine;
hive.execution.engine=tez
hive> set hive.execution.engine=mr;
Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
hive> use demo
    > ;
OK
Time taken: 1.16 seconds
hive> show tables;
OK
female_users
male_users
second_table
user_info
Time taken: 0.439 seconds, Fetched: 4 row(s)
hive> select * from user_info limit 5;
OK
1    24    M    technician    85711
2    53    F    other    94043
3    23    M    writer    32067
4    24    M    technician    43537
5    33    F    other    15213
Time taken: 2.773 seconds, Fetched: 5 row(s)
hive> select * from user_info where profession = 'doctor' and gender = 'F';
OK
Time taken: 0.942 seconds
hive> select * from user_info where profession = 'doctor' and gender = 'M';
OK
138    46    M    doctor    53211
251    28    M    doctor    85032
299    29    M    doctor    63108
427    51    M    doctor    85258
841    45    M    doctor    47401
845    64    M    doctor    97405
935    42    M    doctor    66221
Time taken: 0.238 seconds, Fetched: 7 row(s)
hive> create index i1 on table user_info (profession) as 'COMPACT' with deferred rebuild;
OK
Time taken: 0.262 seconds
hive> alter index i1 on user_info rebuild;
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = hadoop_20220326214644_fd011164-f251-455c-83d7-0e648658796c
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1648316642042_0022, Tracking URL = http://ip-172-31-31-128.ec2.internal:20888/proxy/application_1648316642042_0022/
Kill Command = /usr/lib/hadoop/bin/hadoop job  -kill job_1648316642042_0022
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2022-03-26 21:46:55,870 Stage-1 map = 0%,  reduce = 0%
2022-03-26 21:47:03,201 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.92 sec
2022-03-26 21:47:11,445 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 5.2 sec
MapReduce Total cumulative CPU time: 5 seconds 200 msec
Ended Job = job_1648316642042_0022
Loading data to table demo.demo__user_info_i1__
MapReduce Jobs Launched:
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 5.2 sec   HDFS Read: 32440 HDFS Write: 7294 SUCCESS
Total MapReduce CPU Time Spent: 5 seconds 200 msec
OK
Time taken: 29.019 seconds
hive> select * from user_info where profession = 'doctor' and gender = 'M';
OK
138    46    M    doctor    53211
251    28    M    doctor    85032
299    29    M    doctor    63108
427    51    M    doctor    85258
841    45    M    doctor    47401
845    64    M    doctor    97405
935    42    M    doctor    66221
Time taken: 0.179 seconds, Fetched: 7 row(s)
hive> create index i2 on table user_info (profession) as 'COMPACT' with deferred rebuild stored as rcfile;
OK
Time taken: 0.318 seconds
hive> create index i3 on table user_info (profession) as 'BITMAP' with deferred rebuild;
OK
Time taken: 0.188 seconds
hive> alter index i2 on user_info rebuild;
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = hadoop_20220326215722_d0181a5c-ad00-4302-89a7-0663706727d7
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1648316642042_0023, Tracking URL = http://ip-172-31-31-128.ec2.internal:20888/proxy/application_1648316642042_0023/
Kill Command = /usr/lib/hadoop/bin/hadoop job  -kill job_1648316642042_0023
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2022-03-26 21:57:34,045 Stage-1 map = 0%,  reduce = 0%
2022-03-26 21:57:42,301 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 3.02 sec
2022-03-26 21:57:50,495 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 5.64 sec
MapReduce Total cumulative CPU time: 5 seconds 640 msec
Ended Job = job_1648316642042_0023
Loading data to table demo.demo__user_info_i2__
MapReduce Jobs Launched:
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 5.64 sec   HDFS Read: 32458 HDFS Write: 5164 SUCCESS
Total MapReduce CPU Time Spent: 5 seconds 640 msec
OK
Time taken: 29.25 seconds
hive> alter index i3 on user_info rebuild;
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = hadoop_20220326215759_b60c52cf-5842-4a0b-b4cb-f62c517afda9
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1648316642042_0024, Tracking URL = http://ip-172-31-31-128.ec2.internal:20888/proxy/application_1648316642042_0024/
Kill Command = /usr/lib/hadoop/bin/hadoop job  -kill job_1648316642042_0024
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2022-03-26 21:58:09,664 Stage-1 map = 0%,  reduce = 0%
2022-03-26 21:58:16,840 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.34 sec
2022-03-26 21:58:25,064 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 5.56 sec
MapReduce Total cumulative CPU time: 5 seconds 560 msec
Ended Job = job_1648316642042_0024
Loading data to table demo.demo__user_info_i3__
MapReduce Jobs Launched:
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 5.56 sec   HDFS Read: 33319 HDFS Write: 115713 SUCCESS
Total MapReduce CPU Time Spent: 5 seconds 560 msec
OK
Time taken: 27.415 seconds
hive> show formatted index on user_info;
OK
idx_name             tab_name             col_names            idx_tab_name         idx_type             comment


i1                   user_info            profession           demo__user_info_i1__ compact
i2                   user_info            profession           demo__user_info_i2__ compact
i3                   user_info            profession           demo__user_info_i3__ bitmap
Time taken: 0.084 seconds, Fetched: 6 row(s)
```

Now, to check the query time in the case of Bitmap indexing, you need to first drop the i1 and i2 indexes. The query to drop the indexes is:

`drop index i1 on user_info ;`

Now, Vishwa ran the same query to calculate the average ratings of the 'doctor' profession using Bitmap indexing. And the query time was 29.024 seconds.

Therefore, compact indexing gave the lesser query time on this data set.

**Please note:**

Indexing is a query optimisation technique, where you can reduce the time of the query. There are two types of indexing: Compact indexing and Bitmap indexing. However, in the newer version, i.e., Hive 3.x, there is no concept of indexing. It instead uses alternatives such as materialized views and columnar file formats which does the job of indexing. Refer to this [link](https://cwiki.apache.org/confluence/display/Hive/LanguageManual+Indexing) to read more about it. You can find the reasons behind removing indexing in this [link](https://issues.apache.org/jira/browse/HIVE-18448). But in industries Hive 2.x is still predominantly in use, and indexing is used for query optimisation.

#### Indexing

Qn: Choose the correct statement from the options given below:

- Indexing is great for write-heavy applications.

- Indexing is great for read-heavy applications.

- You can assign a single index to a group of multiple columns.

- Indexing reduces the execution time of the queries.

Ans: B, C & D.

- _Indexing is suitable for read-heavy applications where you need to read the data more frequently._

- _You can have a single index value for a group of columns._

- _Indexing reduces the query time, as the searching time in Big Data is reduced by creating a separate reference table to locate the rows in the original table._

Qn: Which of the following statements is correct?

**A. Bitmap indexing** stores the pair of indexed column’s value and its block id.

**B. Compact indexing** stores the combination of indexed column value and list of rows as a bitmap.

- A

- B

- Both

- None of the above

Ans: D. _Both the statements are incorrect, because Compact indexing stores the pair of indexed column’s value and its block id, whereas Bitmap indexing stores the combination of indexed column value and list of rows as a bitmap._
