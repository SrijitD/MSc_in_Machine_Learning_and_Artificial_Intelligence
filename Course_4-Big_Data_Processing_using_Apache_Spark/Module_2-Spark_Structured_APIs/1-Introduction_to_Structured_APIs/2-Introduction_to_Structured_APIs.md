# Introduction to Structured APIs

Earlier, you have used RDDs to implement word count and PageRank algorithms and hence, you are very well aware of the capabilities of RDDs. We can say in a way that RDDs form the core of Spark. But since we have RDDS, one question comes up in mind.

What is the need for different classes of APIs when we already have RDDs?

This is because even though RDDs are the core abstraction of Spark, they have certain limitations. In the next video, you will learn about the limitations of RDDs from our industry expert.

**VIDEO**

**Note:** At time stamp 1.38, the SME refers to the code _map(lambda v: v[0]/v[1]);_ the code in the video is not right. It should be _map(lambda v: v[1][0]/v[1][1])_

## Limitations of RDDs

1. Data stored with the RDD abstraction is unstructured. While dealing with unstructured data, Spark recognises that there are parameters (or attributes) associated with each datapoint object, but Spark cannot read the inside object to know more details of the parameters.

2. RDD is a low-level abstraction. The code has very low-level details about the execution of a job. For instance, consider a code to find the average of a set of datapoints.

**Take a look at this code:**

```python
rdd1 = spark.sparkContext.parallelize([('a', 10), ('b', 15),('a',5),('c', 12),('b',6)])
avg_by_key=rdd1.mapValues(lambda x: (x, 1))\
                       .reduceByKey(lambda a,b: (a[0]+b[0], a[1]+b[1]))\
                       .map(lambda v: v[1][0]/v[1][1])
avg_by_key.collect()

Output: [7.5, 10.5, 12.0]
```

**For better understanding, we will analyse this code step by step:**

```python
# Creates a paired RDD.
rdd1 = spark.sparkContext.parallelize([('a', 10), ('b', 15), ('a', 5), ('c', 12), ('b', 6)])

# Maps 1 along with the values in the paired RDD
avg_by_key1=rdd1.mapValues(lambda x: (x, 1))

# You can see the output at each step by using rdd.collect() action
avg_by_key1.collect()
Output: [('a', (10, 1)), ('b', (15, 1)), ('a', (5, 1)), ('c', (12, 1)), ('b', (6, 1))]

# Given there are multiple keys with different values, reduceByKey() sums the values corresponding to those keys.
avg_by_key2=avg_by_key1.reduceByKey(lambda a,b: (a[0]+b[0], a[1]+b[1]))
avg_by_key2.collect()
Output: [('a', (15, 2)), ('b', (21, 2)), ('c', (12, 1))]

# map() calculates the average by dividing the sum of values of each key by the number of keys that have contributed to that sum. 
avg_by_key=avg_by_key2.map(lambda v: v[1][0]/v[1][1])

# Final output
avg_by_key.collect()
Output: [7.5, 10.5, 12.0]
```

In the code, the process of finding the average gets divided into smaller MapReduce operations:

1. Map the datapoint values with 1

2. Add all the datapoints and arrive at one sum value by key

3. Divide the sum with the total number of datapoints

In the above code, each logical step in the process of calculating the average has become a map or reduce statement. Now consider the same code written in the structured API abstraction as shown below:

`df1.groupBy("product").avg("price")`

This code can be easily understood even if you do not understand its underlying details, you can tell what this code is meant for. You can clearly see that the code with higher-level APIs is more intuitive as compared to RDDs.

Now, in the next video, let’s try to understand why these new APIs are known as structured APIs.  

**VIDEO**

## Structured APIs

As the name suggests, **data** stored in these abstractions is **structured**, that is, in the form of rows and columns. Storing data in a table-like format ensures that Spark can read the details of each feature (column) of every data point.  

The code written in a structured API is readable and intuitive, just like writing a command using the Pandas library.

Another major upgrade the structured APIs have is the **Catalyst Optimiser**. As the name suggests it is an in-built optimiser that optimises the code to get maximum performance in minimum possible time. The actual workflow of this optimiser will be dealt with in the next session. For now, let’s just say structured APIs can perform jobs a lot faster than RDDs.  

Before we move forward, you should remember that SparkSQL is the module used for structured data processing. DataFrames, Datasets and SQL tables and views (often referred to as SparkSQL) are APIs built on Spark SQL to write your data flows. As you proceed further, you’ll see that whether you use DataFrames, Datasets or SQL API, the functionalities are called from the **pyspark.sql** module. With this clear in mind, let’s understand a bit more about the 3 APIs.

There are three structured APIs in Spark which are as follows:

1. **DataFrames**: Collection of data organised in a table form with rows and columns. They allow processing over a large amount of structured data. One of the major differences between DataFrames and RDDs is the fact that data in DataFrames are organised in rows and columns and in the case of RDDs it is not. However, DataFrame does not have compile-time type safety.

2. **Datasets**: This structure is an extension of DataFrames that includes the features of both dataframes and RDDs. Datasets provide an object-oriented interface for processing data safely. Object-oriented interface refers to an interface where all the entities are treated as an object and in order to access them, one has to call the object. Note that Datasets are only available in JVM based languages - Scala and Java and not available in Python and R. Datasets have compile-time type safety.

3. **SQL tables and views (SparkSQL)**: With SparkSQL, you can run SQL-like queries against views or tables organised into databases.

Do not worry if you haven’t understood some terminologies like compile-time type safety, you’ll learn more about these terms in the upcoming segments.

Before moving on to the next segment, try answering the following questions:

#### RDDs vs Dataframes

Qn: Which of the following are common between structured APIs and RDDs?

- In-memory processing

- Distributed

- Immutability

- Structured data

Ans: A, B & C. _Dataframe inherits all the properties of RDDs and builds on top of them. The major difference in them is data frames are structured data abstractions_

Qn: Which of the following provides a high-level abstraction of data along with lazy evaluation of that data?

- RDDs

- Dataframes

Ans: B. _Dataframes are a high-level abstraction of data._

In the next segment, you will explore DataFrames and Datasets, and learn about their features and benefits.
