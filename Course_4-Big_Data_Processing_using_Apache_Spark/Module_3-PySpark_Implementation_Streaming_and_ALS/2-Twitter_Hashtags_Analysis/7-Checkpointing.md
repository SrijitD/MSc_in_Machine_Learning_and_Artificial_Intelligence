# Checkpointing

In the previous segment, you learned that if a worker node fails, then all those tasks that were assigned to it are redirected to a newly created worker by the driver. 

Now, suppose the driver node fails. What will happen then?  Let's find out.

**VIDEO**

Since the master node contains all the metadata of all the slave nodes, i.e., the information of all the tasks that have been assigned to the slave nodes, the whole system will collapse if the driver fails. 

To prevent such a condition, the concept of checkpointing was introduced.   
In checkpointing, all the metadata of the driver node is stored periodically in storage such as HDFS or S3.

![Spark Checkpointing](https://i.ibb.co/MsD2MZq/Spark-Checkpointing.png)

To recover from such a faulty condition, a new driver gets started, fetches all the metadata information from the storage, and resumes the task by assigning the tasks accordingly to the executors. This is called checkpointing.

There are two types of checkpointing:

-   **Metadata checkpointing:** Here, only the metadata of the executors gets stored in the storage system, such as HDFS or S3. This is similar to a bookkeeping system. Metadata contains the information of the tasks that have been assigned to the executors. It does not store the real data in the form of RDDs.
-   **Data checkpointing:** Here, along with the metadata information of the executors, the intermediate RDDs are also stored periodically in the storage system.

#### Checkpointing

Qn: Why does Spark perform checkpointing?

Ans: *One of the fundamental virtues of big data applications is fault tolerance, which refers to the ability to overcome failures quickly. Spark ensures high fault tolerance by storing the lineage on a reliable storage layer such as HDFS. This whole process of storing the lineage on a reliable storage layer is known as checkpointing. In short, checkpointing ensures high fault tolerance in Spark applications.*


Qn: State whether the following statement is true or false:  
Amazon S3 can be used to store the lineage, which records all the states of spark streaming, to ensure checkpointing.  
 
- True

- False

Ans: A. *Amazon S3 offers high availability and guaranteed safety up to 99.99%. Spark makes use of a reliable storage service to ensure complete fault tolerance. Under this argument, the Amazon S3 service can be used to store Spark's lineage.*
