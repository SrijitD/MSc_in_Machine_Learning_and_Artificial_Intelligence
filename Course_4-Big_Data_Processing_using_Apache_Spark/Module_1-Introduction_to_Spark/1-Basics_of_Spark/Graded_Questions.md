# Graded Questions

Based on the learning from the session, answer the following questions.

#### Spark vs MapReduce

Qn: In which of the following case(s) will MapReduce be more suitable than the Spark framework?

- Running ML algorithms

- Generating daily summary reports

- Data exploration

Ans: B. *MapReduce will be a better option here. The reports are generated at the end of the day using a predefined process. You don’t require any human intervention in between.*

#### Spark RDDs

Qn: The term "Resilience" in RDDs refers to (choose the most appropriate answer):

- The ability to apply operations on RDDs.

- The ability to recover lost RDD.

- The ability to distribute computing in memory.

Ans: B. *The word "resilience" refers to this property.*

#### Master-Slave Architecture

Map the features with the correct elements in Apache Spark:

| Feature                                                 | Element            |
| ------------------------------------------------------- | ------------------ |
| 1. To control the execution of Spark application        | I. Driver node     |
| 2. To execute tasks associated with a Spark application | II. Driver program |
| 3. To monitor the executors of a Spark application      | III. Worker node   |
|                                                         | IV. Executor       |

- 1 - II, 2 - III, 3 - I

- 1 - I, 2 - IV, 3 - II

- 1 - II, 2 - IV, 3 - I

- 1 - II, 2 - IV, 3 - III

Ans: D.

1. The driver program is the controlling unit for any Spark Application.
2. Executors are responsible for executing tasks in the Spark environment.
3. Since the executors are launched inside a worker node, it is their responsibility to monitor the executors and report their status to the driver program.

#### Partitions in Spark

Qn: You have deployed Spark in a 3 node cluster in which each machine has 4 cores. Assuming that all the available cores can be used by the executors to run a task, what is the ideal number of partitions to split an RDD such that maximum parallelism can be achieved in Spark? Maximum parallelism means executing independent tasks at a given point of time.

- 4

- 6

- 8

- 12

Ans: C. *The maximum parallelism can be achieved by splitting the RDD into the maximum number of executors that can be hosted over the cluster. Since the cluster has two worker nodes, we can split the RDD into 8 partitions such that there is a one to one mapping with each executor.*
