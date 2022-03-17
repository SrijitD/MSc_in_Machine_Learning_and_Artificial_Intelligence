# Cluster Demonstration I

In this segment, the professor will demonstrate various HDFS concepts using a three-node cluster.

The HDFS commands resemble normal file system commands of UNIX. In the video below you will learn how to operate the HDFS file system using various commands on the cluster.

**VIDEO**

**_hdfs dfs -ls /_**  
This command lists the contents in the Hadoop Distributed File System.

_**hdfs dfs -mkdir /input1**_  
This command is used to make a new directory in the present working directory.

_**hdfs dfs -put  test.txt   /test_data/**_  
This command is used to copy the file in the present working directory to a new directory named test_data.

_**hdfs -help**_  
Using the help command, you can see all the related HDFS commands.

You can also quickly go through the [documentation](https://hadoop.apache.org/docs/r2.4.1/hadoop-project-dist/hadoop-common/FileSystemShell.html) for more HDFS commands.

## Coming up

In the next segment you will explore the changes made to the filesystem under the **FSImage** and **editlogs** in the NameNodes.

#### HDFS Commands

Qn: Give the command to create input directories in HDFS. You can refer to the documentation [here](https://hadoop.apache.org/docs/r2.4.1/hadoop-project-dist/hadoop-common/FileSystemShell.html).

- dfs -mkdir /user/hadoop/inp1

- hdfs -mkdir /user/hadoop/inp1 /user/hadoop/inp2

- hdfs fs -mkdir /user/hadoop/inp1

- hdfs dfs -mkdir /user/hadoop/inp1 /user/hadoop/inp2

Ans: D _The command hdfs dfs -mkdir /user/hadoop/inp1 /user/hadoop/inp2 will create multiple directories inp1 and inp2 at the mentioned paths._
