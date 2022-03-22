# Launching and Connecting to the EMR Cluster

Let’s now learn how to launch an EMR cluster.

**VIDEO**

**Important**

There is also a critical step involved before connecting to the cluster i.e. **editing the security groups of the master node**. The following document briefs you on the steps involved in launching a cluster and also editing the security groups. 

Download [Launching an EMR Cluster](Docs/Amazon_Web_Services/Launching_an_EMR_Cluster.pdf)

**Note:** You are supposed to use a two-node cluster \[**1 Master M4.large and 1 Core M4.large**]  for this course, this is sufficient for the tasks given in the course. Also, make sure you are using **emr-5.29.0** version since the latest versions aren't stable and you may encounter issues/command changes working with them.  Do not use any other configuration unless specifically mentioned. Using a higher node cluster will incur huge costs and go through the documentation to do a quick analysis of the cost involved in using an EMR cluster.

#### Launching and Connecting to the EMR Cluster

Qn: Identify the number of vcores and memory associated with M4.large? \[You can refer to the [AWS documentation](https://aws.amazon.com/ec2/instance-types/) to find out this information.]

- 2 vcores and 4GB RAM 

- 4 vcores and 16GB RAM 

- 2 vcores and 8GB RAM 

- 4 vcores and 8GB RAM

Ans: C. *Using a M4.large instance will give you two virtual cores and 8GB of RAM.*

#### Launching and Connecting to the EMR Cluster

Qn: How many maximum master nodes and slave nodes are possible in case of a 10-node cluster?

- 9 master nodes, 1 slave node 

- 1 master node, 10 slave nodes 

- 10 master nodes, 1 slave node 

- 1 master node, 9 slave nodes

Ans: D. *You can have only one master node; this leaves 9 nodes in the 10-node cluster. This means that you can have a maximum of 9 slave nodes.*

#### Launching and Connecting to the EMR Cluster

Qn: Calculate the cost incurred for the instances if you decide to build a 5-node cluster with a master node of type m4.4xlarge and slave nodes of type m4.xlarge. \[You can refer to the [documentation](https://aws.amazon.com/emr/pricing/) for answering this question.]

- $1.04 

- $1.384 

- $2.08 

- $1.348

Ans: C. *The cost incurred on different components of the cluster includes the following:  
1 master node type m4.4xlarge = 0.8 + 0.24 = $1.04.   
4 slave nodes of type m4.xlarge = (0.20 + 0.06)*4 = $1.04  
The cumulative cost is $(1.04 + 1.04) = $2.08*

Qn: Calculate the cost incurred for the instances if you decide to build a 3-node cluster with a master node and slave nodes of type M4.large. \[You can refer to the [documentation](https://aws.amazon.com/emr/pricing/) for answering this question.]

- $0.40 

- $0.09 

- $0.39 

- $0.30

Ans: C. *You are given a 3-node cluster with a master node and slave nodes of type m4.large. The cost incurred will be $(0.10 + 0.03)*3  = $0.39*

During the creation of the cluster, you have selected an existing key-value pair in the final step. This is essential for doing a secure remote login to your cluster. In the next video, you will learn how to do this in the case of a **Mac system.**

**VIDEO**

The document given below explains how to do an SSH to the master node of the cluster in case of;

-   WINDOWS users
    
-   MAC users
    

Download [Connecting to master node via SSH](Docs/Amazon_Web_Services/Connecting_to_Master_Node_via_SSH.pdf)

## Coming up

In the next segment you will learn how to work with an amazon EMR and learn all the functionalities present in it. 

Based on the understanding of the EMR cluster attempt the questions given below.

#### Launching and Connecting to the EMR Cluster

Qn: My cluster state shows ‘waiting’. What does this statement signify?  
 
- The cluster is still getting ready.

- The cluster is ready and waiting for the user to submit a job. 

- The cluster is still waiting for resource allocation. 

- The cluster is still in the creation phase.

Ans: B. *The cluster state waiting signifies that the cluster is up and running and is waiting for the user to submit a job.*

Qn: Can I connect to the DataNodes or slave nodes in the EMR cluster?

- Yes

- No

Ans: B. *You can do an SSH and connect to the NameNode, but you cannot do the same with the DataNode.This is because the DataNode has a dynamic IP; in other words, these systems are continuously updated by AWS.*
