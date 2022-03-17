# Read and Write Operation in HDFS

In the previous segments, you learnt about the role of different components in HDFS. In this segment, you will learn how these components interact with each other to understand read and write operations in HDFS.

**VIDEO**

**Read Operation in HDFS**

Following are the steps involved in the file read process:

1. The user application provides a file name to be opened to the **HDFS client**.
2. The HDFS client sends an **RPC request** to **NameNode** for reading the file.
3. NameNode retrieves the list of **DataNodes** for the first few blocks of the file and sorts the list according to their **proximity** to the client.
4. For each block, the HDFS client connects to the first DataNode (the one closest to the user) in the sorted list and then sends the **blockID**, **offset** and **length of the data** to be read to the connected DataNode. The DataNode then streams the data back to the HDFS client **directly**.
5. The data packet is received by the HDFS client, which verifies for information **mismatch**. If there is a mismatch, it informs the NameNode and contacts the next DataNode in the list to **read the block** again.
6. Similarly, to retrieve the remaining blocks, HDFS clients send RPC messages to the NameNode for fetching the addresses of DataNodes storing them.

(Please hover on the image for the zoom-in option)

![Hadoop Open and Read](https://i.ibb.co/9nJgGZ5/Hadoop-Open-and-Read.jpg)

**Write Operation in HDFS**  
Following are the steps performed to write a data block in HDFS:

1. The user application gives a **filename** as an input to the HDFS client. The HDFS client sends an **RPC request** to the NameNode for creating a file. After creating the file, the NameNode grants a **data write lease** to the HDFS client.
2. As the user application starts writing data, the HDFS client **buffers** the data until it reaches the **size of a block**, after which the HDFS client sends another RPC request to the NameNode for adding the block.
3. NameNode returns the list of DataNodes in which the block can be added. The number of DataNodes in the list is equal to the **replication factor** of the cluster. These data nodes form a **pipeline**.
4. The HDFS client splits the data block into **fixed-size packets** and adds them into the Data Queue.
5. The HDFS client starts writing the data packets to the first DataNode. The first DataNode stores the data **locally** and propagates the same data packet to the second DataNode. Similarly, the second DataNode stores the data packet **locally** and passes the packet to the third DataNode.
6. When the first DataNode receives the packet, it **acknowledges** the same to the HDFS client. Similarly, other DataNodes also acknowledge it through the pipeline in the **reverse direction**. In the pipeline, the DataNodes can continue accepting new packets while sending acknowledgements for older packets.
7. As the HDFS client writes a packet, the packet is moved from the **Data Queue** to another queue known as the **Acknowledgment Queue** (ack queue). When a packet is acknowledged from all the DataNodes, it is **removed** from the Ack queue.
8. When all the packets are acknowledged, that is, the ack queue is empty, the HDFS client sends a ‘**write complete RPC**’ request to NameNode.
9. On receiving the ‘write complete RPC’ request, the NameNode checks whether the **minimum number of replicas** (default: 1) has been written. If yes, it will commit the block in the **editlog** and return successfully to the HDFS client.
10. If a DataNode in the pipeline fails, the HDFS client does not receive an acknowledgement for any of the packets, that is, the ack queue is not empty. Then, the HDFS client **transfers** these packets from the Ack queue to the Data queue, after which it creates a **new pipeline** and ignores the failed DataNodes. All the steps after step 5 are repeated for the remaining packets added in the data queue from the ACK queue. If the NameNode daemon notices **under-replication** of the block, then it arranges for another DataNode where the block could be replicated.
11. Furthermore, the HDFS client assigns a **new identity** for the current block that is being written, and the same is communicated to the NameNode. This is done so that the partially written blocks on the failed DataNode can be deleted when the DataNode recovers.
12. The DataNode periodically sends **block reports** to the NameNode in order to inform it about newly written blocks. After receiving these block reports, the NameNode updates its **metadata** accordingly.

(Please hover on the image for the zoom-in option)

![Hadoop Create and Write](https://i.ibb.co/K0bs9VC/Hadoop-Create-and-Write.jpg)

Having understood how the read and write operations happen in HDFS, the next important thing to understand is the consistency aspect while performing the write operation.

**VIDEO**

The consistency model in HDFS is primarily designed keeping in mind the requirements of **big data processing applications** rather than transaction processing systems in traditional database systems. Traditional database systems cannot tolerate any inconsistency in the execution of the transactions on the database. On the other hand, big data processing applications mainly append operations to the file at the end rather than including random writes into the file.

## Coming up

In the next segment will summarise all the concepts you have learnt in this session.
