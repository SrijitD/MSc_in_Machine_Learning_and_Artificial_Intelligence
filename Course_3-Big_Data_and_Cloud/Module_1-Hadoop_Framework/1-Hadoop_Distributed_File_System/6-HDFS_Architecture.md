# HDFS Architecture

Now that you have a brief idea about the Hadoop Distributed File System, let's look at its architecture.

As we move ahead in this segment, you may hear Professor Janakiram using the term '**Remote Procedure Call (RPC) requests**' in his explanation. **RPC** is a communication protocol used in the client-server architecture. You can refer to the additional reading material provided in the resources section to understand this better.

**VIDEO**

You understood that HDFS has a Master-Slave architecture, where ‘Master’ is the **NameNode** and ‘Slave’ is the **DataNode**.

![Master Slave Architecture](https://i.ibb.co/gFyt23g/Master-Slave-Architecture.png)

Master nodes in the cluster act as masters that control and coordinate tasks, while slave nodes are the nodes that perform the task given by the master node.

When a file is stored in HDFS, the master node (NameNode) does not store any data blocks. It is the DataNodes where the data blocks are stored and NameNode only maintains the information on where blocks are stored. When a read/write request is made to the existing file in HDFS, the client application interacts with NameNode to get the metadata of necessary blocks and then based on the information received from the NameNode, a connection is established with the respective DataNodes. You will learn more about this in the later segments.

In the next video let’s understand the functionality of these nodes in detail.

**VIDEO**

Let’s summarise things you learnt in the above video in more detail;

## NameNode

It stores the metadata which includes the details of data blocks, replicas, and so on. The metadata consists of two files:

- **FsImage:** This file contains the complete information about file-to-block mapping, directory hierarchy, and so on. It basically contains the complete state of the system at any point in time.
- **Edit Logs:** This file contains all the changes/updates to the file system with respect to the latest FsImage. When the NameNode starts, the existing FsImage and Edit Logs on the disk are combined into a new FsImage file and loaded in memory. Further, fresh Edit logs are initiated.

NameNode regulates the client access to the files, manages the file system namespace and executes the file system operations such as naming, closing and opening files and directories.

## DataNodes

DataNodes have the following features;

- They store the entire data on HDFS.
- They perform creation, replication, and deletion of blocks according to the instructions provided by the NameNode.
- They are provided with large amounts of hard disk space because DataNodes store the data.
- They send block reports to the NameNode to indicate states.

![HDFS Architecture ](https://i.ibb.co/gmfs3nS/HDFS-Architecture.jpg)

## Secondary NameNode

The secondary NameNode is just a helper node to the main node. The Edit logs often have a large amount of data, and combining it with the FsImage takes a lot of time. The secondary NameNode acts as a checkpoint during this operation and reduces the time taken to combine the two files. It regularly gets edit logs from the NameNode, applies them to the FsImage and then moves the updated FsImage back to the NameNode. The secondary NameNode is also known as the Checkpoint Node.

**Note:** The secondary NameNode cannot replace the NameNode, and hence, Hadoop version 1 is a single point of failure (SPOF) system, which is if the NameNode fails then the entire system fails.

![HDFS NameNode & Secondary NameNode](https://i.ibb.co/sgvSYCt/HDFS-Name-Node-Secondary-Name-Node.png)

## Architecture of HDFS

Some HDFS enhancements in Hadoop 2:

### Standby NameNode

Hadoop version 2 provides a high-availability feature with a Standby NameNode that stays in synchronisation with the main NameNode. It is a backup for the main NameNode and takes over the duties of the main NameNode in case if it fails. In fact, a secondary NameNode is not required if a standby NameNode is used. This feature was not available in Hadoop V1, and hence, it was a single point of failure (SPOF) system.

![Hadoop Distributed File System](https://i.ibb.co/HP7y3kp/Hadoop-Distributed-File-System.png)

#### NameNode

Qn: State whether the following statement is true or false:

"NameNode stores the metadata in its main memory."

- True

- False

Ans: A. *For faster lookups, NameNode maintains the metadata in its main memory.*

#### Edit Logs

Qn: Which of the following is responsible for ensuring that the edit log file does not become too large in Hadoop version 1?

- NameNode

- Secondary NameNode

- Standby NameNode

- DataNode

Ans: B. *The secondary NameNode regularly gets Edit Logs from the NameNode, applies them to the FsImage, and then moves the updated FsImage back to the NameNode, thereby allowing the NameNode to start fresh Edit Log file.*

#### Architecture of HDFS

Qn: So far in this session, you have got an idea of the storage layer of the Hadoop framework. Suppose you are asked to set up a Hadoop cluster, i.e., connect different machines over a network. Now, based on your understanding of HDFS, what would be the right selection of hardware for the NameNodes?

- The machine running NameNode requires high processing power, large memory, and reliable storage for a high volume of data.

- The machine running NameNode requires nominal processing power and RAM but reliable storage for a high volume of data.

- The machine running NameNode requires high processing power, large memory and reliable storage of nominal size.

- The machine running NameNode requires high processing power, large memory and large commodity-grade storage.

Ans: C. *The NameNode requires high processing power and RAM to update the metadata. It does not require large secondary storage such as DataNodes, as it only stores metadata on the disk. However, the storage has to be reliable, preferably enterprise-grade, as the entire namespace is lost if it fails*
