# Replication and Its Importance

Now that you have learnt about the different components of an HDFS architecture, let’s understand the concept of replication and its significance in ensuring that there is no loss of data at any point in time.

**VIDEO**

The components of HDFS are prone to failure because it uses commodity machines to store data. In this scenario, the only way to prevent data loss due to component failure is by replicating it. Depending on the replication factor, the NameNode decides the DataNode addresses on which the blocks are to be replicated. By default, HDFS keeps one original copy and two replicas of a data block. In total, there are three replicas for every block of a file on HDFS.  

The default replication factor is set to 3. The reason behind choosing the replication factor as 3 can be explained with the help of a numerical example.  

Let's say;

- The probability of availability of a commodity machine is **0.95**, and
- The probability of a commodity machine failing is  **0.05** (1-0.95).

So, the probability of all three machines hosting the replicas failing together is **0.000125** (0.05 *0.05* 0.05), that is, the probability of at least one replica is available **0.999875** (1 - 0.000125).  

Based on the above calculations, the marginal improvement is calculated for 1-replica to 4-replicas and are represented in the table.  

| No. of Replicas | Failure Probability of a Machine | Probability of All Machines Failing at Same Time | Probability That Data is Not Lost or At least One Replica is Available | Marginal Improvement |
| --------------- | -------------------------------- | ------------------------------------------------ | ---------------------------------------------------------------------- | -------------------- |
| 1               | 0.05                             | 0.05                                             | 0.95                                                                   | -                    |
| 2               | 0.05                             | 0.0025                                           | 0.9975                                                                 | 0.0475               |
| 3               | 0.05                             | 0.000125                                         | 0.999875                                                               | 0.002375             |
| 4               | 0.05                             | 0.00000625                                       | 0.99999375                                                             | 0.00011875           |

As per the above table, when compared to 2 replicas, the probability of availability of data in the case of 3 replicas has improved by 0.002375. However, when the replication factor is increased beyond 3, the improvement in the probability of at least one replica is available is significantly less. Hence, replication factor 3 is preferred to manage the fault tolerance in the HDFS architecture.

Let’s continue the discussion on NameNode and DataNode and see how these two nodes interact

**VIDEO**

The NameNode regularly receives heartbeat messages and block reports from all the DataNodes to ensure that they are alive and acts in case of over replication or under replication of data blocks. If there is no heartbeat message from the DataNode for a timeout period of 10mins then the Namenode assumes that the DataNode is no longer available and based on the block information available, it replicates the blocks across other nodes to maintain appropriate replication level.

## Coming up

In the next segment, you will look at the steps to set up an On-premise Hadoop cluster.

#### Files maintained by Namenode

Qn: Storage locations of Block reports, FSImage and EditLog files respectively are _____.

- Disk, Disk, Main memory

- Disk, Main memory, Disk

- Main memory, Disk, Disk

- Main memory, Disk, Main memory

Ans: C. *For faster lookups, block reports are stored in the main memory, and FSImage files and EditLog files are stored on the disk due to their large size.*

#### Interaction Between NameNode and DataNode

Qn: DataNodes automatically send heartbeat messages every ___and block reports every___ .  
(These are tunable parameters give the default settings.)

- 1 second, 3 hours

- 3 hours, 1 second

- 3 hours, 1 hour

- 3 seconds, 1 hour

Ans: D *Datanodes automatically send heartbeat messages every 3 seconds indicating that they are alive. Block reports containing the list of blocks that are stored in a DataNode are sent every hour.*

#### Safe Mode

Qn: Which of the following statements are true? (Note: More than one option may be correct.)

Refer [Hadoop Documentation](https://hadoop.apache.org/docs/r2.4.1/hadoop-project-dist/hadoop-hdfs/HdfsUserGuide.html#Safemode) to read about Safe Mode)

- In safe mode, Namenode loads FSImage files to the main memory.

- In safe mode, Namenode accepts changes to the FileSystem namespace.

- In safe mode, Namenode updates the FSImage file based upon the editlog file.

- In safe mode, Namenode allows read operation for which it already has information.

Ans: A, C & D.

- *In safe mode, Namenode first loads the FSImage file to the main memory and updates it on the basis of the editlog file. In this state, namenode only allows read operation for which it already has information.*

- *In safe mode, as namenode is already updating the FSImage file, it does not allow any changes to the file system namespace.*

- *In safe mode, Namenode first loads the FSImage file to the main memory and updates it on the basis of the editlog file. In this state, namenode only allows read operation for which it already has information.*
