# Introduction to HDFS

Before you start learning about the Hadoop Distributed File System, it is essential to understand **what is a filesystem?**

A filesystem can be defined as an abstraction over the storage media, and it provides an interface to perform various operations on a file, such as **create, open, read, update** and **append**. A filesystem makes the life of a programmer easier by managing low-level disk interfaces.

![File System](https://i.ibb.co/Zmgwrb4/File-System.png)

The image shown illustrates a simple application view of how your files are organised in a Linux operating system. What happens in the background is these files are divided into chunks which are called **blocks**. Typically, the size of each block in a filesystem is 4KB.

Consider a file of 1 MB (1024 KB) size. This file will be divided into 256 blocks (1024 KB / 4 KB). Each block of the file is stored at a random location on the hard disk. In order to keep track of all 256 blocks of the file, the mapping between each block and memory location is stored/saved as **metadata.**

![HDFS](https://i.ibb.co/xhpTZQm/HDFS.png)

In the shown figure, the file named B is divided into five blocks with the block IDs as B5, B200, B10, B4, B2 and they are stored in the memory index 0, 1, 2, 3, and 6.

#### Block

Qn: What is the reason behind dividing the file into small blocks?

- To maintain the entire file as one single file

- To reduce Input/Output overhead

- To keep the file as multiple files

- To reduce redundant data

Ans: B. *The primary reason for breaking a file into blocks is that it reduces Input/Output overhead, i.e. if a user wants to write at a specific location in a file, then instead of retrieving the entire file, only the block containing the specific location is fetched.*

Now, let’s look at some of the earlier file systems before starting our discussion on HDFS.

**VIDEO**

In this video, you learnt about two popular file systems:

1. Network File System
2. Andrew File System

When the user files are required to be accessed in a network environment which could be a **Local Area Network (LAN) or Wide Area Network (WAN)**, these files need to be stored in servers and should be made available to the client wherever the user logs into the system.

NFS is designed in such a way that small user files can be stored in servers and a small chunk of the file (usually a few kb) is made available to the client where the user is logged in. The cached chunk of data at the client is invalidated (about 30ms) and the client again fetches the data from the server to update the cached chunk with any changes made on the server. This protocol makes the NFS system scale only to a few 10s of nodes (~100 nodes).

The Andrew File System is designed with a slightly different protocol to scale the file-sharing to a few thousand nodes. This protocol allows the client to download the full file from the server and leave a notify lock on the file at the server. The server takes the responsibility of invalidating and updating the client copy of the file whenever the file changes. This protocol allows the file-sharing to scale 1000 nodes.

In our next video, let’s look at how HDFS came into existence.

**VIDEO**

Hadoop distributed file system is designed to store large data. For example, consider a scenario where the size of a file is higher than the available storage space in a single machine, then either you upgrade your machine or you consider multiple machines and distribute data over these machines by breaking the file into chunks. In the second scenario, there is a need for a distributed file system to provide a unified view of all the files and directories even if they are stored on different systems.

The first scenario presented earlier is known as **vertical scaling** of resources where you try to upgrade the existing setup. But it would be a costly process in some cases ([Reference](https://dba.stackexchange.com/questions/102179/why-is-vertical-scaling-expensive)). Instead, the second scenario is a better solution where multiple machines of the same configuration are connected. This is also known as **horizontal scaling**.

Here's the comparison between the three file systems:

![File System Comparison](https://i.ibb.co/SxP5bzT/File-System-Comparision.jpg)

File System Comparison

In the early 2000s, Google published two papers, namely [Google File System](https://static.googleusercontent.com/media/research.google.com/en//archive/gfs-sosp2003.pdf) and [Google MapReduce](https://static.googleusercontent.com/media/research.google.com/en//archive/mapreduce-osdi04.pdf), that showed how big data problems could be solved with the help of a distributed file system. At the same time, **Doug Cutting** and **Mike Cafarella** of Yahoo were also trying to solve the same problem as part of the **Apache Nutch project**. Apache Nutch is a web crawler. Cutting and Cafarella came across Google’s paper and thought it could be implemented in their project. They found the results to be very interesting and believed that there would be far-reaching implications and benefits. Thus, they created an open-source project under the Apache Software Foundation called **Hadoop**.  The Hadoop framework has the following components:

1. **Hadoop Distributed File System (HDFS)**: A distributed file system that stores data on the commodity machines.
2. **MapReduce**: A programming model for large-scale data processing.
3. **YARN**: A resource-management platform responsible for managing compute resources in the cluster of machines and using them to schedule jobs.

In our upcoming discussion, you may hear the usage of the term **Hadoop cluster**. A cluster is a group of computing machines (also called nodes) working together and configured in such a way that they appear as a single system. Clusters generally use low-cost commodity machines that are connected through a communication network.

## Coming up

In the next segment, you will learn about the storage process in Hadoop Distributed File System (HDFS).

#### File Partition by FileSystem

Qn: For a 1.3 MB file in a FileSystem, how many blocks will be allocated if the block size is 4 KB?

- 332

- 256

- 333

- 331

Ans: C. *1.3 MB = 1331.2 KB and 1331.2/4 = 332.8. Hence, there will be 332 partitions of size 4 KB and 1 partition of size 3.2 KB. There will be a total of 333 blocks because the file system will allocate a 4 KB block even for a file partition that is less than 4 KB in size.*

#### Distributed System

Qn: Which form of scaling is preferred if high availability is the only concern?

- Vertical

- Horizontal

Ans: B. *Horizontal scaling refers to increasing the processing power and storage by adding nodes to the system rather than upgrading the processors and RAM of individual machines. Hence, horizontal scaling may be done on the fly causing zero downtime.*
