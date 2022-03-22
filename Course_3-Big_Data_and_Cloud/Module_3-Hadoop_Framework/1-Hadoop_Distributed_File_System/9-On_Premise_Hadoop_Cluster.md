# On-Premise Hadoop Cluster

In this segment, you will look at the steps to set up an On-premise Hadoop cluster.

**Note:**

1. **Demonstrations shown here are to provide a deeper understanding of the concepts taught earlier.**

2. **This is not a hands-on session, and you are not expected to do what the professor is demonstrating.**

3. **Setting up an On-premise Cluster is tricky and needs expertise in domains such as networking, cloud computing.**

4. **Requirements to set up the cluster include three machines/laptops connected to the same network hence this isn't within the scope of the course.**

Let’s now quickly look at the first step involved in setting up the cluster.

**VIDEO**

The first step is to download virtual box on the three machines and then booting up the BOSS MOOL with hadoop(vdi). In the next video, you will look at the configurations of these machines

**VIDEO**

The /etc/hosts file includes mapping of machine IP address and its role.

![/etc/hosts file](https://i.ibb.co/884MBty/etc-hosts-file.png)

In the image shown you can find that the machine with IP addresses 192.168.0.105 & 192.168.0.104 are slave nodes and machine with IP address 192.168.0.101 is the master node.

![HDFS Master Slave FileSystem](https://i.ibb.co/YWvwCrT/HDFS-Master-Slave-File-System.png)

The screen shared by the professor represents the terminals of three nodes. The left half of the screen represents the master node and the right half represents the two data nodes. In the upcoming segments, the professor will use this three-node cluster to demonstrate various important concepts that were covered in the theory.

## Coming up

In the next segment you will learn about HDFS concepts using a three node cluster.
