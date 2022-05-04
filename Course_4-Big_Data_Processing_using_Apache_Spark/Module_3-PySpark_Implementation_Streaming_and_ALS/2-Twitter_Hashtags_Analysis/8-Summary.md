# Summary

So far, you have gained a fair understanding of how to use Spark Streaming concepts in real-world situations.

In the following video, Sajan will summarise the whole session. 

**VIDEO**

Let’s summarise the concepts that have been used in this session, one by one.

The demonstration is comprised of two parts:

-   Getting real-time tweets using Tweepy and authentication.
-   Performing real-time hashtag analysis on PySpark using Spark Streaming.

Some of the libraries that are useful in getting real-time tweets from Twitter API are as follows:

-   **Tweepy**: This library is used to access the Twitter API. You can use this library to get tweets from timelines, post or delete tweets, or follow or unfollow users on Twitter. 
-   **OAuthHandler**: Before getting data from Twitter APIs, we need to register our client application with Twitter, using this library. 
-   **Stream**: This library is used to get a stream of data from the Twitter API.
-   **StreamListener**: This library is used to listen to tweets that are being posted on a real-time basis and perform operations on the same.
-   **Import JSON**: As all the tweets received are in the JSON format. Hence, to read those JSON format tweets, you need to import his library.
-   **Import socket**: Socket will help in creating a connection that will be used to read all the data from Twitter API and also sending them to another address on the local machine for the Spark Streaming job.

  
Once all the libraries have been imported, in the next step, the class ‘TweetsListener’ is created. You need to know what details you want to fetch from a particular tweet. In this session, we tried to fetch information on the following from the JSON file of a single tweet:

-   Username
-   User location
-   Tweet creation time
-   Tweet text 

After that, a socket is created in our local machine using the socket function. Here, Host is the localhost, which is the machine IP. The port can be anything but it should be unique for this service. And finally, the host and port address are bound to the socket using the bind function.

Once you start getting real-time tweets, to perform the hashtag analysis them, you have set up the Spark Context and Spark Streaming Context.

sc = SparkContext("local[2]","TwitterStreaming")
sc.setLogLevel('ERROR')
ssc = StreamingContext(sc, 10)

Note that while defining the Spark Streaming Context, you need to put the value of the sliding interval, which is 10 seconds in this case.

stream_data = ssc.socketTextStream("127.0.0.1", 7777)

You learned about input connectors in the conceptual part of Streaming. Here, the input connector is the **socketTextStream**, and the input location is the address of **host: 127.0.01** and **port**: **7773**. So, all the real-time incoming tweets are present at the address of **host: 127.0.0.1 and port: 7773**

After that, you can perform your own analysis on the tweets, be it hashtag analysis or some other type of analysis.

In the next part of this session, you gained an understanding of the concepts of fault tolerance and checkpointing.

You learned that a faulty condition might result from either of the following:

-   Driver (Master) failure
-   Executor (Slave) failure

1. The following diagram depicts what happens when the worker/ slave node fails:

![Checkpointing](https://i.ibb.co/26P6XC4/Fault-Tolerance-Executor-Fails.png)


In such cases, as the master node knows all the tasks that are assigned to each node (slaves), it uses that knowledge to assign all the tasks to the newly created slaves, which start the tasks from that particular point where faulty condition occurred.

2. When a driver node fails:

![Checkpointing](https://i.ibb.co/MsD2MZq/Spark-Checkpointing.png)

To prevent such a faulty condition, the concept of checkpointing was introduced.   
In checkpointing, all the metadata of the driver node is stored periodically in storage such as HDFS or S3.

There are two ways of checkpointing:

-   **Metadata checkpointing**: Here, only the metadata of the executors gets stored in the storage system such as HDFS or S3. This is similar to a bookkeeping system. 
-   **Data checkpointing**: Here, along with the metadata information of the executors, the intermediate RDDs are stored periodically.

With this, we have come to the end of this session on **Hashtag Analysis on Twitter data**. In the next segment, you will be appearing for the graded questions related to hashtag analysis.