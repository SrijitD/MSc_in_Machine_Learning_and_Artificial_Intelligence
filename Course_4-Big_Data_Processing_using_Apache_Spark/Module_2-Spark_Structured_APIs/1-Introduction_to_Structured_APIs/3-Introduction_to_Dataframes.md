# Introduction to Dataframes

Structured APIs have a lot of advantages over RDDs. That is why structured APIs have taken an important place in the industry recently. Let us learn about the structured APIs one by one starting with Dataframes.

**VIDEO**

**DataFrames** in Spark is very similar to dataframes in Pandas, except it also follows lazy evaluation like RDDs. The data is available in the form of columns and rows, and each column in a dataframe has a specific data type associated with it. This structure of the columns with specific data types is called the schema of a dataframe. Once the schema of a dataframe is established, new data can also be read into the same schema.

## Benefits of DataFrames

- **High-level API**: You are familiar with the code written using the dataFrame abstraction as it is structured very similar to dataframes in pandas. The code is highly readable and easy to write. Therefore, it becomes accessible to a lot of people other than specialists like data engineers or data scientists.

- **Catalyst optimiser**: DataFrames have the ability to internally optimise the code. These optimisations are done with the help of Catalyst Optimiser. It has the ability to rearrange the code to make it run faster without any difference in output.  

- **Memory management:** You have seen in the previous module that the transformations on RDDs involved are performed in the executors. These transformations take place in the heap memory of the executors which are essentially JVMs. On the other hand, DataFrames make use of the off-heap memory in addition to the heap memory on JVMs. Hence, managing both heap and off-heap memory requires custom memory management. As you go through the next couple of points, you’ll understand why utilising the off-heap memory is beneficial.  

- **Garbage collection:** In languages like C/C++ the programmer is responsible for the creation and deletion of objects, although objects that are not useful are usually neglected. Such objects aren't removed and remain in memory. Over time these objects keep on collecting in the memory, and sooner or later, the memory might get full of such garbage objects, resulting in out of memory (OOM) errors. To deal with this, Java has a garbage collection program. It collects all such objects which are not in use and clears them out of the memory. One can say the main objective of garbage collection (GC) is to free the heap memory.
  
  As the executor works on the job tasks, at some point due to the increase in the garbage objects, it has to run a ‘full garbage collection’ process. During this, the machine slows down, as it has to scan the complete heap memory. So the larger the JVM memory the more time the machine will take to do this. Note that Garbage collection runs only on JVM memory which is heap memory.

- **Off heap memory storage**: An elegant solution to the above problem is to store data off JVM heap, but still in the RAM and not on the disc. With this method, one can now allocate a large amount of memory off-heap without GC slowing down the machine. If the data is being stored off-heap, the JVM memory can be made smaller and the GC process will not affect performance as much as GC runs only on the JVM memory which is heap memory. Another advantage of Off-heap memory is that the storage space required is much smaller compared with that for JVM memory, as Java objects in JVM require more storage space.

#### RDDs vs Dataframes

Qn: What are the benefits of using dataframes over RDDs?

- API in multiple languages

- Data type safety is offered in dataframes

- Dataframes optimizes execution plan

- Dataframe API can infer the schema of the data

Ans: B, C & D.

- *Dataframes are column-wise data structures. Each column has a specific data type.*

- *One of the drawbacks of RDDs is the code needs to be optimised by the user. But in dataframes, there is a built-in code optimiser.*

- *A dataframe API can infer the schema. Inferring the schema is a very crucial step for optimization.*

#### Dataframes

Qn: Which of the following statements about Dataframes in Spark is/are true?

- It is an immutable distributed collection of data.

- A Dataframe is a collection of data organized into named columns.

- Dataframe API can only use the memory in JVM.

Ans: A & B.

- *Dataframes are also immutable. Data frames are developed on top of RDDs so they inherit some of the basic properties of RDDs i.e Immutability, fault tolerance, distributed etc.*

- *A Data Frame is a collection of data organized into named columns like a table in an RDBMS. It comes in handy while performing SQL queries.*

#### Structured APIs

Qn: GC in is responsible for cleaning both, off-heap and on-heap memory.

Please choose whether the above statement is True or False.

- True

- False

Ans: B. *GC is only limited to on heap data. The main reason for the use of off-heap memory is to avoid GC.*

Even though there are many benefits of dataFrames, they lack some features of RDDs. For instance, compile-time data safety. With this in mind, a new API was developed to combine the features of RDDs and dataFrames. Let's learn about it in the next segment.

## Additional Reading

- [Difference between heap and off-heap](https://stackoverflow.com/questions/6091615/difference-between-on-heap-and-off-heap)
- [Garbage collection](https://www.geeksforgeeks.org/garbage-collection-java/)
- [Spark memory management](https://databricks.com/session/deep-dive-apache-spark-memory-management)
