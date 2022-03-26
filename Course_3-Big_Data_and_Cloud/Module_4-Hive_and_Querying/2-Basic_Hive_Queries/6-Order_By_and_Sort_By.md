# Order By and Sort By

So, in the previous segments, you learnt how to create the database and tables in Hive. In this segment, you will understand the functions of sorting in Hive and learn how sorting is done at both the map and reducer levels.

Now, you will learn about the ‘**SORT BY**’ and ‘**ORDER BY**’ clauses.

Let’s start with the theoretical understanding of these clauses.

**VIDEO**

The '**ORDER BY'** clause provides the total sorted list of the data and guarantees the total ordering in the output. It may use multiple mappers but only one reducer.

The '**SORT BY'** clause sorts the data at the reducer level only. However, it does not guarantee the total sorting of the data. This command will not provide the complete sorted list. Also, you may receive overlapping data in the two reducers.

Let’s now understand the difference between the two clauses through the following diagrams.

![Order by](https://i.ibb.co/MfrDYH8/Hive-Order-By.png)

![Sort by](https://i.ibb.co/ZJ2jRHW/Hive-Sort-By.png)

As you can see in the diagram, the 'ORDER BY' clause will provide the total sorted data, whereas the 'SORT BY' command does not guarantee the overall sorting of the data and may provide overlapping data. As you learnt, the 'SORT BY' command uses multiple reducers; hence, it functions faster than the 'ORDER BY' clause.

Let’s now move on to understand the difference between the 'DISTRIBUTE BY' clause and the 'CLUSTER BY' clause.

In the '**DISTRIBUTE BY'** clause, data is distributed into multiple reducers. However, it does not get sorted into each reducer; the command simply distributes the data into multiple reducers.

On the other hand, in the '**CLUSTER BY'** clause, data is distributed into multiple reducers with each reducer containing sorted and non-overlapping data.

Hence, you can conclude that the 'CLUSTER BY' clause is a combination of the 'DISTRIBUTE BY' and 'SORT BY' clauses.

Let’s further understand this through the image given below.

![Distribute by](https://i.ibb.co/sPZsrch/Hive-Distribute-By.png)

![Cluster by](https://i.ibb.co/QNSJLqr/Hive-Cluster-By.png)

Now that we have understood the theoretical aspect of the concepts, let’s look at a practical demonstration of the 'ORDER BY' clause in this video.

**VIDEO**

To summarise the video, the 'ORDER BY' clause has been used on the user_info.age column. Once the query is executed, you will get the output in the ascending order of the age.

![1](https://i.ibb.co/X3Dg8k9/11.png)

You will get the output of the above query as shown below:

![2](https://i.ibb.co/D83p56C/12.png)

```shell
hive> use demo;
OK
Time taken: 1.175 seconds
hive> show tables;
OK
female_users
male_users
second_table
user_info
Time taken: 0.366 seconds, Fetched: 4 row(s)
hive> select * from user_info limit 5;
OK
1 24 M technician 85711
2 53 F other 94043
3 23 M writer 32067
4 24 M technician 43537
5 33 F other 15213
Time taken: 3.431 seconds, Fetched: 5 row(s)
hive> set hive.cli.print.header=true
    > ;
hive> select * from user_info limit 5;
OK
user_info.id user_info.age user_info.gender user_info.profession user_info.reviews
1 24 M technician 85711
2 53 F other 94043
3 23 M writer 32067
4 24 M technician 43537
5 33 F other 15213
Time taken: 0.269 seconds, Fetched: 5 row(s)
hive> select id, profession, age from user_info order by age limit 10;
Query ID = hadoop_20220326200156_7bbacc1f-5ba2-45a8-b18f-79018721c8b6
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648316642042_0012)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 02/02  [==========================>>] 100%  ELAPSED TIME: 6.19 s
----------------------------------------------------------------------------------------------
OK
id profession age
30 student 7
471 student 10
289 none 11
609 student 13
880 student 13
674 student 13
142 other 13
628 none 13
887 student 14
813 student 14
Time taken: 8.391 seconds, Fetched: 10 row(s)
```

Now, let’s understand the 'SORT BY' clause through a practical demonstration.

**VIDEO**

So, we have executed the same query with the 'SORT BY' clause on the age column. As you may have noticed in the video, two reducers are used to sort the data. Each mapper will get the data and sort it at the reducer level.

![3](https://i.ibb.co/hymqfTC/13.png)

```shell
hive> select id, age, gender, profession from user_info sort by age limit 25;
Query ID = hadoop_20220326200539_2737a0a9-0796-440e-9e33-b43f6e3bab1f
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1648316642042_0012)

----------------------------------------------------------------------------------------------
        VERTICES      MODE        STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
----------------------------------------------------------------------------------------------
Map 1 .......... container     SUCCEEDED      1          1        0        0       0       0
Reducer 2 ...... container     SUCCEEDED      2          2        0        0       0       0
Reducer 3 ...... container     SUCCEEDED      1          1        0        0       0       0
----------------------------------------------------------------------------------------------
VERTICES: 03/03  [==========================>>] 100%  ELAPSED TIME: 5.41 s
----------------------------------------------------------------------------------------------
OK
id age gender profession
30 7 M student
471 10 M student
289 11 M none
880 13 M student
628 13 M none
142 13 M other
674 13 F student
609 13 F student
206 14 F student
813 14 F student
887 14 F student
849 15 F student
179 15 M entertainment
281 15 F student
101 15 M student
618 15 F student
461 15 M student
451 16 M student
434 16 F student
57 16 M none
550 16 F student
580 16 M student
257 17 M student
67 17 M student
904 17 F student
Time taken: 6.026 seconds, Fetched: 25 row(s)
```

When you run the above query, you will get the sorted data but at the reducer level only.

We can summarise all four sorting methods in the following way:

- **Sort By:** This clause will distribute the data in multiple reducers in a sorted manner. It is suggested to use when there is huge data for the sorting.
- **Order By:** It is used when you want to perform global ordering and this is not suggested to use when there is a larger dataset.
- **Distribute By:** Data will be distributed among the reducers in a non-overlapped manner but not in a sorted manner. It is suggested when there is a larger dataset.
- **Cluster By:** It divides the data into multiple reducers and each reducer will get the sorted data in it. It is suggested when there is a larger dataset.

In the next segment, you will understand the difference between the 'DISTRIBUTE BY' clause and the 'CLUSTER BY' clause using Hive queries.
