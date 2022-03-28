# Bucketing

In the previous segment, you learnt about the partitioning, which is one of the query optimisation techniques. In this segment, you will learn about another query optimisation technique, “Bucketing”.

First, let us watch the next video and try to understand bucketing theoretically.

**VIDEO**

As explained in the video, even after partitioning the amount of data to be queried may still be humongous. In that case bucketing comes into picture, which essentially breaks down data into ranges or buckets to give it some structure. The data is stored in equal-sized buckets and is faster in certain kinds of queries.

So, let’s perform the queries to understand bucketing.

**VIDEO**

Now, let’s understand the queries to create buckets:

- One point that you need to keep in mind is that bucketing is separate from partitioning. But in general practice, you first create partitions and then buckets.

- In the video, you can see that the partitions have been created based on gender. Then for each gender, seven buckets have been created based on ‘age’ in the “buck_user_info” table.  
  ![27](https://i.ibb.co/dr7DGD2/27.png)

- Once you have created the tables, you need to load the data into them. Following is the query to copy the data from the already created “user_info” table to the “buck_user_info” table:
  ![28](https://i.ibb.co/fNs49c2/28.png)

- Now, let us try to understand the memory locations in Hadoop where these buckets are created:
  
  - Let us first see the partitions based on gender:  
    ![29](https://i.ibb.co/F57jRLN/29.png)  
    So, you can see that two partitions, namely, ‘M’ and ‘F’, have been created based on gender.
  
  - Now, let’s take a look at the memory location of the buckets for the female partitions:  
    ![30](https://i.ibb.co/pJS76HM/30.png)

    Here, you can see that in the female partition folder, seven files have been created, which correspond to the bucketing on the basis of age.

One of the very basic differences between bucketing and partitioning is that when you create partitions, new folders are created for each partition, but in the case of bucketing, multiple files (buckets) are created inside a single folder.

In the next video, you will see a comparison of the query time when using a non-bucketed table with the query time using a bucketed table.

**VIDEO**

Let us understand the problem statement.

“What are the total ratings given by males and females aged less than 35 years who belong to the artist profession?”

You have two tables, of which one is a non-partitioned/bucketed table, whereas the other one is bucketed:

- **user_info**: This is a **non-bucketed** table. If you want to find out the total ratings of both the genders separately for age less than 35 years for the artist profession, then you can run the following query:
  
  `select gender, sum(ratings) as total_ratings from user_info where profession= ‘artist’ and age < 35 group by gender;`
  
  The time of the query works out to be 19.611 seconds.

- **buck_user_info**: This is a **bucket table** based on age and gender.  If you want to find out the total rating of both the genders separately for the artist profession with age less than 35 years, then you can run the following query:
  
  `select gender, sum(ratings) as total_ratings from buck_user_info where profession= ‘artist’ and age < 35 group by gender;`
  
  The time of the query works out to be 8.028 seconds.

Hence, using bucketing, you can reduce the query running time and optimise your queries.

```shell
hive> create table if not exists buck_user_info (id int, age int, profession string, ratings int) partitioned by (gender string) clustered by (age) into 7 buckets row format delimited fields terminated by '|' lines terminated by '\n' stored as textfile;
OK
Time taken: 0.583 seconds

hive> insert into table buck_user_info partition (gender) select id, age, profession, reviews, gender from user_info;
Query ID = hadoop_20220327220750_a7050f78-1a8d-4662-ba2b-7942af054bdf
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648410869414_0017)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 02/02  [==========================>>] 100%  ELAPSED TIME: 7.81 s
----------------------------------------------------------------------------------------------
Loading data to table demo.buck_user_info partition (gender=null)

Loaded : 2/2 partitions.
     Time taken to load dynamic partitions: 0.531 seconds
     Time taken for adding to write entity : 0.003 seconds
OK
Time taken: 13.979 seconds
hive> exit;

[hadoop@ip-172-31-24-155 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db
Found 6 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 20:08 /user/hive/warehouse/demo.db/department
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 21:40 /user/hive/warehouse/demo.db/dyn_part_user_info
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 20:08 /user/hive/warehouse/demo.db/employee
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 21:49 /user/hive/warehouse/demo.db/part_user_info
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 21:03 /user/hive/warehouse/demo.db/user_info
[hadoop@ip-172-31-24-155 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db/buck_user_info
Found 2 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=M
[hadoop@ip-172-31-24-155 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db/buck_user_info/gender=F
Found 7 items
-rwxrwxrwt   1 hadoop hdfsadmingroup       1029 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F/000000_0
-rwxrwxrwt   1 hadoop hdfsadmingroup       1000 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F/000001_0
-rwxrwxrwt   1 hadoop hdfsadmingroup        980 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F/000002_0
-rwxrwxrwt   1 hadoop hdfsadmingroup        640 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F/000003_0
-rwxrwxrwt   1 hadoop hdfsadmingroup        763 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F/000004_0
-rwxrwxrwt   1 hadoop hdfsadmingroup        769 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F/000005_0
-rwxrwxrwt   1 hadoop hdfsadmingroup        782 2022-03-27 22:08 /user/hive/warehouse/demo.db/buck_user_info/gender=F/000006_0

hive> select gender, sum(reviews) as total_ratings from user_info where profession='artist' and age < 35 group by gender;
Query ID = hadoop_20220327221152_2a0ce7c0-8afc-4c85-9ea1-59c74bfbb8a5
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648410869414_0018)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 02/02  [==========================>>] 100%  ELAPSED TIME: 7.26 s
----------------------------------------------------------------------------------------------
OK
F   537000
M   444065
Time taken: 10.854 seconds, Fetched: 2 row(s)
hive> select gender, sum(ratings) as total_ratings from buck_user_info where profession='artist' and age < 35 group by gender;
Query ID = hadoop_20220327221222_0b1594b1-b7c5-49c2-9d15-e9649dd374e4
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648410869414_0018)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 02/02  [==========================>>] 100%  ELAPSED TIME: 6.41 s
----------------------------------------------------------------------------------------------
OK
F   537000
M   444065
Time taken: 7.416 seconds, Fetched: 2 row(s)
```

Now, an important point that you need to understand is when to use partitioning and when  to use bucketing. When the cardinality of a particular column is high, you should use bucketing on that column. Partitioning is preferable when the cardinality of a column is low.

#### Bucketing

Qn: Choose the correct statement from the options below.

- Bucketing is preferable when there is high cardinality in the column.

- Once you perform bucketing in Hive, it creates bucketed files in the Hadoop system.

- It is a query optimisation technique.

- Bucketing is done only after partitioning.

Ans: A, B & C.

- *Bucketing is preferable when there is high cardinality in a column, whereas partitioning is preferable when the cardinality of a column is low.*

- *On bucketing a table, multiple files are created inside Hadoop.*

- *Bucketing is a query optimisation technique, as it divides the whole data into groups and makes it easy for queries to find the required answers.*
