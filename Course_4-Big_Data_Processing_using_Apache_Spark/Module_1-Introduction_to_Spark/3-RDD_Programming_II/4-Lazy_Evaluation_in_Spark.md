# Lazy Evaluation in Spark

By now, you have run various transformations and actions on RDDs using the PySpark shell. As mentioned earlier, transformations are used to transform RDDs from one form to another, and then, actions are called to generate the result or output on the screen. In this segment, you will understand what happens in the back end when you execute different operations in Spark.

Let's watch the next video to understand how Spark handles the operations submitted by the user.

**VIDEO**

**VIDEO**

**VIDEO**

In Spark, transformations follow **lazy evaluation**, i.e., they are evaluated only when required. When you perform a transformation on an RDD, it is stored in the background as metadata. Spark creates an object that stores the steps required to create the new RDD from the existing one. Spark then waits for an action to execute all the transformations that are stored in the metadata object.

The example given below shows the RDD object that is created after a transformation is performed.

`sc.parallelize(range(10)).map(lambda x: x+1)`

output: pythonRDD[7]  at RDD at pythonRDD.scala:53

The RDD object displayed as the output does not hold the RDD. It stores the information to create a new RDD from the list generated using the command `range(10)`. You can think of it as the recipe that can be used for creating the RDD, wherein the list is the ingredient and transformations are the steps to be followed. As soon as you perform an action, Spark will run all the transformations stored in the background.

`sc.parallelize(range(10)).map(lambda x: x+1).collect()`

output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

Lazy evaluation allows Spark to analyse all the transformations specified by the user and optimise them. Here, optimisation refers to eliminating redundant steps or merging logically independent tasks into a single parallel step. Moreover, it also helps Spark use the executor memory efficiently so that it need not create and store multiple RDDs that occupy the limited memory space until that RDD is required. Let's watch the next video to understand this with the help of an example.

When you perform a transformation, Spark creates a lineage in the background that keeps a track of all the operations required to create the new RDD from the parent RDD. In the previous session, you learnt that SparkContext first creates an optimised plan based on the code submitted by the user and then sends it for execution. It is able to do so because the RDD lineage is stored in the form of a **Directed Acyclic Graph (DAG),** which is executed when the SparkContext runs. DAGs stand for:

- **Directed**: Arrows only point in single directions
- **Acyclic**: All nodes have the property where if you start from any node in the graph and follow the arrows, you cannot return to the same node. This means that there is no cyclic loop in the graph.

Let's understand this through the code snippet used in the video above. But first, try to answer the questions given below.

#### DAG

Determine if the following statement is True/False.  
"The graph shown below is a Directed Acyclic Graph(DAG)."

