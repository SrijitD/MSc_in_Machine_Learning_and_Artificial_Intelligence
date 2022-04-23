# Introduction to SparkUI

SparkUI is a web interface that lets you visualise the resource consumption of a Spark cluster. It is an essential tool for improving the performance of a Spark cluster. You can connect to the Spark web UI by using the default port [**4040**](http://localhost:4040/) for SparkUI by running the following command in your web browser:

`http://<driver-node-ip>:4040/=<your-jupyter-notebook-token>`

Before you paste the above command, you will need to complete the following steps to connect with port 4040:

1. Add the port 4040 to inbound rules of ec2 machine.  
2. You'll have to run the following command in a new ec2 terminal to relay the 4040 ec2 instructions to the localhost 4040.

`ssh -i ~/upgrad.pem -L 4040:localhost:4040 ec2-user@1.45.251.127`

Remember to specify the correct path for the .pem file and the correct IP address.

If there are multiple Spark sessions in a single node, they will be attached to serial ports 4041, 4042, and so on. Hence, if you are running multiple Spark sessions, perform the above step for each of the ports.

Once you are connected to the Spark web UI, you will see the Spark session application that you have created. At the top-right of the web page, you need to confirm the name of the app that you had given while creating the Spark session.

Watch the following video to get an idea of how SparkUI works.

**VIDEO**

This Spark SQL web UI displays information about the following:

- The tasks scheduled

![Spark SQL Web UI](https://i.ibb.co/wLBVF0s/Spark-SQL-Web-UI-1.png)

Whenever an action is executed, a job entry is created on the jobs page detailing the duration of the job, its stages, etc. If you want to know more details about a particular job, click on the description link on the screen.

- The amount of memory in use

![Spark SQL Web UI](https://i.ibb.co/C0C9y30/Spark-SQL-Web-UI-2.png)

This is the view displaying the details of a particular job. Here, you can see the stages of the job and the memory that is used to execute the job; and the DAG representation.

- Catalyst trees

![Catalyst Trees](https://i.ibb.co/RvpJ8zk/Catalyst-Trees.png)

This is the tree diagram created by the catalyst optimiser. You can reach here by going to the SQL tab then clicking on a job. This diagram depicts the optimisation and physical planning for any particular job. You can see the exact algorithms used for a particular task.

- Information about the executors

![Spark SQL Web UI](https://i.ibb.co/N7bY46q/Spark-SQL-Web-UI-3.png)

You can also see how all the executors have performed. However, since you are using the single node, this page will not make much sense yet. Once you start using the cluster, this becomes an important page, as it helps you to see how each executor is performing.

The information displayed on the executer page about the executors can be used in debugging and optimising a query. You can use the Spark web UI to analyse the tree that is created by the optimiser. The top row of the UI has multiple tabs, each with a specific function. In the previous segment, you began with a use case of a cricket match where you executed a SQL style query to process the data was executed. Now, take a look at the time taken for the execution of the query and the process involved in the execution using Spark UI. In Spark UI, jump to the SQL tab which shows information about the job and the physical and logical plans that are created. This will give you a view of the working of the optimiser.

#### SparkUI

Qn: On which of the following ports does sparkUI work by default?

- 8888

- 4040

- 2505

- 4004

Ans: B *By default, SparkUI works on the 4040 port. If more than one Spark session is working, then it shifts to 4041, 4042, and so on.*

Qn: Which of the following is the most important use of SparkUI?

- Displaying information about the state of the clusters, jobs and the Spark environment

- Executing queries in SparkSQL.

Ans: A. *SparkUI displays the time and state of clusters, jobs and the Spark environment on port 4040*

Now that you have a fair understanding of what Spark UI is and how can access it, you can continue solving the IPL problem in the next segment.

## Additional Reading

1. Take a look at this interesting video on Spark UI visualisation at [this link](http://www.youtube.com/watch?v=VQOKk9jJGcw&t=528s)

2. For more information about Spark UI, you can visit [this link](http://spark.apache.org/docs/3.0.0-preview/web-ui.html)
