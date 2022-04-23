# Summary

Let's now summarise your learnings from this session.

- The catalyst optimiser forms the core of Spark SQL. It provides a pathway for executing a query in the least possible time.

- This optimiser works in four main phases:

    1. Analysis of query

    2. Logical planning

    3. Physical planning

    4. Code generation

- Trees form the fundamental data structure of the catalyst optimiser. The nodes of the tree have three main types:

    1. Literal
    2. Attribute
    3. Function

- A query plan presents the manner or order in which a query is written.

- A logical plan is the sequence of logical operations that are applied in a query.

- An optimised logical plan is created by changing the logical plan such that the transformations in the query take less time to execute.

- A physical plan is the same as a optimised logical plan, except that it (a physical plan) provides low-level details about the steps involved like the algorithms that can be used for various operations.

- A cost model compares various physical plans and selects the most cost-effective one.

- Spark UI enables the visualisation of the catalyst optimiser and also the time involved in executing a query.

Now that you have understood the concept of a catalyst optimiser, test your knowledge by answering the graded questions in the next segment.
