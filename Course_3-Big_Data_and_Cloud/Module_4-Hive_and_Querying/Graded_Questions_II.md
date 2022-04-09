# Graded Questions II

You learnt about Hive queries in the previous sessions and understood how to query data from the HDFS and do the analysis on that. Let’s now look at the case study of an 'Airlines' data set.

You are given an 'Airlines' data set. This data contains information of the flights that have arrived and departed from different airports.

Following is the file containing information about the attributes. You can download it and read the complete explanation of the attributes.

Download [Airlines Data Attributw Description](airlines_data_attribute_description.xlsx)

You are provided with the 'Airlines' data on the public S3 bucket. You can refer to the following link to get the data.

[Airlines_data](Airlines_data.txt)

You can copy the Airline data into EMR using the below command:

_**aws s3 cp s3://ml-cloud-dataset/Airlines_data.txt .**_

Based on this 'Airlines' data set, answer the following questions.

#### Partitioning

Qn: Which of the following columns should you **not** use as a partition key? (Note: More than one option may be correct.)

- TailNum

- Cancelled

- FlightNum

Ans: A & C. _There are too many 'TailNum' & 'FlightNum' in the data set. Therefore, partitioning using either will lead to too many partitions, which will slow down the overall performance. So, this is one of the correct options._

Qn: How many partitions will be created when you use 'Year' as a partition key in the dynamic partition?

- 12

- 6

- 5

- 11

Ans: C. _You can code in the HQL using the ‘distinct’ function to check the unique years in the data set._

_You are advised to perform all the operations on the table that has been partitioned based on the year, and you can name it 'airlines_partitioned', as it will take less time to run the query._

`SELECT count(distinct Year) as unique_years from airlines_partitioned;`

#### Bucketing

Qn: Let’s say you created partitions using 'FlightNum' as the partition key. You notice that even after partitioning, queries such as ‘fetch the flight history of a particular FlightNum’, which you need to write very often, are too slow. Which one of the options given below will help you make such queries faster?

- Create another level of partitioning using ‘Year’ as the key.

- Create about 50 buckets using the column ‘Entry_id'.

- Create another level of partitioning using ‘Month’ as the key.

Ans: B _Buckets will further help optimise your querying. A number of buckets remaining constant will lead to new data being redistributed among these buckets._

Qn: Suppose you have created 50 buckets using the column ‘Entry_id’. Now, as the database grows with time, which one of the results below will you see?

- The number of buckets will increase automatically to create space for additional entries.

- Both the number of buckets and the entries in each bucket will increase automatically.

- The number of entries in each bucket will increase automatically. But the number of buckets will remain the same.

- Bucketing using ‘Entry_id’ is not possible at all.

Ans: C. _The number of entries in each bucket will increase accordingly, but the number of buckets will remain the same._

#### Querying in Hive

Qn: Which year has the maximum average taxi-out time, and what is its value?

- 2004, 18.5

- 2005, 18.3

- 2006, 15.25

- 2007, 9.75

- 2008, 10.72

Ans: A. _Following HQL code will get the answer:_

_You are advised to perform all the operations on the table that has been partitioned based on the year, and you can name it 'airlines_partitioned', as it will take less time to run the query._

`SELECT Year, avg(TaxiOut) as avg_TaxiOutTime from airlines_partitioned GROUP BY Year ORDER BY avg_TaxiOutTime;`

Qn: If you explore the data, you will find that there are some negative values in the 'ArrDelay' column, which signifies that the flight had arrived before time on that day. What will be the average of an early arrival (i.e., the average of the negative values of 'ArrDelay') for the year 2008?

- 10.79 min

- 8.08 min

- 9.53 min

- 9.08 min

Ans: D. __You are advised to perform all the operations on the table that has been partitioned based on the year, and you can name it 'airlines_partitioned', as it will take less time to run the query._

`SELECT avg(ArrDelay) as avg_Arr_Time from airlines_partitioned WHERE Year = '2008' and ArrDelay < 0;`

