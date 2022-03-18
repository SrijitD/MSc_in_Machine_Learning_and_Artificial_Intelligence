# YARN

In earlier versions of Hadoop, MapReduce used to take care of both resource management and data processing.Yet Another Resource Negotiator(YARN) is a project aimed at decoupling resource management and data-processing layers. In this segment, you will understand the importance of YARN and also look at how different components of YARN interact in executing a task.

**VIDEO**

YARN is a resource management framework for scheduling and handling resource requests from distributed applications.

![YARN](https://i.ibb.co/qnRJmBL/YARN.png)

In the next video, let's understand the different components of YARN and how they interact in executing a distributed job. YARN has four major components: **resource manager, node manager, application master and containers.**

**VIDEO**

The resource manager is located on a master machine, whereas the node manager, the application master and containers are located on the slave machines as shown in the image below.

![Resource Manager](https://i.ibb.co/cQJWpXT/Resource-Manager.png)

Suppose the data is stored in the form of blocks on the data nodes 1, 2 and 5.  

Let’s now look at how the YARN components interact. The client submits the job to the resource manager, which is accepted by the application manager present in it. The application manager checks whether the requested task can be fulfilled by the resources of the cluster or not. If not, it rejects the task. In case the request is accepted, it moves ahead with the task of launching the application master for that task with the help of the scheduler.

It is always advised to keep the code file close to the data for faster processing. Hence, to get the location of the relevant data blocks, the scheduler contacts the name node. The name node replies with the location of the data nodes, where the data required by the code is stored. In our case, the name node will reply that the data is stored on data nodes 1, 2 and 5.

The scheduler will interact with the respective node manager for the available resources to launch an application master in the same node. If the resources are unavailable in that node, it will provide another node to the application manager for launching the application master.  

The status of the task is reported by the application master. The main task of the application master is to negotiate the resources (memory/CPU/network, etc.) from the resource manager and then execute the task assigned to it using them.  

The resources provided to an application master to execute a task are known as containers. These containers are provided to the application master to run an application/task. You have exactly one node manager managing all the resources in a node. The node manager continuously reports the condition of the node to the resource manager, specifically the CPU and RAM usage of that node, the node’s health, etc.  

Remember that a client submits a MapReduce job to the application manager. The MapReduce job can have one or multiple mapper and reducer codes. Let’s assume that the MapReduce job has four sub-jobs, i.e., tasks. So, the node manager will launch exactly four application masters to process these codes, with each application master taking care of exactly one application. The application master then negotiates for containers and executes the task allotted to it. After completion, the requested containers and the application master free the occupied resources.

#### YARN

Qn: The client has submitted a MapReduce job to the applications manager. Which of the following steps will it perform next?

- The applications manager will launch a node manager to provide resources to the cluster once a task is submitted to the cluster.

- The applications manager will execute the job.

- The application manager will launch the application master(s) required to perform the job.

- None of the above.

Ans: C. *The application manager has to initiate the application master(s) that are responsible for executing the job submitted by the client. The number of application masters depends on the number of tasks that the job has been divided into by the MapReduce.*

Qn: “In YARN, the ApplicationMaster runs on the master node and is, hence, a single point of failure (SPOF).” Is this statement true or false? \[Reference link: [Single Point of Failure](https://en.wikipedia.org/wiki/Single_point_of_failure)]

- True

- False

Ans: B. *In YARN, ApplicationMasters are launched on the slave nodes, and hence, the ResourceManager simply relaunches the ApplicationMaster in the case of node failures.*

Qn: Five application masters are running on a node. What does this tell you about the number of tasks being executed on that node?

- There is exactly one task running on the node.

- There are exactly five tasks running on the node.

- There are more than five tasks running on the node.

- Insufficient information.

Ans: B. *The number of tasks running on a node is exactly equal to the number of application masters in it.*

## Additional Reading

1. [Advantages of Hadoop 2.0 Framework](https://www.techopedia.com/2/31276/trends/big-data/what-are-the-advantages-of-the-hadoop-20-yarn-framework)
2. [Hadoop 1.0 vs Hadoop 2.0](https://www.hdfstutorial.com/blog/hadoop-1-vs-hadoop-2-differences/)
3. [Kubernetes](https://kubernetes.io/)

## Coming up

In the next segment you will learn how to run the MapReduce program.
