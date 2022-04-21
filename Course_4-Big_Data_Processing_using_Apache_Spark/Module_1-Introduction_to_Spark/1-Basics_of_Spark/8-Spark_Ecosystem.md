# Spark Ecosystem

Spark contains some additional APIs for handling different types of processes. These APIs are built on top of the Spark Core, i.e., the RDDs. Let’s watch the next video to learn about these APIs in detail.

**VIDEO**

To summarise the video above, Spark supports different APIs, which allow it to work as a unified platform for the different aspects of data processing and analysis. It can run operations such as SQL queries and perform graph computation easily with the predefined set of APIs. Some of the important APIs are as follows:

**Spark Core (or Apache Spark)**

- Spark Core is the central processing engine of the Spark application and provides an execution platform for all Spark applications.
- All the components covered in this session (driver node, worker node, programs, RDDs, etc.) form the key elements of the Spark engine. In Spark, everything is built on top of Spark Core.
- Spark Core stores data in the form of RDDs, which is the key data abstraction in Spark.
- Some of the other critical responsibilities of Spark Core include memory management, fault recovery, and the scheduling and distribution of jobs across worker nodes.

Different components of the spark ecosystem are shown in the image below:

![Spark Ecosystem Components](https://i.ibb.co/G0kKBQP/Spark-Ecosystem-Components.jpg)

**SparkSQL**

- SparkSQL allows users to run SQL queries on top of Spark.
- This makes the processing of structured and semi-structured data quite convenient.

**Spark Streaming**

- Spark Streaming processes streaming data in real time. Some of the popular streaming data sources are web server logs, IoT data and data from social networking websites such as Twitter and Facebook.

**Spark MLlib**

- MLlib is a machine learning library used for running machine learning algorithms on big data sets that are distributed across a cluster of machines.
- It provides APIs for common machine learning algorithms such as clustering, classification and generic gradient descent. (You will learn more about these algorithms in the later courses.)
- Due to the in-memory processing feature of Spark, iterative algorithms such as clustering take very little time compared with other machine learning libraries such as Mahout, which uses the Hadoop ecosystem.

**Spark GraphX**

- The GraphX API allows a user to view data in the form of graphs and combine graphs with RDDs.

#### Spark Ecosystem

Qn: Which of the following provides an execution platform for Spark applications?

- Spark MLlib

- Spark Streaming

- Spark Core

- SparkSQL

Ans: C. *It is the central point of Spark which provides an execution platform for applications.*