Qn: Consider the following statement:

***Bucketing does not ensure that the table is properly populated. Hence, to ensure uniformity of data in each bucket, you need to load the data manually.***

Is this statement true or false?

- True

- False

Ans: A. _It is one of the drawbacks of bucketing that to ensure the uniformity of data in a bucket, you need to load the data manually._

Qn: Suppose you want to partition the 'Airlines' data using 'Year' as the partition key, bucket it into seven buckets by 'DayofWeek', and sort each bucket in ascending order of 'Distance'. What will be the right code to do this operation?

- ```sql
  CREATE TABLE airlines_bucketed(
  -- Information about the data types of each columns
  )
  SORTED BY (Distance) INTO 7 BUCKETS
  CLUSTERED BY (DayofWeek) 
  PARTITIONED BY (Year int)
  STORED AS SEQUENCEFILE;
  ```

- ```sql
  CREATE TABLE airlines_bucketed(
  -- Information about the data types of each columns
  )
  CLUSTERED BY (DayofWeek) SORTED BY (Distance) INTO 7 BUCKETS
  PARTITIONED BY (Year int)
  STORED AS SEQUENCEFILE;
  ```

- ```sql
  
  CREATE TABLE airlines_bucketed(
  -- Information about the data types of each columns
  )
  PARTITIONED BY (Year int)
  SORTED BY (Distance) INTO 7 BUCKETS
  CLUSTERED BY (DayofWeek)
  STORED AS SEQUENCEFILE;
  ```

- ```sql
  CREATE TABLE airlines_bucketed(
  -- Information about the data types of each columns
  )
  PARTITIONED BY (Year int)
  CLUSTERED BY (DayofWeek) SORTED BY (Distance) INTO 7 BUCKETS
  STORED AS SEQUENCEFILE;
  ```

Ans: D. _You are supposed to do the partition on the table based on the year, then apply bucketing on 'DayofWeek' and create the 'airlines_bucketed' table._

Ans: D. *You are supposed to do the partition on the table based on the year, then apply bucketing on 'DayofWeek' and create the 'airlines_bucketed' table.*

Qn: What is the count of the diverted flights that flew on Fridays in the year 2005?

- 3

- 7

- 44

- 201

Ans: B. _You are advised to use the 'airlines_bucketed' table that you obtained from the last question and query the diverted flights on Fridays for the year 2005._

`SELECT count(Diverted) as Diverted_flight_count from airlines_bucketed WHERE Year = 2005 and DayofWeek = 5 and Diverted = 1;`

### Code Snippet

