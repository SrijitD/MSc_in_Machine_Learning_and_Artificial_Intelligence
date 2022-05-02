# Hashtag Analysis on Tweets

In the previous segments, you learnt how to get real-time Tweets using Twitter APIs. In this segment, you will see how to perform hashtag analysis on those Tweets.

To perform Hashtag analysis, you need to run the '**HashTag_Analysis'** notebook.

To run the spark codes on jupyter notebook, you need to first run the following code:

```python
import os
import sys
os.environ["PYSPARK_PYTHON"] = "/bin/python3"
os.environ["JAVA_HOME"] = "/usr/java/jdk1.8.0_161/jre"
os.environ["SPARK_HOME"] = "/home/ec2-user/spark-2.4.4-bin-hadoop2.7"
os.environ["PYLIB"] = os.environ["SPARK_HOME"] + "/python/lib"
sys.path.insert(0, os.environ["PYLIB"] + "/py4j-0.10.7-src.zip")
sys.path.insert(0, os.environ["PYLIB"] + "/pyspark.zip")
os.environ["PYTHONIOENCODING"] = "utf8"
```

Here you need to understand one thing, you run the PySpark job via jupyter notebook from your local machine in python3 and the default settings of Spark on EC2 is python2.7. Which means, there is a mismatch of the python versions in your local machine which is working as the driver node and the EC2 (python2.7) which is acting as the worker node. Hence, it is necessary to run the same python versions on both the systems. So, we have mentioned the path of the directory for the python3 on EC2 instance as:

```python
os.environ["PYSPARK_PYTHON"] = "/bin/python3"
```

So, it is a prerequisite that you should have **python3** installed in your computer and we have already mentioned the path of the directory of EC2 where it contains the python3 in the above code.

This notebook is about Spark operations. In the following video, Sajan will walk you through the hashtag analysis on the real time Twitter data.

**VIDEO**

You saw that we created the Spark Context and the Spark Streaming Context, which are the same as those you learnt about in the previous modules on Spark. 

Note that while defining the Spark Streaming Context, you need to put the value of the sliding interval, which is 10 seconds in this case. Sliding interval determines at what interval you wish to perform the hashtag analysis.

```python
sc = SparkContext("local[2]", "StreamingDemo")
sc.setLogLevel('ERROR')
ssc = StreamingContext(sc, 10)
```

You learnt about input connectors in the conceptual part of Streaming. Here, socketTextStream is the input connector, and the input location is the address of host: 127.0.01 and port: 7773. So, all the real-time incoming tweets present at the address of host: 127.0.0.1 and port: 7773 are read in as streaming data. You can see the code snippet below.

```python
stream_data = ssc.socketTextStream("127.0.0.1", 7777)
```

There are 3 key things to observe here:

1. The port used here should be the same port which you used in the 'Fetching_twitter_data' notebook.
2. You may notice that the code 'c, addr = s.accept()' in the 'Fetching_twitter_data' is still running even after you ran the above code and assigned the client socket to _stream_data_. This is because of lazy evaluation. Once you do ssc.start() (later in the video), then the above code gets executed and the running status of 'c, addr = s.accept()' changes.
3. The _stream_data_ is the first DStream created. On this, the window operation is applied.

In the code snippet below, you can see that there is a window length of 20 seconds. This means that all the tweets in a window of 20 seconds shall be stored until the analysis is performed for the sliding interval, which we set earlier as 10 seconds. Post that, the memory shall be cleared for the new DStream.  
 

```python
twitter_data = stream_data.window(20)
```

In the next video, you will perform the basic operations on the DStream.

**VIDEO**

In order to obtain the final output, the following transformations were performed on the DStream:

- **Input DStream**: The stream of tweets incoming is stored in _twitter_data._

- **Apply transformation** **on twitter_data DStream**: flatMap: Using this command you are splitting the messages into words. Basically, you are splitting the sentences into words and transforming the original DStream into the new DStream word_data. Note that the operations on DStreams are very similar to the operations on RDDs.
  
  ```python
  word_data = twitter_data.flatMap(lambda text: text.split(" "))
  ```

- **Apply transformation on word_data DStream:** filter: This is filtering out all the words that start with a hashtag(#), converting into lower case, and storing it in a new DStream called filtered_data.
  
  ```python
  filtered_data = word_data.filter(lambda word: word.lower().startswith("#"))
  ```

- **Apply transformation on filtered_data DStream:** Using the map and the reduceByKey transformation, you find the word count for each of the hashtags.
  
  ```python
  hashtag_count = filtered_data.map(lambda word: (word.lower(), 1)).reduceByKey(lambda a, b:a+b)
  ```

**VIDEO**

- **Output DStream:** The hashtag_count DStream is then sorted in the descending order of the count into the new DStream hashtag_sorted.
  
  ```python
  hashtag_sorted = hashtag_count.transform(lambda foo: foo.sortBy(lambda x:x[1], ascending = False))
  ```

- Finally, you print the hastag_sorted Dstream:
  
  ```python
  hashtag_sorted.pprint()
  ```
  
  Note that in order to print a DStream data structure, you use pprint() which is pretty print. You can learn more about this function in the following [link](http://docs.python.org/3/library/pprint.html).

So, in this way, you performed the basic operations on DStream, which are similar to the operations that you performed on RDDs in the previous modules. In the next segment, we’ll run the whole code and you will see how to get real-time trending hashtags.