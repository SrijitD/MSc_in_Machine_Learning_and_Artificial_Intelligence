# Transformations in RDD

By now, you must be well-versed with the basic transformations and actions that can be performed on RDDs. You have implemented different operations while working with different examples, including the word count problem in the previous segment. In this segment, you will learn about the different types of transformations in Spark.

Based on the way in which a transformation is executed, Spark classifies them into two types. Let's watch the next video to understand these types better.

**VIDEO**

After the application of narrow transformations, the partitions formed in the resultant RDD have one-on-one correspondence with the partitions in the parent RDD. In other words, the elements in a partition of the parent RDD is mapped to the elements of only one partition of the resultant RDD.

![RDD-Narrow vs Wide Transformations](https://i.ibb.co/JdT35ns/RDD-Narrow-vs-Wide-Transformations.jpg)

The table given below lists a few examples of both types of transformations.

| Narrow Transformations | Wide Transformations |
| ---------------------- | -------------------- |
| map()                  | groupByKey()         |
| flatMap()              | reduceByKey()        |
| filter()               | distinct()           |
| union()                | intersection()       |
| sample()               |                      |

Spark jobs that involve narrow transformations are faster than the ones that involve wide transformations. This is because wide transformations involve a shuffle phase in-between; hence, they are termed as shuffle transformations. Therefore, you must always try to write code with more narrow transformations than wide transformations.

#### RDD Transformations

Qn: Which of the following transformations has been demonstrated in the image below?

![RDD Transformations](https://i.ibb.co/zSD68dC/RDD-Transformations.jpg)

- Narrow transformation

- Wide transformation

Ans: A. *Here, the partitions of parent RDD are mapped to only one partition of the resultant RDD. Hence, this is a narrow transformation.*

Qn: Which of the following statement is true with respect to the join() transformation?

- It is a narrow transformation.

- It is a wide transformation.

- None of the above

Ans: C. *The structure of the parent RDD decides whether join() is narrow or wide transformation.  You can refer to the following [link](https://github.com/rohgar/scala-spark-4/wiki/Wide-vs-Narrow-Dependencies) for more understanding of this.*

In the next segment, you will learn how to partition data and try to avoid shuffle operations.
