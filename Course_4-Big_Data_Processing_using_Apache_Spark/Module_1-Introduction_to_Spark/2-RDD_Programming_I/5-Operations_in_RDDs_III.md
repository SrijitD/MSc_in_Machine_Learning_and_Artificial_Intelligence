# Operations in RDDs - III

In the previous segment, you learnt about some of the important transformations and actions on a base RDD. As mentioned earlier, elements are stored in the form of sets in RDDs. In this segment, you will run a set operations, including `join()` and `intersection()`.

**VIDEO**

As you can saw  in the video above, RDDs are a distributed set of elements on which you can implement all operations such as `union()`, `join()` and `intersection()`. Actions can also help you obtain the `max()`, `min()` and `mean()` values from the numerical RDDs.

Code

```python
# Defining the lines RDD
lines = sc.parallelize(["upGrad and IITM offer the course on Machine Learning and Cloud Computing.", "There is an entrance exam for the course.", "Good students are welcome to do this course."])

# Defining the extralines RDD
extralines = sc.parallelize(["Shiva is coordinator of the course from upGrad.", "Prof. Janakiram is the coordinator for the course from IIT Madras."])

# Merging the elements of two RDDs using union()
totallines = lines.union(extralines)

# Taking an intersection of the two RDDs
nulllines = lines.intersection(extralines)

# Collecting the RDDs in the driver program
totallines.collect()
nulllines.collect()
```

```python
# RDD - rdd1
rdd1  = sc.parallelize(range(6), 2)

# maximum value
max = rdd1.max()
max

# minimum value
min = rdd1.min()
min

# mean value
avg = rdd1.mean()
avg
```

You can refer to the [Spark documentation](https://spark.apache.org/docs/2.4.4/api/python/pyspark.html#pyspark.RDD) for some more transformations and actions. The assessments given below will help you explore some of the operations covered so far.

#### Operations on RDDs

Qn: Find the appropriate function for the given code and output:

Input1 = sc.parallelize([('B', 5),('B', 4),('A', 3),('A', 2),('A', 1)])  
Input2 = sc.parallelize([('B', 4),('A', 2)])  
Op1 = ____________ (Select the correct option)  
  
Op1.collect()  
 [('B', (4, 5)), ('B', (4, 4)), ('A', (2, 3)), ('A', (2, 2)), ('A', (2, 1))]

- Input1.intersection(Input2)

- Input2.join(Input1)

- Input1.union(Input2)

- Input1.cogroup(Input2)

Ans: B. *Computes the join operation on 2 RDDs. The output in this case is:  [('B', (4, 5)), ('B', (4, 4)), ('A', (2, 3)), ('A', (2, 2)), ('A', (2, 1))]*

A few additional transformations and operations that are not covered in the previous video have been described below.

- **reduce()**
  - This action can be considered quite similar to the 'reduce' phase of the MapReduce framework.
  - The reduce action takes a lambda expression as an input and aggregates the elements of the input RDD. You can also define a function and use it to reduce the values stored in the RDD.
  - The lambda expression passed in the reduce action denotes the operation used for aggregation.
  - The operation denoted by the lambda expression should be **commutative** and **associative**.

Let's try to understand the last point with the help of the following code snippet:

```python
# RDD - rdd1
rdd1 = sc.parallelize(range(6), 2)

# Sum is commutative and associative function
def sum(x, y):
return(x+y)

# Calculating the sum using reduce()
rdd1.reduce(sum)
```

The diagram given below illustrates the execution flow of `reduce(sum)`.

![RDD Execution Flow 1](https://i.ibb.co/7gJ5smn/RDD-Execution-Flow-1.jpg)

```python
# Average is not commutative and associative function
# Run the sImilar function and check the output
def average(x, y):
      return(x+y)/2.0

# Remember if you don't provide a float value,  the output will be an integer
# Therefore, use 2.0 instead of 2

# Calculating the average using reduce()
rdd1.reduce(average)

# Correct average = 2.5
```

You may have received a wrong average with the code given above.

The diagram given below illustrates the execution flow of `reduce(average).`

![RDD Execution Flow 2](https://i.ibb.co/WsLv9nX/RDD-Execution-Flow-2.jpg)

Therefore, you must be careful while working with `reduce()`. You should always ensure that the functions follow the commutative and associative property.

#### reduce()

`rdd = sc.parallelize(range(6))`

Qn: Submit the code to calculate the correct average of the elements stored in red using the reduce() function.

Ans: *You can use the following approaches to calculate the average of elements of an RDD:*

- Approach 1

```python
rdd = sc.parallelize(range(6), 2)
avg = rdd.reduce(sum) / rdd.count()
```

- Approach 2

```python
rdd = sc.parallelize(range(6), 2)
rdd_count = rdd.map(lambda x: (x, 1))
(sum, count) = rdd_count.reduce(lambda x, y: (x[0] + y[0], x[1] + y[1]))
sum / count
```

- **glom()**
  - The `glom()` transformation helps you understand how the given data is split into partitions without saving the data as an external file, as we do in `saveAsTextFile()`. The assessment given below will help you understand this transformation better.

#### Apache Spark

Qn: Consider the above rdd:

`rdd1 = sc.parallelize(range(6))`

Apply the glom() operation on the above rdd. Which of the following options is correct?

- glom() function stores the data inside the RDDs as an external file.

- glom() function creates a nested structure that stores the data in each partition separately.

- glom() function prints all the partitions of the RDD.

Ans: B. *The glom() function returns an RDD created by grouping all elements within each partition into a list. `rdd1.glom().collect()` helps you to see the output.*

Qn: Which of the following is not a transformation?

- sample()

- map()

- reduce()

- flatMap()

Ans: C. *reduce() is an action that returns a reduced value from the elements of an RDD based on the provided function.*

Qn: Which of these is an action?

- filter()

- union()

- count()

Ans: C. *count() returns the number of elements in an RDD. The output is a number, and hence, this is an action.*

Qn: In a given RDD, you need to find out the number of occurrences of a particular element of the RDD. Which of the following actions will you perform?

- count()

- fold()

- take()

- countByValue()

Ans: D. *This transformation counts the number occurrences of an element. You can refer to the documentation [here](https://spark.apache.org/docs/2.4.4/api/python/pyspark.html#pyspark.RDD.countByValue).*

So far, you have implemented transformations and actions on the base RDD class. In the next segment, you will learn how to create paired RDDs and will implement transformations and actions associated with them.
