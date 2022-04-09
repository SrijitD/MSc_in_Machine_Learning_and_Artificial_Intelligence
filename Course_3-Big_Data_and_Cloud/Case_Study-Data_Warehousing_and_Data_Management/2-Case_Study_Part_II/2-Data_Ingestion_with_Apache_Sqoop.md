# Data Ingestion with Apache Sqoop

In the last session, you learnt what data ingestion is and also learnt about the tools used in the industry. In this segment, you will learn how to ingest the data present in the RDS instance to the HDFS in the form of SQL tables using Sqoop.

Now, do not get confused here; earlier, you copied the data into the EMR (using the scp command or winscp) to load it into tables. You do not need an EMR to do that; any instance or a machine with mysql installed can be used. Now, once you have the data loaded into the DBMS tables, what you will perform next is the actual data ingestion.

Let us watch the next video and try and understand how sqoop works.

**Important Note**

While executing the sqoop command, you interact with the RDS instance. Copying the data from the RDS instance to the EMR involves interaction with both the master node and the slave node.

**VIDEO**

**Sqoop Command**

The steps involved in a sqoop import command are as follows:

1. Sqoop collects metadata from the RDBMS (e.g., MySQL).

2. It launches a MapReduce job (the Sqoop command will be converted automatically to a MapReduce job, using the metadata information).

3. Mappers are created against the specified key ranges of the RDBMS, and the data is written into the Hadoop ecosystem.

The basic idea of importing large data sets is to divide them into multiple parts and import these parts parallelly using a MapReduce-like paradigm. As is the standard case, Sqoop runs the map phase first and divides the data into multiple smaller parts, each of which is assigned to a mapper. However, there is no need for a reduce phase, since there is no aggregation required.

In the next video, Ganesh will experiment by changing the number of mappers to 4.

**VIDEO**

So, in the video, you saw that four part files were created by changing the number of mappers to 4 and specifying year_of_birth as the key to split the data. Of these four part files, two do not have any records. This means that the jobs submitted are distributed irregularly. Hence, the correct column that should be specified is the primary key column.

Sqoop follows the procedure below for data ingestion when you use multiple mappers and a where clause:

- It looks at the range of the splitting key (from the splitting/primary key column).

- It sets the lower value of the splitting key to some variable.

- It sets the higher value of the splitting key to another variable.

- It generates SQL queries to fetch data parallelly.

If the values of the primary key column/splitting columns are not distributed uniformly across its range, it can result in unbalanced tasks. In such cases, you are advised to choose a different column by using the **'--split-by'** clause explicitly.

For example, to specify that Sqoop should use the ‘msisdn’ column for splitting, you can write '**--split-by msisdn'**.

**VIDEO**

You can import data in various ways:

- Complete extract

- Where extract

- Incremental extract for example based on Last modified Value

Some of the other industry cases of sqoop are:

- Exporting data to RDBMSs

- Interactive analytics on RDBMSs

The export operation is similar to the import operation, except it works in the opposite direction. Now, in the export operation too, the number of maps is specified, and then, the respective data blocks are assigned to each mapper program for transfer.

**sqoop eval** can be used to query MySQL without importing the data as shown below :

`sqoop eval --connect jdbc:mysql://telco.cqsesz6h9yjg.us-east-1.rds.amazonaws.com:3306/telco --username admin -P --query "show tables";`

#### Sqoop Import

Qn: Select the most appropriate statement from the options below.

- --split-by: It is used to specify the table column that is used for generating splits for imports. This means that it is used to specify the column that will be used to create the split while importing the data into your cluster. It can be used to enhance the import performance by achieving greater parallelism.

- --split-by: It is only used to specify the table column that is used to generate splits for imports and not for enhancing performance.

Ans: A. *Sqoop creates splits based on the values in a particular column of a table, which is specified by --split-by by the user through the import command. If it is not available, then the primary key of the input table is used to create the splits. You can choose the column with --split-by, which can result in the best splitting, and, thus, increase the parallelism and enhance performance.*

#### Sqoop Command

Qn: What is the default number of mappers that are triggered while using a sqoop command?

Ans: *The default number of mappers that are triggered while running a sqoop command is **four**.*

**Additional reading**

You can go through the following references to understand data migration through Sqoop in more detail:

