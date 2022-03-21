# Monitoring and Terminating the EMR Cluster

In this segment, you will learn about different UIs for monitoring various services running on the cluster. 

**VIDEO**

You can refer to the web URLs of Resource Manager and HDFS NameNode to do a quick analysis of the cluster.

![HDFS Resource Manager](https://i.ibb.co/QHshBrx/HDFS-Resource-Manager.png)

Now that you have a brief understanding of the EMR cluster, let’s look at the final and the important step in handling the EMR cluster: **Cluster termination.**

**VIDEO**

You need to **terminate** the cluster if you are not using it for a while, as the cost associated with EMR is very high and you cannot leave it idle. At times, if you are running a single MapReduce job or a simple Hive query, you can choose the option to terminate the cluster while specifying the job under the **Steps** tab.

You can also clone the terminated EMR cluster by choosing the **Clone** option. However, in this case, you might lose all the data associated with the cluster. So, avoid putting data in the EMR cluster; instead, store data in S3.

**Important Note** 

The cost incurred due to EMR Cluster is quite high so make sure you are terminating the cluster as and when you complete your tasks. Also, make sure that you are sticking with two-node cluster unless it's mentioned explicitly to use a different cluster.

With this, we come to the end of this session.

## Coming up

In the next segment, we will summarise the concepts that you learnt in the session.