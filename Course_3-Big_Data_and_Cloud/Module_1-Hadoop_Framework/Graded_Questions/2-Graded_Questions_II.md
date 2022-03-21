# Graded Questions - II

Question 1/2

Mandatory

#### Map Phase

You have a huge data set containing 120 million rows and three columns. You want to find the average of each column. Since the data set is large, you decide to set up a Hadoop cluster and write a MapReduce program to process this data.   
For this question, let's take only six rows out of the total 120 million.   
 

![Map Phase Question](https://i.ibb.co/RhXWKFK/Map-Phase-Question.png)

The data set is then divided into two blocks, where each block contains three rows. Block 1 has the first three rows and block 2 contains the last three rows.   
Suppose the 'key' is the column ID and the 'value' is a tuple. The first entry of the tuple is the sum of the values in the column, and the second entry is the number of values in the column (for each block). This key-value pair is being fed into the reduce task. What will the input to the reducer task be?   
  
 

![Map Phase Answers](https://i.ibb.co/RzJbGF0/Map-Phase-Answers.png)

- A

- B

- C

- D

Ans: B. *Consider Column 1 of Block 1. The entries in that column are 3, 6 and 11. So, their sum will be 20. Also, there are three entries in the column. So, the second entry of the tuple should be 3.*

#### Reduce Phase

After the map phase, the key-value pairs are passed through the reducer phase. This phase will take a key and add all the values corresponding to it. To calculate the average, it will divide the sum of the values by the total number of records in the table. Which of the following represents the correct key-value pair that will be obtained just before performing the average?   
For your reference, following is the data set that you used during the map phase:

![Map Phase Question](https://i.ibb.co/RhXWKFK/Map-Phase-Question.png)

![Reduce Phase](https://i.ibb.co/3TKRZXT/Reduce-Phase.png)

- A

- B

- C

- D

Ans: B. *The reduce phase will add the values of, say, the Column 1 entries of all the blocks. So, for Column 1, the reduce phase will give you 20 + 28 = 48. This will be the same for the other column IDs as well.*


#### YARN

Qn: For the execution of a task, which of these events occurs before the node manager launches containers to host the data processing tasks? Note: You can read more about YARN [here](https://hadoop.apache.org/docs/current/hadoop-yarn/hadoop-yarn-site/YARN.html).

- The containers in the node manager execute the assigned tasks. 

- The application master releases its container.

- The output produced by each task is assembled, and the final job run status is reported to the client.

- The resource manager launches a container to host the application master.

Ans: D. *Before the node manager launches the containers for hosting the data processing tasks, the resource manager launches a container that hosts the application master. The application master negotiates with the resource manager for more containers required for hosting the tasks for processing data. Once the resource manager grants the address of the node managers, the application master requests the node managers for hosting the data processing tasks.*