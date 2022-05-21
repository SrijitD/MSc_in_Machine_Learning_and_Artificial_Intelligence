# Summary

So, in this session, you learned about the basic concepts of Spark Streaming. Let’s revisit the topics that were covered in this session one by one.

Real-time analytics (RTA): You learned that real-time analytics is the process of analysing streaming data, creating dashboards based on it and deriving insights from these dashboards in real-time.

![Real Time Analytics](https://i.ibb.co/xLC5hTQ/Real-Time-Analytics.png)

Here, you learned how various data sources provide real-time data for analysis. The analysis should occur within milliseconds, as any delay could hinder the whole process/cause problems

- **Spark Streaming:** In this section, you learned about the following features of Spark Streaming:
    1. Spark Streaming is an extension of Spark API and is similar to other Spark APIs such as MLlib, GraphX, etc.
    2. It provides streaming capabilities that allow you to fetch real-time data from various sources.
    3. The coding pattern is similar to that of Spark-structured APIs and RDDs.
    4. It is highly scalable, as you can fetch data with high throughput and perform analytics on it.
    5. It is highly fault-tolerant. For example, when a machine fails, Spark Streaming knows which task it should restart and assigns the tasks to a new machine in order to resume the tasks.
    6. It can use the following core APIs of Spark:
        - RDD
        - Dataframes/Datasets
        - Spark SQL
        - MLlib
        - GraphX

- **Input/output connectors:** Input connectors are nothing but data sources. Spark Streaming fetches data from input connectors that are real-time data sources.

![Spark Streaming Example](https://i.ibb.co/W58Nfgf/Spark-Streaming-Example.png)

You learned that the difference between streaming data and static data is that the former contains real-time data. In the example of sentiment analysis using **Facebook** or **Twitter**, you need to have the real-time data that is coming from Twitter APIs which is basically streaming data and suppose you also want to know the users’ name, location or user_id then this data is stored in the static data sources like **HDFS, MongoDB or HBase,** etc.

Hence, to fetch the real-time tweets you have streaming data from Twitter and if you want to get the user information who have tweeted then you need to access static data sources.

Once you get the data you have the core Spark APIs like **SparkSQL** or **MLlib** etc. to perform the data analytics and building the machine learning models to get insights from the real-time data.

- **The Workings of Spark Streaming:** Spark Streaming divides real-time data streams into mini-batches of data called DStream (Discretized Stream). DStream is a continuous sequence of RDDs representing the continuous stream of data.

![DStream Example](https://i.ibb.co/jLxXRw8/DStream-Example.png)

- **Windowed Operation:** The process of applying a transformation over the sliding window of real-time data is called a window operation.

When you perform the window operation the source RDDs that fall within the window are combined and operated upon to produce the RDDs of the windowed DStream.

You also learned about the following two terms:

1. Window length: This refers to the duration of the window for which the window operation is performed
2. Sliding interval: This is the interval after which the window operation is performed.

- **Spark Streaming Context:** The process of creating the Spark Streaming Context is similar to that of Spark Context.

```python
# Create local StreamingContext with two working thread and batch interval of 10s
from pyspark import SparkContext
from pyspark.streaming import StreamingContext
sc= SparkContext ("local[2]", "streamingDemo")
ssc= StreamingContext(sc, 300, 10)
```

There are many PySpark classes and the parameters such as master, appname, sparkHome, pyFiles etc. which SparkContext can take. But we are using only two parameters as of now which are:

1. **master**: It is the URL of the cluster where Spark is running as a driver program. It can be **local** to run locally with one thread. Here in the above example, you can see that the master is set to the **local[2],** which means run Spark locally with 2 worker threads as logical cores on your machine.
2. **appName**: It is simply the name of your job. It is basically the name for your application to show on the SparkUI.

Now that you have understood the basics of Spark Streaming, in the next session, you will be introduced to an end-to-end case study on the hashtag analysis of real-time Twitter data.
