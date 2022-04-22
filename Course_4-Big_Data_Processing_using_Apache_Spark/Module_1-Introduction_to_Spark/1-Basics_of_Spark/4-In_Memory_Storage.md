# In-Memory Storage

In this segment, you will learn how Spark stores data in a distributed manner for processing. As you are already know, MapReduce requires HDFS to store the intermediate output from the reduce job for the next iteration of steps. The data is stored in the form of HDFS blocks. However, Spark does not require HDFS to execute tasks. Let’s watch the next video to understand how this actually happens in Spark.

**VIDEO**

As you learnt in the video above, Spark has the ability to process the data stored in memory without the involvement of disk. Unlike MapReduce, the entire processing layer resides in memory. The map phase and the reduce phase are merged into a unified layer called **Executors**.

An executor is a **JVM** responsible for executing the operations mentioned in the Spark program. JVM stands for **Java Virtual Machine**. It helps execute Java programs as well as programs that are written in other languages but are compiled into Java bytecode. Spark uses JVMs during runtime, as compilation is faster in it. Therefore, in order to work with Spark, you must also have Java installed on the system. It is extremely important for you to understand that all the programs running in Spark, including executors, are translated as JVM processes in the background.

Executors hold the data in a distributed manner in memory. When we define any data or load the data from an external file into Spark, the entire information is split into smaller chunks and then placed in the memory of a single executor or different executors. These small chunks collectively form the **Resilient Distributed Dataset (RDD)**, which forms the core abstraction to handle data in Apache Spark. Let’s learn more about RDDs.

## Introducing RDDs

According to the first white paper released on RDDs, Resilient Distributed Dataset is a distributed memory abstraction that allows programmers to perform in-memory computations on large clusters, in a fault-tolerant manner. An RDD can be considered a **distributed set of elements**.

The significance of RDD can be understood as follows:

- **Resilient**: This indicates that RDDs are **fault-tolerant**, which means that RDDs have the ability to recover itself if any data is lost during computation. This feature plays a key role, as RDDs are stored and processed in memory, which is very volatile. This is different from the fault tolerance provided by Hadoop (you will learn more about this in the later).
- **Distributed**: The data inside RDDs resides across multiple interconnected nodes. As you saw in the video, the data is stored over multiple executors.
- **Dataset**: A dataset is a collection of partitioned data.

RDDs are a special data type tailor-made for Apache Spark and form the key abstraction of data for the core engine of Spark. The first boost to the performance of Apache Spark indeed came from the innovative nature of the structure of RDDs. Everything in Spark is built on top of it. Some of the prominent features of RDDs are as follows:

- **Immutability**: The data stored in RDDs is read-only and cannot be altered. This helps in maintaining consistency throughout the distributed system.
- **In-memory storage**: RDDs can be stored in memory, due to which the processing speed of Spark is high. This property is also termed as cacheable, as you are storing the data in the cache.
- **Parallel operations**: Each dataset is divided into logical partitions, which may be computed on the different nodes of a cluster. Under the hood, Spark distributes the data contained in the RDD internally among the clusters and parallelises the operation that you perform on it.
- **Ability to use varied data sources**: RDDs are not dependent on a specific structure of an input data source. They are adaptive and can be built from different sources. RDDs can include any Python, Java or Scala objects, or even user-defined classes.

In the figure given below, RDD1 contains all the string objects, and RDD2 contains all the integer objects. Considering the Spark cluster comprises three worker nodes, Node 1, Node 2 and Node 3, Spark partitions an RDD and distribute its partitions among the worker nodes. The distribution shown in the figure is one of the many possible combinations.  

![Resilient Distributed Dataset](https://i.ibb.co/f0qj2zw/RDD-Distribution.jpg)

Since RDDs can be stored in memory, it is safe to say that Spark does not depend on any file storage system to execute the processes. However, you must remember that Spark would still need a storage system that can be used to load big data. However, due to the lack of dependency, Spark is able to integrate with multiple big data platforms. Therefore, unlike MapReduce, which is restricted to use YARN as the resource manager, you can use Spark with the following:

- Spark Standalone (Spark’s own cluster manager)
- Apache YARN (Hadoop’s resource manager)
- Apache Mesos
- Apache Kubernetes

#### Spark RDDs

Qn: Which of the following is invalid in case of RDDs?

- It is a fault-tolerant, collection of partitioned data which resides across multiple interconnected nodes.

- RDDs are the fundamental data structure of Spark.

- RDDs are immutable.

- RDD allows performing an operation on a particular partition of the RDD.

Ans D. *When a transformation is applied to an RDD, it gets executed for each element of that RDD.*

Qn: Determine if the following statement is True/False:  
"RDD creates a partition for each record in the dataset and then distributes the partitions across the cluster of machines."

- True

- False

Ans: B. *Partitions in an RDD are not created for every element present in the RDD. One partition can have one or multiple records from the dataset.*

## Additional Reading

- [The original paper describing RDDs, by Matei Zaharia et al. from the AMP lab at UC Berkeley](http://www.usenix.org/system/files/conference/nsdi12/nsdi12-final138.pdf)
