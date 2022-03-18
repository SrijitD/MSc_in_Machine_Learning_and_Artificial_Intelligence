# Middleware Involved in Executing MapReduce Jobs

Having learnt how the MapReduce framework works, in this segment, you will learn about the middleware involved in executing the MapReduce jobs on the data stored in HDFS. This involves understanding how different jobs are assigned and how the resources in a Hadoop cluster are shared to run an operation. Let’s look at the next video to understand this in detail.

**VIDEO**

As explained in the video, middleware is needed to connect the Map Reduce Program with the distriibuted Hadoop clusters. The following image shows how map reduce programs are executed.

![Executing MapReduce Programs](https://i.ibb.co/C9K9S8g/Executing-Map-Reduce-Programs.jpg)

The **job tracker** and the **task tracker** are two components that help execute MapReduce  
programs:

1. When a MapReduce job is launched, the job tracker consults the name node to obtain the blocks of the input file from the name node. Then, the job tracker decides the nodes on which the map tasks can be launched and informs the corresponding task tracker on those data nodes to start the task execution.
2. Similarly, the job tracker also decides the nodes on which reducer tasks are to be launched and informs the corresponding task trackers of these nodes to launch the reducer tasks. Generally, it is possible to make reducers start late, i.e., after the map tasks have produced the output.
3. The task tracker and the job tracker exchange heart-beat messages regularly every second, which are configurable, and the task tracker keeps informing the progress made in executing the tasks.

During the process, the reducer task consults the job tracker to find out the map task nodes from which it should pull the data. The map output is sorted and written onto different files for the corresponding reducers to pull the data.

After pulling the data from different map task nodes, reducers perform a multi-way merge of files. The reducer then executes the task and writes its final output onto the HDFS file.

## Coming up

In the next segment, you will learn about another important component of the Hadoop framework: **YARN** (Yet Another Resource Negotiator).
