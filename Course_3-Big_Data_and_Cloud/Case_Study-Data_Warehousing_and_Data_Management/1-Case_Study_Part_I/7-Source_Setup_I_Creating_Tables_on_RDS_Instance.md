# Source Setup I - Creating Tables on RDS Instance

In this segment, you will see how to set up the source MySQL tables. In an actual industry, the data collected each day is first loaded in the DBMS tables, and after reaching a certain limit, the data in the tables is moved to the HDFS or any other storage layer. Now, unlike the Hadoop platform, RDMS cannot be scaled easily and so, the data collected over a period of time, or, in other words, data in batches, is moved to the HDFS and stored for future analysis.

In order to replicate this scenario, you need to first load the data available in the form of Excel/ csv files into SQL tables. To do this, you will be starting an RDS instance and creating a database that can be used as source tables as we progress through the case study.

Let's now learn how to create an RDS instance in order to create MySQL database.

**VIDEO**

In the video above, you learnt how to create an RDS instance. Now, make sure you note the username and password used while creating the RDS instance. These are essential while connecting to the RDS instance in the upcoming videos.

**Important Note:**  
While connecting to the RDS from the EMR cluster, you need to ensure that the **security groups of the RDS instance** are modified such that you allow access to the master node of the EMR cluster.

- Under the **connectivity & security** tab, you can find the security group for the RDS instance. Click on this security group - **default(sg- id)**

![Case Study 1](https://i.ibb.co/0Bjt4YR/Case-Study-1.png)

- On clicking the security group, go to **Actions** and select  ‘Edit inbound rules’ to add a new rule.

![Case Study 2](https://i.ibb.co/gJzsRk7/Case-Study-2.png)

- Now, Click on **Add rule** to add a new rule, and add the MYSQL Aurora port 3306 with ‘Anywhere’**.**

![Case Study 3](https://i.ibb.co/YLN9pRM/Case-Study-3.png)

The above steps will ensure that the RDS instance is accessible from our EMR master node.

Let's now create our database and the tables within it.

**VIDEO**

To connect to the RDS instance from your EMR cluster, run the following command:

`mysql -h  database-1.cisk8vkhoaoc.us-east-1.rds.amazonaws.com -P 3306 -u admin -p`

Here, **database-1.cisk8vkhoaoc.us-east-1.rds.amazonaws.com** is the endpoint that is required to establish a connection between the EMR cluster and the RDS instance. Once you have established a connection, the next step is to create tables and load the data into them.

**Important Note**

Although you select free tier while creating the RDS instance, it does not mean that AWS will not charge any money. In fact, it will charge around $0.5 per day. So, terminate the instance when you are not using it.

```shell
[hadoop@ip-172-31-17-32 ~]$ mysql -h telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com -P 3306 -u admin -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 8.0.27 Source distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

MySQL [(none)]> create database telco;
Query OK, 1 row affected (0.01 sec)

MySQL [(none)]> use telco;
Database changed
MySQL [telco]>  show tables;
Empty set (0.00 sec)

MySQL [telco]> create table crm
    -> (
    -> msisdn varchar(255),
    -> gender varchar(255),
    -> year_of_birth int,
    -> system_status varchar(255),
    -> mobile_type varchar(255),
    -> value_segment varchar(255)
    -> );
Query OK, 0 rows affected (0.03 sec)

MySQL [telco]> show tables;
+-----------------+
| Tables_in_telco |
+-----------------+
| crm             |
+-----------------+
1 row in set (0.00 sec)

MySQL [telco]> describe crm;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| msisdn        | varchar(255) | YES  |     | NULL    |       |
| gender        | varchar(255) | YES  |     | NULL    |       |
| year_of_birth | int          | YES  |     | NULL    |       |
| system_status | varchar(255) | YES  |     | NULL    |       |
| mobile_type   | varchar(255) | YES  |     | NULL    |       |
| value_segment | varchar(255) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MySQL [telco]> create table devices
    -> (
    -> msisdn varchar(255),
    -> imei_tac varchar(255),
    -> brand_name varchar(255),
    -> model_name varchar(255),
    -> os_name varchar(255),
    -> os_vender varchar(255)
    -> );
Query OK, 0 rows affected (0.03 sec)

MySQL [telco]> create table revenue;
    -> (
    -> msisdn varchar(255),
    -> week_number int,
    -> );
Query OK, 0 rows affected (0.03 sec)


MySQL [telco]> show tables;
+-----------------+
| Tables_in_telco |
+-----------------+
| crm             |
| devices         |
| revenue         |
+-----------------+
3 rows in set (0.00 sec)
```
