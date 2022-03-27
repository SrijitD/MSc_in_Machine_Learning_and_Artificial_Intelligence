# Static Partitioning

You learnt about indexing in the previous session, which is a basic method to optimise queries in Hive. In this segment, you will learn about partitioning.

Most of you are familiar with the Harry Potter series. If you are fond of reading, then it is a bestselling fantasy novel series by J. K. Rowling. It is a series of seven books.

Now, suppose you are given all the seven parts in a single book and asked to find a specific scene from, say, the fifth part. It will be a tedious task for you to find a scene in a single thick book.

Hence, the makers of Harry Potter divided this into seven volumes so that you can read it one by one. This is the basis of partitioning in the big data world. Let’s understand partitioning in detail in the following video.

**VIDEO**

So, in the video above, you saw a table with **id, age, gender, profession** and **ratings** as attributes. Suppose you want to count the total ratings for the profession equal to doctor. Then, each and every row will be checked in order to aggregate the ratings. This is a time-consuming task, as it will also have to read the data for a profession that is not equal to 'doctor'.

What if all the doctors were in a separate table?

This is where the concept of partitioning comes into play. You can partition this table into various tables based on the profession. So, when you query for a particular profession, it simply reads that partition only, not the entire table.

There are basically two types of partitioning:

- **Static partitioning**: In static partitioning, you need to load the data manually in the partitions.

- **Dynamic partitioning**: In dynamic partitioning, the data gets automatically allocated to the partitions.

The image given below summarises partitioning in Hive.

![Hive - Types of partitioning ](https://i.ibb.co/0ZCSr3q/HIVE-Types-of-Partitioning.jpg)

Here, bucketing is a technique where the tables or partitions are further sub-categorized into buckets for better structure of data and efficient querying. It basically puts data into more manageable or equal parts.

Bucketing would be preferred over partitioning when the number of possible values of the field is high and the data is spread evenly among the buckets.

You will have a better understanding of the two types of partitioning when Vishwa gives you a practical demonstration.

In the next video, you will understand static partitioning with a practical demonstration.

**VIDEO**

You can see that the syntax to apply partition in the table is as follows:

![20](https://i.ibb.co/PM5PfQx/20.png)

In this way, you create a static partition in which you need to add the data manually.

![21](https://i.ibb.co/Jmwgc1P/21.png)

Here, you can see that the data related to profession equal to ‘engineer’ is added manually.

In the next image, you can see the partition that has been created on ‘engineer’ and ‘doctor’ manually.

![22](https://i.ibb.co/rp8McXd/22.png)

```shell
hive> create table if not exists part_user_info (id int, age int, gender string, ratings int) partitioned by (profession string) row format delimited fields terminated by '|' lines terminated by '\n';
OK
Time taken: 0.155 seconds
hive> insert into table part_user_info partition (profession='engiener') select id, gender, age, reviews from user_info where profession='engineer';
Query ID = hadoop_20220327210820_27a793d9-2c28-440d-a714-9cdc00da7911
Total jobs = 1
Launching Job 1 out of 1
Tez session was closed. Reopening...
Session re-established.
Status: Running (Executing on YARN cluster with App id application_1648410869414_0008)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 01/01  [==========================>>] 100%  ELAPSED TIME: 6.29 s
----------------------------------------------------------------------------------------------
Loading data to table demo.part_user_info partition (profession=engiener)
OK
Time taken: 21.25 seconds
[hadoop@ip-172-31-24-155 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db/part_user_info
Found 1 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 21:08 /user/hive/warehouse/demo.db/part_user_info/profession=engiener

[hadoop@ip-172-31-24-155 ~]$ hive

Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j2.properties Async: false
use demohive> use demo;
OK
Time taken: 1.167 seconds
hive> insert into table part_user_info partition (profession='doctor') select id, gender, age, reviews from user_info where profession='doctor';
Query ID = hadoop_20220327211457_c69902fa-6d10-4183-9d45-eda7451401e9
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648410869414_0011)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 01/01  [==========================>>] 100%  ELAPSED TIME: 6.29 s
----------------------------------------------------------------------------------------------
Loading data to table demo.part_user_info partition (profession=doctor)
OK
Time taken: 13.592 seconds
hive> exit;
[hadoop@ip-172-31-24-155 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db/part_user_info
Found 2 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 21:15 /user/hive/warehouse/demo.db/part_user_info/profession=doctor
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 21:08 /user/hive/warehouse/demo.db/part_user_info/profession=engiener
```

In the next segment, you will understand the concept of dynamic partitioning.

#### Partitioning

Qn: Suppose a table has a column 'year', which includes the years from 2001 to 2010. Now, suppose you create partitions on the 'year' column. How many partitions will be created when you use static partitioning?

- A total of 10 partitions will be created in which you have to put the data manually.

- If you put data for only 2005 and 2006 manually in static partitioning, then only two partitions will be created.

- If a new year is included in the list, say 2011, then in static partitioning, a new partition will be created automatically.

- If a new year is included in the list, say 2011, then unless you enter the data manually in the 2011 partition, no data will be allocated automatically.

Ans: B & D. *In static partitioning, you have to put the data manually, and it depends on the user how many partitions he/she wants to create in static partitioning. There is no automatic allocation of partitions in static partitioning. Hence, when a new year is included, say 2011, no data will be allocated automatically.*

Qn: Which type of partitioning is allowed by default in Hive?

- Static partitioning

- Dynamic partitioning

- Each time, you have to assign the partitioning that you want to create.

Ans: A. *By default, static partitioning is allowed in Hive.*

Qn: Select the correct statement below.

- In static partitioning, suppose you create partitions for a doctor, an engineer and an artist as demonstrated in the above videos. Then, it will create folders for all the professions in Hadoop, but the data will go only into the defined folders of doctor, engineer and artist.

- In static partitioning, suppose you create partitions for a doctor, an engineer and an artist as demonstrated in the above videos. Then, it will create files for all the professions in Hadoop, but the data will go only into the defined files of doctor, engineer and artist.

- In static partitioning, suppose you create partitions for a doctor, an engineer and an artist as demonstrated in the above videos. Then, it will create three folders in Hadoop to store such partitions.

- In static partitioning, suppose you create partitions for a doctor, an engineer and an artist as demonstrated in the above videos. Then it will create three files in Hadoop to store such partitions.

Ans: C. *If you create partitions for a doctor, an engineer and an artist in static partitioning, then it will create three folders in Hadoop.*
