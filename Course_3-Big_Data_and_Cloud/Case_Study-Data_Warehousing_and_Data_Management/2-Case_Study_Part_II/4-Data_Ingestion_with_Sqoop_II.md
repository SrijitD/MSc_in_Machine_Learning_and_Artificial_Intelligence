# Data Ingestion with Sqoop - II

Each type of data can be stored in a variety of file formats, and each format has its advantages and disadvantages. A file format is a way in which information is stored or encoded in a computer. Choosing a particular file format is important if you want maximum efficiency in terms of factors such as the processing power, network bandwidth and available storage. A file format directly affects the processing power of the system ingesting the data, the capacity of the network carrying the data, and the storage available for the ingested data.

Following are some of the widely used file formats:

- **Text**: This is the most commonly used file format for exchanging huge data between Hadoop and external systems. A text file provides limited support for schema evolution. It does not support block compression and is not compact. You can refer to the additional reading section for more details on schema evolution and block compression. Note that unless you specifically mention the file format of the table, data is stored as a text file by default.

- **Sequence files**: These are binary files, which store data as binary key-value pairs. A binary file is stored in a binary format. Because sequence files are binary files, they are more compact than text files. Each byte in a [binary file](https://en.wikipedia.org/wiki/Binary_file) has 256 possible values compared with pure unextended ASCII, which has only 128 possible values, making the binary file twice as compact. Sequence files support block compression and can be split and processed in parallel because of which they are extensively used in MapReduce jobs.

- **Avro**: This is a language-neutral data serialisation system developed in Apache’s Hadoop project. Serialisation is the process of converting data structures into a format that can be used for either data storage or transmission over a network. Language-neutral means that Avro files can be easily read later, even in a language that differs from the one used to write the file. These files are self-describing, **compressible** and **splittable** and can also be split and processed in parallel, which makes them suitable for MapReduce jobs. Being binary files, these are more compact than text files. Avro files also support schema evolution, which means that the schema used to read the file does not have to match the one used to write the file.

- **Parquet**: Parquet files support efficient compression and encoding schemes. They also allow compression schemes to be specified at a per-column level and are future-proofed to allow the addition of more encodings as they are invented and implemented.

Based on your requirements, you may choose the appropriate file format for storing your data.

In the following video, you will learn how to store data in an Avro file and create an Avro table. Then, you will learn how to create a parquet table from the Avro table by cleaning the data. You will also understand the difference in the performances of a parquet table and an Avro table.

Avro and Parquet are data formats within the Hadoop ecosystem.

![HDFS Data Platform](https://i.ibb.co/jWMfq53/HDFS-Data-Platform.png)

Let's now learn how to extract data from MySQL database using Sqoop into Avro file on HDFS system.

**VIDEO**

In this video, you understood how you can store data as an Avro file and create an Avro table.

To import the CRM data and store it as an Avro file you use the following command :

`sqoop import -Dmapreduce.job.user.classpath.first=true -Dhadoop.security.credential.provider.path=jceks://x.jceks --connect jdbc:mysql://telcodb.cqsesz6h9yjg.us-east-1.rds.amazonaws.com:3306/telco --table crm --target-dir /user/hadoop/telco/crm_avro -m 1 --username admin -P --as-avrodatafile`

**--as-avrodatafile** is responsible to store the data in compressed Avro format. Storing the data in Avro reduces the storage space and also make it easy to process data in parallel.

In the next video, you will learn how to clean the data and create a parquet table.

**VIDEO**

In the video above, you observed some discrepancies in the data, such as inappropriate values in the gender column. The corresponding rows are removed while moving the data from the staging environment. Now, the data needs to be stored as Parquet files because these are ideal for performing further analysis. Hence, Ganesh converted the Avro table to Parquet table to perform analysis.

Let's try to understand the difference between the Avro and Parquet files in the following video.

**VIDEO**

**Note**: In case you have already created the table ‘crm_cln_parq’ in a different database, you can move it into your new database using the following hive query :

```shell
Use old_database;
alter table crm_cln_parq rename to new_database.crm_cln_parq
```

In this video, you saw the comparison of the performance of an Avro table and a parquet table. Avro tables use row-based storage. So, queries that involve fetching the entire data are ideal while handling Avro tables. Parquet tables use column-based storage. So, running analytical queries, which involves handling specific columns, i.e., grouping by operations, is ideal while handling parquet tables.

**Note**: This segment was more focused on giving you a brief overview of various file formats and their importance in data ingestion. If you want to gain a detailed understanding, you can refer to the additional reading section.

[Schema evolution](http://en.wikipedia.org/wiki/Schema_evolution): Suppose you are working on a particular schema of a database in a software company. Now, the client needs you to update the schema based on certain requirements. Can you go ahead and directly update it? Well, no. This is because some applications will be running and acquiring data based on the current schema. Now, if you only update the schema without considering this, those applications will get affected. So, you need to evolve the schema in a way that it caters to the new requirements and the existing applications. This is called schema evolution.

[Block compression](http://comphadoop.weebly.com/): Since Hadoop stores large files by splitting them into blocks, it will be best if the individual blocks can be compressed. Block compression is the process of compressing each individual block.

**Additional reading**

- [Overview of SerDes (Apache Docs)](https://cwiki.apache.org/confluence/display/Hive/DeveloperGuide#DeveloperGuide-HiveSerDe)

- [Various file formats in Hive (Apache Docs)](http://cwiki.apache.org/confluence/display/Hive/FileFormats)

- [A brief overview of the parquet file format. (Apache Docs)](http://cwiki.apache.org/confluence/display/Hive/Parquet)

- [A blog on Twitter explaining parquet and columnar format in detail](https://blog.twitter.com/engineering/en_us/a/2013/dremel-made-simple-with-parquet.html)

```shell
[hadoop@ip-172-31-20-215 ~]$ sqoop import -Dmapreduce.job.user.classpath.first=true -Dhadoop.security.credential.provider.path=jceks://x.jceks --connect jdbc:mysql://telco-db.cpt4oatcfnxe.us-east-1.rds.amazonaws.com:3306/telco --table crm --target-dir /user/hadoop/telco/crm_avro -m 1 --username admin -P --as-avrodatafile
Warning: /usr/lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/usr/lib/hadoop/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/usr/lib/hive/lib/log4j-slf4j-impl-2.17.1.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
22/04/09 06:42:28 INFO sqoop.Sqoop: Running Sqoop version: 1.4.7
Enter password:
22/04/09 06:42:35 INFO manager.MySQLManager: Preparing to use a MySQL streaming resultset.
22/04/09 06:42:35 INFO tool.CodeGenTool: Beginning code generation
Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
22/04/09 06:42:36 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/09 06:42:37 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/09 06:42:37 INFO orm.CompilationManager: HADOOP_MAPRED_HOME is /usr/lib/hadoop-mapreduce
Note: /tmp/sqoop-hadoop/compile/fa78a3df23ee0ac09c06799dec0078f3/crm.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
22/04/09 06:42:45 INFO orm.CompilationManager: Writing jar file: /tmp/sqoop-hadoop/compile/fa78a3df23ee0ac09c06799dec0078f3/crm.jar
22/04/09 06:42:45 WARN manager.MySQLManager: It looks like you are importing from mysql.
22/04/09 06:42:45 WARN manager.MySQLManager: This transfer can be faster! Use the --direct
22/04/09 06:42:45 WARN manager.MySQLManager: option to exercise a MySQL-specific fast path.
22/04/09 06:42:45 INFO manager.MySQLManager: Setting zero DATETIME behavior to convertToNull (mysql)
22/04/09 06:42:45 INFO mapreduce.ImportJobBase: Beginning import of crm
22/04/09 06:42:46 INFO Configuration.deprecation: mapred.jar is deprecated. Instead, use mapreduce.job.jar
22/04/09 06:42:48 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/09 06:42:48 INFO manager.SqlManager: Executing SQL statement: SELECT t.* FROM `crm` AS t LIMIT 1
22/04/09 06:42:48 INFO mapreduce.DataDrivenImportJob: Writing Avro schema file: /tmp/sqoop-hadoop/compile/fa78a3df23ee0ac09c06799dec0078f3/crm.avsc
22/04/09 06:42:48 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
22/04/09 06:42:48 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-20-215.ec2.internal/172.31.20.215:8032
22/04/09 06:42:49 INFO client.AHSProxy: Connecting to Application History server at ip-172-31-20-215.ec2.internal/172.31.20.215:10200
22/04/09 06:42:50 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/09 06:42:50 WARN hdfs.DataStreamer: Caught exception
java.lang.InterruptedException
    at java.lang.Object.wait(Native Method)
    at java.lang.Thread.join(Thread.java:1257)
    at java.lang.Thread.join(Thread.java:1331)
    at org.apache.hadoop.hdfs.DataStreamer.closeResponder(DataStreamer.java:980)
    at org.apache.hadoop.hdfs.DataStreamer.endBlock(DataStreamer.java:630)
    at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:807)
22/04/09 06:42:51 INFO db.DBInputFormat: Using read commited transaction isolation
22/04/09 06:42:51 INFO mapreduce.JobSubmitter: number of splits:1
22/04/09 06:42:52 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1649479814076_0007
22/04/09 06:42:53 INFO conf.Configuration: resource-types.xml not found
22/04/09 06:42:53 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
22/04/09 06:42:53 INFO resource.ResourceUtils: Adding resource type - name = memory-mb, units = Mi, type = COUNTABLE
22/04/09 06:42:53 INFO resource.ResourceUtils: Adding resource type - name = vcores, units = , type = COUNTABLE
22/04/09 06:42:53 INFO impl.YarnClientImpl: Submitted application application_1649479814076_0007
22/04/09 06:42:53 INFO mapreduce.Job: The url to track the job: http://ip-172-31-20-215.ec2.internal:20888/proxy/application_1649479814076_0007/
22/04/09 06:42:53 INFO mapreduce.Job: Running job: job_1649479814076_0007
22/04/09 06:43:02 INFO mapreduce.Job: Job job_1649479814076_0007 running in uber mode : false
22/04/09 06:43:02 INFO mapreduce.Job:  map 0% reduce 0%
22/04/09 06:44:22 INFO mapreduce.Job:  map 100% reduce 0%
22/04/09 06:44:24 INFO mapreduce.Job: Job job_1649479814076_0007 completed successfully
22/04/09 06:44:24 INFO mapreduce.Job: Counters: 30
    File System Counters
        FILE: Number of bytes read=0
        FILE: Number of bytes written=230301
        FILE: Number of read operations=0
        FILE: Number of large read operations=0
        FILE: Number of write operations=0
        HDFS: Number of bytes read=87
        HDFS: Number of bytes written=921278728
        HDFS: Number of read operations=4
        HDFS: Number of large read operations=0
        HDFS: Number of write operations=2
    Job Counters
        Launched map tasks=1
        Other local map tasks=1
        Total time spent by all maps in occupied slots (ms)=3754560
        Total time spent by all reduces in occupied slots (ms)=0
        Total time spent by all map tasks (ms)=78220
        Total vcore-milliseconds taken by all map tasks=78220
        Total megabyte-milliseconds taken by all map tasks=120145920
    Map-Reduce Framework
        Map input records=13627493
        Map output records=13627493
        Input split bytes=87
        Spilled Records=0
        Failed Shuffles=0
        Merged Map outputs=0
        GC time elapsed (ms)=520
        CPU time spent (ms)=81710
        Physical memory (bytes) snapshot=634146816
        Virtual memory (bytes) snapshot=3320745984
        Total committed heap usage (bytes)=531628032
    File Input Format Counters
        Bytes Read=0
    File Output Format Counters
        Bytes Written=921278728
22/04/09 06:44:24 INFO mapreduce.ImportJobBase: Transferred 878.5999 MB in 95.7189 seconds (9.179 MB/sec)
22/04/09 06:44:24 INFO mapreduce.ImportJobBase: Retrieved 13627493 records.

[hadoop@ip-172-31-20-215 ~]$ hadoop fs -ls /user/hadoop/telco/crm_avro
Found 2 items
-rw-r--r--   1 hadoop hdfsadmingroup          0 2022-04-09 06:44 /user/hadoop/telco/crm_avro/_SUCCESS
-rw-r--r--   1 hadoop hdfsadmingroup  921278728 2022-04-09 06:44 /user/hadoop/telco/crm_avro/part-m-00000.avro

[hadoop@ip-172-31-20-215 ~]$ beeline -u jdbc:hive2://localhost:10000/default -n hadoop
Connecting to jdbc:hive2://localhost:10000/default
Connected to: Apache Hive (version 2.3.9-amzn-0)
Driver: Hive JDBC (version 2.3.9-amzn-0)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 2.3.9-amzn-0 by Apache Hive
0: jdbc:hive2://localhost:10000/default> show databases;
INFO  : Compiling command(queryId=hive_20220409065502_8e6853ef-87e4-43f9-b94c-bd4a9205b46a): show databases
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:database_name, type:string, comment:from deserializer)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409065502_8e6853ef-87e4-43f9-b94c-bd4a9205b46a : STAGE DEPENDENCIES:
  Stage-0 is a root stage [DDL]
  Stage-1 depends on stages: Stage-0 [FETCH]

STAGE PLANS:
  Stage: Stage-0
      Show Databases Operator:
        Show Databases
          result file: file:/mnt/tmp/hive/944384bf-47d7-4ff7-9d31-0f24df70cd65/hive_2022-04-09_06-55-02_293_3400089943216349865-2/-local-10000

  Stage: Stage-1
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink


INFO  : Completed compiling command(queryId=hive_20220409065502_8e6853ef-87e4-43f9-b94c-bd4a9205b46a); Time taken: 0.071 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409065502_8e6853ef-87e4-43f9-b94c-bd4a9205b46a): show databases
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20220409065502_8e6853ef-87e4-43f9-b94c-bd4a9205b46a); Time taken: 0.056 seconds
INFO  : OK
+----------------+
| database_name  |
+----------------+
| default        |
| telco_db       |
+----------------+
2 rows selected (0.624 seconds)

0: jdbc:hive2://localhost:10000/default> use telco_db;
INFO  : Compiling command(queryId=hive_20220409065514_c3b2c97a-3251-4379-bcf8-90199d6da016): use telco_db
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : EXPLAIN output for queryid hive_20220409065514_c3b2c97a-3251-4379-bcf8-90199d6da016 : STAGE DEPENDENCIES:
  Stage-0 is a root stage [DDL]

STAGE PLANS:
  Stage: Stage-0


INFO  : Completed compiling command(queryId=hive_20220409065514_c3b2c97a-3251-4379-bcf8-90199d6da016); Time taken: 0.024 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409065514_c3b2c97a-3251-4379-bcf8-90199d6da016): use telco_db
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20220409065514_c3b2c97a-3251-4379-bcf8-90199d6da016); Time taken: 0.008 seconds
INFO  : OK
No rows affected (0.061 seconds)

0: jdbc:hive2://localhost:10000/default> create table crm_avro
. . . . . . . . . . . . . . . . . . . .> (
. . . . . . . . . . . . . . . . . . . .> msisdn string,
. . . . . . . . . . . . . . . . . . . .> gender string,
. . . . . . . . . . . . . . . . . . . .> year_of_birth INT,
. . . . . . . . . . . . . . . . . . . .> system_status string,
. . . . . . . . . . . . . . . . . . . .> mobile_type string,
. . . . . . . . . . . . . . . . . . . .> value_segment string
. . . . . . . . . . . . . . . . . . . .> )
. . . . . . . . . . . . . . . . . . . .> stored as avro;
INFO  : Compiling command(queryId=hive_20220409065532_6668d2e7-0c76-40cc-9352-d32124e4302a): create table crm_avro
(
msisdn string,
gender string,
year_of_birth INT,
system_status string,
mobile_type string,
value_segment string
)
stored as avro
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : EXPLAIN output for queryid hive_20220409065532_6668d2e7-0c76-40cc-9352-d32124e4302a : STAGE DEPENDENCIES:
  Stage-0 is a root stage [DDL]

STAGE PLANS:
  Stage: Stage-0
      Create Table Operator:
        Create Table
          columns: msisdn string, gender string, year_of_birth int, system_status string, mobile_type string, value_segment string
          input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
          output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
          serde name: org.apache.hadoop.hive.serde2.avro.AvroSerDe
          name: telco_db.crm_avro


INFO  : Completed compiling command(queryId=hive_20220409065532_6668d2e7-0c76-40cc-9352-d32124e4302a); Time taken: 0.077 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409065532_6668d2e7-0c76-40cc-9352-d32124e4302a): create table crm_avro
(
msisdn string,
gender string,
year_of_birth INT,
system_status string,
mobile_type string,
value_segment string
)
stored as avro
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20220409065532_6668d2e7-0c76-40cc-9352-d32124e4302a); Time taken: 0.418 seconds
INFO  : OK
No rows affected (0.551 seconds)

0: jdbc:hive2://localhost:10000/default> load data inpath '/user/hadoop/telco/crm_avro' into table crm_avro;
INFO  : Compiling command(queryId=hive_20220409065544_0e7b4939-5ea6-49ee-8a27-4af78c77fb88): load data inpath '/user/hadoop/telco/crm_avro' into table crm_avro
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : EXPLAIN output for queryid hive_20220409065544_0e7b4939-5ea6-49ee-8a27-4af78c77fb88 : STAGE DEPENDENCIES:
  Stage-0 is a root stage [MOVE]
  Stage-1 depends on stages: Stage-0 [STATS]

STAGE PLANS:
  Stage: Stage-0
    Move Operator
      tables:
          replace: false
          source: hdfs://ip-172-31-20-215.ec2.internal:8020/user/hadoop/telco/crm_avro
          table:
              input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
              output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
              properties:
                COLUMN_STATS_ACCURATE {"BASIC_STATS":"true"}
                bucket_count -1
                column.name.delimiter ,
                columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
                columns.comments
                columns.types string:string:int:string:string:string
                file.inputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                file.outputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                location hdfs://ip-172-31-20-215.ec2.internal:8020/user/hive/warehouse/telco_db.db/crm_avro
                name telco_db.crm_avro
                numFiles 0
                numRows 0
                rawDataSize 0
                serialization.ddl struct crm_avro { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment}
                serialization.format 1
                serialization.lib org.apache.hadoop.hive.serde2.avro.AvroSerDe
                totalSize 0
                transient_lastDdlTime 1649487332
              serde: org.apache.hadoop.hive.serde2.avro.AvroSerDe
              name: telco_db.crm_avro

  Stage: Stage-1
    Stats-Aggr Operator


INFO  : Completed compiling command(queryId=hive_20220409065544_0e7b4939-5ea6-49ee-8a27-4af78c77fb88); Time taken: 0.077 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409065544_0e7b4939-5ea6-49ee-8a27-4af78c77fb88): load data inpath '/user/hadoop/telco/crm_avro' into table crm_avro
INFO  : Starting task [Stage-0:MOVE] in serial mode
INFO  : Loading data to table telco_db.crm_avro from hdfs://ip-172-31-20-215.ec2.internal:8020/user/hadoop/telco/crm_avro
INFO  : Starting task [Stage-1:STATS] in serial mode
INFO  : Completed executing command(queryId=hive_20220409065544_0e7b4939-5ea6-49ee-8a27-4af78c77fb88); Time taken: 0.828 seconds
INFO  : OK
No rows affected (0.956 seconds)

0: jdbc:hive2://localhost:10000/default> show create table crm_avro;
INFO  : Compiling command(queryId=hive_20220409070531_14abe371-bbaf-49c1-9bd9-97e884a18726): show create table crm_avro
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:createtab_stmt, type:string, comment:from deserializer)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409070531_14abe371-bbaf-49c1-9bd9-97e884a18726 : STAGE DEPENDENCIES:
  Stage-0 is a root stage [DDL]
  Stage-1 depends on stages: Stage-0 [FETCH]

STAGE PLANS:
  Stage: Stage-0
      Show Create Table Operator:
        Show Create Table
          result file: file:/mnt/tmp/hive/330afb95-1d3b-489c-9fc5-34a32677832f/hive_2022-04-09_07-05-31_770_7820757674962798411-3/-local-10000
          table name: crm_avro

  Stage: Stage-1
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink


INFO  : Completed compiling command(queryId=hive_20220409070531_14abe371-bbaf-49c1-9bd9-97e884a18726); Time taken: 0.05 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409070531_14abe371-bbaf-49c1-9bd9-97e884a18726): show create table crm_avro
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20220409070531_14abe371-bbaf-49c1-9bd9-97e884a18726); Time taken: 0.186 seconds
INFO  : OK
+----------------------------------------------------+
|                   createtab_stmt                   |
+----------------------------------------------------+
| CREATE TABLE `crm_avro`(                           |
|   `msisdn` string COMMENT '',                      |
|   `gender` string COMMENT '',                      |
|   `year_of_birth` int COMMENT '',                  |
|   `system_status` string COMMENT '',               |
|   `mobile_type` string COMMENT '',                 |
|   `value_segment` string COMMENT '')               |
| ROW FORMAT SERDE                                   |
|   'org.apache.hadoop.hive.serde2.avro.AvroSerDe'   |
| STORED AS INPUTFORMAT                              |
|   'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'  |
| OUTPUTFORMAT                                       |
|   'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' |
| LOCATION                                           |
|   'hdfs://ip-172-31-20-215.ec2.internal:8020/user/hive/warehouse/telco_db.db/crm_avro' |
| TBLPROPERTIES (                                    |
|   'transient_lastDdlTime'='1649487344')            |
+----------------------------------------------------+
17 rows selected (0.654 seconds)


0: jdbc:hive2://localhost:10000/default> select * from crm_avro limit 5;
INFO  : Compiling command(queryId=hive_20220409101225_2eb91e54-f55b-405f-8e74-103d504d9645): select * from crm_avro limit 5
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:crm_avro.msisdn, type:string, comment:null), FieldSchema(name:crm_avro.gender, type:string, comment:null), FieldSchema(name:crm_avro.year_of_birth, type:int, comment:null), FieldSchema(name:crm_avro.system_status, type:string, comment:null), FieldSchema(name:crm_avro.mobile_type, type:string, comment:null), FieldSchema(name:crm_avro.value_segment, type:string, comment:null)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409101225_2eb91e54-f55b-405f-8e74-103d504d9645 : STAGE DEPENDENCIES:
  Stage-0 is a root stage [FETCH]

STAGE PLANS:
  Stage: Stage-0
    Fetch Operator
      limit: 5
      Processor Tree:
        TableScan
          alias: crm_avro
          GatherStats: false
          Select Operator
            expressions: msisdn (type: string), gender (type: string), year_of_birth (type: int), system_status (type: string), mobile_type (type: string), value_segment (type: string)
            outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5
            Limit
              Number of rows: 5
              ListSink


INFO  : Completed compiling command(queryId=hive_20220409101225_2eb91e54-f55b-405f-8e74-103d504d9645); Time taken: 3.539 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409101225_2eb91e54-f55b-405f-8e74-103d504d9645): select * from crm_avro limit 5
INFO  : Completed executing command(queryId=hive_20220409101225_2eb91e54-f55b-405f-8e74-103d504d9645); Time taken: 0.002 seconds
INFO  : OK
+-----------------------------------+------------------+-------------------------+-------------------------+-----------------------+-------------------------+
|          crm_avro.msisdn          | crm_avro.gender  | crm_avro.year_of_birth  | crm_avro.system_status  | crm_avro.mobile_type  | crm_avro.value_segment  |
+-----------------------------------+------------------+-------------------------+-------------------------+-----------------------+-------------------------+
| aeef4233d9ad34e41f7ecf48d64646f8  | MALE             | 1985                    | ACTIVE                  | Prepaid               | Tier_3                  |
| 2397d009e705bc8a2654cbb3f480cc59  | MALE             | 1958                    | ACTIVE                  | Prepaid               | Tier_3                  |
| 6f05d738919f9283322bae17dc366bf5  | MALE             | 1976                    | ACTIVE                  | Prepaid               | Tier_3                  |
| 45352d9d126f86f40c7eee79a82c833c  | MALE             | 1996                    | ACTIVE                  | Prepaid               | Tier_3                  |
| 959b00a279e2785cfa81728338c324f7  | FEMALE           | 1960                    | ACTIVE                  | Prepaid               | Tier_3                  |
+-----------------------------------+------------------+-------------------------+-------------------------+-----------------------+-------------------------+
5 rows selected (3.704 seconds)

0: jdbc:hive2://localhost:10000/default> select distinct(gender) from crm_avro limit 20;
INFO  : Compiling command(queryId=hive_20220409101437_253dd924-0ad3-43fe-a708-3fa9f913e101): select distinct(gender) from crm_avro limit 20
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:gender, type:string, comment:null)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409101437_253dd924-0ad3-43fe-a708-3fa9f913e101 : STAGE DEPENDENCIES:
  Stage-1 is a root stage [MAPRED]
  Stage-0 depends on stages: Stage-1 [FETCH]

STAGE PLANS:
  Stage: Stage-1
    Tez
      DagId: hive_20220409101437_253dd924-0ad3-43fe-a708-3fa9f913e101:1
      Edges:
        Reducer 2 <- Map 1 (SIMPLE_EDGE)
      DagName:
      Vertices:
        Map 1
            Map Operator Tree:
                TableScan
                  alias: crm_avro
                  Statistics: Num rows: 9212787 Data size: 921278720 Basic stats: COMPLETE Column stats: NONE
                  GatherStats: false
                  Select Operator
                    expressions: gender (type: string)
                    outputColumnNames: gender
                    Statistics: Num rows: 9212787 Data size: 921278720 Basic stats: COMPLETE Column stats: NONE
                    Group By Operator
                      keys: gender (type: string)
                      mode: hash
                      outputColumnNames: _col0
                      Statistics: Num rows: 9212787 Data size: 921278720 Basic stats: COMPLETE Column stats: NONE
                      Reduce Output Operator
                        key expressions: _col0 (type: string)
                        null sort order: a
                        sort order: +
                        Map-reduce partition columns: _col0 (type: string)
                        Statistics: Num rows: 9212787 Data size: 921278720 Basic stats: COMPLETE Column stats: NONE
                        tag: -1
                        TopN: 20
                        TopN Hash Memory Usage: 0.1
                        auto parallelism: true
            Path -> Alias:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro [crm_avro]
            Path -> Partition:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                Partition
                  base file name: crm_avro
                  input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                  output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                  properties:
                    bucket_count -1
                    column.name.delimiter ,
                    columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
                    columns.comments
                    columns.types string:string:int:string:string:string
                    file.inputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                    file.outputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                    location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                    name default.crm_avro
                    numFiles 1
                    numRows 0
                    rawDataSize 0
                    serialization.ddl struct crm_avro { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment}
                    serialization.format 1
                    serialization.lib org.apache.hadoop.hive.serde2.avro.AvroSerDe
                    totalSize 921278728
                    transient_lastDdlTime 1649499123
                  serde: org.apache.hadoop.hive.serde2.avro.AvroSerDe

                    input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                    output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                    properties:
                      bucket_count -1
                      column.name.delimiter ,
                      columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
                      columns.comments
                      columns.types string:string:int:string:string:string
                      file.inputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                      file.outputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                      location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                      name default.crm_avro
                      numFiles 1
                      numRows 0
                      rawDataSize 0
                      serialization.ddl struct crm_avro { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment}
                      serialization.format 1
                      serialization.lib org.apache.hadoop.hive.serde2.avro.AvroSerDe
                      totalSize 921278728
                      transient_lastDdlTime 1649499123
                    serde: org.apache.hadoop.hive.serde2.avro.AvroSerDe
                    name: default.crm_avro
                  name: default.crm_avro
            Truncated Path -> Alias:
              /crm_avro [crm_avro]
        Reducer 2
            Needs Tagging: false
            Reduce Operator Tree:
              Group By Operator
                keys: KEY._col0 (type: string)
                mode: mergepartial
                outputColumnNames: _col0
                Statistics: Num rows: 4606393 Data size: 460639309 Basic stats: COMPLETE Column stats: NONE
                Limit
                  Number of rows: 20
                  Statistics: Num rows: 20 Data size: 2000 Basic stats: COMPLETE Column stats: NONE
                  File Output Operator
                    compressed: false
                    GlobalTableId: 0
                    directory: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-14-37_779_3665941826577266157-3/-mr-10001/.hive-staging_hive_2022-04-09_10-14-37_779_3665941826577266157-3/-ext-10002
                    NumFilesPerFileSink: 1
                    Statistics: Num rows: 20 Data size: 2000 Basic stats: COMPLETE Column stats: NONE
                    Stats Publishing Key Prefix: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-14-37_779_3665941826577266157-3/-mr-10001/.hive-staging_hive_2022-04-09_10-14-37_779_3665941826577266157-3/-ext-10002/
                    table:
                        input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                        output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                        properties:
                          columns _col0
                          columns.types string
                          escape.delim \
                          hive.serialization.extend.additional.nesting.levels true
                          serialization.escape.crlf true
                          serialization.format 1
                          serialization.lib org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                        serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                    TotalFiles: 1
                    GatherStats: false
                    MultiFileSpray: false

  Stage: Stage-0
    Fetch Operator
      limit: 20
      Processor Tree:
        ListSink


INFO  : Completed compiling command(queryId=hive_20220409101437_253dd924-0ad3-43fe-a708-3fa9f913e101); Time taken: 0.625 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409101437_253dd924-0ad3-43fe-a708-3fa9f913e101): select distinct(gender) from crm_avro limit 20
INFO  : Query ID = hive_20220409101437_253dd924-0ad3-43fe-a708-3fa9f913e101
INFO  : Total jobs = 1
INFO  : Launching Job 1 out of 1
INFO  : Starting task [Stage-1:MAPRED] in serial mode
INFO  : Tez session hasn't been created yet. Opening session
INFO  : Dag name: select distinct(gender) from crm_avro l...20(Stage-1)
INFO  : Status: Running (Executing on YARN cluster with App id application_1649497622625_0007)

INFO  : Map 1: 0/7    Reducer 2: 0/8
INFO  : Map 1: 0/7    Reducer 2: 0/8
INFO  : Map 1: 0/7    Reducer 2: 0/8
INFO  : Map 1: 0(+1)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 0(+2)/7    Reducer 2: 0/8
INFO  : Map 1: 1(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 2(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 4(+3)/7    Reducer 2: 0/8
INFO  : Map 1: 5(+2)/7    Reducer 2: 0/8
INFO  : Map 1: 6(+1)/7    Reducer 2: 0/1
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+1)/1
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+1)/1
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+1)/1
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+1)/1
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+1)/1
INFO  : Map 1: 7/7    Reducer 2: 0(+1)/1
INFO  : Map 1: 7/7    Reducer 2: 1/1
INFO  : Completed executing command(queryId=hive_20220409101437_253dd924-0ad3-43fe-a708-3fa9f913e101); Time taken: 136.988 seconds
INFO  : OK
+-------------+
|   gender    |
+-------------+
|             |
| !           |
| +           |
| .           |
| 0           |
| 0.0-        |
| 05/01/1958  |
| 1           |
| 11          |
| 16/10       |
| 20/1/1966   |
| 21          |
| 22/8/1980   |
| 25/5/1978   |
| 3           |
| 333         |
| 6           |
| A           |
| A/N         |
| B           |
+-------------+
20 rows selected (137.723 seconds)

0: jdbc:hive2://localhost:10000/default> select distinct(gender) from crm_avro where UPPER(gender) in ("MALE", "FEMALE");
INFO  : Compiling command(queryId=hive_20220409101914_da18a1c6-443d-45bd-a02a-236d7434cd9c): select distinct(gender) from crm_avro where UPPER(gender) in ("MALE", "FEMALE")
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:gender, type:string, comment:null)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409101914_da18a1c6-443d-45bd-a02a-236d7434cd9c : STAGE DEPENDENCIES:
  Stage-1 is a root stage [MAPRED]
  Stage-0 depends on stages: Stage-1 [FETCH]

STAGE PLANS:
  Stage: Stage-1
    Tez
      DagId: hive_20220409101914_da18a1c6-443d-45bd-a02a-236d7434cd9c:2
      Edges:
        Reducer 2 <- Map 1 (SIMPLE_EDGE)
      DagName:
      Vertices:
        Map 1
            Map Operator Tree:
                TableScan
                  alias: crm_avro
                  Statistics: Num rows: 9212787 Data size: 921278720 Basic stats: COMPLETE Column stats: NONE
                  GatherStats: false
                  Filter Operator
                    isSamplingPred: false
                    predicate: (upper(gender)) IN ('MALE', 'FEMALE') (type: boolean)
                    Statistics: Num rows: 4606393 Data size: 460639309 Basic stats: COMPLETE Column stats: NONE
                    Group By Operator
                      keys: gender (type: string)
                      mode: hash
                      outputColumnNames: _col0
                      Statistics: Num rows: 4606393 Data size: 460639309 Basic stats: COMPLETE Column stats: NONE
                      Reduce Output Operator
                        key expressions: _col0 (type: string)
                        null sort order: a
                        sort order: +
                        Map-reduce partition columns: _col0 (type: string)
                        Statistics: Num rows: 4606393 Data size: 460639309 Basic stats: COMPLETE Column stats: NONE
                        tag: -1
                        auto parallelism: true
            Path -> Alias:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro [crm_avro]
            Path -> Partition:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                Partition
                  base file name: crm_avro
                  input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                  output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                  properties:
                    bucket_count -1
                    column.name.delimiter ,
                    columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
                    columns.comments
                    columns.types string:string:int:string:string:string
                    file.inputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                    file.outputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                    location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                    name default.crm_avro
                    numFiles 1
                    numRows 0
                    rawDataSize 0
                    serialization.ddl struct crm_avro { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment}
                    serialization.format 1
                    serialization.lib org.apache.hadoop.hive.serde2.avro.AvroSerDe
                    totalSize 921278728
                    transient_lastDdlTime 1649499123
                  serde: org.apache.hadoop.hive.serde2.avro.AvroSerDe

                    input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                    output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                    properties:
                      bucket_count -1
                      column.name.delimiter ,
                      columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
                      columns.comments
                      columns.types string:string:int:string:string:string
                      file.inputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                      file.outputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                      location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                      name default.crm_avro
                      numFiles 1
                      numRows 0
                      rawDataSize 0
                      serialization.ddl struct crm_avro { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment}
                      serialization.format 1
                      serialization.lib org.apache.hadoop.hive.serde2.avro.AvroSerDe
                      totalSize 921278728
                      transient_lastDdlTime 1649499123
                    serde: org.apache.hadoop.hive.serde2.avro.AvroSerDe
                    name: default.crm_avro
                  name: default.crm_avro
            Truncated Path -> Alias:
              /crm_avro [crm_avro]
        Reducer 2
            Needs Tagging: false
            Reduce Operator Tree:
              Group By Operator
                keys: KEY._col0 (type: string)
                mode: mergepartial
                outputColumnNames: _col0
                Statistics: Num rows: 2303196 Data size: 230319604 Basic stats: COMPLETE Column stats: NONE
                File Output Operator
                  compressed: false
                  GlobalTableId: 0
                  directory: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-19-14_526_81795505138721899-3/-mr-10001/.hive-staging_hive_2022-04-09_10-19-14_526_81795505138721899-3/-ext-10002
                  NumFilesPerFileSink: 1
                  Statistics: Num rows: 2303196 Data size: 230319604 Basic stats: COMPLETE Column stats: NONE
                  Stats Publishing Key Prefix: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-19-14_526_81795505138721899-3/-mr-10001/.hive-staging_hive_2022-04-09_10-19-14_526_81795505138721899-3/-ext-10002/
                  table:
                      input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                      output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                      properties:
                        columns _col0
                        columns.types string
                        escape.delim \
                        hive.serialization.extend.additional.nesting.levels true
                        serialization.escape.crlf true
                        serialization.format 1
                        serialization.lib org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                      serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                  TotalFiles: 1
                  GatherStats: false
                  MultiFileSpray: false

  Stage: Stage-0
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink


INFO  : Completed compiling command(queryId=hive_20220409101914_da18a1c6-443d-45bd-a02a-236d7434cd9c); Time taken: 1.217 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409101914_da18a1c6-443d-45bd-a02a-236d7434cd9c): select distinct(gender) from crm_avro where UPPER(gender) in ("MALE", "FEMALE")
INFO  : Query ID = hive_20220409101914_da18a1c6-443d-45bd-a02a-236d7434cd9c
INFO  : Total jobs = 1
INFO  : Launching Job 1 out of 1
INFO  : Starting task [Stage-1:MAPRED] in serial mode
INFO  : Session is already open
INFO  : Dag name: select distinct(gender) from crm..."FEMALE")(Stage-1)
INFO  : Status: Running (Executing on YARN cluster with App id application_1649497622625_0007)

INFO  : Map 1: 0/7    Reducer 2: 0/4
INFO  : Map 1: 0/7    Reducer 2: 0/4
INFO  : Map 1: 0/7    Reducer 2: 0/4
INFO  : Map 1: 0(+1)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+2)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 1(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 2(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 2(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 2(+2)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 4(+3)/7    Reducer 2: 0/4
INFO  : Map 1: 5(+2)/7    Reducer 2: 0(+1)/4
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+2)/4
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+2)/4
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+2)/4
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+2)/4
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+2)/4
INFO  : Map 1: 7/7    Reducer 2: 0(+3)/4
INFO  : Map 1: 7/7    Reducer 2: 2(+2)/4
INFO  : Map 1: 7/7    Reducer 2: 3(+1)/4
INFO  : Map 1: 7/7    Reducer 2: 4/4
INFO  : Completed executing command(queryId=hive_20220409101914_da18a1c6-443d-45bd-a02a-236d7434cd9c); Time taken: 131.049 seconds
INFO  : OK
+---------+
| gender  |
+---------+
| Female  |
| MALE    |
| FEMALE  |
| Male    |
| male    |
| mALE    |
| female  |
+---------+
7 rows selected (132.347 seconds)

0: jdbc:hive2://localhost:10000/default> create table crm_cln_parq
. . . . . . . . . . . . . . . . . . . .> stored as parquet
. . . . . . . . . . . . . . . . . . . .> as
. . . . . . . . . . . . . . . . . . . .> select *, (YEAR(CURRENT_DATE)-year_of_birth) age, UPPER(gender) genderUpp from crm_avro where UPPER(gender) in ("MALE", "FEMALE");
INFO  : Compiling command(queryId=hive_20220409102452_b446acce-8d41-49d3-9863-053aa46e07ba): create table crm_cln_parq
stored as parquet
as
select *, (YEAR(CURRENT_DATE)-year_of_birth) age, UPPER(gender) genderUpp from crm_avro where UPPER(gender) in ("MALE", "FEMALE")
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:crm_avro.msisdn, type:string, comment:null), FieldSchema(name:crm_avro.gender, type:string, comment:null), FieldSchema(name:crm_avro.year_of_birth, type:int, comment:null), FieldSchema(name:crm_avro.system_status, type:string, comment:null), FieldSchema(name:crm_avro.mobile_type, type:string, comment:null), FieldSchema(name:crm_avro.value_segment, type:string, comment:null), FieldSchema(name:age, type:int, comment:null), FieldSchema(name:genderupp, type:string, comment:null)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409102452_b446acce-8d41-49d3-9863-053aa46e07ba : STAGE DEPENDENCIES:
  Stage-1 is a root stage [MAPRED]
  Stage-2 depends on stages: Stage-1 [DEPENDENCY_COLLECTION]
  Stage-4 depends on stages: Stage-2, Stage-0 [DDL]
  Stage-3 depends on stages: Stage-4 [STATS]
  Stage-0 depends on stages: Stage-1 [MOVE]

STAGE PLANS:
  Stage: Stage-1
    Tez
      DagId: hive_20220409102452_b446acce-8d41-49d3-9863-053aa46e07ba:3
      DagName:
      Vertices:
        Map 1
            Map Operator Tree:
                TableScan
                  alias: crm_avro
                  Statistics: Num rows: 1827933 Data size: 921278720 Basic stats: COMPLETE Column stats: NONE
                  GatherStats: false
                  Filter Operator
                    isSamplingPred: false
                    predicate: (upper(gender)) IN ('MALE', 'FEMALE') (type: boolean)
                    Statistics: Num rows: 913966 Data size: 460639107 Basic stats: COMPLETE Column stats: NONE
                    Select Operator
                      expressions: msisdn (type: string), gender (type: string), year_of_birth (type: int), system_status (type: string), mobile_type (type: string), value_segment (type: string), (2022 - year_of_birth) (type: int), upper(gender) (type: string)
                      outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7
                      Statistics: Num rows: 913966 Data size: 460639107 Basic stats: COMPLETE Column stats: NONE
                      File Output Operator
                        compressed: false
                        GlobalTableId: 1
                        directory: hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/.hive-staging_hive_2022-04-09_10-24-52_036_1546597430384848844-3/-ext-10002
                        NumFilesPerFileSink: 1
                        Statistics: Num rows: 913966 Data size: 460639107 Basic stats: COMPLETE Column stats: NONE
                        Stats Publishing Key Prefix: hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/.hive-staging_hive_2022-04-09_10-24-52_036_1546597430384848844-3/-ext-10002/
                        table:
                            input format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                            output format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                            properties:
                              columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment,age,genderupp
                              columns.types string:string:int:string:string:string:int:string
                              name default.crm_cln_parq
                              serialization.format 1
                              serialization.lib org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                            serde: org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                            name: default.crm_cln_parq
                        TotalFiles: 1
                        GatherStats: true
                        MultiFileSpray: false
            Path -> Alias:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro [crm_avro]
            Path -> Partition:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                Partition
                  base file name: crm_avro
                  input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                  output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                  properties:
                    bucket_count -1
                    column.name.delimiter ,
                    columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
                    columns.comments
                    columns.types string:string:int:string:string:string
                    file.inputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                    file.outputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                    location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                    name default.crm_avro
                    numFiles 1
                    numRows 0
                    rawDataSize 0
                    serialization.ddl struct crm_avro { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment}
                    serialization.format 1
                    serialization.lib org.apache.hadoop.hive.serde2.avro.AvroSerDe
                    totalSize 921278728
                    transient_lastDdlTime 1649499123
                  serde: org.apache.hadoop.hive.serde2.avro.AvroSerDe

                    input format: org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                    output format: org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                    properties:
                      bucket_count -1
                      column.name.delimiter ,
                      columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment
                      columns.comments
                      columns.types string:string:int:string:string:string
                      file.inputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat
                      file.outputformat org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat
                      location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_avro
                      name default.crm_avro
                      numFiles 1
                      numRows 0
                      rawDataSize 0
                      serialization.ddl struct crm_avro { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment}
                      serialization.format 1
                      serialization.lib org.apache.hadoop.hive.serde2.avro.AvroSerDe
                      totalSize 921278728
                      transient_lastDdlTime 1649499123
                    serde: org.apache.hadoop.hive.serde2.avro.AvroSerDe
                    name: default.crm_avro
                  name: default.crm_avro
            Truncated Path -> Alias:
              /crm_avro [crm_avro]

  Stage: Stage-2
    Dependency Collection

  Stage: Stage-4
      Create Table Operator:
        Create Table
          columns: msisdn string, gender string, year_of_birth int, system_status string, mobile_type string, value_segment string, age int, genderupp string
          input format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
          output format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
          serde name: org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
          name: default.crm_cln_parq

  Stage: Stage-3
    Stats-Aggr Operator
      Stats Aggregation Key Prefix: hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/.hive-staging_hive_2022-04-09_10-24-52_036_1546597430384848844-3/-ext-10002/

  Stage: Stage-0
    Move Operator
      files:
          hdfs directory: true
          source: hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/.hive-staging_hive_2022-04-09_10-24-52_036_1546597430384848844-3/-ext-10002
          destination: hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq


INFO  : Completed compiling command(queryId=hive_20220409102452_b446acce-8d41-49d3-9863-053aa46e07ba); Time taken: 0.496 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409102452_b446acce-8d41-49d3-9863-053aa46e07ba): create table crm_cln_parq
stored as parquet
as
select *, (YEAR(CURRENT_DATE)-year_of_birth) age, UPPER(gender) genderUpp from crm_avro where UPPER(gender) in ("MALE", "FEMALE")
INFO  : Query ID = hive_20220409102452_b446acce-8d41-49d3-9863-053aa46e07ba
INFO  : Total jobs = 1
INFO  : Launching Job 1 out of 1
INFO  : Starting task [Stage-1:MAPRED] in serial mode
INFO  : Session is already open
INFO  : Dag name: create table crm_cln_parq
stored..."FEMALE")(Stage-1)
INFO  : Status: Running (Executing on YARN cluster with App id application_1649497622625_0007)

INFO  : Map 1: 0/7
INFO  : Map 1: 0/7
INFO  : Map 1: 0/7
INFO  : Map 1: 0(+1)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 0(+3)/7
INFO  : Map 1: 2(+2)/7
INFO  : Map 1: 2(+3)/7
INFO  : Map 1: 2(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 3(+3)/7
INFO  : Map 1: 4(+3)/7
INFO  : Map 1: 5(+2)/7
INFO  : Map 1: 6(+1)/7
INFO  : Map 1: 6(+1)/7
INFO  : Map 1: 6(+1)/7
INFO  : Map 1: 6(+1)/7
INFO  : Map 1: 6(+1)/7
INFO  : Map 1: 6(+1)/7
INFO  : Map 1: 6(+1)/7
INFO  : Map 1: 7/7
INFO  : Starting task [Stage-2:DEPENDENCY_COLLECTION] in serial mode
INFO  : Starting task [Stage-0:MOVE] in serial mode
INFO  : Moving data to directory hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq from hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/.hive-staging_hive_2022-04-09_10-24-52_036_1546597430384848844-3/-ext-10002
INFO  : Starting task [Stage-4:DDL] in serial mode
INFO  : Starting task [Stage-3:STATS] in serial mode
INFO  : Completed executing command(queryId=hive_20220409102452_b446acce-8d41-49d3-9863-053aa46e07ba); Time taken: 174.289 seconds
INFO  : OK
No rows affected (174.814 seconds)

0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20220409102849_4d12cc70-77d4-4b62-bf57-b769fa7cf66a): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409102849_4d12cc70-77d4-4b62-bf57-b769fa7cf66a : STAGE DEPENDENCIES:
  Stage-0 is a root stage [DDL]
  Stage-1 depends on stages: Stage-0 [FETCH]

STAGE PLANS:
  Stage: Stage-0
      Show Table Operator:
        Show Tables
          database name: default
          result file: file:/mnt/tmp/hive/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-28-49_766_8718291511538215769-3/-local-10000

  Stage: Stage-1
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink


INFO  : Completed compiling command(queryId=hive_20220409102849_4d12cc70-77d4-4b62-bf57-b769fa7cf66a); Time taken: 0.085 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409102849_4d12cc70-77d4-4b62-bf57-b769fa7cf66a): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20220409102849_4d12cc70-77d4-4b62-bf57-b769fa7cf66a); Time taken: 0.037 seconds
INFO  : OK
+---------------+
|   tab_name    |
+---------------+
| crm_avro      |
| crm_cln_parq  |
+---------------+
2 rows selected (0.162 seconds)

0: jdbc:hive2://localhost:10000/default> select * from crm_cln_parq limit 5;
INFO  : Compiling command(queryId=hive_20220409102910_2ba26567-ea6d-4dca-a96a-66b88d8f689c): select * from crm_cln_parq limit 5
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:crm_cln_parq.msisdn, type:string, comment:null), FieldSchema(name:crm_cln_parq.gender, type:string, comment:null), FieldSchema(name:crm_cln_parq.year_of_birth, type:int, comment:null), FieldSchema(name:crm_cln_parq.system_status, type:string, comment:null), FieldSchema(name:crm_cln_parq.mobile_type, type:string, comment:null), FieldSchema(name:crm_cln_parq.value_segment, type:string, comment:null), FieldSchema(name:crm_cln_parq.age, type:int, comment:null), FieldSchema(name:crm_cln_parq.genderupp, type:string, comment:null)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409102910_2ba26567-ea6d-4dca-a96a-66b88d8f689c : STAGE DEPENDENCIES:
  Stage-0 is a root stage [FETCH]

STAGE PLANS:
  Stage: Stage-0
    Fetch Operator
      limit: 5
      Processor Tree:
        TableScan
          alias: crm_cln_parq
          GatherStats: false
          Select Operator
            expressions: msisdn (type: string), gender (type: string), year_of_birth (type: int), system_status (type: string), mobile_type (type: string), value_segment (type: string), age (type: int), genderupp (type: string)
            outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7
            Limit
              Number of rows: 5
              ListSink


INFO  : Completed compiling command(queryId=hive_20220409102910_2ba26567-ea6d-4dca-a96a-66b88d8f689c); Time taken: 0.196 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409102910_2ba26567-ea6d-4dca-a96a-66b88d8f689c): select * from crm_cln_parq limit 5
INFO  : Completed executing command(queryId=hive_20220409102910_2ba26567-ea6d-4dca-a96a-66b88d8f689c); Time taken: 0.001 seconds
INFO  : OK
+-----------------------------------+----------------------+-----------------------------+-----------------------------+---------------------------+-----------------------------+-------------------+-------------------------+
|        crm_cln_parq.msisdn        | crm_cln_parq.gender  | crm_cln_parq.year_of_birth  | crm_cln_parq.system_status  | crm_cln_parq.mobile_type  | crm_cln_parq.value_segment  | crm_cln_parq.age  | crm_cln_parq.genderupp  |
+-----------------------------------+----------------------+-----------------------------+-----------------------------+---------------------------+-----------------------------+-------------------+-------------------------+
| aeef4233d9ad34e41f7ecf48d64646f8  | MALE                 | 1985                        | ACTIVE                      | Prepaid                   | Tier_3                      | 37                | MALE                    |
| 2397d009e705bc8a2654cbb3f480cc59  | MALE                 | 1958                        | ACTIVE                      | Prepaid                   | Tier_3                      | 64                | MALE                    |
| 6f05d738919f9283322bae17dc366bf5  | MALE                 | 1976                        | ACTIVE                      | Prepaid                   | Tier_3                      | 46                | MALE                    |
| 45352d9d126f86f40c7eee79a82c833c  | MALE                 | 1996                        | ACTIVE                      | Prepaid                   | Tier_3                      | 26                | MALE                    |
| 959b00a279e2785cfa81728338c324f7  | FEMALE               | 1960                        | ACTIVE                      | Prepaid                   | Tier_3                      | 62                | FEMALE                  |
+-----------------------------------+----------------------+-----------------------------+-----------------------------+---------------------------+-----------------------------+-------------------+-------------------------+
5 rows selected (1.281 seconds)

0: jdbc:hive2://localhost:10000/default> select distinct(genderUpp) from crm_cln_parq limit 10;
INFO  : Compiling command(queryId=hive_20220409103027_ae25bd34-0bc3-47a6-8a9e-ca6d1c4d574d): select distinct(genderUpp) from crm_cln_parq limit 10
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:genderupp, type:string, comment:null)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409103027_ae25bd34-0bc3-47a6-8a9e-ca6d1c4d574d : STAGE DEPENDENCIES:
  Stage-1 is a root stage [MAPRED]
  Stage-0 depends on stages: Stage-1 [FETCH]

STAGE PLANS:
  Stage: Stage-1
    Tez
      DagId: hive_20220409103027_ae25bd34-0bc3-47a6-8a9e-ca6d1c4d574d:4
      Edges:
        Reducer 2 <- Map 1 (SIMPLE_EDGE)
      DagName:
      Vertices:
        Map 1
            Map Operator Tree:
                TableScan
                  alias: crm_cln_parq
                  Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                  GatherStats: false
                  Select Operator
                    expressions: genderupp (type: string)
                    outputColumnNames: genderupp
                    Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                    Group By Operator
                      keys: genderupp (type: string)
                      mode: hash
                      outputColumnNames: _col0
                      Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                      Reduce Output Operator
                        key expressions: _col0 (type: string)
                        null sort order: a
                        sort order: +
                        Map-reduce partition columns: _col0 (type: string)
                        Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                        tag: -1
                        TopN: 10
                        TopN Hash Memory Usage: 0.1
                        auto parallelism: true
            Path -> Alias:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq [crm_cln_parq]
            Path -> Partition:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq
                Partition
                  base file name: crm_cln_parq
                  input format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                  output format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                  properties:
                    COLUMN_STATS_ACCURATE {"BASIC_STATS":"true"}
                    bucket_count -1
                    column.name.delimiter ,
                    columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment,age,genderupp
                    columns.comments
                    columns.types string:string:int:string:string:string:int:string
                    file.inputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                    file.outputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                    location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq
                    name default.crm_cln_parq
                    numFiles 7
                    numRows 10740276
                    rawDataSize 85922208
                    serialization.ddl struct crm_cln_parq { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment, i32 age, string genderupp}
                    serialization.format 1
                    serialization.lib org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                    totalSize 411673255
                    transient_lastDdlTime 1649500066
                  serde: org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe

                    input format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                    output format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                    properties:
                      COLUMN_STATS_ACCURATE {"BASIC_STATS":"true"}
                      bucket_count -1
                      column.name.delimiter ,
                      columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment,age,genderupp
                      columns.comments
                      columns.types string:string:int:string:string:string:int:string
                      file.inputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                      file.outputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                      location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq
                      name default.crm_cln_parq
                      numFiles 7
                      numRows 10740276
                      rawDataSize 85922208
                      serialization.ddl struct crm_cln_parq { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment, i32 age, string genderupp}
                      serialization.format 1
                      serialization.lib org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                      totalSize 411673255
                      transient_lastDdlTime 1649500066
                    serde: org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                    name: default.crm_cln_parq
                  name: default.crm_cln_parq
            Truncated Path -> Alias:
              /crm_cln_parq [crm_cln_parq]
        Reducer 2
            Needs Tagging: false
            Reduce Operator Tree:
              Group By Operator
                keys: KEY._col0 (type: string)
                mode: mergepartial
                outputColumnNames: _col0
                Statistics: Num rows: 5370138 Data size: 42961104 Basic stats: COMPLETE Column stats: NONE
                Limit
                  Number of rows: 10
                  Statistics: Num rows: 10 Data size: 80 Basic stats: COMPLETE Column stats: NONE
                  File Output Operator
                    compressed: false
                    GlobalTableId: 0
                    directory: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-30-27_920_7884767945856136669-3/-mr-10001/.hive-staging_hive_2022-04-09_10-30-27_920_7884767945856136669-3/-ext-10002
                    NumFilesPerFileSink: 1
                    Statistics: Num rows: 10 Data size: 80 Basic stats: COMPLETE Column stats: NONE
                    Stats Publishing Key Prefix: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-30-27_920_7884767945856136669-3/-mr-10001/.hive-staging_hive_2022-04-09_10-30-27_920_7884767945856136669-3/-ext-10002/
                    table:
                        input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                        output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                        properties:
                          columns _col0
                          columns.types string
                          escape.delim \
                          hive.serialization.extend.additional.nesting.levels true
                          serialization.escape.crlf true
                          serialization.format 1
                          serialization.lib org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                        serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                    TotalFiles: 1
                    GatherStats: false
                    MultiFileSpray: false

  Stage: Stage-0
    Fetch Operator
      limit: 10
      Processor Tree:
        ListSink


INFO  : Completed compiling command(queryId=hive_20220409103027_ae25bd34-0bc3-47a6-8a9e-ca6d1c4d574d); Time taken: 0.273 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409103027_ae25bd34-0bc3-47a6-8a9e-ca6d1c4d574d): select distinct(genderUpp) from crm_cln_parq limit 10
INFO  : Query ID = hive_20220409103027_ae25bd34-0bc3-47a6-8a9e-ca6d1c4d574d
INFO  : Total jobs = 1
INFO  : Launching Job 1 out of 1
INFO  : Starting task [Stage-1:MAPRED] in serial mode
INFO  : Session is already open
INFO  : Dag name: select distinct(genderUpp) from crm_cln...10(Stage-1)
INFO  : Status: Running (Executing on YARN cluster with App id application_1649497622625_0007)

INFO  : Map 1: 0/7    Reducer 2: 0/2
INFO  : Map 1: 0/7    Reducer 2: 0/2
INFO  : Map 1: 0/7    Reducer 2: 0/2
INFO  : Map 1: 0/7    Reducer 2: 0/2
INFO  : Map 1: 0(+1)/7    Reducer 2: 0/2
INFO  : Map 1: 0(+2)/7    Reducer 2: 0/2
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 1(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 2(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/2
INFO  : Map 1: 5(+2)/7    Reducer 2: 0(+1)/2
INFO  : Map 1: 6(+1)/7    Reducer 2: 0(+2)/2
INFO  : Map 1: 7/7    Reducer 2: 0(+2)/2
INFO  : Map 1: 7/7    Reducer 2: 2/2
INFO  : Completed executing command(queryId=hive_20220409103027_ae25bd34-0bc3-47a6-8a9e-ca6d1c4d574d); Time taken: 30.4 seconds
INFO  : OK
+------------+
| genderupp  |
+------------+
| MALE       |
| FEMALE     |
+------------+
2 rows selected (30.7 seconds)

0: jdbc:hive2://localhost:10000/default> select genderUpp, age, count(*) from crm_cln_parq group by genderUpp, age
. . . . . . . . . . . . . . . . . . . .> order by genderUpp, age limit 50;
INFO  : Compiling command(queryId=hive_20220409103205_c9853544-ba5e-4674-abdb-42e75e3dcbb0): select genderUpp, age, count(*) from crm_cln_parq group by genderUpp, age
order by genderUpp, age limit 50
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:genderupp, type:string, comment:null), FieldSchema(name:age, type:int, comment:null), FieldSchema(name:_c2, type:bigint, comment:null)], properties:null)
INFO  : EXPLAIN output for queryid hive_20220409103205_c9853544-ba5e-4674-abdb-42e75e3dcbb0 : STAGE DEPENDENCIES:
  Stage-1 is a root stage [MAPRED]
  Stage-0 depends on stages: Stage-1 [FETCH]

STAGE PLANS:
  Stage: Stage-1
    Tez
      DagId: hive_20220409103205_c9853544-ba5e-4674-abdb-42e75e3dcbb0:5
      Edges:
        Reducer 2 <- Map 1 (SIMPLE_EDGE)
        Reducer 3 <- Reducer 2 (SIMPLE_EDGE)
      DagName:
      Vertices:
        Map 1
            Map Operator Tree:
                TableScan
                  alias: crm_cln_parq
                  Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                  GatherStats: false
                  Select Operator
                    expressions: genderupp (type: string), age (type: int)
                    outputColumnNames: genderupp, age
                    Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                    Group By Operator
                      aggregations: count()
                      keys: genderupp (type: string), age (type: int)
                      mode: hash
                      outputColumnNames: _col0, _col1, _col2
                      Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                      Reduce Output Operator
                        key expressions: _col0 (type: string), _col1 (type: int)
                        null sort order: aa
                        sort order: ++
                        Map-reduce partition columns: _col0 (type: string), _col1 (type: int)
                        Statistics: Num rows: 10740276 Data size: 85922208 Basic stats: COMPLETE Column stats: NONE
                        tag: -1
                        TopN: 50
                        TopN Hash Memory Usage: 0.1
                        value expressions: _col2 (type: bigint)
                        auto parallelism: true
            Path -> Alias:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq [crm_cln_parq]
            Path -> Partition:
              hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq
                Partition
                  base file name: crm_cln_parq
                  input format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                  output format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                  properties:
                    COLUMN_STATS_ACCURATE {"BASIC_STATS":"true"}
                    bucket_count -1
                    column.name.delimiter ,
                    columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment,age,genderupp
                    columns.comments
                    columns.types string:string:int:string:string:string:int:string
                    file.inputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                    file.outputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                    location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq
                    name default.crm_cln_parq
                    numFiles 7
                    numRows 10740276
                    rawDataSize 85922208
                    serialization.ddl struct crm_cln_parq { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment, i32 age, string genderupp}
                    serialization.format 1
                    serialization.lib org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                    totalSize 411673255
                    transient_lastDdlTime 1649500066
                  serde: org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe

                    input format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                    output format: org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                    properties:
                      COLUMN_STATS_ACCURATE {"BASIC_STATS":"true"}
                      bucket_count -1
                      column.name.delimiter ,
                      columns msisdn,gender,year_of_birth,system_status,mobile_type,value_segment,age,genderupp
                      columns.comments
                      columns.types string:string:int:string:string:string:int:string
                      file.inputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
                      file.outputformat org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
                      location hdfs://ip-172-31-28-245.ec2.internal:8020/user/hive/warehouse/crm_cln_parq
                      name default.crm_cln_parq
                      numFiles 7
                      numRows 10740276
                      rawDataSize 85922208
                      serialization.ddl struct crm_cln_parq { string msisdn, string gender, i32 year_of_birth, string system_status, string mobile_type, string value_segment, i32 age, string genderupp}
                      serialization.format 1
                      serialization.lib org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                      totalSize 411673255
                      transient_lastDdlTime 1649500066
                    serde: org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
                    name: default.crm_cln_parq
                  name: default.crm_cln_parq
            Truncated Path -> Alias:
              /crm_cln_parq [crm_cln_parq]
        Reducer 2
            Needs Tagging: false
            Reduce Operator Tree:
              Group By Operator
                aggregations: count(VALUE._col0)
                keys: KEY._col0 (type: string), KEY._col1 (type: int)
                mode: mergepartial
                outputColumnNames: _col0, _col1, _col2
                Statistics: Num rows: 5370138 Data size: 42961104 Basic stats: COMPLETE Column stats: NONE
                Reduce Output Operator
                  key expressions: _col0 (type: string), _col1 (type: int)
                  null sort order: aa
                  sort order: ++
                  Statistics: Num rows: 5370138 Data size: 42961104 Basic stats: COMPLETE Column stats: NONE
                  tag: -1
                  TopN: 50
                  TopN Hash Memory Usage: 0.1
                  value expressions: _col2 (type: bigint)
                  auto parallelism: false
        Reducer 3
            Needs Tagging: false
            Reduce Operator Tree:
              Select Operator
                expressions: KEY.reducesinkkey0 (type: string), KEY.reducesinkkey1 (type: int), VALUE._col0 (type: bigint)
                outputColumnNames: _col0, _col1, _col2
                Statistics: Num rows: 5370138 Data size: 42961104 Basic stats: COMPLETE Column stats: NONE
                Limit
                  Number of rows: 50
                  Statistics: Num rows: 50 Data size: 400 Basic stats: COMPLETE Column stats: NONE
                  File Output Operator
                    compressed: false
                    GlobalTableId: 0
                    directory: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-32-05_140_4696581756567779011-3/-mr-10001/.hive-staging_hive_2022-04-09_10-32-05_140_4696581756567779011-3/-ext-10002
                    NumFilesPerFileSink: 1
                    Statistics: Num rows: 50 Data size: 400 Basic stats: COMPLETE Column stats: NONE
                    Stats Publishing Key Prefix: hdfs://ip-172-31-28-245.ec2.internal:8020/tmp/hive/hadoop/afc63ee1-d466-4422-9cfb-1e53e0c945bc/hive_2022-04-09_10-32-05_140_4696581756567779011-3/-mr-10001/.hive-staging_hive_2022-04-09_10-32-05_140_4696581756567779011-3/-ext-10002/
                    table:
                        input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                        output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                        properties:
                          columns _col0,_col1,_col2
                          columns.types string:int:bigint
                          escape.delim \
                          hive.serialization.extend.additional.nesting.levels true
                          serialization.escape.crlf true
                          serialization.format 1
                          serialization.lib org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                        serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
                    TotalFiles: 1
                    GatherStats: false
                    MultiFileSpray: false

  Stage: Stage-0
    Fetch Operator
      limit: 50
      Processor Tree:
        ListSink


INFO  : Completed compiling command(queryId=hive_20220409103205_c9853544-ba5e-4674-abdb-42e75e3dcbb0); Time taken: 0.236 seconds
INFO  : Concurrency mode is disabled, not creating a lock manager
INFO  : Executing command(queryId=hive_20220409103205_c9853544-ba5e-4674-abdb-42e75e3dcbb0): select genderUpp, age, count(*) from crm_cln_parq group by genderUpp, age
order by genderUpp, age limit 50
INFO  : Query ID = hive_20220409103205_c9853544-ba5e-4674-abdb-42e75e3dcbb0
INFO  : Total jobs = 1
INFO  : Launching Job 1 out of 1
INFO  : Starting task [Stage-1:MAPRED] in serial mode
INFO  : Session is already open
INFO  : Dag name: select genderUpp, age, count(*) from cr...50(Stage-1)
INFO  : Status: Running (Executing on YARN cluster with App id application_1649497622625_0007)

INFO  : Map 1: 0/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 0/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 0/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 0(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 2(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 3(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 4(+3)/7    Reducer 2: 0/2    Reducer 3: 0/1
INFO  : Map 1: 5(+2)/7    Reducer 2: 0(+1)/2    Reducer 3: 0/1
INFO  : Map 1: 7/7    Reducer 2: 0(+2)/2    Reducer 3: 0/1
INFO  : Map 1: 7/7    Reducer 2: 1(+1)/2    Reducer 3: 0/1
INFO  : Map 1: 7/7    Reducer 2: 1(+1)/2    Reducer 3: 0(+1)/1
INFO  : Map 1: 7/7    Reducer 2: 2/2    Reducer 3: 0(+1)/1
INFO  : Map 1: 7/7    Reducer 2: 2/2    Reducer 3: 1/1
INFO  : Completed executing command(queryId=hive_20220409103205_c9853544-ba5e-4674-abdb-42e75e3dcbb0); Time taken: 28.225 seconds
INFO  : OK
+------------+------+--------+
| genderupp  | age  |  _c2   |
+------------+------+--------+
| FEMALE     | 5    | 107    |
| FEMALE     | 7    | 4      |
| FEMALE     | 14   | 2      |
| FEMALE     | 15   | 3      |
| FEMALE     | 16   | 2      |
| FEMALE     | 18   | 2      |
| FEMALE     | 19   | 1      |
| FEMALE     | 20   | 1      |
| FEMALE     | 22   | 53     |
| FEMALE     | 23   | 1298   |
| FEMALE     | 24   | 3427   |
| FEMALE     | 25   | 6296   |
| FEMALE     | 26   | 7281   |
| FEMALE     | 27   | 9036   |
| FEMALE     | 28   | 29468  |
| FEMALE     | 29   | 28308  |
| FEMALE     | 30   | 29464  |
| FEMALE     | 31   | 31103  |
| FEMALE     | 32   | 35630  |
| FEMALE     | 33   | 56745  |
| FEMALE     | 34   | 66191  |
| FEMALE     | 35   | 64220  |
| FEMALE     | 36   | 45869  |
| FEMALE     | 37   | 62070  |
| FEMALE     | 38   | 43755  |
| FEMALE     | 39   | 56374  |
| FEMALE     | 40   | 78864  |
| FEMALE     | 41   | 42080  |
| FEMALE     | 42   | 62644  |
| FEMALE     | 43   | 42472  |
| FEMALE     | 44   | 47560  |
| FEMALE     | 45   | 69881  |
| FEMALE     | 46   | 26381  |
| FEMALE     | 47   | 42163  |
| FEMALE     | 48   | 21275  |
| FEMALE     | 49   | 33746  |
| FEMALE     | 50   | 60112  |
| FEMALE     | 51   | 25688  |
| FEMALE     | 52   | 32817  |
| FEMALE     | 53   | 19772  |
| FEMALE     | 54   | 24492  |
| FEMALE     | 55   | 38164  |
| FEMALE     | 56   | 10000  |
| FEMALE     | 57   | 16982  |
| FEMALE     | 58   | 7008   |
| FEMALE     | 59   | 12384  |
| FEMALE     | 60   | 23230  |
| FEMALE     | 61   | 5026   |
| FEMALE     | 62   | 10102  |
| FEMALE     | 63   | 5334   |
+------------+------+--------+
50 rows selected (28.502 seconds)
```