```shell
[hadoop@ip-172-31-21-160 ~]$ aws s3 cp s3://hive-demo-data-bucket/Airlines_data.txt .
download: s3://hive-demo-data-bucket/Airlines_data.txt to ./Airlines_data.txt
[hadoop@ip-172-31-21-160 ~]$ hive

Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j2.properties Async: false
hive> create database if not exists airline;
OK
Time taken: 2.412 seconds

hive> use airline;
OK
Time taken: 0.036 seconds
hive> create table if not exists airline_data (Entry_Id int,
    > Year int,
    > Month int,
    > DayofMonth int,
    > DayOfWeek int,
    > DepTime string,
    > CRSDepTime string,
    > ArrTime string,
    > CRSArrTime string,
    > UniqueCarrier string,
    > FlightNum int,
    > TailNum string,
    > ActualElapsedTime int,
    > CRSElapsedTime int,
    > AirTime int,
    > ArrDelay int,
    > DepDelay int,
    > Origin string,
    > Dest string,
    > Distance int,
    > TaxiIn int,
    > TaxiOut int,
    > Cancelled int,
    > CancellationCode string,
    > Diverted int,
    > CarrierDelay int,
    > WeatherDelay int,
    > NASDelay int,
    > SecurityDelay int,
    > LateAircraftDelay int) row format delimited fields terminated by '|' lines terminated by '\n' stored as textfile;
OK
Time taken: 0.163 seconds
hive> load data local inpath '/home/hadoop/Airlines_data.txt' into table airline_data;
Loading data to table airline.airline_data
OK
Time taken: 1.137 seconds

hive> set hive.cli.print.header=true;
hive> select * from airline_data limit 5;
OK
airline_data.entry_id airline_data.year airline_data.month airline_data.dayofmonth airline_data.dayofweek airline_data.deptime airline_data.crsdeptime airline_data.arrtime airline_data.crsarrtime airline_data.uniquecarrier airline_data.flightnum airline_data.tailnum airline_data.actualelapsedtime airline_data.crselapsedtime airline_data.airtime airline_data.arrdelay airline_data.depdelay airline_data.origin airline_data.dest airline_data.distance airline_data.taxiin airline_data.taxiout airline_data.cancelled airline_data.cancellationcode airline_data.diverted airline_data.carrierdelay airline_data.weatherdelay airline_data.nasdelay airline_data.securitydelay airline_data.lateaircraftdelay
1 2006 1 11 3 743 745 1024 1018 US 343 N657AW 281 273 223 6 -2 ATL PHX 1587 45 13 0 NA 0 0 0 0 0 0
2 2006 1 11 3 1053 1053 1313 1318 US 613 N834AW 260 265 214 -5 0 ATL PHX 1587 27 19 0 NA 0 0 0 0 0 0
3 2006 1 11 3 1915 1915 2110 2133 US 617 N605AW 235 258 220 -23 0 ATL PHX 1587 4 11 0 NA 0 0 0 0 0 0
4 2006 1 11 3 1753 1755 1925 1933 US 300 N312AW 152 158 126 -8 -2 AUS PHX 872 16 10 0 NA 0 0 0 0 0 0
5 2006 1 11 3 824 832 1015 1015 US 765 N309AW 171 163 132 0 -8 AUS PHX 872 27 12 0 NA 0 0 0 0 0 0
Time taken: 3.717 seconds, Fetched: 5 row(s)

hive> set hive.exec.dynamic.partition=true;
hive> set hive.exec.dynamic.partition=nonstrict;

hive> create table if not exists dyn_part_airline_data (Entry_Id int,
    > Month int,
    > DayofMonth int,
    > DayOfWeek int,
    > DepTime string,
    > CRSDepTime string,
    > ArrTime string,
    > CRSArrTime string,
    > UniqueCarrier string,
    > FlightNum int,
    > TailNum string,
    > ActualElapsedTime int,
    > CRSElapsedTime int,
    > AirTime int,
    > ArrDelay int,
    > DepDelay int,
    > Origin string,
    > Dest string,
    > Distance int,
    > TaxiIn int,
    > TaxiOut int,
    > Cancelled int,
    > CancellationCode string,
    > Diverted int,
    > CarrierDelay int,
    > WeatherDelay int,
    > NASDelay int,
    > SecurityDelay int,
    > LateAircraftDelay int) partitioned by (Year int) row format delimited fields terminated by '|' lines terminated by '\n' stored as textfile;
OK
Time taken: 0.119 seconds

hive> select count(distinct Year) as year_count from dyn_part_airline_data;
Query ID = hadoop_20220328204152_cdf0258d-7b09-44fc-8813-f3e6a2df6d95
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648494315545_0004)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 02/02  [==========================>>] 100%  ELAPSED TIME: 6.32 s
----------------------------------------------------------------------------------------------
OK
5
Time taken: 14.854 seconds, Fetched: 1 row(s)

hive> exit;
[hadoop@ip-172-31-21-160 ~]$ hadoop fs -ls /user/hive/warehouse/airline.db/
Found 2 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-28 19:48 /user/hive/warehouse/airline.db/airline_data
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-28 20:36 /user/hive/warehouse/airline.db/dyn_part_airline_data
[hadoop@ip-172-31-21-160 ~]$ hadoop fs -ls /user/hive/warehouse/airline.db/dyn_part_airline_data
Found 5 items
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-28 20:36 /user/hive/warehouse/airline.db/dyn_part_airline_data/year=2004
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-28 20:36 /user/hive/warehouse/airline.db/dyn_part_airline_data/year=2005
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-28 20:36 /user/hive/warehouse/airline.db/dyn_part_airline_data/year=2006
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-28 20:36 /user/hive/warehouse/airline.db/dyn_part_airline_data/year=2007
drwxrwxrwt   - hadoop hdfsadmingroup          0 2022-03-28 20:36 /user/hive/warehouse/airline.db/dyn_part_airline_data/year=2008

[hadoop@ip-172-31-21-160 ~]$ hive

Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j2.properties Async: false
hive> select Year, avg(TaxiOut) as TaxiOut_Avg from dyn_part_airline_data group by Year order by TaxiOut_Avg;
Query ID = hadoop_20220328205545_d77f4955-e285-4cf4-a3d4-88496ff3a46e
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648494315545_0005)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
Reducer 3 ...... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 03/03  [==========================>>] 100%  ELAPSED TIME: 6.53 s
----------------------------------------------------------------------------------------------
OK
year taxiout_avg
2007 9.75865
2008 10.721310642621285
2006 15.25945
2005 18.33555
2004 18.5009
Time taken: 7.285 seconds, Fetched: 5 row(s)

hive> select Year, avg(ArrDelay) as ArrDelay_early_arrival_avg from dyn_part_airline_data where ArrDelay < 0 group by Year order by ArrDelay_early_arrival_avg;
Query ID = hadoop_20220328210147_ff3151fa-406b-47f5-bd34-a8c670d895d7
Total jobs = 1
Launching Job 1 out of 1
Tez session was closed. Reopening...
Session re-established.
Status: Running (Executing on YARN cluster with App id application_1648494315545_0006)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
Reducer 3 ...... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 03/03  [==========================>>] 100%  ELAPSED TIME: 8.42 s
----------------------------------------------------------------------------------------------
OK
year arrdelay_early_arrival_avg
2006 -11.638231072838177
2005 -10.596349115801484
2007 -9.458201267828843
2004 -9.297348274714302
2008 -9.080476565134315
Time taken: 16.945 seconds, Fetched: 5 row(s)

hive> CREATE TABLE airlines_bucketed (Entry_Id int,
    > Month int,
    > DayofMonth int,
    > DayOfWeek int,
    > DepTime string,
    > CRSDepTime string,
    > ArrTime string,
    > CRSArrTime string,
    > UniqueCarrier string,
    > FlightNum int,
    > TailNum string,
    > ActualElapsedTime int,
    > CRSElapsedTime int,
    > AirTime int,
    > ArrDelay int,
    > DepDelay int,
    > Origin string,
    > Dest string,
    > Distance int,
    > TaxiIn int,
    > TaxiOut int,
    > Cancelled int,
    > CancellationCode string,
    > Diverted int,
    > CarrierDelay int,
    > WeatherDelay int,
    > NASDelay int,
    > SecurityDelay int,
    > LateAircraftDelay int)
    > PARTITIONED BY (Year int)
    > CLUSTERED BY (DayofWeek) SORTED BY (Distance) INTO 7 BUCKETS
    > STORED AS SEQUENCEFILE;
OK
Time taken: 0.287 seconds

hive> select Year, sum(Diverted) as Diverted_count from dyn_part_airline_data where DayOfWeek=5 group by Year order by Diverted_count;
Query ID = hadoop_20220328211733_f3529bc1-340b-413e-b063-d68ae702c8a1
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648494315545_0008)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
Reducer 3 ...... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 03/03  [==========================>>] 100%  ELAPSED TIME: 7.70 s
----------------------------------------------------------------------------------------------
OK
2004 2
2005 7
2007 14
2006 16
2008 16
Time taken: 9.048 seconds, Fetched: 5 row(s)

```
