# Internal and External Tables I

So far, you have learnt how to set up the EMR cluster to perform queries on a database, which is the S3 bucket in this case. You have learnt how to create databases in Hive.

Now, you will learn how to create tables in Hive. There are two types of tables in Hive, which are as follows:

- Internal tables

- External tables

Let us listen to Vishwa and try to understand the basic difference between the two types of tables.

**VIDEO**

So, let us summarise all that you learnt from the video:

- **Creation of tables**: When you create a table in Hive, it is an internal table by default. To create an external table, you need to explicitly use the keyword “EXTERNAL” while writing the query to create the table.

- **Internal table vs External table**: The basic difference between internal and external tables is that when you create an internal table, Hive is itself responsible for the data, and it takes control of the entire life cycle of the metadata as well as the actual data itself.

  In contrast, when you create an external table, Hive is responsible for taking care of only the schema of the table. It does not take care of the actual data.
  
  You will get a clear understanding of internal and external tables when you drop the tables.
  
  When you apply the drop command on an internal table, the entire metadata available in the metastore, as well as the actual table data that is present in the HDFS, gets deleted.
  
  However, when you apply the drop command on an external table, the entire metadata available in the metastore gets deleted but the actual table data available in the HDFS remains intact there.
  
  You will get a clear understanding of internal and external tables when you watch the practical demonstration in the upcoming videos.  

- **When to use INT/EXT tables**: Suppose a particular table is very common and is useful for other applications as well. In such a case, it is preferable to use an external table, because when you drop the table, the data would remain intact in the HDFS, and it can be used by some other applications. However, when you drop an internal table, the schema, as well as the table data, gets deleted and it becomes unavailable for other applications as well.

Now, let us come to the next part where you will learn how to create tables in Hive in a predefined database.

**VIDEO**

So, let us understand how to create an internal table step-by-step:

- **Database selection**: You have seen  in the video that there are three databases, namely, demo, demo2, and demo3, which have already been created from the previous segment. An important point to note here is that when you do not create any database, the tables created are stored in the “default” database. Now, let us choose the “demo” database to store the created tables in HDFS, and for this, you need to write the query as “use demo;” as shown in the snapshot below.
  
  ![1](https://i.ibb.co/hDbjqT2/1.png)

- **Creation of an internal table**: By default, any table that you create is an internal table. The DDL statements for creating the table are almost the same as that of MySQL.
  
  ![2](https://i.ibb.co/PYnc5jc/2.png)

Here, you need to understand a new point, which is you need to specify the format of data that is available in the HDFS, for instance, fields are delimited by ‘|’ and lines are terminated by ‘\n’, otherwise you will not be able to read the data into the tables.

There is a command “_**describe user_info;**_”, which is used to describe a table’s attributes data types.

- **Load data into the tables**: Once you have created the schema of the tables, you need to load the data into them. To load the data, you have to specify a path from where you will load the data into these tables. In this case, the data is available in Hadoop at the location **‘/home/hadoop/u.user’**.
  
  ![3](https://i.ibb.co/WcNvVtc/3.png)

```shell
hive> show databases;
OK
default
demo
demo2
demo3
Time taken: 1.434 seconds, Fetched: 4 row(s)
hive> use demo;
OK
Time taken: 0.316 seconds
hive> create table if not exists user_info (id int, age int, gender string, profession string, reviews int) row format delimited fields terminated by '|' lines terminated by '\n' stored as textfile;
OK
Time taken: 1.564 seconds
hive> describe user_info;
OK
id                      int
age                     int
gender                  string
profession              string
reviews                 int
Time taken: 0.343 seconds, Fetched: 5 row(s)
hive> load data local inpath '/home/hadoop/u.user' into table user_info;
Loading data to table demo.user_info
OK
Time taken: 1.487 seconds
hive> select * from user_info limit 5;
OK
1    24    M    technician    85711
2    53    F    other    94043
3    23    M    writer    32067
4    24    M    technician    43537
5    33    F    other    15213
Time taken: 2.71 seconds, Fetched: 5 row(s)
```

So, by now, you must be clear about the creation of internal tables. In the next segment, you will learn how to create external tables and also learn what happens to the table data when you apply drop commands on the tables.

#### Internal vs External Table

Qn: Choose the correct statements from the options below.

- When you create an internal table, the table schema, as well as the table data get stored in the Hive metastore.

- Only the table schema gets stored in the Hive metastore when you create an external table; the actual table data gets stored in the HDFS itself.

- When you create an internal table, the data gets stored in the HDFS itself.

- The schema, as well as the actual table data, get stored in the HDFS in the case of an external table.

Ans: B & C. _In the case of external or internal tables, the schema gets stored in the Hive metastore but the actual data gets stored in the HDFS itself._

#### Table creation

Qn: Suppose you defined a table as follows:

`create table if not exists user_info (id int, profession string, age int, gender string, reviews int) row format delimited fields terminated by ‘|’ lines terminated by ‘\n’ stored as textfile ;`

The data is: [Movies_Rating_Data](https://ml-cloud-dataset.s3.amazonaws.com/u.user). Now, once you have written the above DDL statement, you load the data into the table that is created. Which of the following statements would be correct based on the above query?

- Hive will display an error message when you load the data.

- The ‘profession’ column will get the values of ‘age’ .

- The ‘age’ column will get NULL values.

- All the columns will get the respective correct values without any error.

Ans: B & C.

- _In the original data, ‘age’ values come after ‘Id’, and, hence, as you are defining ‘Profession’ at the second position, it will get the values of ‘age’ with a string data type._

- _In the original data, ‘Gender’ is at the third position, and since you are putting ‘age’ at the third position, with int as the data type, NULL values will be assigned to the ‘age’ column._

In the next segment, you will learn about how to create external tables and how they are stored ini HDFS file system.
