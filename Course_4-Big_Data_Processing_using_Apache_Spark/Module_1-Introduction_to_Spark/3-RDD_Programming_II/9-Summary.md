# Summary

With this, you have reached the end of this module. Let's quickly summarise your learnings from this session.

- First, you learnt about the implementation of the word count problem in Spark. Through this example, you were able to understand the difference between the capabilities of Spark and those of the MapReduce framework.

![Spark Word Count](https://i.ibb.co/njtzQST/Spark-Word-Count.png)

- Next, you learnt about the different types of transformations in Spark. Based on the shuffle of elements, the transformations are divided into the following two types:  
  
  - Narrow transformations  
  - Wide transformations
  
  ![RDD Narrow vs Wide Transformations](https://i.ibb.co/JdT35ns/RDD-Narrow-vs-Wide-Transformations.jpg)

The table given below shows a few examples of both types of transformations.

| Narrow Transformation | Wide Transformation |
| --------------------- | ------------------- |
| map()                 | groupByKey()        |
| flatMap()             | reduceByKey()       |
| filter()              | distinct()          |
| union()               | intersection()      |
| sample()              | join()              |

- Next, you developed an understanding of the concept of lazy evaluation in Spark, which basically means that the transformations are executed only when an action is called. Spark creates a DAG based on the operations submitted by the user and then executes the entire plan when an action is performed on the RDD. This makes the RDDs fault-tolerant, as Spark holds the data lineage in the form of the DAG, which can be used to restore any lost data from the parent RDD.  
  
  ![Lineage Graph for RDD](https://i.ibb.co/1TgVS62/Lineage-Graph-for-RDD.jpg)  

- You also learnt about multiple optimisation techniques as part of this session, which are as follows:  
  **- Partitioning**: Elements with similar keys are placed in the same partition in order to reduce the shuffle operations and make the execution faster in Spark.  
  **- Caching/Persistence**: You can store the frequently used RDDs inside the Spark memory to prevent re-evaluation every time an operation is called on the same RDD. This helps you save time, as Spark will not execute any redundant steps, and makes the process faster.

- As part of this session, you also learnt about the famous PageRank algorithm, which is used by Google to rank web pages in its search results, and executed it on a very small scale using the Spark framework. You learnt that Spark is quite effective in the case of iterative programming.

Now that you have learnt about PySpark in detail, let's try to answer some questions based on your learnings.
