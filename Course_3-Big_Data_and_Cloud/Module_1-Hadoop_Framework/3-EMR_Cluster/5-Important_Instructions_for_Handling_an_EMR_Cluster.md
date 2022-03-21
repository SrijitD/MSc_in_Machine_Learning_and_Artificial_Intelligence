# Important Instructions for Handling an EMR Cluster

Some important instructions for handling an EMR cluster are given as follows:

1.  Fix the region as **N. Virginia** while creating the EMR Cluster.
2.  You need to have a **key-value pair** to connect to the cluster. Instead of creating one at a later stage, we highly recommend creating one and keeping it with you. ( Please save this file in a place that you will remember. You will use it in later steps in EMR.) 
3.  You need to **edit security groups** by adding a new rule for doing SSH with the **master node** In the source section while adding a rule, select **Anywhere**.
4.  You need to **terminate** the cluster if you are not using it for a while. Yes, you are supposed to terminate it, as the cost associated with EMR is very high and you cannot leave it idle. 
5.  You can simply clone the terminated EMR cluster if you need it again. However, in this case, you might lose all the data associated with the cluster. So, avoid putting data in the EMR cluster; instead, store data in S3.
6.  Strictly adhere to the guidelines given in the form of documents and platform text; otherwise, you will exceed your allocated budget.
7.  We recommended you to go through all the videos and then try to launch the cluster. This would avoid leaving the cluster idle for a long duration and incurring unnecessary cost.

In the next segment, you will learn how to launch and connect to an EMR cluster.