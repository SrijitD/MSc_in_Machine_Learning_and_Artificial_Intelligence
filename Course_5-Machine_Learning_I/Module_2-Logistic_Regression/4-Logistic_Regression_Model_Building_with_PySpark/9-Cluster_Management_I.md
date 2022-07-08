# Cluster Management I

The scale of data used in this case study was huge. After sampling, it had **5,00,000** rows with more than **500** features. The actual data set has **40 million** rows. This is why managing the computational resources of the cluster is important. 

SparkUI is the window used to visualise the internal working of Spark, and exploring it can help you understand the bottleneck in your code. In the next video, let’s take a look at how SparkUI is accessed in an EMR environment.

**VIDEO**

The Notebook used in the video is the same as the one Jaidev used when building a model with all the variables. Let’s use this Notebook as a standard to check the computational performance of the model. 

The SparkUI page has a few tabs at the top that provide specific information about the Spark application, such as what jobs are running and what the environment set-up is. 

#### Environment Tab
The environment tab contains a lot of information about different environments and configuration variables. The variables give information pertaining to the versions of Java, Scala, etc. You can also find the Spark application-related information in the environment tab, such as the application name, the executors and the memory. You can use this tab to check the properties that are set. In the video given below, Jaidev will help you look at the Environment tab. 

**VIDEO**

#### Jobs tab   
You can find the summaries of the jobs assigned to the Spark application. These jobs are grouped together by their execution status. The details of each job can be found by clicking on the job. In the detailed view, you will observe the stages of the job, the DAG visualisation, the event timelines, etc. At the beginning, the details of the jobs will be difficult to read and understand; so, take your time and correlate your code with the jobs being created, and over time, you will develop a sense of what each stage represents. The Spark application created earlier must have finished some jobs from the algorithm, let’s visit the jobs page there.

**VIDEO**

You can try to explore the other tabs in the SparkUI web app to find the information that they contain. 

In the next segment, let's try to investigate the performance of the Spark application that was executed in this segment.