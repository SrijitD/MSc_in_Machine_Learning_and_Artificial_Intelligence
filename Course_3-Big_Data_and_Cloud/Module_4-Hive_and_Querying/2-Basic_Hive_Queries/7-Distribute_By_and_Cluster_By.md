# Distribute By and Cluster By

In the previous segment, you learnt about the ‘SORT BY’ and the ‘ORDER BY’ clauses and some conceptual understanding of 'CLUSTER BY' and 'DISTRIBUTE BY'. Now, let’s learn about the ‘DISTRIBUTE BY’ and ‘CLUSTER BY’ clauses' demonstration in Hive.

Let’s look at the practical demonstration of the two clauses in this video.

**VIDEO**

So, you learnt how important it is to change the execution engine from Tez to MapReduce. 

You may refer to [this](https://www.revisitclass.com/hadoop/how-to-set-the-different-execution-engine-in-hive-with-examples/) link for more understanding of Tez and MapReduce. 

![14](https://i.ibb.co/MMZrnpD/14.png)

In the video, Vishwa explained the functions of the 'DISTRIBUTE BY' clause. The table is distributed based on the ‘ratings’. You can see that three reducers are working and only one mapper is assigned to this task. This query will divide the whole data into three groups or reducers, and each reducer will have unsorted and non-overlapped data in it.

On the other hand, when you use the 'CLUSTER BY' clause, it initiates the MapReduce job and assigns three reducers and one mapper to this task. You can see that each reducer gets data that is non-overlapped and sorted. Hence, we can conclude that the 'CLUSTER BY' clause is the combination of 'SORT BY' and 'DISTRIBUTE BY'.

Note that the 'DISTRIBUTE BY' and 'CLUSTER BY' clauses are used when you want to do bucketing. You will learn more about bucketing in further segments.

```shell
hive> select id, reviews from user_info distribute by reviews;
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = hadoop_20220326201707_486d02df-39a0-4559-9621-1d3336e4b53c
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1648316642042_0015, Tracking URL = http://ip-172-31-31-128.ec2.internal:20888/proxy/application_1648316642042_0015/
Kill Command = /usr/lib/hadoop/bin/hadoop job  -kill job_1648316642042_0015
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2022-03-26 20:17:19,065 Stage-1 map = 0%,  reduce = 0%
2022-03-26 20:17:26,267 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.39 sec
2022-03-26 20:17:33,477 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 4.64 sec
MapReduce Total cumulative CPU time: 4 seconds 640 msec
Ended Job = job_1648316642042_0015
MapReduce Jobs Launched:
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 4.64 sec   HDFS Read: 22868 HDFS Write: 20769 SUCCESS
Total MapReduce CPU Time Spent: 4 seconds 640 msec
OK
id    reviews
943    77841
942    78209
941    97229
940    2215
939    33319
938    55038
937    98072
936    32789
935    66221
934    22902
...    ...
18    37212
17    6355
16    10309
15    97301
14    55106
13    29206
12    6405
11    30329
10    90703
9    1002
8    5201
7    91344
6    98101
5    15213
4    43537
3    32067
2    94043
1    85711
Time taken: 26.701 seconds, Fetched: 943 row(s)
select id, reviews from user_info cluster by reviews;
WARNING: Hive-on-MR is deprecated in Hive 2 and may not be available in the future versions. Consider using a different execution engine (i.e. spark, tez) or using Hive 1.X releases.
Query ID = hadoop_20220326201929_f2351ec9-ef58-4bb9-9f65-7a2e0daf8cf9
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Estimated from input data size: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1648316642042_0016, Tracking URL = http://ip-172-31-31-128.ec2.internal:20888/proxy/application_1648316642042_0016/
Kill Command = /usr/lib/hadoop/bin/hadoop job  -kill job_1648316642042_0016
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2022-03-26 20:19:40,526 Stage-1 map = 0%,  reduce = 0%
2022-03-26 20:19:47,724 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.68 sec
2022-03-26 20:19:55,984 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 5.66 sec
MapReduce Total cumulative CPU time: 5 seconds 660 msec
Ended Job = job_1648316642042_0016
MapReduce Jobs Launched:
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 5.66 sec   HDFS Read: 22868 HDFS Write: 20769 SUCCESS
Total MapReduce CPU Time Spent: 5 seconds 660 msec
OK
id    reviews
857    NULL
779    NULL
923    NULL
916    NULL
333    NULL
490    NULL
719    NULL
201    NULL
709    NULL
901    NULL
458    NULL
145    NULL
634    NULL
167    NULL
578    NULL
74    NULL
594    NULL
599    NULL
767    0
186    0
9    1002
39    1040
231    1080
55    1331
838    1375
298    1581
426    1602
926    1701
329    1720
208    1720
786    1754
777    1810
364    1810
382    1824
91    1913
568    1915
638    1940
... ...
6    98101
461    98102
297    98103
379    98117
661    98121
357    98133
430    98199
409    98225
480    98257
576    98281
732    98405
585    98501
787    98620
233    98682
921    98801
371    99206
121    99603
601    99687
232    99709
518    99709
677    99835
Time taken: 27.264 seconds, Fetched: 943 row(s)
```

In the next segment, you will understand user-defined functions.

#### Sorting

Qn: Choose the correct statement from the options given below:

- The ORDER BY clause may use multiple reducers and provide the sorted data at the reducer level.

- The SORT BY clause uses only a single reducer and sorts the whole data.

- The ORDER BY clause does not guarantee the sorting of the total data.

- The SORT BY clause guarantees the sorting of the total data.

- None of the above

Ans: E. *The SORT BY clause may use multiple reducers but does not guarantee the sorting of the total data. Whereas, the ORDER BY clause uses single reducers and guarantees the sorting of the total data.*

Qn: Which of the following clauses does not sort the data but divides it into multiple reducers.

- SORT BY

- ORDER BY

- DISTRIBUTE BY

- CLUSTER BY

Ans: C. *The DISTRIBUTE BY clause uses multiple reducers, each containing unsorted and non-overlapped data.*

Qn: Which of the following methods may provide overlapped data in the multiple reducers.

- ORDER BY

- SORT BY

- DISTRIBUTE BY

- CLUSTER BY

Ans: B. *The SORT BY method may use multiple reducers. It sorts the data at the reducer level and may provide overlapping data.*

#### Sorting and Ordering

Qn: Why does the SORT BY clause function faster than the ORDER BY clause? 

Ans: *In the SORT BY clause, data is sorted at the reducer level in small groups; therefore, it functions faster than the ORDER BY clause.*