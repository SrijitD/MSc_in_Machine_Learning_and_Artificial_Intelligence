# Catalyst Optimiser - I

The major difference between RDDs and structured data abstractions is the internal optimiser that is, the catalyst optimiser. Let us take a close look at the workings of the catalyst optimiser in this segment. 

The catalyst optimiser forms the core of SparkSQL. Its main function is to optimise high-level code in such a way that it takes the least amount of time to execute.  
 

This process of optimisation is achieved by following a series of steps. Let us first hear from Sajan how the optimiser functions.

**VIDEO**

**Note**:  At the **3:32**  mark in the video, you can see a physical plan right after the logical plan. The right order should be the logical plan then the optimised logical plan and finally, the physical plan.    

In the video, you learnt about the main function of the catalyst optimiser and the working behind it. You have already worked with RDDs and are well aware how DAGs function. Well, you can compare the Catalyst Optimiser to DAGs in RDDs. When you execute an operation in RDD, the DAG stores the RDD lineage and provides the shortest path for the execution of the operation. Similarly, in this case, the Catalyst Optimiser provides the optimised plan for the execution of data.

Take a look at the image given below to understand the pathway followed for the execution of a query.

![Query ExecutionPathway](https://i.ibb.co/HPvd8Vs/Query-Execution-Pathway.jpg)

The working of the catalyst optimiser is divided into the following parts:

-   Logical plan
    
-   Optimised plan
    
-   Physical plan 
    
-   Cost model
    

Whenever a query is run in Spark, a series of steps take place in the background to ensure that the query is executed in the least possible time. Let us follow a sample query from the beginning of run time to the execution stage to understand the execution of  plans and optimiser functions.

## Query 

Any query that you write gets optimised by the catalyst optimiser in Spark, but you should try to write the most efficient query to reduce the amount of optimisation that Spark needs to perform. You saw earlier that any SQL query is executed in the following order:

1.  from, joins : Check the sanctity of the tables involved
    
2.  where: Filter the data according to the where condition
    
3.  group by: Once the data is ready, group them
    
4.  having: Filter the grouped data according to ‘having’ condition
    
5.  select: Select the filtered and grouped data
    
6.  order by: Arrange the selected data in a certain order
    
7.  limit: Load only the ‘limit’ed number of rows
    

Though the aforementioned order of execution seems logical, there are further optimisations which can be done. Let’s consider a simple query to understand the optimisation done by the catalyst optimiser in Spark.

The query below is used to find the average salary of the tech team. To perform this task the required data is stored in two tables. 

-   p (Salary Data): id, name, salary
    
-   q (employee Data): id, team, designation
    

```sql
SELECT sum (m_sal)
FROM ( 
SELECT p.id, p.salary/12 AS m_sal
FROM p JOIN q
WHERE 
p.id = q.id AND
		q.team == 'Tech' ) tmp
```

**VIDEO**

Now , you will learn how various plans function in a Catalyst Optimiser.

Before you dive into the concept of a logical plan, it is important for you to know about **trees** and their significance in a Catalyst Optimiser. 

-   The structure representing the logical flow of a query is called a tree. 
    
-   It is a fundamental data type of optimiser. 
    
-   Each of the nodes in a tree is an object. 
    

Each node has a type; nodes can be constant values or features of the dataset or even functions. Every node in a tree can have zero or more children. 

Take a look at a basic version of a tree in the diagram below:

![Catalyst Optimiser Tree](https://i.ibb.co/nc79c5H/Catalyst-Optimiser-Tree.jpg)

The tree shown above, has two literal nodes (constants): 5 and 7. The function, in this case, is the addition of children, and the attribute is a feature from the data ‘x’; the attribute comes from the data itself. The class of each node is immutable, but the nodes can be **rearranged**. By rearranging the nodes, the catalyst optimiser finds the optimised plan. The example above was very simple, but the same principles can be applied to a full query. 

## **Logical Plan**

The written code is read and arranged to form a sequence of operations in a bottom-up manner that makes a logical sense of the query. This arrangement may or may not be the most optimised. It is the starting point of the optimisation process.

**VIDEO**

As you saw  in the video above, the logical plan works in a bottom-up fashion. For this particular SQL query, the steps work in the following manner:

-   Two different tables p and q are first scanned
    
-   Join operation is applied to them 
    
-   Then they are filtered based on the ‘Tech’ column
    
-   The project step selects the column after filtering
    
-   The last step calculates the sum of the monthly salaries.
    

The following image shows the sequence of steps involved in a logical plan:

![Steps Logical Plan](https://i.ibb.co/v32qWHx/Steps-Logical-Plan.jpg)

Remember that the manner in which a query is written affects the logical plan. Any  change in the query will lead to a change in the logical plan as well.

## **Optimised Plan**

Optimisation is rule-based. For example, it is usually more efficient to filter data first. By doing this, the data being sent for further operations is reduced and hence the computational resources are saved. A lot of such rules are built in the Spark library to optimise the code.

**VIDEO**

In the previous video, you learnt about the concept of an optimised plan. As the name suggests, an optimised plan provides the best possible solution to execute a query in minimum possible time with maximum efficiency. You have already gone through the steps of a logical plan. An optimised plan is a better version of a logical plan.

Let us take a look at the steps involved in an optimised logical plan:

-   The first step is the same as in the case of a logical plan.
    
-   Next, you will select only the columns that you need to work with rather than applying commands to the entire table.
    
-   Since you need to filter the ‘Tech’ column, the next step will be to apply a filter only to the ‘q’ table.
    
-   Then join the tables, select the required columns and aggregate them. 
    

The following diagram depicts an optimised plan.

![Optimised Logical Plan](https://i.ibb.co/xg1WNBZ/Optimised-Logical-Plan.jpg)

It is now time for you to implement your learnings from this session by solving the following questions.


#### Catalyst optimizer

Qn: Which of the following statements is **incorrect?**

- The optimisation in catalyst is a multistep process.

- The catalyst optimiser forms the core of SparkSQL

- The fundamental data structure of this optimiser is RDDs.

- The first step of the optimisation plan is to write down the query.

Ans: C. *The fundamental data structure of this optimiser is trees.*


#### Logical Plan

Qn: Fill in the blank with the correct option:

Optimisation in a logical plan is _ _ _ _

- Trial and error based

- Rule-based

Ans: B. *Certain rules are built in the catalyst optimiser, following which the written code is optimised.*


#### Trees

Qn: Which of the following statements is true? (Note: Multiple options may be correct.)

- Trees form the fundamental data structure of the catalyst optimiser.

- We cannot restructure a tree.

- A tree has a node object.

- New nodes cannot be formed in a tree.

Ans: A & C. *The fundamental data structure of this optimiser is trees. All trees have node objects.*


Now, you have a good understanding of logical and optimised plans. In the next segment, you will learn about the concept of a physical plan and the cost model.