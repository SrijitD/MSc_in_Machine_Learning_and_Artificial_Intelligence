# Window Operation and Spark Streaming Context

In the previous segment, you learnt about the concept of DStream. In this segment, you will learn about window operations and how to set up the Spark Streaming Context.

Let’s first hear from Sajan about window operations.

**VIDEO**

**Window Operation:** The process of applying a transformation over the sliding window of real-time data is called a window operation.

When you perform the window operation, the source DStreams that fall within the window are combined and operated upon to produce the new DStream of that windowed DStream.

In order to understand window operation better, you need to know what the following two terms mean:

- **Window Length:** This refers to the total duration of the window for which the window operation has to be performed.
- **Sliding Interval:** This the interval after which the window operation is performed.

Consider the example of Flipkart’s Big Billion Day sale. Suppose you want to know how many transactions failed in the last two hours and you want to know this every five seconds.  
Here, the window length is 2 hours, as you would analyse the past 2 hours of data to find the number of failed transactions. And the sliding interval is five seconds, as you want to perform the analysis every five seconds. That is, after 5 seconds, you would again use the past 2 hours of data, i.e., window length to perform the window operation, i.e., to find the number of failed transactions. You can clearly realise that there will be an overlap in the different windows.

Window operation is the process of combining the series of DStreams into a single unit. You can see this operation in the following diagram:

![DStreams Window Operation](https://i.ibb.co/stdwBSc/DStreams-Window-peration.png)

As illustrated in the image above, after every two seconds, the previous three seconds RDDs are combined and considered as a single unit, a window. Here, the sliding interval is two seconds and the window length is three seconds. You can understand this in the following way:

- So, basically, you have to group all the RDDs of the previous three seconds after every two seconds. Suppose, you have just finished the three seconds means you are at “3 seconds”, then as per the window length (3 seconds), you have to group the RDDs of 1 sec, 2 sec and 3 sec.
- Now, after two seconds (sliding interval), means at “5 seconds”, you have to group the RDDs of the last three seconds i.e. group the RDDs of 3 sec, 4 sec and 5 sec.  

Let's summarise the learnings in this segment. There are 3 elements you need to understand:

- **Batch interval:** It is time in seconds how long data will be collected once at a time before processing on it.
    For example, if you set batch interval 10 seconds - then, Spark Streaming will collect data for 10 seconds and then it will perform the calculation/ operations on that data.
- **Window size:** It is the interval of time in seconds for how much historical data shall be contained in RDD before processing.
    For example, you have 10 seconds batch interval and a window size of 2, then, in this case, the calculation will be performed on 2 batches, the current batch and the previous batch (i.e. 20 seconds of data). E.g at time=3 unit, you will have data from the batch at time=2 unit and time=3 unit.
- **Sliding interval:** It is the amount of time in seconds for how much the window will shift.
    In the previous example, the sliding interval is 1, hence the calculation is performed in each second, i.e., at time=1 unit, time=2 unit, time=3 unit. If you set sliding interval=2, you will get calculation at time=1 unit, time=3 unit, time=5 unit.

You should note here that once a batch is collected, the window operation is performed on the batch and the results are stored in the executor memory. Now, depending on the window length, the results of the previous number of batches are combined to create the windowed DStream. The intuitive understanding that you need to derive is that the operations are performed on the batches defined by the batch interval. Hence, the window size(which signifies the window length) and the sliding interval will have to be a multiple of the batch interval.  

In the upcoming video, you will learn about Spark Streaming Context.

**VIDEO**

As explained in this video, Spark Streaming Context is similar to Spark Context, which you have seen in the previous modules.

```python
# Create local StreamingContext with two working thread and batch interval of 10s
from pyspark import SparkContext
from pyspark.streaming import StreamingContext
sc= SparkContext ("local[2]", "streamingDemo")
ssc= StreamingContext(sc, 300, 10)
```

Note that whenever you are defining the Streaming context, you mention the window length and the sliding interval. In this case, the window length is 300 seconds and the sliding interval is 10 seconds. There are other ways to mention this which you'll see in the code demonstration.

Now that you have learned about the basic concepts of Spark Streaming, try to answer the following question:

#### Sliding Interval

Qn: What is the default sliding interval when it is not defined?

- The sliding interval is equal to the batch interval.

- 1 second

- The window will not slide

- None of the above

Ans: A. *When the sliding interval is not defined, the batch interval is taken as the sliding interval.*

#### Window Operations

Qn: Suppose you are working in a mutual fund company. You want to analyse the average price of stocks from 9 AM to 4 PM everyday. Suppose you want to analyse the average price of stocks for 1 hour and perform this task in every half an hour. Identify the window length and the sliding interval for this scenario.

- Sliding interval = one hour; window length = half hour

- Sliding interval = half hour; window length = one hour

Ans: B. *The total duration of time within which you want to perform the analysis is called a window length. In this case, it is for one hour. The frequency of the analysis is referred to as a sliding interval, which is half an hour.*
