# Operations on Paired RDDs - I

A paired RDD is a special RDD class that holds data as a **(key, value)** pair. Due to the difference in the structure, there are different operations associated with paired RDDs. Let's watch the next video to learn about them.

**VIDEO**

The `reduceByKey()` and `groupByKey()` transformations are two of the most important transformations that can be performed on paired RDDs. The `groupByKey()` transformation helps you group the values of similar keys together, whereas the `reduceByKey()` transformation helps you reduce the values of similar keys into a single value based on the lambda function provided. Let's create a paired RDD first and then run these operations on it in the PySpark shell.

**VIDEO**

You can easily create a paired RDD using the `parallelize()` function as the base RDDs.

Code

```python
# Defining the rdd
rdd = sc.parallelize([("a", 3), ("b", 4), ("c", 2), ("d", 5)])

# Collecting the elements on driver program
rdd.collect()

# Extracting the keys from the RDD
rdd.keys().collect()

# Extracting the values from the RDD
rdd.values().collect()
```

You can use also use the following methods to create paired RDDs:

- `textFile()` method
- Transforming base RDDs

The limitation with the `textFile()` method is that the structure of the file must be in a (key,value) format in order to load the data directly in the form of paired RDDs.

Another method of creating paired RDDs is to transform the base RDDs. The `map()` and `flatMap()` transformations can be used to convert the base RDD into a paired RDD. Let’s try to implement these transformations in the question provided below.

Question 1/2

Mandatory

#### Paired RDDs

Qn: Determine if the following statement is True/False:  
"Paired RDD is an RDD consisting of a two linked data item, key and value. Where a key is the identifier and value is determined by applying a hash function on the key."

- True

- False

Ans: B. *The value part in the PairedRDD is not determined by applying any hash function on the key. Value is any data element which can be logically mapped to its corresponding key.*

Qn: Suppose you have the following RDD:  
`rdd1 = sc.parallelize(['upGrad', 'IITM', 'Prof. Janakiram', 'MLC', 'AWS', 'Cloud'])`

Select the code that gives the number of characters in each element of the RDD along with the element.

Resultant RDD: [('upGrad', 6),  ('IITM', 4),  ('Prof. Janakiram', 15),  ('MLC', 3),  ('AWS', 3),  ('Cloud', 5)]

- rdd1.map(x, len(x))

- rdd1.map(lambda x: (x, count(x)))

- rdd1.flatMap(lambda x: (x, len(x)))

- rdd1.map(lambda x: (x, len(x)))

Ans: D. *The map() function helps to calculate the number of characters in each element using the len() function. You can notice that the created RDD is a paired RDD.*

As you can saw in the example above, you use the the `map()` transformation to convert a base RDD into a paired RDD. You can attach a key or a value along with the elements of the base RDD.

In the next segment, you will learn how to apply transformations such as `reduceByKey()`, `groupByKey()` among others.
