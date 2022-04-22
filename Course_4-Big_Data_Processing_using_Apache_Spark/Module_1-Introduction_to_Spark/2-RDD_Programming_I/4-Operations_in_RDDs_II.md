# Operations in RDDs - II

In the previous segment, you learnt about some operations that can be performed over an RDD. In this segment, you will learn how to implement a few more transformations and actions on a given RDD in PySpark shell.

It is recommended that you manually type the commands instead of pasting from snippets. Let's watch the next video to learn about this in detail.

**VIDEO**

Based on your requirements, you can manipulate the data with the help of different transformations such as `map()` and `filter()`. The video given above covers only some of the many transformations available in the Spark documentation provided later in the segment. Once you have the RDD in the desired form, you can perform an action to load the output in the form of an external file or inside the shell environment. To collect the entire RDD data on the Driver program, you can call the `collect()` function.

Code

```python
# rdd1
rdd1 = sc.parallelize(range(6), 2)

# Transforming the RDDs by applying a map() function
rdd2 = rdd1.map(lambda x: x*2)

# Collecting all the elements in the driver program
rdd2.collect()

# Filtering the elements based on a condition
rdd3 = rdd2.filter(lambda x: x>4)

# Collecting all the elements in the driver program
rdd3.collect()
```

The `map()` operation is one of the most useful transformations in Spark, as it helps mould the data into the required form before performing any functions. Moreover, it also helps provide a certain structure to the data stored in the RDDs. Another such function is `flatMap()`. An important point that was covered in the previous segment is the  `map()` and `flatMap()` transformations. Let's watch the next video to understand the difference between these two transformations.

**VIDEO**

The code used by the professor in the video is given below.

```python
# Defining the lines RDD
lines = sc.parallelize(["upGrad and IITM offer the course on Machine Learning and Cloud Computing.", "There is an entrance exam for the course.", "Good students are welcome to do this course."])

# Note: Remove the backslash in case of error

# Splitting the lines into words using flatMap()
words = lines.flatMap(lambda x: x.split(" "))

# Counting the elements in RDDs
lines.count()
words.count()

# Split using the map() transformation
wordlines = lines.map(lambda x: x.split(" "))

# Counting the elements in RDDs
wordlines.count()

# Collecting the RDDs in the driver program
words.collect()
wordlines.collect()
```

Based on your use case, you must apply the `map()` or `flatMap()` transformation on the RDD correctly. The `flatMap()` transformation returns elements more or less than those present in the parent RDD. If you want a one-to-one mapping between the input and the output elements, then you should use the `map()` transformation, as shown below.

![RDD Transformation Example](https://i.ibb.co/TKt0YPL/RDD-Transformation-Example.png)

Also, you must appreciate that Spark is able to store both string and numerical values in RDDs with the same command. You need not specify any schema or structure while loading the data. Hence, it is termed as the **Unstructured API** of Spark.  

Some of the important transformations and actions available in Spark are as follows:

- **map()**
  - The `map()` transformation takes a function or a lambda expression as an argument, and this function is executed on each data item of the parent RDD.
  - There is a one-to-one mapping between the elements of the source RDD and those of the resultant RDD.
  - The return value of the function, when applied to each data item of the parent RDD, forms the data items of the resultant RDD.
- **flatMap()**
  - The `flatMap()` transformation maps an element of the input RDD to one or more elements in the target RDD.
  - Unlike the `map()`transformation, the lambda expression will return a collection of values for a single element in the input RDD.
- **filter()**
  - The `filter()` transformation takes a function or a lambda expression that returns a boolean value as the argument.
  - This boolean function is executed on each element of the source RDD.
  - Only those elements that return 'true' when the lambda expression is executed on them find a place in the resultant RDD.

Some of the common actions that are applied to a basic RDD are as follows:

- **collect()**
  - This action collects all the data for a particular RDD distributed across partitions.
  - The collected data is returned as an array to the Driver program.
- **take()**
  - This action takes an integer parameter 'n' and returns a list of the first 'n' elements of the RDD to the Driver program.
  - The `take()` action is more suitable than the `collect()` action as the former loads only a part of the dataset in the Driver program.
- **saveAsTextFile()**
  - This action is useful for storing all the data items present in the RDD in persistent storage such as a local file system or HDFS.
- **count()**
  - This action returns the total number of elements that exist in RDDs.

#### Apache Spark

Qn: Fine-grained means that we can transform each and every element of the dataset. Coarse-grained means we can transform the entire dataset but not an individual element.
  
Which of the following statements is true wrt to RDDs?

- Read operation on an RDD can either be fine-grained or coarse-grained.

- Write operation on an RDD is fine-grained.

Ans: A. *When you perform the collect() operation, the entire RDD is loaded. The take() operation, on the other hand, helps you read a small part of the RDD.*

#### Transformations and Actions

Suppose you have the following RDD:  
`rdd1 = sc.parallelize(['upGrad', 'IITM', 'Prof. Janakiram', 'MLC', 'AWS', 'Cloud'])`

Qn: Which of the following commands will result in the output as 'upGrad'?

- `rdd.collect()`

- `rdd1.first()`

- `rdd1.filter(lambda x: x[0] =='u')`

- `rdd1.take(1)`

Ans: B & D.

- *first() is an action that returns the first element of the RDD. Since ‘upGrad’ is the first element in the RDD, it is printed on the screen.*

- *take() is similar to collect but returns a limited number of elements to the driver program. Since ‘upGrad’ is the first element in the RDD, it is printed on the screen because you have asked to print one element of the RDD.*

Qn: Which of the following commands can help you in counting the number of characters in ‘rdd1’?

- sum()

- map()

- filter()

- len()

Ans: A, B & D. *The sum(), map() & len() operations along with other transformations and actions will result in the sum of all the elements in the RDD. Code: `rdd1.map(lambda x: len(x)).sum()`*

#### Transformations and Actions

Qn: Given the input and output of a program. Select the appropriate function.  
  
```python
input1=[1,2,3,4,5]  
rdd=spark.sparkContext.parallelize(input1)  
op1= (Select the correct option)  
op1.collect()
```

OUTPUT : [(1,1),(2,1),(3,1),(4,1),(5,1)]

- op1=rdd.map(lambda x: (x,1))

- op1=rdd.flatMap(lambda x: (x,1))

Ans: A. *Map function takes one element at a time and creates a new element.  
This command will result in the following output : [(1, 1), (2, 1), (3, 1), (4, 1), (5, 1)]*

In the next segment, you will learn about some new transformations and actions that can be performed on RDDs.
