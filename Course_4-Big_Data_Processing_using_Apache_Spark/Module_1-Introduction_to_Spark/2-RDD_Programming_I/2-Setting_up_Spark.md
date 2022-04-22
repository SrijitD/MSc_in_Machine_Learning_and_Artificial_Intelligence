# Setting up Spark

Note that you will need an environment to run Spark queries. As mentioned earlier, you can run Spark over a single machine under the local mode, or in a cluster with the help of different cluster managers.

#### Apache Spark

Qn: List a few cluster managers that can be used along with Spark environment.

Ans: Spark can be used along with the following cluster managers:  

- Spark Standalone  
- Apache YARN  
- Apache Mesos  
- Apache Kubernetes

As part of this session, you will be running queries on RDDs on an EC2 instance. By now, you must have learnt how to create an EC2 instance. Remember that you need to launch the instance with the '**t2-micro**' instance type and '**N. Virginia**' region. After creating the instance, you can perform the steps provided in the document attached below in order to load Spark on the instance.

Note that each step must be processed carefully. If you commit any mistake in the process, you need to remove the instance and start over. Once you have completed all the steps mentioned in the document, your instance will be ready to host the Spark environment.

Download [Spark Installation](Spark_Installation.pdf)

In the next video, Professor Janakiram will walk you through the Spark environment. This will help you get acquainted with the Spark console and the RDD data structure.

**VIDEO**

All the components of Spark are installed under the `bin` folder. Let's take a brief look at the different components.

| Component    | Use                                                       |
| ------------ | --------------------------------------------------------- |
| spark-shell  | To run Spark using Scala in an interactive command line   |
| pyspark      | To run Spark using Python in the interactive command line |
| sparkR       | To run R on Spark                                         |
| spark-submit | To submit a jar or Python application for execution       |
| spark-sql    | To run the SQL interactive shell in Spark                 |

Note that you will be using PySpark to write Spark jobs during the entire program. To launch the PySpark shell, go to the folder that contains the 'bin' directory, as shown below.

`cd ./spark-2.4.4-bin-hadoop2.7`

Next, run the following command:

`bin/pyspark`

The PySpark shell comes with an in-built **SparkContext** object, 'sc'. As mentioned in the previous session, SparkContext acts as the bridge between the Spark code and the Spark architecture. Different methods are defined under the SparkContext, and you will use these methods to create and operate on RDDs. The SparkContext object is also used to adjust the configuration of the Spark environment, but it is out of the scope of this course, and hence, it will not be discussed further.

If you are working in the shell environment, you need not define the SparkContext object, as it is in-built in the shell. However, if you launch Spark on any other platform, say, Jupyter, you will be required to define the SparkContext object to interact with the Spark execution environment. You will understand this better when we work with the Jupyter environment in the subsequent modules. For now, you must use the PySpark-shell.

In the next segment, you will learn how to create RDDs using the PySpark-shell.
