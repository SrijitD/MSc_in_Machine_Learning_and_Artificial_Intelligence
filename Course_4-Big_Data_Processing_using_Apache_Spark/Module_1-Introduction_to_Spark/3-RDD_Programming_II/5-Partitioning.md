# Partitioning

Spark data structures are expected to hold datasets that are huge in size, and hence, they can be partitioned across multiple nodes in the cluster. These partitions form the basic unit of parallelism in Spark, i.e., a transformation is applied on multiple data partitions in parallel (provided that the application is being executed in multiple containers). Spark automatically distributes the data across different partitions when you create an RDD, and the user does not have any control on the partitioning scheme (i.e., which partition will hold what data).

The partitions of an RDD may lay across different executors of different nodes in the cluster. When you perform any operation, the data will be accessed from each partition and then operated based on the type of function you have provided. However, as studied in the previous segments, wide transformations involve a lot of shuffles, which makes the execution inefficient.  Let's watch the next video to understand this better.

**VIDEO**

You can execute the code implemented by the professor in the video above and use glom().collect() to view the partitions.

```python
#Create RDDs
rdd1=sc.parallelize([("a",1),("a",2),("b",3),("c",2),("d",3),("d",6),("e",2),("e",1)])
rdd2=sc.parallelize([("a","A"),("b","B"),("c","C"),("d","D"),("e","E")])

#To find out the number of partitions:
rdd1.getNumPartitions()
rdd2.getNumPartitions()

#To look at the file and the partitions, save them:
rdd1.saveAsTextFile("r105")
rdd2.saveAsTextFile("r106")

#To look at the file and the partitions, you can use glom().collect():
rdd1.glom().collect()
rdd2.glom().collect()
```

So, when we create an RDD, there is a random distribution of elements within the partitions. As you can see, the elements associated with the key '_a_' have been placed in different partitions. If we use the same distribution in our Spark programs, the functions (`groupBy()`, `reduceByKey()`, `groupeByKey()`) will have extra layers of a shuffle, as mentioned in the video. However, you can repartition the data to avoid multiple shuffles in the program and increase the efficiency of your Spark job. Through partitioning, you can help bring similar elements together and prevent the unnecessary shuffling of data during operation. The two basic type of partitioning schemes in Spark are as follows:

1. **Hash partitioning**: Hash partitioning calculates the hash of the key to decide the partition for a key-value pair. The basic concept of hash is that objects that are equal should have the same hash code. Therefore, elements with the same key are placed under the same partition. This is the default partitioning technique in Spark.

2. **Range partitioning**: In range partitioning, tuples are first sorted and then partitioned based on the particular range of keys. Hence, tuples containing keys within the same range will appear on the same partition. This is helpful when the keys of the RDD follow a certain order.

Apart from the two techniques mentioned above, Spark also allows you to customise the partitioning logic. This is known as **Custom Partitioning**. Here, you can define the logic for partitioning. For example, if you have the integers as keys in the RDD, you can provide a custom logic to split all the even keys into one partition and the odd keys into another partition.

You can use the following important commands to repartition the data:

