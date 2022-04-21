# Graded Questions

Based on your learnings from the session, solve the questions provided below. Kindly note that these questions are **graded.**


#### RDDs

Qn: Suppose you are working with an RDD ‘**rdd_x**’ which stores all the elements as tuples with keys as string and values as integers. You would want to create a new RDD from ‘**rdd_x**’ which has all the integer values in it. Which transformation can be useful in this scenario?

- join()

- map()

- filter()

- reduce()

Ans: B. *map() is a very useful transformation that converts base RDDs to paired RDDs and vice versa. This will be helpful to create the RDD with integer elements.*


Qn: Select the correct statement from the following options.

- The RDDs are loaded as soon as a transformation is executed in Spark.

- The RDDs are loaded in the executor memory as soon as the parallelize() command is executed.

- The RDDs are lazily loaded into the Executor memory.

- The RDDs are loaded in the driver program as soon as the textFile() command is executed.

Ans: C. *Spark follows lazy evaluation even while loading data in RDDs. This can be seen through the DAG in Spark UI. This helps Spark to optimize the resources as memory will be occupied only when required.*


#### Caching

Qn: The main objective of caching RDDs in memory or disk is:

- To utilise all the free nodes in the Spark cluster. 

- To prevent the overhead of reevaluating frequently used RDDs.

- To store a parent RDD (uncleaned) in the memory for future use.

- All of the above

Ans: B. *This is the actual reason why caching is used. It eliminates redundant steps in the process by storing a frequently used RDD.*


## PageRank Algorithm

Using the code implemented in the previous segments, calculate the PageRank score for the graph given below and answer the following questions.

![PageRank Algorithm Question](https://i.ibb.co/FbQJs97/Page-Rank-Algorithm.jpg)


#### PageRank

Qn: Based on the code for the PageRank algorithm, which node has the highest rank after the first iteration among the provided options?

- A

- B

- D

- E

Ans: A. *A is the highest scored node among the provided options. The question states to select from the given options only.*


Qn: Based on the code for the PageRank algorithm, which page has the highest rank after the variation in the scores is negligible?

- A

- F

- B

- E

Ans: A. *Use the code provided in the previous segments. A will have the highest score among all the nodes after 10 iterations.*


```python
# Creating the links RDD
links = sc.parallelize([('a', 'b'), ('a', 'c'), ('a', 'e'), ('c', 'f'), ('d', 'e'), ('e', 'f'), ('e', 'd'), ('f', 'a')])
# Grouping similar keys together for optimisation of queries
links = links.groupByKey()
# Assigning the initial rank for each page (Every page is given a rank of 1)
ranks = links.distinct().map(lambda x: (x[0], 1))

# Function that divides the rank with the number of outlinks from the node
def nodecontributions(nodes,rank):
	number = len(nodes)
	for node in nodes:
		yield(node,rank*1.0/number)

# Code to run three iterations
for i in range(20):
       contributions = links.join(ranks).flatMap(lambda x: nodecontributions(x[1][0], x[1][1]))
       ranks = contributions.reduceByKey(lambda x, y: x+y).mapValues(lambda x: 0.85 * x + 0.15)

# Printing the results
ranks.collect()

# Output
# [('b', 0.39318615627128567), ('e', 0.8161454913426444), ('c', 0.39318615627128567), ('a', 0.8576007980885288), ('f', 0.831574315795278), ('d', 0.49715715421338447)]
```