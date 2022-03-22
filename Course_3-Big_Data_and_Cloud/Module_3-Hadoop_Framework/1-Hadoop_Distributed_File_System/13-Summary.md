# Summary

Let us now summarise what we have learnt in this session so far.

In this session, first, you understood what a Distributed File System is and saw a few examples of these file systems. Then you are introduced to the storage component of the Hadoop framework, that is, the Hadoop Distributed File System (HDFS), which allows you to store large volumes of data across multiple nodes in a Hadoop cluster. Here, you first learnt how files are stored in HDFS, and then understood its architecture. You learnt about the different components of the system, which include the NameNode, DataNodes, secondary NameNode and standby NameNode [In Hadoop 2].

![Hadoop Distributed File System](https://i.ibb.co/HP7y3kp/Hadoop-Distributed-File-System.png)

Then, you understood how to access HDFS using the command-line interface and also executed a few commands while handling the Hadoop distributed file system. Then, you explored different components of the NameNode and DataNode in an actual three-node cluster. Here, you learnt that the operations performed on the filesystem are recorded in the edit logs, and periodically, these edit logs get merged and stored as the File System image. These file system images and edit logs are maintained and updated continuously by the NameNode. You also got an idea of how the DataNode stores data arranged as blocks in the HDFS.

Finally, you learnt about the workflow of the read and write operations in the Hadoop framework.

![Read Operations in HDFS](https://i.ibb.co/2Z7djL2/Read-Operations-in-HDFS.png)

![Write Operations in HDFS](https://i.ibb.co/1890D5b/Write-Operations-in-HDFS.png)

In the next session, you will learn about resource management and the processing layer of Hadoop, which will cover YARN and MapReduce. You will go through the details of the Hadoop MapReduce framework, that is, how the Map and Reduce functions are executed in parallel across the nodes of a Hadoop cluster. You will also learn about the middleware involved and understand how the Master node plays a pivotal role in the execution of a program by coordinating with worker nodes.

## Additional Links

To read more about HDFS, you can refer the [Hadoop Documentation](https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-hdfs/Federation.html).  
You can learn more about HDFS Shell Commands [here](http://hadoop.apache.org/docs/r2.4.1/hadoop-project-dist/hadoop-common/FileSystemShell.html).