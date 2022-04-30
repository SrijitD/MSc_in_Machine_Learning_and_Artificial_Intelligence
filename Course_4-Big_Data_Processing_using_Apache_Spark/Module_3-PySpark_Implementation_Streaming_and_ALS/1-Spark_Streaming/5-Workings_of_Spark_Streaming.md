# Workings of Spark Streaming

In the previous segment, you have seen how input and output connectors work and how you can connect Spark Streaming with these connectors to processes data and perform analytics real-time.

In this segment, you will learn about DStream and understand how data is divided into mini-batches. Let’s hear from Sajan as he talks about DStreams.

**VIDEO**

As explained in the video, Spark Streaming divides real-time data streams into mini-batches of data called **DStream (Discretized Stream).**

![Discretized Stream](https://i.ibb.co/CmSNx5D/Discretized-Stream.png)

Once the data is divided into DStreams, the Spark engine performs analytics on them and outputs the results in the same format as that of DStream.

**DStream (Discretized Stream):** DStream is the basic abstraction of Streaming data. This is nothing but a continuous sequence of RDDs of the same type representing the continuous stream of data. Let's understand this better using the image below.

![DStream Example](https://i.ibb.co/jLxXRw8/DStream-Example.png)

As illustrated in the image above, data is received continuously from input connectors and Spark Streaming divides the data internally into mini-batches called DStream. Each DStream consists of a series of RDD, each RDD carrying data of a particular time interval. For example, a DStream for 0 - 1 s can have 10 RDDs, each RDD containing data from 0 - 0.1 s, 0.1 - 0.2 s and so on. To process these sequence of RDDs, Spark provides the high-level API, DStream, for convenience. Hence, note that DStream is a **data type** in Spark. Any operation applied to a DStream gets applied on all the underlying RDDs.

In this way, Spark supports both batch processing and real-time processing. To implement these, Spark uses RDD for batch processing and DStreams for real-time processing.

DStream can be created using live data through Kafka,  Twitter API through sockets etc. You can also transform the existing DStream to create a new DStream.

#### Working of Spark Streaming

Qn: State whether the following statement is true or false: "Spark Streaming operates an abstraction layer to generate micro-batches of streaming data."

- True

- False

Ans: A. *Spark Streaming uses an abstraction named DStreams or Discretized Streams to manage streams. These DStreams are a continuous sequence of the RDDs.*

#### DStream

Qn: Which of the following is/are the correct statements about the DStream. (More than one option can be correct)

- DStream is a continuous sequence of RDDs.

- DStream can be transformed, as it is a sequence of RDDs.

- The DStream data or its format can be changed in place by performing an operation using the Spark engine.

Ans: A & B.

- *DStream is nothing but a sequence of RDDs. Spark Streaming receives a continuous flow of data from real-time sources and divides the data into chunks of RDDs.*

- *DStream a sequence of RDDs; hence, transformation can be applied on DStream. This means that you can produce new DStreams using existing DStreams.*

Qn: Which of the following is not a benefit of DStreams?

- Better performance due to increased throughput gains of DStreams, resulting in the usage of fewer machines

- Steady employment of machine learning analytics though MLlib and Spark SQL

- DStream is not mutable.

Ans: C. *DStream is a sequence of RDDs, hence it is not mutable. Due to this, there can frequent memory issues as you keep creating new RDDs.*

Qn: How is Spark Streaming able to process data as efficiently as Spark does it in batch processing?

Ans: *DStream is nothing but a sequence of RDDs. Each RDD is created by slicing the stream at batch interval, and Spark manages the DStream internally as it does in the case of batch-processing. The property of converting a stream into small batches allows Spark to easily combine streaming data with batch processing. Moreover, you can use Spark SQL to query the micro batches (RDDs) similar to the querying possible in a batch processing. Such operations are possible because the Spark Core engine is the same and Spark Streaming is an extension of core Spark.*

In the next segment, you will learn how to group the RDDs into a DStream based on time stamps.
