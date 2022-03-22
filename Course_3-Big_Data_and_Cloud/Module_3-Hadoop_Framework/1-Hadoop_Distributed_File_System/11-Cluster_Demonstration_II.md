# Cluster Demonstration II

In the earlier segment, we copied three files to the HDFS filesystem. The files will be stored in the DataNodes as blocks, and the NameNode will record the changes made to the filesystem under the **FSImage** and **editlogs**. Let us look at these components of the NameNode and DataNode in subsequent videos.

**VIDEO**

In this video you saw the contents of the NameNode.

![NameNode Contents](https://i.ibb.co/YTJ8zyD/Name-Node-Contents.png)

As shown in the image, the contents of the namenode include edit logs and fsimages. The fsimage gets updated at regular intervals by merging the latest edit logs after a fixed interval of time. If you observe the above image, you can see they are two fsimages where,

- The first fsimage_0000000000000000002.md5 considers only the initial few edits made to the filesystem, i.e. edits_0000000000000000001 - 0000000000000000002
- And this fsimage gets updated to fsimage_0000000000000000004.md5 on further edits to the file system, i.e. edits_0000000000000000003 - 0000000000000000004

The edits_inprogres_0000000000000000005 contains the changes happening to the filesystem at this point. The FSImage is an XML document which contains information about all the edits made to the file system. You need to use **oev** or in other words **offline edits viewer** to convert it to a readable format.

![FS Image](https://i.ibb.co/VH8yVhz/FSI-Image.png)

The copying of the file **LICENSE.txt** is a change made to the filesystem, so this will be reflected in the FSImage as shown. From the above snapshot, you can infer that LICENSE.txt is being copied to the input1 folder and stored as a block in the client machine (ip 192.168.0.101)N with an allocated block_id 1073741826.

In the next video, let’s look at the components of the data node.

**VIDEO**

In earlier theoretical discussions, you learnt that the data stored in HDFS would is stored as blocks of size 64MB or Multiples of 64MB. In the demonstration, you saw how a file is stored as blocks in the DataNode.

![File Stored as Blocks DataNode](https://i.ibb.co/7V1DtqZ/File-Stored-as-Blocks-Data-Node.png)

In the above image, you can find the contents of the DataNode. This particular DataNode has one block with blockid as blk_1073741827 and its corresponding metadata information stored as   blk_1073741827.meta. If you look at the contents of this block, you will find the information from LICENSE.txt which was moved to HDFS earlier.

## Coming up

In the next segment you will learn how different components of HDFS interact with each other.
