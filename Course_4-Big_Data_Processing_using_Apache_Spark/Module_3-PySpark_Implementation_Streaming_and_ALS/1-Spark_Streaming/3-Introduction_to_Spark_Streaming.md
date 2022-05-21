# Introduction to Spark Streaming

In the previous segment, you learnt about real-time analytics. In this segment, you will be introduced to Spark Streaming, which is a feature in Spark that helps perform analytics in real-time.

Let’s start the segment with an introduction to Spark Streaming.

**VIDEO**

In the previous video, Sajan explained the following about Spark Streaming:

- Spark Streaming is an extension of Spark Framework and is similar to other Spark APIs such as MLlib, GraphX, etc.
- It provides streaming capabilities that help you fetch real-time data from various sources.
- The coding pattern is similar to that of Spark-structured APIs and RDDs.
- It is highly scalable, as you can fetch data with high throughput and perform analytics on it.
    Let’s take the example of Twitter. Assume that in a particular region, the data related to thousands of tweets are sent to the server on any given day. Now suppose the number of tweets increase to the millions due to an activity or an event in a certain part of the world, which in turn increases the size of the data. Using Spark Streaming, you can manage such huge data intake by increasing the size of the cluster.
- As Spark provides streaming capabilities, hence, it should ensure that the latency to process the data should be very less.
- It is also fault-tolerant. For example, when a machine fails, Spark Streaming knows which task it should restart and assigns the remaining tasks to a new machine in order to resume the tasks.

#### Spark Streaming

Qn: State whether the following statement is true or false:  "**Spark Streaming operates on the same framework as that of Spark Core.**"

- True

- False

Ans: A. *Yes, Spark Streaming is an extension of Spark Core. The Spark streaming API extends the capability of Spark Core and converts streams into micro-batches. These micro-batches are nothing but RDDs, i.e., resilient distributed datasets.*

Qn: Which of the following core APIs of Spark can Spark Streaming work with?

- RDD

- Dataframes/Datasets

- SparkSQL

- MLlib

- GraphX

Ans: All of the above. *Spark Streaming can use all the core APIs of Spark.*

Qn: Which of the following is/are the features of Spark Streaming?

- Faster recovery from failures and faults

- Combining streaming data with static data for interactive queries

- High throughput

- Inability to use most of the core APIs of Spark such as MLlib, GraphX, SparkSQl, etc.

- Scalable to hundreds of nodes with low latency

Ans: A, B, C & E.

- *As streaming involves real-time data analytics, and hence, it is able to recover faster from faults and failures.*
- *Through streaming, users can combine static data with streaming data to perform the query that requires historical data (Static data).*
- *Spark Streaming serves high throughput.*
- *It can achieve low latency and is highly scalable such that it can easily scale to hundreds of nodes easily.*

Now that you have understood the basics of Spark Streaming, in the next segment, you will learn how data is ingested in the Spark system in real-time and processed to provide output.
