# Storing RDDs in Spark

While dealing with Big Data, you are required to handle a large amount of unstructured data, and a lot of pre-processing is required to get the dataset in a workable shape. However, it will not be a good strategy to perform the same series of steps every time you want to use that data. Also, changing the source data is not an ideal solution, as you may have other information in the file that may be helpful in the future.

To overcome this issue, Spark provides **caching** and **persisting** features. Caching and Persisting Spark RDDs are common optimisation techniques, which allows us to reuse the data on Spark much faster, especially in the case of iterative algorithms (machine learning algorithms) and interactive data exploration. You can store the frequently intermediate RDDs/outputs inside the Spark memory for future use, as shown below.

![Caching Persisting](https://i.ibb.co/Jk8ydtk/Caching-Persisting.png)

For example, in the word count scenario, you can store the 'wordcount' RDD in Spark to prevent the execution of all the tasks whenever you want to extract the word count of a single word. By storing the intermediate RDDs or output in the cluster, you can avoid the repeated task of evaluating the same results again and again. This helps in managing the available time and resources efficiently.

You can store the intermediate RDDs using the following commands:

- `cache()`
- `persist()`

Let’s watch the next video to understand these methods using the PageRank algorithm.

**VIDEO**

The **cache()** method is used when you want to store all the data inside the Spark memory. This helps in speeding up your queries, as it prevents Spark from implementing all the steps in the DAG every time. The cached RDD is stored in the Spark storage memory for future use. You can use the following syntax for this command:

```python
# PageRank: links RDD

links = sc.parallelize([('a', 'b'), ('a', 'c'), ('b', 'd'), ('c', 'e'), ('e', 'f'), ('d', 'f'), ('f', 'e'), ('f', 'd'), ('e', 'c'), ('d', 'b'), ('b', 'a'), ('c', 'a')])

# Storing the RDD in memory

links.cache()
The RDD will not be stored inside the memory yet. The cache() method is a transformation and hence, you must call an action to execute the cache() method.

# action on links rdd

links.take(2)
```

You can check the DAG for this Spark job now.

![DAG Spark job](https://i.ibb.co/jMmBSTQ/DAG-Spark-job.jpg)

As you can see in the diagram given above, the green dot in the DAG represents the cached RDD.

However, the in-memory storage is limited, and the different tasks running over the cluster may require separate storage or computing space within the memory. You can resolve this issue using the persist() method.

The **persist()** method allows you to store the intermediate RDDs on the disk and in the in-memory storage. One of the benefits of the persist() method is that you can store RDDs either in the memory or on the disk, or both. There are different storage levels available in the persist( ) method, which are as follows:

- **MEMORY_ONLY**

In this level, RDDs are stored as deserialised Java objects in the memory. If the size of the RDD is more than that of the available memory, then it will cache some partitions and recompute the remaining elements whenever needed.

- **MEMORY_AND_DISK**

In this level, RDDs are stored as deserialised Java objects in the memory and on the disk. If the size of the RDD is greater than that of the available memory, then Spark will store the excess partitions on the disk.

- **MEMORY_ONLY_SER**

In this level, RDDs are stored as serialised Java objects in the memory. Hence, this level requires more space than the MEMORY_ONLY level, as it uses a fast serialiser.

- **MEMORY_AND_DISK_SER**

This level is similar to the MEMORY_ONLY_SER. The only difference is that this level spills the data partitions that do not fit into the memory to the disk, avoiding recomputing each time it is needed.

- **DISK_ONLY**

In this storage level, RDDs are stored only on the disk. The space used for storage is low, the CPU computation time is high, and it makes use of on-disk storage.

Using these methods, you can make your queries faster. However, remember Spider-Man's words, “With great power comes great responsibility”. So, due to the limited resources and multiple tasks, you must not burden the memory with multiple RDDs as it could reduce the Spark execution memory. It is always recommended that you unpersist the stored RDDs once they have served their purpose.

```python
# Unpersist (transformation)

lines.unpersist()

# Action on lines RDD

lines.take(2)
```

If the RDDs are not removed from the memory manually, then Spark flushes out the cached RDDs automatically based on the last instance they were called. This is referred to as Least Recently Used (LRU). Also, RDDs can only be cached in one level. If you try to store an RDD on multiple levels, then Spark will throw an error stating that the storage level of an RDD cannot be changed. You will have to unpersist the RDD from the previous level before you store it in the new level.

It is recommended that you use caching in the following situations:

- When an RDD is used in iterative machine learning applications
- When RDD computation is expensive, caching can help reduce the cost of recovery in case of executor failure.

This brings us to the end of the module. Let’s summarise your learnings from this session in the next segment.

#### RDD Persistence

Qn: Map the correct step against the tasks provided:

|     | Task                                                           |     | Step                |
| --- | -------------------------------------------------------------- | --- | ------------------- |
| 1   | Building multiple models for a short project on a filtered RDD | A   | Caching             |
| 2   | Working with a daily-changing customer database                | B   | Persistence on disk |
| 3   | A large RDD for all the employees to use within the company    | C   | No Persistence      |

- 1-A, 2-B, 3-C

- 1-A, 2-C, 3-B

- 1-C, 2-B, 3-A

- 1-B, 2-C, 3-A

Ans: B. *You should only persist those RDDs that are stable and are used frequently. In the case of ever-changing data, you should never go for RDD persistence. Also, you should cache small-sized RDDs. For large RDDs, it is always advised to use the disk as this would not affect the resource availability for the executors.*
