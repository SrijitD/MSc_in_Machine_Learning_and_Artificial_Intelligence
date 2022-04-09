# Source Setup II - Loading data into the tables

After creating the necessary source tables, the next step is to load the associated data into them. The first and foremost step is to have the necessary data on your EMR cluster. This can be done as follows:

- **Mac User**: Using the SCP command on the cluster by specifying the input and output locations.

- **Windows User**: Using the wget command, you can download the data onto the master node of your instance.

wget  [Link to dataset]

For example - wget  [https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/rev1.csv](https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/rev1.csv)

Let's now load the associated data into the tables that we have just created.

**VIDEO**

Now that you have the necessary data on your EMR cluster, the next step is to load this data into the tables. Let us watch the next video and learn how to do this.

**VIDEO**

In the video, you learnt how to load the data present in a CSV file into our source tables. Now, the data present in a CSV file will be comma-separated-values, where each line represents a row. You will need to provide this information while loading the data into the tables.

**Important Note**

Although you select free tier while creating the RDS instance, it does not mean that AWS will not charge any money. In fact, it will charge around $0.5 per day. Stopping the instance will not stop incurring costs; terminating it is the only way to stop incurring costs.

You can take a logical break here and terminate the EMR cluster. It is not necessary to have the same EMR instance as you move forward. However, do not terminate the RDS instance, as it now contains the necessary tables and data loaded into them. AWS provides you with an option to stop RDS instance temporarily, but the instance gets restarted automatically after seven days. You need to keep a constant track of cost if you are dealing with RDS.

**Note:**

You can also download the datasets locally and transfer them to  EMR. This is a tedious process as it includes downloading and transferring data.

**Steps to transfer them to EMR using WINSCP tool**

Install the Winscp tool and establishing a connection with the master node. This tool provides a file explorer type of interface where you can use drag and drop utilities for moving files from your local file system to the HDFS.

Refer to the documentation below to understand how to use WINSCP to transfer files from your local machine into the Hadoop instance.

Download [WINSCP Documentation](Transferring_Data_from_Local_Machine_to_EMR_Instance.pdf)

