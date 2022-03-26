# Operations on Tables

So far, you have got a clear understanding of internal and external tables and learnt how to create and load data into them.

In this segment, we will learn about a very crucial aspect of creating tables and loading data into them. So, let us watch the next video and understand what happens when you create a table with the wrong data type of the attributes in it.

**VIDEO**

So, in the video above, you saw that the data type of gender is defined as integer. And when you load the data from the HDFS into the table and then print it using the ‘select’ command, you find that the ‘gender’ column contains NULL values. This is because you have defined gender as an integer, but its data type in the HDFS is not an integer but string.

```shell
hive> create table if not exists user_info (id int, age int, gender int, profession string, reviews int) row format delimited fields terminated by '|' lines terminated by '\n' stored as textfile ;
OK
Time taken: 1.716 seconds
hive> load data local inpath '/home/hadoop/u.user' into table user_info;
Loading data to table default.user_info
OK
Time taken: 0.84 seconds
hive> select * from user_info limit 5;
OK
1    24    NULL    technician    85711
2    53    NULL    other    94043
3    23    NULL    writer    32067
4    24    NULL    technician    43537
5    33    NULL    other    15213
Time taken: 2.571 seconds, Fetched: 5 row(s)
```

This is one of the best examples of the “**schema on read**” feature of Hive. You can define any schema while creating tables, but if you do not load the right values into the tables, then you will get such results, as in this case, the table displays NULL values for the gender column. So, you have to be very clever while reading data from the HDFS; you have to define the table in such a way that it complies with all the data type constraints and the order of the columns that have been available in the HDFS.

Now, you will learn about the next operation where you can copy the data of one table into another.

**VIDEO**

#### Operations on Tables

Qn: Can you write a query to copy the data of ‘user-info’ to two separate tables based on the gender? One table should contain information about male users, whereas the other table should contain information about female users.  You need to copy only the id, gender and profession categories from the ‘user_info’ table.

Ans:

```shell
hive> create table if not exists male_users (id int, gender string, profession string);
hive> create table if not exists female_users (id int, gender string, profession string);
hive> from user_info insert into table male_users select id, gender, profession where gender = ‘M’ insert into table female_users select id, gender, profession where gender = ‘F’;
```

So, in the example above, you saw that there is a table “**user-info**” and a new table, namely, “**secondTable**”, has been created, whose attributes are ‘**user_id**’ as integer and ‘**user_profession**’ as string.

![1](https://i.ibb.co/5kmsdwW/9.png)

```shell
hive> use demo;
OK
Time taken: 0.875 seconds
hive> create table if not exists user_info (id int, age int, gender string, profession string, reviews int) row format delimited fields terminated by '|' lines terminated by '\n' stored as textfile ;
OK
Time taken: 2.293 seconds
hive> load data local inpath '/home/hadoop/u.user' into table user_info;
Loading data to table demo.user_info
OK
Time taken: 0.815 seconds
hive> select * from user_info limit 5;
OK
1    24    M    technician    85711
2    53    F    other    94043
3    23    M    writer    32067
4    24    M    technician    43537
5    33    F    other    15213
Time taken: 2.451 seconds, Fetched: 5 row(s)
hive> create table second_table (user_id int, user_profession string) stored as textfile;
OK
Time taken: 0.218 seconds
hive> insert into table second_table select id, profession from user_info;
Query ID = hadoop_20220326190500_c327df04-8e18-4c51-b4eb-b29f69f930a6
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648316642042_0008)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 01/01  [==========================>>] 100%  ELAPSED TIME: 5.87 s
----------------------------------------------------------------------------------------------
Loading data to table demo.second_table
OK
Time taken: 8.659 seconds
hive> select * from second_table limit 5
    > ;
OK
1    technician
2    other
3    writer
4    technician
5    other
Time taken: 0.157 seconds, Fetched: 5 row(s)
hive> exit;
[hadoop@ip-172-31-31-128 ~]$ hadoop fs -ls /user/hive/warehouse/demo.db
Found 3 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 19:05 /user/hive/warehouse/demo.db/second_table
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 19:04 /user/hive/warehouse/demo.db/user_info
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-26 18:29 /user/hive/warehouse/demo.db/user_info_external
```

Once you have created the table, you can use the “**insert**” command to insert data into the newly created table from the already existing table as shown in the query above.

Now, let us proceed to the next part where you will learn how to alter the position of the columns of an existing table.

**VIDEO**

So, as you saw in the video above, the position of the gender column was changed from the second position to the last position using the “alter” command

![10](https://i.ibb.co/zfg1k5J/10.png)

```shell
hive> use demo;
OK
Time taken: 0.111 seconds
hive> describe male_users;
OK
id                   int
gender               string
profession           string
Time taken: 0.322 seconds, Fetched: 3 row(s)
hive> alter table male_users add columns (name string);
OK
Time taken: 0.133 seconds
hive> describe male_users;
OK
id                   int
gender               string
profession           string
name                 string
Time taken: 0.081 seconds, Fetched: 4 row(s)
hive> select * from male_users limit 5;
OK
1 M technician NULL
3 M writer NULL
4 M technician NULL
6 M executive NULL
7 M administrator NULL
Time taken: 3.799 seconds, Fetched: 5 row(s)
hive> alter table male_users change gender gender string after name;
OK
Time taken: 0.138 seconds
hive> describe male_users;
OK
id                   int
profession           string
name                 string
gender               string
Time taken: 0.05 seconds, Fetched: 4 row(s)
```

With this, you have learnt how to create and to manipulate tables.
