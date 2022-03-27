# Joins in Hive

You learnt about joins in the previous module in a detailed manner. In this segment, you will learn more about joins using Hive, and you will be introduced to a special type of join: map join, which is used to optimise joins in Hive.

Let’s first understand the concept of joins from Vishwa in the following video.

**VIDEO**

You learnt from the above video that any operation that occurs in Hive uses mappers as well as reducers. The reducer takes time to perform its operation. In the case of joins, both the mapper and the reducer work simultaneously. If you remove the reducer from the operation and then perform the join using only the mapper, you can decrease the query time. This is called '**map join**'.

In the next videos, you will see how you can join two tables. To understand joins, Vishwa has taken separate examples for '**employee**' and '**department**' tables.

[Employee_Data_S3_Link](employee)

[Department_Data_S3_Link](dept)

Let's first try to understand the concept of map join in Hive. There are two ways to perform map join and let's understand them one by one

**Map Join Method: 1**

You need to specify the below command before performing the map join operation:

`hive> set hive.auto.convert.join=true;`

You can refer to this [link](https://docs.qubole.com/en/latest/user-guide/engines/hive/hive-mapjoin-options.html) to understand more about the above-mentioned command.

By default, the _**hive> set hive.auto.convert.join**_ is set as true in the Hive and when it is enabled, during joins and when the table size is small like less than 25 MB, the joins are converted to map-based joins. And that’s why in the next video, you will see that it is giving the result of join operation by doing the map join only. You can see at the end of the next video that there are no reducer operations in the join.

Please note, there is an error in the next video that SME is stating this join operation as normal join. Because by default, the _**hive> set hive.auto.convert.join**_ is set as true in the Hive and hence, the join that has been performed in the next video is by default map join.

We suggest you please set _**hive> set hive.auto.convert.join = false**_ and then perform the join operation like in the next video. You will see that there will be both a reducer and mapper operation.

**VIDEO**

So, to summarise the above video, the map join is by default performed on the smaller dataset when _**hive> set hive.auto.convert.join**_ is set as true and it is by default set as true in Hive.

Hence, whenever you will have smaller data it will perform map based join only but suppose, if you have bigger dataset then even if _**hive> set hive.auto.convert.join**_ is set as true, it will perform normal join only (with both the mapper and reducer operations). The reason is basically the map join makes the execution time faster than normal join when the dataset is smaller and the map join is not suited for the bigger dataset like more than 25MB.

Suppose you want to perform the normal join on the smaller dataset then you need set _**hive> set hive.auto.convert.join = false**_ and then only you will be able to perform the normal join on a smaller dataset. But this is not a good practice to make _**hive> set hive.auto.convert.join = false**_ and perform a normal join on smaller data.

So, there are two tables named 'employee' and 'department'. Both the tables contain columns related to employees and the department, respectively.

![15](https://i.ibb.co/BqLgt98/15.png)

Now, let’s perform left join on the 'employee' and 'department' tables.

![16](https://i.ibb.co/dgybgCp/16.png)

On performing left join, you will have the following table:

![17](https://i.ibb.co/3zRYYqk/17.png)

Let’s understand the query syntax to perform the map join.

**VIDEO**

**Map Join Method: 2**

To perform map join, you need to specify the hint to the query above, the syntax of which is as follows:

![18](https://i.ibb.co/y67Lhcc/18.png)

Using the query above, you get a left join without using the reducers, which is also called map join. Using map join, you get the same result as above but in less time. Previously, you got the result in 32.81 seconds, but his time, the query time is 29.617 seconds.

![19](https://i.ibb.co/WkdBpsH/19.png)

Though generally, we do not prefer this (providing hint) approach to perform the map join because _**hive> set hive.auto.convert.join**_ is already by default set as true and hence, it will automatically do the map join when the dataset is smaller.

```shell
[hadoop@ip-172-31-24-155 ~]$ aws s3 cp s3://hive-demo-data-bucket/dept .
download: s3://hive-demo-data-bucket/dept to ./dept
[hadoop@ip-172-31-24-155 ~]$ ls
dept
[hadoop@ip-172-31-24-155 ~]$ aws s3 cp s3://hive-demo-data-bucket/employee .
download: s3://hive-demo-data-bucket/employee to ./employee

[hadoop@ip-172-31-24-155 ~]$ hive

Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j2.properties Async: false
hive> show databases;
OK
default
Time taken: 1.485 seconds, Fetched: 1 row(s)
hive> create database if not exists demo;
OK
Time taken: 0.812 seconds
hive> use demo;
OK
Time taken: 0.139 seconds
hive> set hive.cli.print.header=true;
hive> create table if not exists employee (emp_id int, emp_name string, designation string, salary int, mgr_id int, dept_id int, code string) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile;
OK
Time taken: 1.899 seconds
hive> create table if not exists department (dept_id int, dept_name string, dept_city string, code string) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile;
OK
Time taken: 0.118 seconds
hive> describe employee;
OK
col_name    data_type    comment
emp_id                  int
emp_name                string
designation             string
salary                  int
mgr_id                  int
dept_id                 int
code                    string
Time taken: 0.073 seconds, Fetched: 7 row(s)
hive> describe department;
OK
col_name    data_type    comment
dept_id                  int
dept_name                string
dept_city                string
code                    string
Time taken: 0.091 seconds, Fetched: 4 row(s)

hive> load data local inpath '/home/hadoop/employee' into table employee;
Loading data to table demo.employee
OK
Time taken: 1.093 seconds
hive> load data local inpath '/home/hadoop/dept' into table department;
Loading data to table demo.department
OK
Time taken: 0.547 seconds
hive> select * from employee;
OK
employee.emp_id    employee.emp_name    employee.designation    employee.salary    employee.mgr_id    employee.dept_id    employee.code
1281    Shawn    Architect    7890    1481    10    IXZ
1381    Jacob    Admin    4560    1481    20    POI
1481    flink    Mgr    9580    1681    10    IXZ
1581    Richard    Developer    1000    1681    40    LKJ
1681    Mira    Mgr    5098    1481    10    IKZ
1781    John    Developer    6500    1681    10    IXZ
Time taken: 2.828 seconds, Fetched: 6 row(s)
hive> select * from department;
OK
department.dept_id    department.dept_name    department.dept_city    department.code
10    INVENTORY    HYDERABAD    IXZ
20    Jacob    ACCOUNTS    PUNE
30    DEVELOPMENT    CHENNAI    LKJ
Time taken: 0.459 seconds, Fetched: 3 row(s)

hive> set hive.auto.convert.join = false;
hive> select employee.emp_id, employee.emp_name, employee.designation, department.dep_id, department.dep_name, department.dep_city from employee left join department on (employee.dept_id = department.dep_id);
Query ID = hadoop_20220327204023_ef74c5e4-8eed-4a45-8541-6fc34e9c0f5d
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648410869414_0005)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Map 3 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 03/03  [==========================>>] 100%  ELAPSED TIME: 11.63 s
----------------------------------------------------------------------------------------------
OK
1281    Shawn    Architect    10    INVENTORY    HYDERABAD
1481    flink    Mgr    10    INVENTORY    HYDERABAD
1681    Mira    Mgr    10    INVENTORY    HYDERABAD
1781    John    Developer    10    INVENTORY    HYDERABAD
1381    Jacob    Admin    20    Jacob    ACCOUNTS
1581    Richard    Developer    NULL    NULL    NULL
Time taken: 17.809 seconds, Fetched: 6 row(s)

hive> select /*+ MAPJOIN (employee) */ employee.emp_id, employee.emp_name, employee.designation, department.dep_id, department.dep_name, department.dep_city from employee left join department on (employee.dept_id = department.dep_id);
Query ID = hadoop_20220327204353_807b11d1-d014-46c8-8ec2-a453eaede679
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648410869414_0005)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Map 3 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 03/03  [==========================>>] 100%  ELAPSED TIME: 11.39 s
----------------------------------------------------------------------------------------------
OK
1281    Shawn    Architect    10    INVENTORY    HYDERABAD
1481    flink    Mgr    10    INVENTORY    HYDERABAD
1681    Mira    Mgr    10    INVENTORY    HYDERABAD
1781    John    Developer    10    INVENTORY    HYDERABAD
1381    Jacob    Admin    20    Jacob    ACCOUNTS
1581    Richard    Developer    NULL    NULL    NULL
Time taken: 12.351 seconds, Fetched: 6 row(s)
```

Now that you have understood normal joins and map joins, in the next segment, you will be introduced to the concept of partitioning.

#### Joins

Qn: Select the correct statement from the following about map joins. (Note: More than one option may be correct.)

- Generally, joins in Hive are performed with the help of both mappers and reducers.

- When you provide the hint as "/\*+ MAPJOIN(b) \*/", only the reducers will take charge of the join; no mapper will be involved.

- In a map join, only mappers perform the joins.

- Even if you provide the hint  "/\*+ MAPJOIN(b) \*/", the join operation is performed by both the mappers and the reducers.

Ans: A & C.

- _Without a hint like  "/\*+ MAPJOIN(b) \*/", joins in Hive are performed using mappers and reducers._
- _When you use the hint "/\*+ MAPJOIN(b) \*/", only the mappers perform the join._
