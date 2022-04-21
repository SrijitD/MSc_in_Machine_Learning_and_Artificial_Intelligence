# Summary

With this, you have reached the end of this session. Let's now summarise your learnings from this session.

- First, you learnt about the limitations of the processing layer of the Hadoop framework. MapReduce involves disk-based processing, which is slow in nature and involves high latency. Apache Spark is able to overcome this issue, as it uses in-memory processing.

![MapReduce Job](https://i.ibb.co/XW0RJdw/Map-Reduce-Job-3.jpg)

MapReduce Framework

![Spark Job](https://i.ibb.co/6vpDw6H/Spark-Job.jpg)

Spark: In-memory Processing

- Some of the basic features of Spark are as follows:
  - High speed
  - Support for multiple data sources
  - Rich support of language APIs
  - Advanced analytic  

- You learnt about the key abstraction of Spark, **Resilient Distributed Dataset (RDD)**​, which can be considered a distributed set of elements. The two types of RDDs are Base RDD and Paired RDD. The key features of RDDs are as follows:
  - Immutability
  - Fault-tolerance
  - In-memory storage
  - Parallel operability
  - Ability to load varied data sources

![Resilient Distributed Dataset](https://i.ibb.co/f0qj2zw/RDD-Distribution.jpg)

- You learnt about the master-slave architecture of Spark and understood how a process is executed in Spark. The key components of the Spark architecture are as follows:
  - Driver node and Driver program
  - SparkContext
  - Worker node and Executor program
  - Cluster manager

![Cluster Manager](https://i.ibb.co/k9vwgN3/Cluster-Manager.png)  

- Lastly, you were introduced to the different components of the Spark Ecosystem that make Spark a unified platform for performing different types of operations and analyses on Big Data. The components are illustrated in the image given below.

![Spark Ecosystem Components](https://i.ibb.co/G0kKBQP/Spark-Ecosystem-Components.jpg)

In the next session, you will learn about the RDD class and perform some operations using the Spark shell environment.
