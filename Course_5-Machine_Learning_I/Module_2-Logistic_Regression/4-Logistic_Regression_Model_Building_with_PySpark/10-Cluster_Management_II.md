# Cluster Management II

Now, let’s try to find the jobs that took more time to execute. Once you figure them out, you can make changes to the cluster accordingly and check how the execution time changes. 

**VIDEO**

In this video, Jaidev pointed out two potential ways to achieve faster computation. One is to **increase** the number of executors. If a lot of processes are running in parallel on different executors on an event timeline, then one obvious way to increase the speed of the calculation is to use more executors. That way, more calculations can be parallelised. Let’s increase the number of executors and observe its effect on the execution time.

**VIDEO**

The cluster that was created in this video was larger than that created earlier. But the number of cores associated with the Spark app remained four. This is a way to ensure that certain resources are allocated to the overhead tasks and some room is available for other Spark apps if you create them. This allocation of resources can be changed manually by the magic configuration tool. It can set the environment of Spark from the Jupyter Notebook itself. 

```python
%%configure -f
 {"executorCores": 8}
```

A few other variables that you can set using the same tool are driverMemory (string format), driverCores (integer format), executorMemory (string format), executorCores(integer format) and  numExecutors(integer format). 

Please remember to run this code first before performing other activities because the -f command will create a new Spark application, causing the current application progress to be lost. Also, the actual configuration information should be in the JSON format; otherwise, the cell will throw an error.

```python
%%configure -f
 {"executorMemory": "3072M", "driverMemory ": "2000M"}
```

In the example given above, the code will set the number of executor memory and driver memory. Use caution with these settings; as Jaidev explained, you need to leave enough room for the overhead tasks that the cluster needs to perform. Here is the [AWS blog](https://aws.amazon.com/blogs/big-data/best-practices-for-successfully-managing-memory-for-apache-spark-applications-on-amazon-emr/) talking about managing the cluster resources. 

**VIDEO**

Note that every time the `%%configure -f <command>` is run, a new Spark application will be created, and you need to access that application to obtain further details. Now, let’s find out if the execution time of the earlier Notebook shows any change. 

**VIDEO**

The execution time reduces from approximately 25 minutes to 15 minutes by simply doubling the core count. Notice that doubling the executors does not reduce the time by half because increasing the number of cores also increases the overhead tasks. You could have also increased the executor memory, which would have also resulted in better performance.

Having more memory can increase computation speed; similarly, having less memory can cause a lot of problems. But these performance gains will diminish. You will reach a point when turning these knobs will not change the computation speed appreciably. So, starting small and continuing to test until you reach the desired performance level is recommended.

Improving the performance of a model addresses the speed of computation as well as the correctness of predictions. One single model can be run in infinite ways. This is when a data scientist’s judgement and skill will be useful. Understand the use and the effect of each knob and learn how to turn them to achieve your model’s best performance.

#### Cluster Management

Qn: About which of the following does the jobs tab in the SparkUI web app hold information? (Note: More than one option may be correct.)

- Event timeline of a job

- Executor memory

- Dag visualisation

- Completion of a job

Ans: A, C & D. *You can find the event timeline on the jobs tab. You can find the DAG visualisation of each task on the jobs tab. On the jobs tab, jobs are sorted according to their completion status. So, you will find the completed jobs there.*

#### Cluster Management

Qn: State whether the following statement is true or false. "Using a cluster with a high number of cores ensures the usage of more cores while executing jobs."

- True

- False

Ans: B. *The configure magic command is used to set the number of executor cores.*

You can learn more about the usefulness of SparkUI in performance improvement in this [video](https://youtu.be/VQOKk9jJGcw).

This concludes the session on binary logistic regression. Next, let’s briefly talk about multiclass classification problems.