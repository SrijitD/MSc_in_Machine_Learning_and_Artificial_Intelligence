# Graded Questions

#### Spark Streaming

Qn: How many RDDs will be generated within a time period of 102 seconds if the batch interval is set to 3 seconds per batch and the window length is 2 (i.e. 6 seconds) and the sliding interval is 6 seconds?

- 33

- 34

- 16

- 17

Ans: D. *The sliding interval is set to 6 seconds. So, within a time period of 102 seconds, you are slicing your micro-batch every 6 seconds. Hence, you need to divide 102 by 6 to get the number of RDDs.*

Qn: Select the option with the correct arrangement of steps that are performed while creating a processed DStream from an input stream of data.  
a. Creating tasks by identifying the transformations on the DStream  
b. Slicing the input stream to create batches of RDDs at every batch interval  
c. Creating a DStream of the continuous batches of RDD  
d. Allocating a specific task to each executor
e. Executing the task on the DStream

- a, b, c, e, d

- b, c, a, d, e

- e, c, d, b, a

- c, a, d, e, b

Ans: B. *First, the stream is converted into batches by slicing the stream at specific intervals, where each batch is an RDD. A sequence of micro-batches (RDDs) is generated, known as DStream. Further, tasks are created by identifying the transformation on DStream. The tasks are allocated to a specific executor, which executes the given task, resulting in a new DStream. Refer to the segment: [Workings of Spark Streaming](../1-Spark_Streaming/5-Workings_of_Spark_Streaming.md).*

Qn: Suppose you want to count the number of words coming in the stream in an alternate 5-second window. For example, in a 20-minute stream, you want to analyse the first 5-second stream, skip the next 5-second stream, then analyse the next 5-second stream, skip the next 5-second stream, and so on.

- Window size - 10 seconds, sliding interval of 5 seconds

- Window size - 20 seconds, sliding interval of 25 seconds

- Window size - 10 seconds, sliding interval of 10 seconds

- Window size - 5 seconds, sliding interval of 10 seconds

Ans: D. *A window size of 5 seconds and a sliding interval of 10 seconds will skip alternate 5-second windows.*

Qn: For which of the following purposes stated about checkpointing is not true?

- Checkpointing is always needed while performing map() and filter() operations on RDD.

- We can use checkpointing to save the configuration information that was used to create a streaming application.

- In the case when the result of a previous RDD is required for a transformation, we have to use checkpointing to save the previous RDDs to a safe location.

- We use checkpointing to implement fault tolerance in our spark streaming application.

Ans: A. *It is not required to store any previous results in map() and filter() operations, hence, these functions do not directly use checkpointing.*

Qn: After which of the following command run in the 'Hashtags_Analysis' notebook, the variable 'c' will be assigned the connection value when you execute the following code in the 'Fetching_Twitter_Data' notebook?

`c, addr = s.accept()`

- `ssc.awaitTermination()`

- `ssc.start()`

- `send_twitter_data(c)`

- `ssc.socketTextStream()`

Ans: B. *Variable 'c' will be assigned the value after this particular step. The main reason for this is Lazy Evaluation and it waits until it does not get the destination port, that is the port of the Spark Streaming job.*
