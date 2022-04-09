# Creating Hive Tables

Now that you have imported all the data into Hadoop, you can load it into Hive tables. Before loading the data, you need to create Hive tables. Let’s see how you can do so.

**VIDEO**

So far, you have been interacting with Hive, where your client was the Hive CLI and the server on which you ran your queries was HiveServer1. However, in the recent years, Hive developers have switched to a more user-friendly tool known as Beeline, which is a command-line interface client that uses a JDBC driver to connect with HiveServer2, an enhanced version of HiveServer1. Hence, we will use Beeline for this case study.

An important thing to note here is that there wouldn't be any difference using Hive or Beeline, and the commands remain the same once you enter the CLI. In the next video, you will learn how to connect with Beeline and create the tables mentioned above.

**VIDEO**

The command used for connecting with Beeline is shown below:

`beeline -u jdbc:hive2://localhost:10000/default -n hadoop`

Once you are connected to Beeline, you can create the tables. The queries to be used are as follows:

```shell
create database telco_db;
use telco_db;

create table crm_stg
(
 msisdn string, 
gender string,
 year_of_birth int,
 system_status string,
 mobile_type string,
 value_segment string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

create table device_stg
(
 msisdn string, 
imei_tac string,
 brand_name string,
 model_name string,
 os_name string,
 os_vendor string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

create table revenue_stg
(
 msisdn string, 
Week_number int,
 revenue_usd float
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';
```

Let's now see how we load data into the tables that we just created.

**VIDEO**

You can load the data using the following queries:

```shell
load  data inpath '/user/hadoop/telco/crm' into table crm_stg;
load  data inpath '/user/hadoop/telco/devices' into table device_stg;
load  data inpath '/user/hadoop/telco/revenue' into table revenue_stg;
```

Note that because you are creating an internal table, the data will no longer be present in the Hadoop directory. You can verify this by typing the following command in the Hadoop shell:

`hadoop  fs -ls /user/hadoop/telco/`

Till now in this session, you learnt how to ingest data using sqoop, create hive tables and load these tables with the ingested data. Here you didn't actually create any staging layer or clean the original dataset. In the next segment, you will explore this aspect before executing hive queries.
