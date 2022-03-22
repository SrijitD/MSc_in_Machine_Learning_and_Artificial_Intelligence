# Graded Questions - I
#### File System

Qn: Suppose a 7.5-KB file stored on a local file system with a block size of 4 KB and a 192-MB file is stored on a distributed file system with a block size of 128 MB. What would be the total memory acquired by these files on their file systems?

- 8 KB and 256 MB

- 7.5 KB and 192 MB

- 8 KB and 192 MB

- 7.5 KB and 256 MB

Ans: C. *A local file system allocates the full block size on a disk to a file block, even if its actual size is less. However, in the case of a distributed file system, the allocated block size is exactly the same as the amount of data stored in that block. In this case, the local file system will allocate two blocks, each of size 4 KB, whereas the distributed file system will allocate two blocks, one of size 128 MB and the other of size 64 MB.*

#### File Storage

Qn: Let’s say, in the previous question, while storing the 192-MB file in the distributed system (3 machines with each machine having a disk space of 256 MB), you set the replication factor as two. What would be the total memory acquired?

- 256 MB

- 192 MB

- 384 MB 

- Insufficient memory

Ans: C. *Setting the replication factor to two means creating copies of the data in order to avoid any data loss.*

#### Replication Factor

Qn: Consider the probability of failure of a commodity machine to be 3%. For a particular cluster set-up (Assume that you have more than 10 machines), you want to ensure that data is available 99.8% of the time, and there is no data loss. To achieve this, what should the minimum replication factor be?

- 10

- 5

- 3

- 2

Ans: D. *The probability of failure of a commodity machine is 3% or, in other words, the probability of losing the data is 3%. By setting the replication factor to two, the probability of data loss becomes 0.03\*0.03 = 0.0009. In other words, data availability becomes 99.91%.*

#### Architecture of HDFS

Qn: A client wants to read the two blocks a and b from the four available DataNodes, namely, DataNode 1, DataNode 2, DataNode 3 and DataNode 4. The distribution of blocks among the DataNodes is given below. The distances between these DataNodes and the client are 2, 8, 6 and 4, respectively.

‘DataNode 1’ goes down because of some technical issues, and its replication is yet to happen. Select the DataNodes from which the client will read the blocks a and b, respectively.  
  
**Distribution of blocks among the DataNodes**  
DataNode 1: block d, block b and block a  
DataNode 2: block a, block c and block b  
DataNode 3: block b, block d and block c  
DataNode 4: block c, block a and block d

- DataNode 3 and DataNode 2

- DataNode 2 and DataNode 4

- DataNode 4 and DataNode 3

- DataNode 2 and DataNode 3

Ans: B. *The client will choose the nearest DataNode while reading the data. If the nearest DataNode is unavailable, then it selects the next nearest DataNode to read the data. In such a case, DataNode 1, which was the nearest DataNode, went down. So, the client will choose DataNode 4 and DataNode 3, which are the next nearest DataNodes for reading blocks a and b, respectively.*
