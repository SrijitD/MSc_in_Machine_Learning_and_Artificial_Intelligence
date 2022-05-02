# Getting the Trending Hashtags

Until now, you have been through the code that is required to understand the Spark Streaming module. In this segment, Sajan will implement and explain the output of the program.

**VIDEO**
The Spark Streaming code we wrote will not execute until we start _ssc_, the Spark StreamingContext due to lazy evaluation. As soon as we execute _ssc.start()_, Spark will use the lineage and DAG, and start running the whole sequence of code.

```python
ssc.start()
```

_awaitTermination()_**:** If you use this command then it just waits for the termination signal from the user. When it receives a stop signal from the user then its streaming context will be stopped. To stop the Spark Streaming Context you can use the following stop command, _ssc.stop()._

```python
ssc.awaitTermination()
```

**Note**: Before running the **HashTags_Analysis** notebook, you need to run the **Fetching_Twitter_Data** notebook from scratch. Once you fetch real-time tweets, then you can run the **HashTags_Analysis** notebook to perform hashtag analysis on them.

In the next segment, you will see how Spark is resilient for the faults and how checkpointing works.