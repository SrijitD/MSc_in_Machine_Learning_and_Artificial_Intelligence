# PageRank Algorithm: Theory

In this segment, you will learn about the famous PageRank algorithm, which that forms the core of the software behind the Google search engine. You will learn how to implement PageRank using a small dataset in Spark. But first, let's watch the upcoming video to understand the workings of this algorithm.

**VIDEO**

Consider the entire internet as a single graph wherein every web page is a node and links connecting the web pages are edges. If there is a hyperlink present on page A that links you to page B, then it means that an edge exists from page A to page B. Here, page A and page B are nodes connected by hyperlinks that form the graph edges.

![Internet as a Graph](https://i.ibb.co/n6G32xx/Internet-as-a-Graph.jpg)

So, PageRank is a method for computing a ranking for every web page based on the graph of the web using the information of hyperlinks. The actual graph of the web has billions of nodes (**pages**) and quadrillions of edges (**links**). Every page has some number of forward-links (**out-edges**) and back-links (**in-edges**).

The intuitive description of PageRank is that a page has a high rank if the **sum of the ranks of its backlinks is high**. This includes both when a page has many backlinks and when a page has a few highly ranked backlinks. The algorithm assigns a page rank score to each of the web pages. The pages with a higher score are ranked higher. Google uses this algorithm in the background to display the search results on its web page.

PageRank is an iterative algorithm, and the scores keep updating after every iteration. We keep iterating over the entire graph until the difference in scores between two consecutive iterations is insignificant. Let's watch the next video to understand the mathematical aspect of this algorithm.

**VIDEO**

In the video above, you were introduced to the example that demonstrated the workings of PageRank. You learnt how to construct the graph and its transition matrix with the given data. The values in the transition matrix are dependent on the forward links from a node.

#### PageRank Algorithm

You are provided with the following node graph.

![Page Rank Algorithm Question](https://i.ibb.co/Cm4z2Ks/Page-Rank-Algorithm-Question-1.jpg)

Qn: How many nodes and links are present in the graph?

- 5 nodes and 4 links

- 4 nodes and 8 links

- 5 nodes and 8 links

- 4 nodes and 4 links

Ans: C. *There are 5 nodes (a, b, c, d, e) and 8 arrows (links) in the framework.*

Qn: Select the correct option.

![Page Rank Algorithm Question](https://i.ibb.co/Rjd8RVm/Page-Rank-Algorithm-Question-2.jpg)

- A

- B

- C

- D

Ans: A.

- *Node a has links to c and e.*
- *Node b has links to d and e.*
- *Node c has a link to a.*
- *Node d has a link to b.*
- *Node e has links to c and d.*

In the next video, you will learn how to calculate the PageRank score for each node/page using the matrix and rank them based on that score.

**VIDEO**

As you saw in the video above, the PageRank score of a node can be calculated using the following formula:

V(i+1)=d∗M∗V(i)+[(1−d)/n]∗I

where,  
**i** represents the previous iteration for which PageRank scores are present,
**d** is the damping factor (generally taken as 0.85),
M is the transition matrix for the network of links,  
V(i) represents the PageRank scores before the ith iteration,  
V(i+1) represents the PageRank scores after the ith iteration,  
I is columnar matrix will all values as 1, and  
n is the total number of nodes.

You can refer to the following link if you are facing problems with [Matrix Multiplication](https://www.mathsisfun.com/algebra/matrix-multiplying.html).

The damping factor is generally kept at 85% because it is assumed that there is about 15% chance that a typical user will not follow any links on the page and instead navigate to a new random URL. Therefore, a self-contribution 0.15/n is added to the score of each page as the randomness may result in the user landing on that page.

#### PageRank Algorithm

Suppose you have to calculate the PageRank for the following graph:

![Page Rank Algorithm Question](https://i.ibb.co/Cm4z2Ks/Page-Rank-Algorithm-Question-1.jpg)

Assuming that the initial rank of each page is 1/5, select the option that has the correct PageRank scores after the first iteration.

- a: 0.1, b: 0.1, c:0.2, d:0.2, e: 0.4

- a: 0.3, b: 0.3, c:0.1, d:0.1, e: 0.2

- a: 0.2, b: 0.2, c:0.2, d:0.2, e: 0.2

- a: 0.1, b: 0.1, c:0.3, d:0.3, e: 0.2

Ans: C. *The first iteration results in equal rank for all the nodes.*

This brings you to the end of the segment. In the next segment, you will learn how to implement the algorithm using RDDs in Apache Spark.
