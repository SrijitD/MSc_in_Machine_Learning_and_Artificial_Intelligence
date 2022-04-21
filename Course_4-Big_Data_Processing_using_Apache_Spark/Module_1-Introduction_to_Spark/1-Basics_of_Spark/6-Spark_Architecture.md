# Spark Architecture

In this segment, you will learn about the Spark architecture and understand how a process is executed in the Spark framework. You have already learnt about the basic distributed architecture in the previous modules. We will be using this knowledge to understand the other elements of Spark.

Similar to MapReduce, Spark uses a master-slave architecture. The only difference is that the terms used for the components of the Spark architecture are different. They are as follows:

- **Driver node**: In Spark, the master node is known as the Driver node. It hosts the driver program.
- **Worker node**: These are slave nodes, which are similar to data nodes, where Spark hosts the executor program.

It should be clear that the driver nodes and the worker nodes are the physical machines on which the driver program and the executor program operate. Let’s try to understand the responsibilities of these programs in detail.

**Driver Program**

- Being the master node, the driver program is responsible for managing all the jobs that a user submits to the Spark environment.
- The driver program breaks the code submitted by the user into smaller tasks and then distributes them on the executors. The driver program performs this task by launching **SparkContext**. SparkContext serves as the entry point for the Spark environment. It acts as the bridge between the user code and the Spark execution environment. The main function of SparkContext is to translate the code into an optimised execution plan for the executors. This is one of the key reasons why execution in Spark is faster.
- The driver program is responsible for creating the RDDs and holds the metadata associated with its partitions.
- Another key function of the driver program is to negotiate for the resources with the cluster manager. Based on the request and the available resources, the cluster manager launches the executor program on the worker nodes.

**Executor Program**

- The executor program executes the task provided by the driver program. Multiple executors run in parallel and complete the different parts of the job received from the driver program. After execution, it also sends the results to the driver program.
- Another important role of an executor is that it provides in-memory storage for the RDDs that are used during the execution of tasks.

The driver and worker nodes collectively perform the tasks submitted by a user. However, in a distributed cluster, multiple processes run at the same time. Therefore, similar to MapReduce, Spark requires a **cluster manager** that can efficiently allocate resources for each task. The cluster manager is responsible for providing the resources required to run tasks on the cluster.

![Cluster Manager](https://i.ibb.co/k9vwgN3/Cluster-Manager.png)

Spark has an edge over the MapReduce environment in this domain, too. Due to a lack of dependency on storage systems, Spark is able to run under multiple modes where it can accommodate different cluster managers. You can deploy Spark in the following modes:

- **Local mode**: In this mode, Spark is hosted on a single machine. The machine serves the purpose of all the components in the Spark architecture.
- **Standalone mode**: In this mode, Spark uses an in-built cluster manager.
- **Apache YARN**: In this mode, Spark is used with Apache YARN as the cluster manager.
- **Apache Mesos**: Apache Mesos is another cluster manager that can be used with Spark.

Let’s watch the next video to understand how everything comes together in Spark.

**VIDEO**

Now, you have developed a clear understanding of how Spark architecture functions to store an RDD when the user submits their code. In the subsequent segments of this module, you will learn more about the internal workings of Spark along with the other topics.

#### Master-Slave Architecture

Qn: Which of the following processes runs over the slave node?

- Driver Program

- Executor

Ans: B. *Executors run inside the worker nodes which are the slave nodes in the Spark architecture.*

Qn: Which of the following statements is true for the Driver node?

- Driver node is the entry point of the Spark Shell environment.

- The driver node performs all the data processing involved in each task.

- The driver node is responsible to allocate the resources required to execute a task.

- Driver node stores the metadata about all the RDDs and their partitions.

Ans: A & D. *Driver program creates a SparkContext object which is used to access Spark resources. The Driver node is the master node and it holds all the information associated with the data on the worker nodes.*

#### Spark Architecture

Qn: Which component of Spark runtime architecture provides resources to execute a task?

- SparkContext

- Driver program

- Worker nodes

- Cluster manager

Ans: D. *Cluster Manager provides the environment to run Spark applications. The prime work of the cluster manager is to divide resources across applications to execute a Spark job. Spark driver program negotiates with the Resource manager program present in Cluster manager for resources.*

Qn: “A cluster manager is necessary to launch Spark.”  True/False?

- True

- False

Ans: B. *Under local mode, Spark doesn’t require any cluster manager as all the tasks are being performed over a single machine.*

## Additional Reading

- [Understanding the workings of Spark Driver and Executor](https://blog.knoldus.com/understanding-the-working-of-spark-driver-and-executor/)
