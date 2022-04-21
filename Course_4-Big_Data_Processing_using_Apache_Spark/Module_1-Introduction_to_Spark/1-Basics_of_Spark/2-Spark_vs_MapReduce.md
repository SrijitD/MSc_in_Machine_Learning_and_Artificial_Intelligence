# Spark vs MapReduce

Before you start learning about Apache Spark, you must first understand the limitations of the MapReduce framework. This will help you realise the need for a new processing framework in a distributed environment. Let's try to recall the workings of the MapReduce framework from the previous course.

**Note**: The choice of marker for the videos in this session might make it difficult for you to follow the topics. We advise you to increase the laptop brightness and watch the videos in the highest possible resolution for better text visibility. We apologise for the inconvenience caused.

**VIDEO**

Apache HDFS is the starting point of the **MapReduce** framework. Data is stored as blocks, which are distributed on different nodes in the cluster. In a MapReduce job, the mapper first reads the data from the HDFS blocks, and the output from the map phase is written onto a temporary in-memory file or disk, based on the requirement. This result is then picked by the reducer, and the final output is written onto the HDFS file. The image given below illustrates the entire flow.

![MapReduce Job](https://i.ibb.co/fN5yPDj/Map-Reduce-Job-1.jpg)

The graphic given above only represents a job that involves one iteration of the map and the reduce phase. However, when you are working with any data, not necessarily big data, there can be multiple steps or iterations involved to obtain the final result. With big data analytics, time complexity plays an important role; hence, you require something faster than Hadoop. Let’s watch the next video to understand this with the help of an example.

**Note**: The choice of marker for the videos in this session might make it difficult for you to follow. We advise you to increase the laptop brightness and watch the videos in the highest possible resolution for better text visibility. We apologise for the inconvenience caused.

**VIDEO**

Generally, the set of functions that we perform on big data are not trivial and require multiple layers of operations. As illustrated by the professor in the word-count example in the video above, you may first want to obtain the count of all the words, and then perform another task based on the results obtained. Since ‘Ram’ is the most popular word in the book, you may want to check its appearance with the other word ‘Sita’. This is called Iterative Processing, as output from the first iteration is used in the subsequent queries, as shown in the image below:

![MapReduce Job](https://i.ibb.co/X4Sq8HS/Map-Reduce-Job-2.jpg)

The MapReduce framework is not suitable for performing iterative jobs. The entire process may involve multiple map tasks and reduce tasks to obtain the final output. The challenge with MapReduce is that the output of the reduce task is always written on the disk.

![MapReduce Job](https://i.ibb.co/XW0RJdw/Map-Reduce-Job-3.jpg)

This leads to a delay in processing, as the map phase in the second iteration reads the data from the disk. There is a latency involved in read/write operations associated with the disk.

The different types of delays that may occur while accessing data from a disk are as follows:

- **Seek time**: This signifies the time required to move the read/write head from its current position to a new position (or track) within a disk.
- **Rotational delay**: This is the time taken by a disk to rotate under the read/write head until it points to the beginning of the data chunk (sector) to be read.
- **Transfer time**: This is the time taken to read/write data from/in a sector or a data chunk.

**Access time** denotes the total time delay or latency between the time when a request to read data is submitted and when the requested data is returned by the disk. The access time of a disk is calculated by adding all the delays, as shown below.

**Access time = Seek time + Rotational delay + Transfer time**

Therefore, Apache Spark serves as a better tool in this scenario. Apache Spark comes with the capability of **in-memory processing**. It can store the data on memory for processing instead of writing the data on disk. This feature of Spark makes it a faster processing framework than the MapReduce framework. In the case of the example mentioned above, the output from each iteration is present in the memory; hence, there no time is spent in disk read/write operations. You can check the speed comparison of memory vs disk [here](https://stackoverflow.com/questions/1371400/how-much-faster-is-the-memory-usually-than-the-disk).

![Spark Job](https://i.ibb.co/6vpDw6H/Spark-Job.jpg)

Now that you have understood why Spark was developed, in the next segment, you will learn about the features of Spark and its various use cases.

#### Spark v/s MapReduce

Qn: Based on the different types of delays in reading/writing the data from disk, which of the following scenarios will be best suited when working with Hadoop MapReduce?

- Reading a file that is split into a small number of blocks.

- Reading a file that is split over a large number of small blocks.

Ans: A. *If the file is split over multiple blocks, the seek time will increase as the head will have to change multiple times to reach the section where the data is stored. Therefore, smaller numbers of blocks are preferred in MapReduce as the time to process the query will be lesser.*

Qn: Determine if the following statement is True or False:  
"Disk-based processing systems are cheaper and hence can be scaled to a greater extent at a lower price when compared to in-memory processing.

- True

- False

Ans: A. *Hard drives are comparatively cheaper than RAMs, i.e. 40GB of a magnetic hard disk drive will be way less expensive than a 40GB RAM. An in-memory processing system to perform efficiently needs a high volume of RAM. Hence, maintaining and scaling of an in-memory processing system is costlier than a disk-based processing system.*

#### Disk vs. In-Memory Processing Systems

QN: A disk offers average seek time of 30ms, average rotational delay as 10ms and a transfer rate of 5MBPS (MegaBytes/Sec). What is the average access time of this disk to read 10KB of data?

- 42ms

- 30ms

- 28ms

- 34ms

Ans: A. *Average access time = average seek time + average rotational delay + transfer time. Here, the transfer time is equal to 10KB/5MBPS = 2ms. Hence, average access time = 30ms + 10ms + 2ms = 42ms*

#### Spark v/s MapReduce

Qn: Which of the following tools will be more suitable to host a ticket booking portal for a travel company website?

- Hadoop MapReduce

- Apache Spark

Ans: B. *Spark provides high-speed processing which helps to update the portal quickly. It is necessary to update the system after each booking to avoid double-booking on a single ticket. Therefore, Spark will be the ideal choice.*

## Additional Readings

- [Disk-based processing](https://www.geeksforgeeks.org/hard-disk-drive-hdd-secondary-memory/)
- [Visualisation of seek time and rotational latency](https://www.youtube.com/watch?v=0MEt7CHeFzE)
- [An explanation on in-memory processing and saving in-memory data to disk](http://data-flair.training/forums/topic/what-is-meant-by-in-memory-processing-in-spark)
- [A Quora answer about the difference in design philosophy between Spark and MapReduce [advanced reading]](https://www.quora.com/What-is-the-difference-in-idea-design-and-code-between-Apache-Spark-and-Apache-Hadoop)
