# PageRank Algorithm: Implementation

By now, you must be well-aware of the PageRank algorithm and how it calculates the score for each web page. However, the implementation of the algorithm is a big challenge. In reality, there are millions and billions of web pages and running iterative jobs over them is not an easy task. This is where Apache Spark proves to be quite helpful.

Now that you are well-equipped with Spark and PageRank, let's watch the next video to learn about the implementation of PageRank in Spark using RDDs.

**VIDEO**

In order to demonstrate the PageRank algorithm, the professor has created the 'links' RDD, which represents the network of nodes, as shown below.

```python
# Creating the links RDD
links = sc.parallelize([('a', 'b'), ('a', 'c'), ('b', 'd'), ('c', 'e'), ('e', 'f'), ('d', 'f'), ('f', 'e'), ('f', 'd'), ('e', 'c'), ('d', 'b'), ('b', 'a'), ('c', 'a')])
links = links.groupByKey()
ranks = links.distinct().map(lambda x: (x[0],1)) 
```

There are a total of six nodes in the structure, wherein each node has two forward links and two backlinks, as shown below.

![Internet as a Graph](https://i.ibb.co/n6G32xx/Internet-as-a-Graph.jpg)

#### PageRank Algorithm

Qn: Based on the graph discussed in the segment, what will be the intuitive PageRank score for each webpage? Assume the initial ranks for each webpage is 1/6.

- 1/12 for three nodes and 1/3 for the remaining three nodes.

- 1/6 fo each node

- 1/12 for each node

- Can't be calculated, more information required

Ans: B. *Each webpage has 2 outgoing links and 2 incoming links. Each page must be equally ranked.*

After defining the 'links' RDD, the professor optimised the entire execution in Spark. Similar keys were grouped into a single partition to restrict the number of shuffles.

```python
# Grouping similar keys together for optimisation of queries
links = links.groupByKey()
```

Now, you must provide a starting rank for each page in order to run the first iteration. Generally, the process is started with the assumption that each page is of equal importance and hence is provided a value of 1.

```python
# Assigning the initial rank for each page (Every page is given a rank of 1)
ranks = links.distinct().map(lambda x: (x[0], 1))
# You can visualise the above rdd using the collect() function before proceeding ahead.
```

(**Note**: In the previous segment, every page was assigned the value of 1/n in the beginning. However, the code given above has provided the initial ranks as 1. Therefore, the calculations will be adjusted accordingly in the results after the implementation. The score of the highest-ranked page will converge towards 1, instead of 1/6.)

The next step of the process is to create the transition matrix. Let's watch the next video to learn how to create this matrix.

**VIDEO**

The transition matrix has been defined using the following function:

```python
# Function that divides the rank with the number of outlinks from the node
def nodecontributions(nodes,rank):
 number = len(nodes)
 for node in nodes:
  yield(node,rank*1.0/number)
```

**Important Note: [02:35]**

In the code given above, you can observe that 'rank' has been multiplied by **1.0** to convert the result into the float type. This is essential as the function will provide an approximate integer value, for example, 0.5 will be returned as 1, which will affect the calculation performed in each iteration. So, remember to correct this while running the algorithm at your end.

As you can see, the function given above returns the value of the contribution that a node has in each outlink. If the outlink between two nodes is not present (for example, a to f), then no value will be generated for the pair.

Once the transition matrix is ready, the next step is to run iterations based on the formula that we studied in the previous segment. The iterations will be performed until the rank for each node is stabilised. Let's watch the next video to learn how this can be executed in Spark.

**VIDEO**

The following code helps you run multiple iterations to evaluate the PageRank.

```python
# Code to run three iterations
for i in range(3):
       contributions = links.join(ranks).flatMap(lambda x: nodecontributions(x[1][0], x[1][1]))
       ranks = contributions.reduceByKey(lambda x, y: x+y).mapValues(lambda x: 0.85 * x + 0.15)

# Printing the results
ranks.collect()
```

The function given above calculates the PageRank values based on the number of iterations provided by the user. As you saw in the video, the values start to converge as the number of iterations is increased. Here, you must understand that iterations will keep on adding after you have implemented the algorithm. For example, if you run the iterative loop three times first, and then run the loop again for three times, it means that you have calculated six iterations in total.

The amount of variation between the values of the fifteenth (actually, not fifteenth) and the tenth (actually, not tenth) iteration is quite lower than the variation between the third and the tenth((actually, not tenth) iteration. You can also notice that the ranks converge to the value 1 as all the nodes have the same number of outlinks and backlinks associated with them. Therefore, all the pages are ranked equally.

The actual implementation of the PageRank algorithm is performed on a very large scale as compared with this demonstration. Also, Google refreshes the ranks of the web pages after every click. Therefore, it is extremely important that the implementation of the algorithm is as optimised as possible. You are already familiar with one of the techniques used for optimising the Spark code, i.e., partitioning. In the next segment, you will learn about another technique.
