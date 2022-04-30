# Input/Output Connectors

In this segment, you will learn how Spark Streaming receives data from various sources, performs analytics on the data and stores the results, on a real-time basis.

Let's start by going through the following video.

**VIDEO**

As illustrated in the image below, input connectors are nothing but data sources. Spark Streaming fetches data from input connectors that are either static or real-time data sources.

![Spark Streaming Overview.](https://i.ibb.co/zxHPLtp/Spark-Streaming-Overview.png)

There are different static input connectors like HDFS or S3, which you have learned earlier while some connectors which provide streaming data, that is, data in real-time like Kafka, Flume, Kinesis in AWS among many others. We won't be going into these sources in this module but if you want to read more about them, check the Additional Reading section.

Let’s now try to understand the diagram given below with the help of an example.

![Spark Streaming Example](https://i.ibb.co/W58Nfgf/Spark-Streaming-Example.png)

Basically, there are two types of data sources:

1. Streaming data sources
2. Static data sources

The main difference between streaming data and static data is that the former contains real-time data. Suppose you need to perform sentiment analysis using data from Twitter. In this analysis, the real-time data that is generated from Twitter API is 'streaming data', whereas data related to a user’s name and location or user_id is considered static data, stored in static data sources such as HDFS, MongoDB, HBase, etc.

Now, you can fetch real-time tweets from the streaming data from Twitter, which you'll see shortly and obtain user information of the tweets from static data sources.

Once you have collated the data, you can use the core Spark APIs, such as **SparkSQL, MLlib** etc., to perform data analytics and build machine learning models to derive insights from the real-time data.

After the analysis, you can store the output in any of the formats mentioned in the diagram. You can also create interactive dashboards based on the real-time analysis of the data. This management of the output is done through the output connectors, where you can store the data in a storage system or create real-time dashboards.

#### Data Sources

Now that you have learnt about streaming data sources in this segment, search for other various streaming data sources on your own and write about at least two such sources that are not covered in this segment.

Ans: ***Apache Flink:** This is a streaming data flow engine that provides distributed computing facilities over data streams.  **Apache Storm:** This is a distributed real-time computation system that can be used for distributed machine learning and real-time analytics.*

In the next segment, you will learn about the workings of Spark Streaming and understand DStream concepts.

## Additional Reading

1. You can learn more about Apache Kafka [here](https://kafka.apache.org/intro).
2. You can learn more about Apache Flume [here](https://flume.apache.org/).
3. You can learn more about Amazon Kinesis [here](https://aws.amazon.com/kinesis/?nc=sn&loc=0).
