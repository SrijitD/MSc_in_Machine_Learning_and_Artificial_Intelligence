# Creating RDDs

In this segment, you will start programming in Spark. You are already familiar with the concept of RDDs. You will now learn how to create an RDD using the PySpark shell. There are two methods of creating RDDs, which are as follows:

1. Parallelising an existing collection of data in the driver program, and
2. Loading the dataset stored in an external storage system, such as a shared file system, HDFS, HBase and S3.

Let's watch the next video to learn about these methods in detail.

**VIDEO**

In the video above, you learnt how the `parallelize()` method can be used to create RDDs. When you have to define the data in the Spark shell, or if it is already present in the Spark environment (driver program), you can use the `parallelize()` method, as shown below.

```python
# Creating RDD using parallelize() method
rdd1 = sc.parallelize(range(6), 2)
```

This will distribute the data on executors in the form of partitions of RDDs. You can define the number of partitions while creating the RDD, or Spark will do it for you.  Once the RDD is created, you can check the number of partitions using the `getNumPartitions()` command, as shown below.

```python
# Checking the number of partitions in an RDD
rdd1.getNumPartitions()
```

The `parallelize()` function only works well you want to create an RDD from the data already present in the Spark environment. However, you may also have to load the data from an external file storage system. In fact, most of the time, you will be working with data huge in size stored in distributed file systems such as HDFS and S3. In this case, you can use the `textFile()` method, as shown below.

```python
# Creating an RDD using the textFile() method
rdd = sc.textFile("file_path", number_of_partitions)

# In case of any error, make sure you check the path of the file first.
# Loading NOTICE file
rdd = sc.textFile("NOTICE", 2)
```

Due to the large size of big data, datasets are mostly present in external storage systems instead of driver memory. Hence, the `textFile()` method is used more often than the `parallelize()`method. Now, let's watch the next video to learn about the elements stored in each partition.

**VIDEO**

The `saveAsTextFile()` command is quite helpful in understanding how Spark distributes the file into different partitions. It stores the data from each partition as a separate file in the specified directory of the disk.

```python
# Saving the RDD in the disk
rdd1.saveAsTextFile()
```

Note that RDDs are stored inside the executor memory, which cannot be accessed by the user. You have to load the data into the Driver program or save it on the disk to view the elements stored in the Executor memory. Therefore, we used the `saveAsTextFile()` method in the video above to visualise how RDDs store elements inside them.

#### Creating RDDs

Qn: Suppose you have a data set loaded in the Spark environment in the form of an array. Which method would be the most suitable to convert it into an RDD?

- textFile() method

- parallelize() method

Ans: B. *Since the data is already present in the Spark environment, the parallelize method is the most suitable one.*

Qn: Can data in RDD be changed once RDD is created?

- Yes

- No

Ans: B. *Data in RDD cannot be changed once RDD is created i.e., they are immutable.*

Now that you know how to create RDDs, in the next segment, you will learn about the different types of operations that can be performed on RDDs.