```shell
❯  scp -i ~/Personal/Key_Pairs/keypair1.pem crm.csv hadoop@ec2-54-235-58-98.compute-1.amazonaws.com:/home/hadoop
crm.csv                              100%  839MB   6.3MB/s   02:13
❯ scp -i ~/Personal/Key_Pairs/keypair1.pem devices.csv hadoop@ec2-54-235-58-98.compute-1.amazonaws.com:/home/hadoop
devices.csv                          100%  240MB   4.8MB/s   00:50
❯ scp -i ~/Personal/Key_Pairs/keypair1.pem revenue.csv hadoop@ec2-54-235-58-98.compute-1.amazonaws.com:/home/hadoop
revenue.csv                          100%   89MB   1.6MB/s   00:54

[hadoop@ip-172-31-17-32 ~]$ ls -ltr
total 1112920
-rw-r--r-- 1 hadoop hadoop 880084718 Apr  4 17:47 crm.csv
-rw-r--r-- 1 hadoop hadoop 251218237 Apr  4 17:54 devices.csv
-rw-r--r-- 1 hadoop hadoop   5341184 Apr  4 17:56 revenue.csv
[hadoop@ip-172-31-17-32 ~]$ head crm.csv
msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
aeef4233d9ad34e41f7ecf48d64646f8,MALE,1985,ACTIVE,Prepaid,Tier_3
2397d009e705bc8a2654cbb3f480cc59,MALE,1958,ACTIVE,Prepaid,Tier_3
6f05d738919f9283322bae17dc366bf5,MALE,1976,ACTIVE,Prepaid,Tier_3
45352d9d126f86f40c7eee79a82c833c,MALE,1996,ACTIVE,Prepaid,Tier_3
959b00a279e2785cfa81728338c324f7,FEMALE,1960,ACTIVE,Prepaid,Tier_3
b74761390712bde1309ac38b46d59df8,,1994,ACTIVE,Prepaid,Tier_3
b74761390712bde1309ac38b46d59df8,Male,1994,ACTIVE,Prepaid,Tier_3
1311649d0d7ffeb132cfaf6a0233483e,Male,1992,ACTIVE,Prepaid,Tier_3
8e6e340aa4b1a449305da80327f4e6ff,MALE,1963,ACTIVE,Prepaid,Tier_3
[hadoop@ip-172-31-17-32 ~]$ head devices.csv
msisdn,imei_tac,brand_name,model_name,os_name,os_vendor
c0e80ecc67484f293db0cf723146c9d6,7ce90a5469d6a07dc8c770956cc29482,SAMSUNG,GALAXY J1 ACE (SM-J111F),Android,Google
2bce0cd398cbc9b2478ecaf1ef62b2c1,110f73736e1e1fe0ef5cb8a581bc0ec2,WALTON,OLVIO L22,,
d7b8b49fafb853a3aef0c20d49bca845,ddf90b7c597d7714637ecde342a8c609,LG,W1500,LG OS,LG
d628f3b548dc74c5fde92323c61c819e,c395eac49569e6741faf98284aef725c,SYMPHONY,B13,,
e33e767a53a8dceadebc3354221bbf6a,395b163b071e5880e66ac57c5768673e,SAMSUNG,METRO SM-B350ED,Samsung OS,Samsung
72f78dc2ae7857045b4551483b75858b,d64cd8af0738cb79bbe21da1558201fc,HIMAX,"H20, H21, H111, H222",Android,Google
dac6fe711e7f592b4c695175be5a552b,0b3697b11e5ebf9e71988274e12f8ba0,SAMSUNG,GALAXY ACE NXT (SM-G313HU),Android,Google
13aa941a42ab4c29d598a0c4fe1a981b,37efb3b8fbe269d7a3c62001c7e45fc5,SAMSUNG,GURU MUSIC II (SM-B310E),Samsung OS,Samsung
8ed54c77279bfe313842edab355d68f6,a214f011d36d222d6930629d0306198b,ITEL,IT5231,,
[hadoop@ip-172-31-17-32 ~]$ head revenue.csv
msisdn,week_number,revenue_usd
66e94d24d8e0d5776a8a6b694782eff0,26,20.265621426295347
66e94d24d8e0d5776a8a6b694782eff0,34,5.36116447308828
66e94d24d8e0d5776a8a6b694782eff0,31,18.181346930117638
66e94d24d8e0d5776a8a6b694782eff0,35,16.857390888253295
66e94d24d8e0d5776a8a6b694782eff0,24,14.392326462162474
66e94d24d8e0d5776a8a6b694782eff0,22,1.8898514047825214
66e94d24d8e0d5776a8a6b694782eff0,27,17.457145801554297
66e94d24d8e0d5776a8a6b694782eff0,28,16.29990813842055
66e94d24d8e0d5776a8a6b694782eff0,29,19.358134485432718


[hadoop@ip-172-31-17-32 ~]$ mysql -h telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com -P 3306 -u admin -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 29
Server version: 8.0.27 Source distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> use telco;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [telco]> show tables;
+-----------------+
| Tables_in_telco |
+-----------------+
| crm             |
| devices         |
| revenue         |
+-----------------+
3 rows in set (0.00 sec)

MySQL [telco]> load data local infile '/home/hadoop/crm.csv' into table crm fields terminated by ',' lines terminated by '\n' ignore 1 rows;
Query OK, 13627493 rows affected, 2940 warnings (1 min 49.52 sec)
Records: 13627493  Deleted: 0  Skipped: 0  Warnings: 2940

MySQL [telco]> select * from crm limit 5;
+----------------------------------+--------+---------------+---------------+-------------+---------------+
| msisdn                           | gender | year_of_birth | system_status | mobile_type | value_segment |
+----------------------------------+--------+---------------+---------------+-------------+---------------+
| aeef4233d9ad34e41f7ecf48d64646f8 | MALE   |          1985 | ACTIVE        | Prepaid     | Tier_3        |
| 2397d009e705bc8a2654cbb3f480cc59 | MALE   |          1958 | ACTIVE        | Prepaid     | Tier_3        |
| 6f05d738919f9283322bae17dc366bf5 | MALE   |          1976 | ACTIVE        | Prepaid     | Tier_3        |
| 45352d9d126f86f40c7eee79a82c833c | MALE   |          1996 | ACTIVE        | Prepaid     | Tier_3        |
| 959b00a279e2785cfa81728338c324f7 | FEMALE |          1960 | ACTIVE        | Prepaid     | Tier_3        |
+----------------------------------+--------+---------------+---------------+-------------+---------------+
5 rows in set (0.01 sec)

MySQL [telco]> load data local infile '/home/hadoop/devices.csv' into table devices fields terminated by ',' lines terminated by '\n' ignore 1 rows;
Query OK, 2440100 rows affected, 65535 warnings (31.55 sec)
Records: 2440100  Deleted: 0  Skipped: 0  Warnings: 385003

MySQL [telco]> select * from devices limit 5;
+----------------------------------+----------------------------------+------------+--------------------------+------------+-----------+
| msisdn                           | imei_tac                         | brand_name | model_name               | os_name    | os_vender |
+----------------------------------+----------------------------------+------------+--------------------------+------------+-----------+
| c0e80ecc67484f293db0cf723146c9d6 | 7ce90a5469d6a07dc8c770956cc29482 | SAMSUNG    | GALAXY J1 ACE (SM-J111F) | Android    | Google    |
| 2bce0cd398cbc9b2478ecaf1ef62b2c1 | 110f73736e1e1fe0ef5cb8a581bc0ec2 | WALTON     | OLVIO L22                |            |           |
| d7b8b49fafb853a3aef0c20d49bca845 | ddf90b7c597d7714637ecde342a8c609 | LG         | W1500                    | LG OS      | LG        |
| d628f3b548dc74c5fde92323c61c819e | c395eac49569e6741faf98284aef725c | SYMPHONY   | B13                      |            |           |
| e33e767a53a8dceadebc3354221bbf6a | 395b163b071e5880e66ac57c5768673e | SAMSUNG    | METRO SM-B350ED          | Samsung OS | Samsung   |
+----------------------------------+----------------------------------+------------+--------------------------+------------+-----------+
5 rows in set (0.00 sec)

MySQL [telco]> load data local infile '/home/hadoop/revenue.csv' into table revenue fields terminated by ',' lines terminated by '\n' ignore 1 rows;
Query OK, 1704601 rows affected (9.25 sec)
Records: 1704601  Deleted: 0  Skipped: 0  Warnings: 0

MySQL [telco]> select * from revenue limit 5;
+----------------------------------+-------------+-------------+
| msisdn                           | week_number | revenue_usd |
+----------------------------------+-------------+-------------+
| 66e94d24d8e0d5776a8a6b694782eff0 |          26 |     20.2656 |
| 66e94d24d8e0d5776a8a6b694782eff0 |          34 |     5.36116 |
| 66e94d24d8e0d5776a8a6b694782eff0 |          31 |     18.1813 |
| 66e94d24d8e0d5776a8a6b694782eff0 |          35 |     16.8574 |
| 66e94d24d8e0d5776a8a6b694782eff0 |          24 |     14.3923 |
+----------------------------------+-------------+-------------+
5 rows in set (0.00 sec)
```
