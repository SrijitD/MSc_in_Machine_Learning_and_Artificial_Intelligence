# Fault Tolerance

In the previous segment, you went through the practical demonstration of a Spark Streaming case study on Twitter, wherein you performed a trending hashtag analysis on real-time Twitter data.

Now, consider the following situation. On a normal day, the rate of tweet generation is a thousand per second; however, due to some event or activity, there is a burst of tweets, owing to which millions of tweets are being generated per second. In such a case do you think the Spark system will fail?

Let’s go through the next video to answer this question.

**VIDEO**

In the above video, you learned that a faulty condition may result from either of the following:

-   Driver (Master) failure, or
-   Executor (Slave/ Worker) failure

Let’s consider the first case, where the executor fails.

![Fault Tolerance - Executor Fails](https://i.ibb.co/26P6XC4/Fault-Tolerance-Executor-Fails.png)

In such cases, as you already know, the master/ driver node knows all the tasks that have been assigned to each node (slaves), owing to the lineage and DAG in Spark. Based on this knowledge, it will assign all the tasks to the newly created slaves, which will start the tasks from that particular point only where the fault has occurred.

Now consider the second case. What will happen if the Master fails? By now, you know that information on all the tasks and all the slaves is available to the master node. So, how do we mitigate this situation? Let's learn about this in the next segment.
