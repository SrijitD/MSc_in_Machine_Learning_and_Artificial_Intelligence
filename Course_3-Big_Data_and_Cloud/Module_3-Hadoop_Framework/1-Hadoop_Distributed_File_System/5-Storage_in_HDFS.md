# Storage in HDFS

Let’s now look at how storage happens in HDFS in a bit more detail.

**VIDEO**

**Note**: The term 'cache' used in the video refers to the hardware or software component that is used to store to temporarily store data in a computing environment (referred to as memory). The key objective is to make the process faster by avoiding the process of reading the data into the memory again. You can read more about it [here](https://searchstorage.techtarget.com/definition/cache).

In this video, you understood that the default block size in HDFS is 64MB or multiples of **64MB**. Let’s look at an example to understand the concept of block size.

Consider a file of 900 MB size to be stored on HDFS and assume the default block size to be 128MB. Now this means that HDFS tries to break the file into blocks with each block having a maximum size of 128MB.

Now, this file is divided into a total of 8 blocks, i.e. seven blocks of 128 MB each and one block of 4 MB size. These eight blocks are stored across multiple machines and are managed by the local file systems present in those machines.

![HDFS Block Size](https://i.ibb.co/NrxhW6z/HDFS-Block-Size.png)

Advantages of having a large(128MB) block size;

- **Reduces the numb****er of I/O reads**: The client application can read the entire 128 MB in one go, thereby reducing the number of TCP/IP connections required to read an entire file.
- **Reduces the size of the metadata**: HDFS has to maintain the metadata for each block. If the number of blocks generated from a file is few, then the metadata stored to manage these blocks is also less.
- **Reduces the seek time:** Seek time is the time taken to locate the position on the disk where the data to be read is stored. So when a read request for a particular data is triggered, having a large block size reduces the number of seeks involved in reading the file.  

Limitations of having a large(128 MB) block size;

- **Reduces throughput**: Larger the block size lesser the number of blocks. Hence, the number of parallel tasks reading the blocks also reduces.

## Coming up

In the next segment, you will learn about the core concepts of the Hadoop distributed file system (HDFS), which is its architecture.

#### Disadvantage of Having a Large Block Size

Qn: State whether the following statement is true or false:

"The block size being large limits the total number of processes that can run in parallel on an input file stored in a HDFS."

- True

- False

Ans: A. *The larger the block size, the fewer is the number of blocks. Hence, in the case of a data-parallel algorithm, the total number of processes that can run in parallel will be limited by the total number of blocks.*
