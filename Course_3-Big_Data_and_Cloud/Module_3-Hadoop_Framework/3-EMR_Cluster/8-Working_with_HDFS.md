# Working with HDFS

Now that you have a cluster up and running, let’s check the list of services running on the cluster and also understand how to restart a service if it goes down.

**VIDEO**

**_sudo initctl list_**   
Using  this command, you can look at the services running on your Hadoop cluster.    
These services might frequently go down and stop responding. The first thing to do in such a scenario is to connect to the master node and restart the service. 

To start a service, for example, resource manager, you simply can give the command **sudo start hadoop-yarn-resourcemanager.**

In the next video, you will learn how to run some basic commands on HDFS. 

**VIDEO**

Here is a list of some basic HDFS commands that you learnt in the video:

_**hadoop fs -ls**_   
This command lists the contents in the Hadoop Distributed File System.

_**hadoop fs -mkdir test-folder**_  
This command is used to make a new directory in the present working directory.

_**hadoop fs -put test.txt /test_data/**_  
This command is used to copy the file in the present working directory to a new directory named test_data.

_**hadoop fs -rm test.txt /test_data/**_  
This command is used to remove all the contents in the directory test_data.

_**hadoop fs -help**_  
Using the help command, you can see all the related HDFS commands. 

You can also quickly go through the **[documentation](https://hadoop.apache.org/docs/r2.4.1/hadoop-project-dist/hadoop-common/FileSystemShell.html)** for more HDFS commands.  

In the hadoop documentation, you will find all commands as **hdfs dfs** but in the demonstration, SME has used **hadoop fs**. The 'hdfs dfs' command is used very specifically for hadoop filesystem (hdfs) data operations whereas 'hadoop fs' covers a larger variety of data present on external platforms such as S3.

In the next video, you will learn how to copy a file from S3 bucket to HDFS.

**VIDEO**

**hadoop  distcp**   s3n://sampleupgrad/India+Dataset.xlsx  /tmp/test-folder/india-dataset.xlsx

This distributed copy command is used to copy files in the S3 bucket to the Hadoop file system. This job runs like a MapReduce job in the background to copy the files from the source folder to the destination folder. One important thing to note is that the bucket where you have the input data needs to be a public bucket.

## Additional Reading

Link to [HDFS Shell Commands](https://hadoop.apache.org/docs/r2.4.1/hadoop-project-dist/hadoop-common/FileSystemShell.html)  
You can read more about Hadoop Distributed Copy [here](https://hadoop.apache.org/docs/current/hadoop-distcp/DistCp.html)

## Coming up

In the next segment you will learn to run a MapReduce job on an EMR.