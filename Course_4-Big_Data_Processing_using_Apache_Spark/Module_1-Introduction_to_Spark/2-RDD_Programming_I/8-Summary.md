# Summary

With this, you have reached the end of this session. Let's summarise your learnings from this session.

- You learnt how to set up Spark on an EC2 instance. You installed all the prerequisites and later used the PySpark shell to run multiple operations on RDDs.
- Next, you learnt the different methods of creating an RDD inside the PySpark shell. RDDs can be created using the following functions:
  - `sc.parallelize()`: By loading the data already present in the Driver program
  - `sc.textFile(“file_path”)`: By loading data from an external source
  - By transforming RDDs
- Further, you learnt how to implement various operations on RDDs. These operations can be divided into the following two types:
  - **Transformations**: Transformations are operations that, when performed on an RDD, return a new RDD.
  - **Actions**: Actions are operations that return the elements of an RDD to the Driver program or the disk. Unlike transformations, actions do not return an RDD as the output.

As part of this session, you ran multiple operations on both base RDDs and paired RDDs.

In the next session, you will learn how transformations and actions are implemented by Spark. You will learn about multiple use cases, which will help you understand the power of Apache Spark. Finally, you will learn different optimisation techniques that will help to run your queries faster and efficiently in Spark.
