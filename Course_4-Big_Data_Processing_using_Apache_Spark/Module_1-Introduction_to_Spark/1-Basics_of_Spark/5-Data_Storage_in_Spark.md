# Data Storage in Spark

In the previous segment, you were introduced to the concept of Executors in Spark. Executor programs hold the RDDs in memory, due to which the speed of Apache Spark is high. Let’s watch the next video to learn about the internals of an executor in Spark and understand how data is stored inside them.

**VIDEO**

The executor process is a JVM process hosted over the worker nodes in the Spark architecture. Spark also follows a master-slave architecture, which will be covered in the next segment. For now, you need to understand that the worker nodes are the slave nodes that run the executor program. In the video above, you learnt about the memory distribution inside the JVM and understood how RDDs are stored in memory. The memory inside the JVM is distributed into two parts: **Java Heap** and **Java Stack**. The heap memory provides Spark with true in-memory processing capabilities. The heap memory is mainly divided into three parts, which are as follows:

- **Reserved memory** (300 MB): By default, Spark maintains a reserve of 300 MB from the Java Heap for storing the internal objects of Spark inside the JVM. These objects help in the proper functioning of the executor.  

- **User memory** ([Java Heap - Reserved memory]*0.25): Spark provides a fraction of memory for storing user data structures and internal metadata. This space is reserved for the user and is not included by Spark during the storage or computation stage inside the JVM. It can also be configured to safeguard against OOM (out of memory) errors in the case of large records. OOM errors can arise when the data is too big for the memory to hold inside the Spark memory. About 25% of the remaining memory is reserved as user memory by default.  

- **Spark memory** ([Java Heap - Reserved memory]*0.75): The remaining memory constitutes the memory pool used by Spark to run the provided tasks. It is split into the following two parts:
  - **Spark storage memory**: This part of memory is used for storing cached data and for propagating internal data across nodes in Spark. You will be able to understand this better when you learn about Broadcast variables in Spark.
  - **Spark execution memory**: As the name suggests, execution memory is used for computation during operations such as shuffles, joins and aggregations.

By default, 50% of Spark Memory is reserved as storage memory and the remaining 50% as execution memory. However, this allocation may change based on the user's requirements. The execution memory can be used as storage executors which are not running any operations that occupy the executor space.

Please note that this memory distribution is the default distribution and can be changed based on the required use case. You need not learn about this in detail at this stage. The distribution of memory is shown in the image below:

![Memory Distribution](https://i.ibb.co/7RzTz22/Memory-Distribution.jpg)

When we store the RDDs in memory, they are stored inside the storage memory of the executors. An RDD is stored in the form of partitions, which are spread over different executors. The number of executors can be configured based on the level of partitioning required. The maximum number of executors that a worker node can host is equal to the number of processing cores in the node. A core signifies the number of parallel operations that a processor can perform. For example, a machine with a four-core processor can perform four processes parallel to each other. The image given below illustrates how RDDs can span over multiple partitions inside multiple nodes.

![RDD Spans Over Multiple Partitions](https://i.ibb.co/GPC4JDK/RDD-Spans-Over-Multiple-Partitions.jpg)

Let’s try to understand how this affects the processing in Spark executors. One partition of an RDD can be mapped on a single executor only. However, a single executor can have multiple partitions. If you define one core per executor, the executor will be able to process a task on a single partition of the RDD at any given point of time. However, if there are multiple cores per executor, it will be able to run parallel processes on each partition. (Here, the assumption is that the output of the task from one partition does not affect the output of the task from the other partition.)

#### Partitions in Spark

Qn: Suppose that you are using Spark on a 5-node distributed cluster. There are 4 cores on each machine and all of them can be accessed by Spark for processing and hosting executors. Based on the given scenario, answer the following question.

What is the maximum number of executors you can run in the cluster?

- 4

- 8

- 16

- 20

Ans: C. *Executors are hosted on worker nodes. In a 5-node cluster, there will be one master node and 4 slave nodes. Therefore, the maximum number of executors will be 4 worker nodes*4 cores, that is, 16 executors.*

#### Processing in Spark

Qn: Suppose that you are using Spark on a 5-node distributed cluster. There are 4 cores on each machine and all of them can be accessed by Spark for processing and hosting executors. Based on the given scenario, answer the following questions.

Consider that cluster is configured to host the maximum number of executors. Now, you create an RDD which is split into 10 partitions. Under which scenario will Spark process the data fastest if any operation is performed on the created RDD?

- All the partitions are present in a single executor.

- There is one to one mapping between executors and the partitions

Ans: B. *In case the partitions are distributed over multiple executors, Spark will be able to process multiple partitions at a time. This will help Spark to parallelize the operation and execute the process faster.*

Let’s try to summarise how RDDs are stored differently from the HDFS file blocks used in the MapReduce environment.

**VIDEO**

So, the main point that you need to remember is that that Spark can process multiple processes parallelly without the HDFS file system, as it stores the data in memory in the form of RDDs. This makes Spark independent, and hence, you may choose to work with or without the HDFS file system. However, generally, Spark is used along with HDFS as it integrates faster processing with reliable storage space for big data.

#### Spark Memory Management

Qn: Which of the following is responsible to help Spark in completing the sort and shuffle operations?

- Reserved Memory

- Storage Memory

- Execution Memory

- User Memory

Ans: C. *Execution memory holds the intermediate data when performing shuffle operations.*

Qn: Suppose that you are working for a telecom company. The company uses Spark to track the daily internet usage of each customer and send notifications to them based on the limit. The company provides service to millions of customers. In this case, how would you optimize the machines running the Spark jobs?

- Increasing the Spark execution memory

- Increasing the Spark storage memory

- Increasing the User memory in Spark

- Increasing the Reserved memory

Ans: B. *Since there are millions of customers, the daily data generated will be large in size. Therefore, it is better if the storage memory of each executor is increased to accommodate all the entries and process the data faster.*

In the next segment, you will learn about the Spark architecture in more detail. This will help you understand how different components come together to execute a process in Spark.

## Additional Reading

- [JVM: Heap vs Stack](https://dzone.com/articles/stack-vs-heap-understanding-java-memory-allocation)
