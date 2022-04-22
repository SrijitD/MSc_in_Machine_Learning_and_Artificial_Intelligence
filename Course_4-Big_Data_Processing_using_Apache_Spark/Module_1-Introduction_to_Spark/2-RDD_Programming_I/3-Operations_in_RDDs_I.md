# Operations in RDDs - I

Data processing is one of the primary operations performed by any big data processing platform. Spark is quite popular for its ability to process data at a lightning-fast rate. In this segment, you will learn how to process data in Spark using RDDs. Let's watch the next video to learn more about it.

**VIDEO**

RDDs allow various methods and operations to be performed on the data stored in them. These operations can be classified into the following two categories:

- **Transformations**: An operation on an RDD returns another RDD.
- **Actions**: An operation on an RDD returns a non-RDD value.

Let's hear from Professor Janakiram as he explains these categories in detail.

**VIDEO**

The first type of operation that you can perform on an RDD is called **transformation**. As the name suggests, these operations help you transform the data from their existing form into a new one. As RDDs are immutable, every transformation results in a new RDD, as shown below.

![RDD Transformation](https://i.ibb.co/XbQk92L/RDD-Transformation.png)

In order to generate any output from transformations, you need to perform the second type of operation, i.e., **action**. An action usually involves operations such as printing, counting, adding and saving to disk and usually results in a non-RDD value. The result of the action is stored either in the Driver program or the Disk, as shown below.

![RDD Action](https://i.ibb.co/9GRyYCt/RDD-Action.png)

Let's watch the next video to learn about some more RDD operations.

**VIDEO**

By now, you must have some clarity on transformations and actions. If an action on an RDD results in another RDD, it can be considered a transformation. In any other scenario, it will be an action. In this segment, you learnt about the following transformations and actions:

Transformations

- `map()`
- `flatMap()`
- `filter()`

Actions

- `count()`
- `getNumPartitions()`
- `saveAsTextFile()`

Spark holds a rich library of such transformations and actions for processing the data in RDDs.  You will learn about some more functions in the upcoming segments.

#### Spark Programming

Qn: Identify the correct syntax for saving an RDD externally on the disk.

- saveastextfile()

- SaveAsTextFile()

- saveAsTextFile()

Ans: C. *Spark follows a particular font casing format. The first letter is always small and the subsequent words in the function start with a capital letter.* `rdd.saveAsTextFile()`

#### Spark Operations

Qn: Suppose you want to plot a graph for the data stored in the RDDs using the Matplotlib library of Python. Which operation will be essential in doing so?

- Action

- Transformation

Ans: A. *To plot a graph in Matplotlib, first, you will have to convert the data from an RDD into a list or a data frame in Python. Actions are used to generate a non-RDD value in Spark.*

In the next segment, you will explore some more transformations and actions that can be performed on RDDs.