1. [partitionBy()](https://spark.apache.org/docs/2.4.4/api/python/pyspark.html#pyspark.RDD.partitionBy)
2. [repartition()](https://spark.apache.org/docs/2.4.4/api/python/pyspark.html#pyspark.RDD.repartition)
3. [coalesce()](https://spark.apache.org/docs/2.4.4/api/python/pyspark.html#pyspark.RDD.coalesce)

You can check the attributes of each command by visiting the embedded links. Apart from these functions, you can also change the number of partitions while performing transformations, such including `sortByKey()` and `groupByKey()`, through the `numPartitions` attribute.

Let's try to implement different partitioning techniques over a sample paired RDD to understand this better.

```python
# Creating the RDD with 4 partitions
sample_rdd = sc.parallelize([(1,'Hadoop'), (7,'DynamoDB'), (2,'Spark'), (1,'Sqoop'), (8,'Zookeeper'), (5,'Storm'), (7,'Flume'), (3,'Pig'), (2,'Kafka'), (4,'HBase'), (6,'MapReduce'), (4,'Hive'), (3,'Trident'), (5,'Hive'), (6,'Oozie'), (8,'Zookeeper')], 4)

# Number of partitions
sample_rdd.getNumPartitions()
# Four partitions as defined in the parallelize command

# Check the distribution in partitions (use glom() transformation)
sample_rdd.glom().collect()

[[(1, 'Hadoop'), (7, 'DynamoDB'), (2, 'Spark'), (1, 'Sqoop')],
 [(8, 'Zookeeper'), (5, 'Storm'), (7, 'Flume'), (3, 'Pig')],
 [(2, 'Kafka'), (4, 'HBase'), (6, 'MapReduce'), (4, 'Hive')],
 [(3, 'Trident'), (5, 'Hive'), (6, 'Oozie'), (8, 'Zookeeper')]]

# By default, RDD has a random distribution of elements into the partitions.

#1. Hash Partitioning - Repartitioning into 3 partitions
sample_rdd_hash = sample_rdd.partitionBy(3)
sample_rdd_hash .glom().collect()

[[(3, 'Pig'), (6, 'MapReduce'), (3, 'Trident'), (6, 'Oozie')],
 [(1, 'Hadoop'),  (7, 'DynamoDB'),  (1, 'Sqoop'),  (7, 'Flume'),  (4, 'HBase'),  (4, 'Hive')],
 [(2, 'Spark'),  (8, 'Zookeeper'),  (5, 'Storm'),  (2, 'Kafka'),  (5, 'Hive'),  (8, 'Zookeeper')]]

# Elements with common key are now put into the same partition as the default partitioning scheme is Hash partitioning

#2. Range Partitioning - Repartitioning into 3 partitions
sample_rdd_range = sample_rdd.sortByKey(numPartitions = 3)
sample_rdd_range.glom().collect()

[[(1, 'Hadoop'),  (1, 'Sqoop'),  (2, 'Spark'),  (2, 'Kafka'),  (3, 'Pig'),  (3, 'Trident')],
 [(4, 'HBase'),  (4, 'Hive'),  (5, 'Storm'),  (5, 'Hive'),  (6, 'MapReduce'),  (6, 'Oozie')],
 [(7, 'DynamoDB'), (7, 'Flume'), (8, 'Zookeeper'), (8, 'Zookeeper')]]

# Keys are sorted using the sortByKey() function and then repartitioned.

#3. Custom Partitioning - Repartitioning with odd and even keys in separate partitions
sample_rdd_custom = sample_rdd.partitionBy(2, lambda x: x%2)
sample_rdd_custom.glom().collect()

[[(2, 'Spark'),  (8, 'Zookeeper'),  (2, 'Kafka'),  (4, 'HBase'),  (6, 'MapReduce'),  (4, 'Hive'),  (6, 'Oozie'),  (8, 'Zookeeper')],
 [(1, 'Hadoop'),  (7, 'DynamoDB'),  (1, 'Sqoop'),  (5, 'Storm'),  (7, 'Flume'),  (3, 'Pig'),  (3, 'Trident'),  (5, 'Hive')]]
```

#### Partitioning

Qn: Which of the following partitioning techniques will be helpful if you want to partition the data based on the months in which the data was collected? Each entry has the month mentioned in a separate column and data from each month must be stored in a separate partition.

- Hash partitioning

- Range partitioning

- Custom partitioning

Ans: A. _Hash partitioning will be helpful here as the elements are ordered and categorical._

Qn: Which of the following outputs is correct for the given RDD transformation? `rdd=sc.parallelize([1,2,3,4,5,6,7,8,9,10],3)`

- `rdd.coalesce(2,True).collect()`
Output: [1,2,3,7,8,9,10,4,5,6]

- `rdd.repartition(2).glom().collect()`
Output: [1,2,3,7,8,9,10,4,5,6]

- `rdd.repartition(2).glom().collect()`
Output: [[1, 2, 3, 7, 8, 9, 10], [4, 5, 6]]

- `rdd.coalesce(2,True).collect()`  
Output: [[1, 2, 3, 7, 8, 9, 10], [4, 5, 6]]

Ans: A & C.

- _Coalesce shuffles data according to the existing partitions._

- _Repartition first shuffles the data and then repartitions it._

#### coalesce() vs repartition()

Qn: coalesce() and repartition() methods are used to modify the partitioning scheme in an RDD. Select the correct statements based on the results obtained after running the following commands on sample_rdd defined in the text above.

Increasing the number of partitions:

```python
sample_rdd.coalesce(5).getNumPartitions()
sample_rdd.repartition(5).getNumPartitions()
```

Printing the output of repartitioned RDDs

```python
sample_rdd.coalesce(3).glom().collect()
sample_rdd.repartition(3).glom().collect()
```

- coalesce() transformation can only be used to reduce the number of partitions.

- repartition() transformation can only be used to increase or decrease the number of partitions.

- coalesce() command involves shuffling of elements.

- repartition() command involves shuffling of elements.

- It is always preferred to use repartition() over coalesce().

Ans: B & D.

- _The repartition() function allows both, increasing and decreasing the number of partitions._

- _There is shuffle involved in the repartition() function. The elements of one partition are not merged with the other partitions in the same order._

Repartitioning a Spark data structure is an expensive operation because it requires shuffling the data over the network between the different partitions. However, if the data structure is to be used multiple times for various key-oriented operations such as `reduceByKey()` and `join()`, repartitioning the data structure, in the beginning, helps in avoiding multiple data shuffles (each time a key-oriented transformation/action is called). Let's watch the next video to understand this better.

**VIDEO**

You can try the code executed by the professor in the video above and note the difference in time taken by your machine.

```python
#To calculate time taken to perform reduceByKey() operation:
import time
rdd11=rdd1.reduceByKey(lambda x,y :x+y)
t1=time.time(); rdd11.saveAsTextFile("r110"); t2=time.time(); t=t2-t1

# printing the time take
t

#After changing the partitions:
rdd3=rdd1.partitionBy(4)
rdd3.getNumPartitions()
# view the partitions
rdd3.saveAsTextFile("r115")

#Find the time
t1=time.time(); rdd3.saveAsTextFile("r116"); t2=time.time(); t=t2-t1

# printing the time take
t
```

As you can see, grouping similar keys together reduces the number of shuffles and decreases the computation time. In the example above, there was approximately 50% increment in the efficiency even though we took a very small dataset. So, you can imagine how fruitful partitioning could be when we are dealing with big data.
