# Running a MapReduce Job on EMR

In this segment, you will learn how to run a MapReduce job using an Amazon EMR cluster.

**VIDEO**

You understood how to run a sample MapReduce job using the AWS console. You can execute tasks such as a MapReduce job, a Hive query or a Spark program by adding a new step under the Step tab. In the video above, you ran a MapReduce job by choosing the streaming program option. However, if you write programs involving multiple mappers and reducers, you can create a JAR out of it and specify the jar by selecting the jar option.

On selecting the streaming program, you are prompted to give the mapper code and reducer code. For the mapper function and the reducer function, you need to specify the S3 locations of the mapper.py and reducer.py files. You also need to give the input and output locations. Sometimes for generic mapper and reducer codes, you can directly specify the functionality of the code. In the example shown, a simple aggregation is being done, so you can simply specify the aggregate in that field.

Reference code:  
[https://s3.amazonaws.com/elasticmapreduce/samples/wordcount/wordSplitter.py](https://s3.amazonaws.com/elasticmapreduce/samples/wordcount/wordSplitter.py)

Input data  
[s3.amazonaws.com/elasticmapreduce/samples/wordcount/input/0001](http://s3.amazonaws.com/elasticmapreduce/samples/wordcount/input/0001)

Finally, there is an important field that asks for necessary action in the case of a failure while running a job. If you select ‘terminate the cluster’, the cluster is automatically terminated after the job is complete.  In the S3 location mentioned, you can find the output returned after running the job.

In the next video, let’s look at the results generated at the end of job execution.

**VIDEO**

#### Running a MapReduce job?

Qn: Which tab in the cluster information page is used to run a mapreduce job?

- The Monitoring tab

- The Hardware tab

- The Events tab

- The Steps tab

Ans: D. *The steps tab shows the status and log files of the tasks submitted. These tasks can be hive query, MapReduce job or a spark program.*

In the next segment, you will learn how to monitor and terminate the EMR cluster.