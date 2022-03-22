# Summary

In this session, you learnt about YARN and MapReduce.

**MapReduce** is a programming framework that is used by Hadoop for processing data.

MapReduce has two components: a map phase and a reduce phase. The function of the map phase is to convert the incoming data (stored in blocks) into key-value pairs. These pairs are then fed into the reduce phase. The function of the reduce phase is to aggregate these values on the basis of the keys across **all** the blocks in the cluster.  

**YARN** (Yet Another Resource Negotiator) does the resource management for the Hadoop cluster.  

It has four main components:

1. Resource manager,
2. Node manager,
3. Application master, and
4. Containers.

A resource manager manages the resource allocation in the entire Hadoop cluster, and a node manager tracks the resource usage in a node. The node manager keeps track of all the resources available on a node. The resource manager has a component called the applications manager, which receives the job from a client. Once the node receives the job, the corresponding application master is launched to execute that job. You have one application master per task inside a node. The application master negotiates with the resource manager for the containers (resources such as memory, processing units, etc.) to execute the task.