![Directed Acyclic Graph](https://i.ibb.co/gRfkVw8/Directed-Acyclic-Graph.jpg)

- True

- False

Ans: B. *The graph shown in the image is cyclic in nature as it contains a directed cycle consisting of vertices as, C → D → E → F → C.*

#### Lazy Evaulation

Qn: Select the true statements from the following options.

- Actions in Spark follow the lazy evaluation model.

- The transformations are executed as soon as they are provided by the user.

- Transformations wait for an action to be executed.

Ans: C.

```python
# Creating the lines RDD from a text file (2 partitions)

lines = sc.textFile("NOTICE", 2)

# T1: Splitting the text into words

words = lines.flatMap(lambda x:x.split(" "))

# T2: Mapping each word with 1

wordpairs = words.map(lambda x: (x,1))

# T3: Count of each word

wordcount = wordpairs.reduceByKey(lambda x, y: x+y)

# Calling an action to collect the wordcount on driver program

wordcount.collect()
```

In the code given above, different transformations are applied one after the other. However, these transformations do not get executed right away. The call to the `collect()` action on wordcount triggers the execution. In order to return the contents of wordcount to the driver, Spark first executes the lineage graph associated with it and then returns the elements present in wordcount to the Driver program.

 The diagram given below shows the lineage for the code.

![Lineage Graph for RDD](https://i.ibb.co/1TgVS62/Lineage-Graph-for-RDD.jpg)

#### DAG

Consider the following DAG showing an overall execution path of a spark application, and answer the following question.

![DAG](https://i.ibb.co/vksY8jC/DAG.jpg)

Qn: What is the total number of transformations included in the spark application?

- 7

- 6

- 5

- Insufficient Information

Ans: C. *Spark records each transformation applied to an input RDD as an edge between the input RDD and the resulting RDD. Hence in a way, the number of edges in the DAG represents the total of transformation applied. In this case, the number of edges present in the DAG is 5, hence the answer is 5.*

Qn: Suppose a node on the cluster, storing one of the partitioned data of RDD5 loses all its Data. Now in order to recover the partitions of RDD5 the lineage graph of RDD5 is referred to which is:

- RDD1→RDD2→RDD3→RDD4→RDD5

- RDD1→RDD2→RDD3→RDD5

- RDD2→RDD3→RDD5

- None of the above

Ans: B. *In Spark, Fault Recovery is implemented by DAGs. In order to calculate(when an action is called)/recover the lost data of an RDD, Spark executes the lineage graph of that particular RDD. In this case, to recover the data of RDD5, a lineage graph of RDD5 will be executed. hence the execution path will be RDD1→ RDD2→ RDD3→ RDD5.*

Some of the benefits of lazy evaluation are as follows:

- **Reduction in complexities**: Lazy evaluation avoids the execution of all the operations just when they are called. Internally all operations are optimised and the number of executable operations is reduced. This reduction in operations generates less intermediate data, and the task executes faster.
- **Saves computation and increases speed**: As all the operations are not performed, and only the required operations or values are computed, the time and space complexity is reduced.
- **Fault tolerance**: Due to lineage graphs and lazy evaluation, Spark is aware of the steps involved in creating an RDD well in advance. So, if a partition of an RDD is lost, it can be efficiently computed from the previous level in the DAG without performing all the steps again.

Now that you know why RDDs are 'resilient' in nature, let's watch the next video to understand how Spark breaks the operations submitted by the user to create a DAG in the background.

When you submit the Spark code, Spark translates the entire code into a **job**. A job is further broken down into different **stages**. The number of stages is decided based on the shuffles involved in the execution. If there is any shuffle involved in the process, a new stage is created at that particular point. Finally, each stage consists of **tasks** that are implemented by the executors. A task is the most basic unit of work that each executor performs parallelly on each partition of data.

The image below illustrates the actual DAG structure for the job created by Spark for the word count problem.

![DAG Word Count](https://i.ibb.co/Y2Y19Lg/DAG-Word-Count.png)

As you can see, the entire job has been divided into two stages. The `reduceByKey()` command involves a wide transformation, as some 'wordpairs' are distributed across different partitions. So, there is a new stage introduced during the process.

The DAGs can be viewed in the **Spark UI** after an action is called. Spark UI is an interface provided by Spark. It displays the information of every job that is executed in the Spark framework. You can access the Spark UI in the same way you did for port 8888 to host the Jupyter Notebook. Spark UI is hosted on port **4040**. Therefore, Linux/Mac users can use the SSH command to connect the ports between the local machine and EC2 instance, as shown below.

`ssh -i pem_file.pem -L 4040:localhost:4040 ec2-user@instance_DNS/IP`

Windows users can add the rule for the port 4040 under the tunnel section in the PuTTy software. Also, you will have to modify the inbound rules to allow port 4040 to your public IP. After you have configured all the settings, you can open the Spark UI in the local browser using rhe following configuration:

`EC2_DNS_name:4040`

Once you have configured the ports as mentioned above, you can visit [here](http://localhost:4040/) to go to SparkUI.

Now, considering the tasks, you must remember that Spark can merge multiple operations into one single task. For example, both the `flatMap()` and `map()` operations are implemented in a single task over the lines RDD in the word count problem. This helps in optimising the operations in Spark. So, it is not necessary that the number of tasks will be equal to the number of operations provided by the user. Apart from this, the number of tasks also depends on the number of partitions in the RDD over which the operations are performed. Every task is replicated on each partition. If there are two partitions in the RDD, then a single operation (`flatMap() or``map()`) will be performed once on each partition.

You can understand both these points with the help of the image given below, which depicts the results of the Spark UI after performing the word count problem.  

![Spark UI Word Count](https://i.ibb.co/WfQV0dw/Spark-UI-Word-Count.jpg)

(Zoom on the image for more clarity)

The number of tasks in each stage is 2. This is because the lines RDD is split over two partitions. You can change the number of partitions in the lines RDD and then try to check the number of tasks again. If the number of partitions is increased to three, then the number of tasks will be six (3 for each stage). This means that two tasks are implemented per partition. However, the code contains three different transformations, `flatMap()`, `map()` and `reduceByKey()`. Therefore, it should be clear that one task can contain more than one operation.

#### RDD Lineage

RDD Lineage is a graph of all the parent RDDs of the RDD. It is built as a result of applying transformations to the RDD.  
**join()** Is a transformation for joining two paired RDDs based on common keys. If there are two RDDs of <x,y> and <x,z> types then the resultant RDD will be of the form <x,(y,z)>

![RDD Lineage](https://i.ibb.co/HX0ZRqn/RDD-Lineage.png)

Let's consider this as the dependency or lineage graph for RDD R33. From the diagram identify the RDDs which are directly created referring to external datasets in a single step?

- R00 and R01

- R10, R11, R12, R13 and R14

- R00 and R13

- R21

Ans: A. *In the image you can clearly see R00 and R01 are not depending on any other nodes hence most likely they must have got created either from an external data set or from a java list.*

In the next segment, you will learn how to optimise Spark jobs by reducing the number of stages using Partitioning.