- [Sqoop user guide](https://sqoop.apache.org/docs/1.4.6/SqoopUserGuide.html): This is a detailed documentation of Sqoop by Apache.

- [Data migration through Sqoop at IBM](https://www.ibm.com/developerworks/library/bd-sqoop/index.html): Here, 'IBM developerWorks' demonstrates data transfer using Sqoop.

**Additional exercises**

- You can run the following command to list databases using Sqoop:
  
  `sqoop-list-databases --connect jdbc:mysql://telcodb.cqsesz6h9yjg.us-east-1.rds.amazonaws.com:3306 --username admin -P`

In the next segment, we will understand how to create Hive tables and load the ingested data into them.

```shell
# Download the jar from https://dev.mysql.com/downloads/connector/j/
# Select "Platform Independent"
scp -i ~/Personal/Key_Pairs/keypair1.pem mysql-connector-java-8.0.28.jar hadoop@ec2-3-83-236-62.compute-1.amazonaws.com:/home/hadoop
mysql-connector-java-8.0.28.jar              100% 2418KB 197.5KB/s   00:12

[hadoop@ip-172-31-20-215 ~]$ sudo mkdir -p /var/lib/sqoop
[hadoop@ip-172-31-20-215 ~]$ sudo chown sqoop:sqoop /var/lib/sqoop
[hadoop@ip-172-31-20-215 ~]$ sudo chmod 755 /var/lib/sqoop
[hadoop@ip-172-31-20-215 ~]$ sudo cp mysql-connector-java-8.0.28.jar /var/lib/sqoop/

[hadoop@ip-172-31-31-27 ~]$ sqoop import --connect jdbc:mysql://telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com:3306/telco --table crm --target-dir /user/hadoop/telco/crm --username admin -P -m 1
Warning: /usr/lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/usr/lib/hadoop/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/usr/lib/hive/lib/log4j-slf4j-impl-2.17.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
22/04/04 19:30:23 INFO sqoop.Sqoop: Running Sqoop version: 1.4.7
Enter password:
22/04/04 19:30:29 INFO manager.MySQLManager: Preparing to use a MySQL streaming resultset.
22/04/04 19:30:29 INFO tool.CodeGenTool: Beginning code generation
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
22/04/04 19:30:30 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/04 19:30:30 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/04 19:30:30 INFO orm.CompilationManager: HADOOP_MAPRED_HOME is /usr/lib/hadoop-mapreduce
Note: /tmp/sqoop-hadoop/compile/9470d818b4d42fb9201aa1e2ffbcafd1/crm.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
22/04/04 19:30:36 INFO orm.CompilationManager: Writing jar file: /tmp/sqoop-hadoop/compile/9470d818b4d42fb9201aa1e2ffbcafd1/crm.jar
22/04/04 19:30:37 WARN manager.MySQLManager: It looks like you are importing from mysql.
22/04/04 19:30:37 WARN manager.MySQLManager: This transfer can be faster! Use the --direct
22/04/04 19:30:37 WARN manager.MySQLManager: option to exercise a MySQL-specific fast path.
22/04/04 19:30:37 INFO manager.MySQLManager: Setting zero DATETIME behavior to convertToNull (mysql)
22/04/04 19:30:37 INFO mapreduce.ImportJobBase: Beginning import of crm
22/04/04 19:30:37 INFO Configuration.deprecation: mapred.jar is deprecated. Instead, use mapreduce.job.jar
22/04/04 19:30:38 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
22/04/04 19:30:38 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-27.ec2.internal/172.31.31.27:8032
22/04/04 19:30:38 INFO client.AHSProxy: Connecting to Application History server at ip-172-31-31-27.ec2.internal/172.31.31.27:10200
22/04/04 19:30:39 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/04 19:30:40 INFO db.DBInputFormat: Using read commited transaction isolation
22/04/04 19:30:40 INFO mapreduce.JobSubmitter: number of splits:1
22/04/04 19:30:40 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1649098708220_0004
22/04/04 19:30:41 INFO conf.Configuration: resource-types.xml not found
22/04/04 19:30:41 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
22/04/04 19:30:41 INFO resource.ResourceUtils: Adding resource type - name = memory-mb, units = Mi, type = COUNTABLE
22/04/04 19:30:41 INFO resource.ResourceUtils: Adding resource type - name = vcores, units = , type = COUNTABLE
22/04/04 19:30:41 INFO impl.YarnClientImpl: Submitted application application_1649098708220_0004
22/04/04 19:30:41 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-27.ec2.internal:20888/proxy/application_1649098708220_0004/
22/04/04 19:30:41 INFO mapreduce.Job: Running job: job_1649098708220_0004
22/04/04 19:30:50 INFO mapreduce.Job: Job job_1649098708220_0004 running in uber mode : false
22/04/04 19:30:50 INFO mapreduce.Job:  map 0% reduce 0%
22/04/04 19:31:28 INFO mapreduce.Job:  map 100% reduce 0%
22/04/04 19:31:29 INFO mapreduce.Job: Job job_1649098708220_0004 completed successfully
22/04/04 19:31:29 INFO mapreduce.Job: Counters: 30
    File System Counters
        FILE: Number of bytes read=0
        FILE: Number of bytes written=229445
        FILE: Number of read operations=0
        FILE: Number of large read operations=0
        FILE: Number of write operations=0
        HDFS: Number of bytes read=87
        HDFS: Number of bytes written=880087585
        HDFS: Number of read operations=4
        HDFS: Number of large read operations=0
        HDFS: Number of write operations=2
    Job Counters
        Launched map tasks=1
        Other local map tasks=1
        Total time spent by all maps in occupied slots (ms)=1702704
        Total time spent by all reduces in occupied slots (ms)=0
        Total time spent by all map tasks (ms)=35473
        Total vcore-milliseconds taken by all map tasks=35473
        Total megabyte-milliseconds taken by all map tasks=54486528
    Map-Reduce Framework
        Map input records=13627493
        Map output records=13627493
        Input split bytes=87
        Spilled Records=0
        Failed Shuffles=0
        Merged Map outputs=0
        GC time elapsed (ms)=334
        CPU time spent (ms)=33490
        Physical memory (bytes) snapshot=623230976
        Virtual memory (bytes) snapshot=3315552256
        Total committed heap usage (bytes)=503840768
    File Input Format Counters
        Bytes Read=0
    File Output Format Counters
        Bytes Written=880087585
22/04/04 19:31:29 INFO mapreduce.ImportJobBase: Transferred 839.3169 MB in 51.2288 seconds (16.3837 MB/sec)
22/04/04 19:31:29 INFO mapreduce.ImportJobBase: Retrieved 13627493 records.


[hadoop@ip-172-31-31-27 ~]$ sqoop import --connect jdbc:mysql://telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com:3306/telco --table crm --target-dir /user/hadoop/telco/crm_split4 --username admin -P -m 4 --split-by year_of_birth
Warning: /usr/lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/usr/lib/hadoop/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/usr/lib/hive/lib/log4j-slf4j-impl-2.17.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
22/04/04 19:39:26 INFO sqoop.Sqoop: Running Sqoop version: 1.4.7
Enter password:
22/04/04 19:39:29 INFO manager.MySQLManager: Preparing to use a MySQL streaming resultset.
22/04/04 19:39:29 INFO tool.CodeGenTool: Beginning code generation
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
22/04/04 19:39:30 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/04 19:39:30 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/04 19:39:30 INFO orm.CompilationManager: HADOOP_MAPRED_HOME is /usr/lib/hadoop-mapreduce
Note: /tmp/sqoop-hadoop/compile/56ffa8400c0d6a9481fb424ee6833c97/crm.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
22/04/04 19:39:34 INFO orm.CompilationManager: Writing jar file: /tmp/sqoop-hadoop/compile/56ffa8400c0d6a9481fb424ee6833c97/crm.jar
22/04/04 19:39:34 WARN manager.MySQLManager: It looks like you are importing from mysql.
22/04/04 19:39:34 WARN manager.MySQLManager: This transfer can be faster! Use the --direct
22/04/04 19:39:34 WARN manager.MySQLManager: option to exercise a MySQL-specific fast path.
22/04/04 19:39:34 INFO manager.MySQLManager: Setting zero DATETIME behavior to convertToNull (mysql)
22/04/04 19:39:34 INFO mapreduce.ImportJobBase: Beginning import of crm
22/04/04 19:39:35 INFO Configuration.deprecation: mapred.jar is deprecated. Instead, use mapreduce.job.jar
22/04/04 19:39:35 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
22/04/04 19:39:36 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-27.ec2.internal/172.31.31.27:8032
22/04/04 19:39:36 INFO client.AHSProxy: Connecting to Application History server at ip-172-31-31-27.ec2.internal/172.31.31.27:10200
22/04/04 19:39:37 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/04 19:39:37 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/04 19:39:38 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/04 19:39:38 INFO db.DBInputFormat: Using read commited transaction isolation
22/04/04 19:39:38 INFO db.DataDrivenDBInputFormat: BoundingValsQuery: SELECT MIN(`year_of_birth`), MAX(`year_of_birth`) FROM `crm`
22/04/04 19:40:03 INFO db.IntegerSplitter: Split size: 511; Num splits: 4 from: 0 to: 2046
22/04/04 19:40:03 INFO mapreduce.JobSubmitter: number of splits:4
22/04/04 19:40:04 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1649098708220_0006
22/04/04 19:40:04 INFO conf.Configuration: resource-types.xml not found
22/04/04 19:40:04 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
22/04/04 19:40:04 INFO resource.ResourceUtils: Adding resource type - name = memory-mb, units = Mi, type = COUNTABLE
22/04/04 19:40:04 INFO resource.ResourceUtils: Adding resource type - name = vcores, units = , type = COUNTABLE
22/04/04 19:40:04 INFO impl.YarnClientImpl: Submitted application application_1649098708220_0006
22/04/04 19:40:04 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-27.ec2.internal:20888/proxy/application_1649098708220_0006/
22/04/04 19:40:04 INFO mapreduce.Job: Running job: job_1649098708220_0006
22/04/04 19:40:14 INFO mapreduce.Job: Job job_1649098708220_0006 running in uber mode : false
22/04/04 19:40:14 INFO mapreduce.Job:  map 0% reduce 0%
22/04/04 19:40:50 INFO mapreduce.Job:  map 50% reduce 0%

22/04/04 19:41:47 INFO mapreduce.Job:  map 75% reduce 0%
22/04/04 19:41:52 INFO mapreduce.Job:  map 100% reduce 0%
22/04/04 19:41:52 INFO mapreduce.Job: Job job_1649098708220_0006 completed successfully
22/04/04 19:41:52 INFO mapreduce.Job: Counters: 31
    File System Counters
        FILE: Number of bytes read=0
        FILE: Number of bytes written=918484
        FILE: Number of read operations=0
        FILE: Number of large read operations=0
        FILE: Number of write operations=0
        HDFS: Number of bytes read=500
        HDFS: Number of bytes written=880087585
        HDFS: Number of read operations=16
        HDFS: Number of large read operations=0
        HDFS: Number of write operations=8
    Job Counters
        Killed map tasks=2
        Launched map tasks=5
        Other local map tasks=5
        Total time spent by all maps in occupied slots (ms)=9058080
        Total time spent by all reduces in occupied slots (ms)=0
        Total time spent by all map tasks (ms)=188710
        Total vcore-milliseconds taken by all map tasks=188710
        Total megabyte-milliseconds taken by all map tasks=289858560
    Map-Reduce Framework
        Map input records=13627493
        Map output records=13627493
        Input split bytes=500
        Spilled Records=0
        Failed Shuffles=0
        Merged Map outputs=0
        GC time elapsed (ms)=1409
        CPU time spent (ms)=33810
        Physical memory (bytes) snapshot=1370963968
        Virtual memory (bytes) snapshot=13191213056
        Total committed heap usage (bytes)=1069023232
    File Input Format Counters
        Bytes Read=0
    File Output Format Counters
        Bytes Written=880087585
22/04/04 19:41:52 INFO mapreduce.ImportJobBase: Transferred 839.3169 MB in 136.7792 seconds (6.1363 MB/sec)
22/04/04 19:41:52 INFO mapreduce.ImportJobBase: Retrieved 13627493 records.


[hadoop@ip-172-31-31-27 ~]$ sqoop import --connect jdbc:mysql://telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com:3306/telco --table crm --target-dir /user/hadoop/telco/crm_split4_where --username admin -P -m 4 --split-by year_of_birth --where 'gender="MALE"'
Warning: /usr/lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/usr/lib/hadoop/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/usr/lib/hive/lib/log4j-slf4j-impl-2.17.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
22/04/04 19:49:08 INFO sqoop.Sqoop: Running Sqoop version: 1.4.7
Enter password:
22/04/04 19:49:10 INFO manager.MySQLManager: Preparing to use a MySQL streaming resultset.
22/04/04 19:49:10 INFO tool.CodeGenTool: Beginning code generation
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
22/04/04 19:49:11 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/04 19:49:11 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/04 19:49:11 INFO orm.CompilationManager: HADOOP_MAPRED_HOME is /usr/lib/hadoop-mapreduce
Note: /tmp/sqoop-hadoop/compile/988720b7e7e558d2d26db67ae2fa4174/crm.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
22/04/04 19:49:16 INFO orm.CompilationManager: Writing jar file: /tmp/sqoop-hadoop/compile/988720b7e7e558d2d26db67ae2fa4174/crm.jar
22/04/04 19:49:16 WARN manager.MySQLManager: It looks like you are importing from mysql.
22/04/04 19:49:16 WARN manager.MySQLManager: This transfer can be faster! Use the --direct
22/04/04 19:49:16 WARN manager.MySQLManager: option to exercise a MySQL-specific fast path.
22/04/04 19:49:16 INFO manager.MySQLManager: Setting zero DATETIME behavior to convertToNull (mysql)
22/04/04 19:49:16 INFO mapreduce.ImportJobBase: Beginning import of crm
22/04/04 19:49:16 INFO Configuration.deprecation: mapred.jar is deprecated. Instead, use mapreduce.job.jar
22/04/04 19:49:17 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
22/04/04 19:49:18 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-27.ec2.internal/172.31.31.27:8032
22/04/04 19:49:18 INFO client.AHSProxy: Connecting to Application History server at ip-172-31-31-27.ec2.internal/172.31.31.27:10200
22/04/04 19:49:24 INFO db.DBInputFormat: Using read commited transaction isolation
22/04/04 19:49:24 INFO db.DataDrivenDBInputFormat: BoundingValsQuery: SELECT MIN(`year_of_birth`), MAX(`year_of_birth`) FROM `crm` WHERE ( gender="MALE" )
22/04/04 19:49:49 INFO db.IntegerSplitter: Split size: 511; Num splits: 4 from: 0 to: 2046
22/04/04 19:49:49 INFO mapreduce.JobSubmitter: number of splits:4
22/04/04 19:49:50 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1649098708220_0007
22/04/04 19:49:51 INFO conf.Configuration: resource-types.xml not found
22/04/04 19:49:51 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
22/04/04 19:49:51 INFO resource.ResourceUtils: Adding resource type - name = memory-mb, units = Mi, type = COUNTABLE
22/04/04 19:49:51 INFO resource.ResourceUtils: Adding resource type - name = vcores, units = , type = COUNTABLE
22/04/04 19:49:51 INFO impl.YarnClientImpl: Submitted application application_1649098708220_0007
22/04/04 19:49:51 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-27.ec2.internal:20888/proxy/application_1649098708220_0007/
22/04/04 19:49:51 INFO mapreduce.Job: Running job: job_1649098708220_0007
22/04/04 19:50:00 INFO mapreduce.Job: Job job_1649098708220_0007 running in uber mode : false
22/04/04 19:50:00 INFO mapreduce.Job:  map 0% reduce 0%
22/04/04 19:50:36 INFO mapreduce.Job:  map 25% reduce 0%
22/04/04 19:50:37 INFO mapreduce.Job:  map 50% reduce 0%
22/04/04 19:51:31 INFO mapreduce.Job:  map 75% reduce 0%
22/04/04 19:51:37 INFO mapreduce.Job:  map 100% reduce 0%
22/04/04 19:51:38 INFO mapreduce.Job: Job job_1649098708220_0007 completed successfully
22/04/04 19:51:38 INFO mapreduce.Job: Counters: 31
    File System Counters
        FILE: Number of bytes read=0
        FILE: Number of bytes written=919204
        FILE: Number of read operations=0
        FILE: Number of large read operations=0
        FILE: Number of write operations=0
        HDFS: Number of bytes read=500
        HDFS: Number of bytes written=607645799
        HDFS: Number of read operations=16
        HDFS: Number of large read operations=0
        HDFS: Number of write operations=8
    Job Counters
        Killed map tasks=2
        Launched map tasks=5
        Other local map tasks=5
        Total time spent by all maps in occupied slots (ms)=8816736
        Total time spent by all reduces in occupied slots (ms)=0
        Total time spent by all map tasks (ms)=183682
        Total vcore-milliseconds taken by all map tasks=183682
        Total megabyte-milliseconds taken by all map tasks=282135552
    Map-Reduce Framework
        Map input records=9343234
        Map output records=9343234
        Input split bytes=500
        Spilled Records=0
        Failed Shuffles=0
        Merged Map outputs=0
        GC time elapsed (ms)=979
        CPU time spent (ms)=26420
        Physical memory (bytes) snapshot=1406779392
        Virtual memory (bytes) snapshot=13193404416
        Total committed heap usage (bytes)=1104674816
    File Input Format Counters
        Bytes Read=0
    File Output Format Counters
        Bytes Written=607645799
22/04/04 19:51:38 INFO mapreduce.ImportJobBase: Transferred 579.4962 MB in 140.4458 seconds (4.1261 MB/sec)
22/04/04 19:51:38 INFO mapreduce.ImportJobBase: Retrieved 9343234 records.


[hadoop@ip-172-31-31-27 ~]$ hadoop fs -ls /user/hadoop/telco
Found 3 items
drwxr-xr-x   - hadoop hdfsadmingroup          0 2022-04-04 19:31 /user/hadoop/telco/crm
drwxr-xr-x   - hadoop hdfsadmingroup          0 2022-04-04 19:41 /user/hadoop/telco/crm_split4
drwxr-xr-x   - hadoop hdfsadmingroup          0 2022-04-04 19:51 /user/hadoop/telco/crm_split4_where
[hadoop@ip-172-31-31-27 ~]$ hadoop fs -ls /user/hadoop/telco/crm_split4
Found 5 items
-rw-r--r--   1 hadoop hdfsadmingroup          0 2022-04-04 19:41 /user/hadoop/telco/crm_split4/_SUCCESS
-rw-r--r--   1 hadoop hdfsadmingroup     180261 2022-04-04 19:40 /user/hadoop/telco/crm_split4/part-m-00000
-rw-r--r--   1 hadoop hdfsadmingroup          0 2022-04-04 19:40 /user/hadoop/telco/crm_split4/part-m-00001
-rw-r--r--   1 hadoop hdfsadmingroup          0 2022-04-04 19:41 /user/hadoop/telco/crm_split4/part-m-00002
-rw-r--r--   1 hadoop hdfsadmingroup  879907324 2022-04-04 19:41 /user/hadoop/telco/crm_split4/part-m-00003


[hadoop@ip-172-31-31-27 ~]$ sqoop import --connect jdbc:mysql://telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com:3306/telco --table devices --target-dir /user/hadoop/telco/devices --username admin -P -m 1
Warning: /usr/lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/usr/lib/hadoop/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/usr/lib/hive/lib/log4j-slf4j-impl-2.17.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
22/04/04 19:56:03 INFO sqoop.Sqoop: Running Sqoop version: 1.4.7
Enter password:
22/04/04 19:56:07 INFO manager.MySQLManager: Preparing to use a MySQL streaming resultset.
22/04/04 19:56:07 INFO tool.CodeGenTool: Beginning code generation
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
22/04/04 19:56:07 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `devices` AS t LIMIT 1
22/04/04 19:56:08 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `devices` AS t LIMIT 1
22/04/04 19:56:08 INFO orm.CompilationManager: HADOOP_MAPRED_HOME is /usr/lib/hadoop-mapreduce
Note: /tmp/sqoop-hadoop/compile/78d41e9f8a04417a76be473f4ae773b9/devices.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
22/04/04 19:56:12 INFO orm.CompilationManager: Writing jar file: /tmp/sqoop-hadoop/compile/78d41e9f8a04417a76be473f4ae773b9/devices.jar
22/04/04 19:56:12 WARN manager.MySQLManager: It looks like you are importing from mysql.
22/04/04 19:56:12 WARN manager.MySQLManager: This transfer can be faster! Use the --direct
22/04/04 19:56:12 WARN manager.MySQLManager: option to exercise a MySQL-specific fast path.
22/04/04 19:56:12 INFO manager.MySQLManager: Setting zero DATETIME behavior to convertToNull (mysql)
22/04/04 19:56:12 INFO mapreduce.ImportJobBase: Beginning import of devices
22/04/04 19:56:12 INFO Configuration.deprecation: mapred.jar is deprecated. Instead, use mapreduce.job.jar
22/04/04 19:56:13 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
22/04/04 19:56:13 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-27.ec2.internal/172.31.31.27:8032
22/04/04 19:56:14 INFO client.AHSProxy: Connecting to Application History server at ip-172-31-31-27.ec2.internal/172.31.31.27:10200
22/04/04 19:56:16 INFO db.DBInputFormat: Using read commited transaction isolation
22/04/04 19:56:16 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/04 19:56:16 INFO mapreduce.JobSubmitter: number of splits:1
22/04/04 19:56:16 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1649098708220_0008
22/04/04 19:56:16 INFO conf.Configuration: resource-types.xml not found
22/04/04 19:56:16 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
22/04/04 19:56:16 INFO resource.ResourceUtils: Adding resource type - name = memory-mb, units = Mi, type = COUNTABLE
22/04/04 19:56:16 INFO resource.ResourceUtils: Adding resource type - name = vcores, units = , type = COUNTABLE
22/04/04 19:56:16 INFO impl.YarnClientImpl: Submitted application application_1649098708220_0008
22/04/04 19:56:17 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-27.ec2.internal:20888/proxy/application_1649098708220_0008/
22/04/04 19:56:17 INFO mapreduce.Job: Running job: job_1649098708220_0008
22/04/04 19:56:26 INFO mapreduce.Job: Job job_1649098708220_0008 running in uber mode : false
22/04/04 19:56:26 INFO mapreduce.Job:  map 0% reduce 0%
22/04/04 19:56:39 INFO mapreduce.Job:  map 100% reduce 0%
22/04/04 19:56:39 INFO mapreduce.Job: Job job_1649098708220_0008 completed successfully
22/04/04 19:56:39 INFO mapreduce.Job: Counters: 30
    File System Counters
        FILE: Number of bytes read=0
        FILE: Number of bytes written=229449
        FILE: Number of read operations=0
        FILE: Number of large read operations=0
        FILE: Number of write operations=0
        HDFS: Number of bytes read=87
        HDFS: Number of bytes written=241747809
        HDFS: Number of read operations=4
        HDFS: Number of large read operations=0
        HDFS: Number of write operations=2
    Job Counters
        Launched map tasks=1
        Other local map tasks=1
        Total time spent by all maps in occupied slots (ms)=507360
        Total time spent by all reduces in occupied slots (ms)=0
        Total time spent by all map tasks (ms)=10570
        Total vcore-milliseconds taken by all map tasks=10570
        Total megabyte-milliseconds taken by all map tasks=16235520
    Map-Reduce Framework
        Map input records=2440100
        Map output records=2440100
        Input split bytes=87
        Spilled Records=0
        Failed Shuffles=0
        Merged Map outputs=0
        GC time elapsed (ms)=163
        CPU time spent (ms)=10010
        Physical memory (bytes) snapshot=601591808
        Virtual memory (bytes) snapshot=3314204672
        Total committed heap usage (bytes)=492306432
    File Input Format Counters
        Bytes Read=0
    File Output Format Counters
        Bytes Written=241747809
22/04/04 19:56:39 INFO mapreduce.ImportJobBase: Transferred 230.5487 MB in 25.8358 seconds (8.9236 MB/sec)
22/04/04 19:56:39 INFO mapreduce.ImportJobBase: Retrieved 2440100 records.


[hadoop@ip-172-31-31-27 ~]$ sqoop import --connect jdbc:mysql://telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com:3306/telco --table revenue --target-dir /user/hadoop/telco/revenue --username admin -P -m 1
Warning: /usr/lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/usr/lib/hadoop/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/usr/lib/hive/lib/log4j-slf4j-impl-2.17.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
22/04/04 19:59:18 INFO sqoop.Sqoop: Running Sqoop version: 1.4.7
Enter password:
22/04/04 19:59:26 INFO manager.MySQLManager: Preparing to use a MySQL streaming resultset.
22/04/04 19:59:26 INFO tool.CodeGenTool: Beginning code generation
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
22/04/04 19:59:27 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `revenue` AS t LIMIT 1
22/04/04 19:59:27 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `revenue` AS t LIMIT 1
22/04/04 19:59:27 INFO orm.CompilationManager: HADOOP_MAPRED_HOME is /usr/lib/hadoop-mapreduce
Note: /tmp/sqoop-hadoop/compile/6bbb3d714f100bb74affb50cfd3e97ba/revenue.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
22/04/04 19:59:33 INFO orm.CompilationManager: Writing jar file: /tmp/sqoop-hadoop/compile/6bbb3d714f100bb74affb50cfd3e97ba/revenue.jar
22/04/04 19:59:33 WARN manager.MySQLManager: It looks like you are importing from mysql.
22/04/04 19:59:33 WARN manager.MySQLManager: This transfer can be faster! Use the --direct
22/04/04 19:59:33 WARN manager.MySQLManager: option to exercise a MySQL-specific fast path.
22/04/04 19:59:33 INFO manager.MySQLManager: Setting zero DATETIME behavior to convertToNull (mysql)
22/04/04 19:59:33 INFO mapreduce.ImportJobBase: Beginning import of revenue
22/04/04 19:59:34 INFO Configuration.deprecation: mapred.jar is deprecated. Instead, use mapreduce.job.jar
22/04/04 19:59:35 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
22/04/04 19:59:35 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-27.ec2.internal/172.31.31.27:8032
22/04/04 19:59:35 INFO client.AHSProxy: Connecting to Application History server at ip-172-31-31-27.ec2.internal/172.31.31.27:10200
22/04/04 19:59:36 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/04 19:59:38 INFO db.DBInputFormat: Using read commited transaction isolation
22/04/04 19:59:38 INFO mapreduce.JobSubmitter: number of splits:1
22/04/04 19:59:39 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1649098708220_0009
22/04/04 19:59:39 INFO conf.Configuration: resource-types.xml not found
22/04/04 19:59:39 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
22/04/04 19:59:39 INFO resource.ResourceUtils: Adding resource type - name = memory-mb, units = Mi, type = COUNTABLE
22/04/04 19:59:39 INFO resource.ResourceUtils: Adding resource type - name = vcores, units = , type = COUNTABLE
22/04/04 19:59:39 INFO impl.YarnClientImpl: Submitted application application_1649098708220_0009
22/04/04 19:59:39 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-27.ec2.internal:20888/proxy/application_1649098708220_0009/
22/04/04 19:59:39 INFO mapreduce.Job: Running job: job_1649098708220_0009
22/04/04 19:59:48 INFO mapreduce.Job: Job job_1649098708220_0009 running in uber mode : false
22/04/04 19:59:48 INFO mapreduce.Job:  map 0% reduce 0%
22/04/04 19:59:58 INFO mapreduce.Job:  map 100% reduce 0%
22/04/04 19:59:59 INFO mapreduce.Job: Job job_1649098708220_0009 completed successfully
22/04/04 20:00:00 INFO mapreduce.Job: Counters: 30
    File System Counters
        FILE: Number of bytes read=0
        FILE: Number of bytes written=229418
        FILE: Number of read operations=0
        FILE: Number of large read operations=0
        FILE: Number of write operations=0
        HDFS: Number of bytes read=87
        HDFS: Number of bytes written=74838667
        HDFS: Number of read operations=4
        HDFS: Number of large read operations=0
        HDFS: Number of write operations=2
    Job Counters
        Launched map tasks=1
        Other local map tasks=1
        Total time spent by all maps in occupied slots (ms)=393840
        Total time spent by all reduces in occupied slots (ms)=0
        Total time spent by all map tasks (ms)=8205
        Total vcore-milliseconds taken by all map tasks=8205
        Total megabyte-milliseconds taken by all map tasks=12602880
    Map-Reduce Framework
        Map input records=1704601
        Map output records=1704601
        Input split bytes=87
        Spilled Records=0
        Failed Shuffles=0
        Merged Map outputs=0
        GC time elapsed (ms)=148
        CPU time spent (ms)=7170
        Physical memory (bytes) snapshot=586268672
        Virtual memory (bytes) snapshot=3300261888
        Total committed heap usage (bytes)=477626368
    File Input Format Counters
        Bytes Read=0
    File Output Format Counters
        Bytes Written=74838667
22/04/04 20:00:00 INFO mapreduce.ImportJobBase: Transferred 71.3717 MB in 24.9676 seconds (2.8586 MB/sec)
22/04/04 20:00:00 INFO mapreduce.ImportJobBase: Retrieved 1704601 records.


[hadoop@ip-172-31-20-215 ~]$ sqoop eval --connect jdbc:mysql://telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com:3306/telco --username admin -P --query "show tables"
Warning: /usr/lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/usr/lib/hadoop/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/usr/lib/hive/lib/log4j-slf4j-impl-2.17.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
22/04/09 05:24:31 INFO sqoop.Sqoop: Running Sqoop version: 1.4.7
Enter password:
22/04/09 05:24:38 INFO manager.MySQLManager: Preparing to use a MySQL streaming resultset.
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
------------------------
| Tables_in_telco      |
------------------------
| crm                  |
| devices              |
| revenue              |
------------------------

```
