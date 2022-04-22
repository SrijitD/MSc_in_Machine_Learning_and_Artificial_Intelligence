# RDD Class

RDDs form the core abstraction of Spark. In this segment, you will learn about the structure of an RDD. An RDDs is defined as a **class** in Spark because it follows object-oriented programming (OOP). In the OOP paradigm, the programmer has to define a class that holds the information related to the format of the data and the different methods that can be called on it.

Based on the class, different objects are created, and they hold the data in them.

Let’s watch the next video to understand how the RDD class is defined in Spark.

**VIDEO**

There are certain essential attributes that make a simple RDD class, which are as follows:

- **Partitions:** Since RDDs are distributed in nature, this attribute denotes that the data is stored as partitions in an RDD.
- **Iterator:** An iterator helps you iterate over the partitions of an RDD.
- **Parent RDD:** Since RDDs are immutable, any changes made in an RDD results in a new RDD. The RDD class must hold the parent RDD from which it has originated. (You will learn about this in much detail in the upcoming sessions.)
- **Methods:** This attribute specifies all the operations or methods that you can implement over a given RDD class. You can find the complete list of methods [here](https://spark.apache.org/docs/latest/api/java/org/apache/spark/rdd/RDD.html). (You will learn about methods in detail during the programming sessions in Spark.)

Spark also has other classes that are built on top of the basic RDD. Let’s watch the next video to learn about these classes.

**VIDEO**

So, the two main types of RDDs are as follows:

- Basic RDDs
- Paired RDDs

![Types of RDD](https://i.ibb.co/W0kFdGg/Types-Of-RDD.jpg)

All the data items in a paired RDD are a key-value pair. You can transform a basic RDD into a paired RDD using methods such as map. Apart from the methods defined in a simple RDD class, there are some special methods such as groupByKey and reduceByKey in paired RDDs. (You will learn about these operations in detail in the next session.)

Now that you have a basic understanding of RDDs in Spark, in the next segment, you will learn about the other components that are built on top of it.
