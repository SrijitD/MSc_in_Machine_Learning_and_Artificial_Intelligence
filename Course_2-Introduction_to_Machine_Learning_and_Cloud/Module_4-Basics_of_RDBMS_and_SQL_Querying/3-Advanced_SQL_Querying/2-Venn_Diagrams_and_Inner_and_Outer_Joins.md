# Venn Diagrams and Inner and Outer Joins

In this segment, you will become familiar with the concept of Joins. But before that, let’s understand what a Venn diagram is. Venn diagrams help us to diagrammatically show the relationship between two or more sets. For any two given sets A and B, we can define the following relationships using Venn diagrams:

![Set_Theory_Union_Intersection_Minus](https://i.ibb.co/kGDTpMF/Set-Theory-Union-Intersection-Minus.png)

Now, let’s learn about Joins. As the name suggests, the Join keyword is used to join two or more tables by matching the columns of one table to the columns of another table. Now, let’s understand the different types of Joins using Venn diagrams.

**VIDEO**    

In this video, you learned about two types of Joins:

- **Inner Join**: It joins two tables along the rows wherever the matching condition is satisfied.
- **Outer Join**: It joins two tables along all the rows and returns a table containing the rows from both tables. In case the join condition fails, the missing values will be returned as a NULL value in the table.

Let’s look at the following diagram to understand the use case of these joins. In both cases, the ORDER TABLE and the CUSTOMER TABLE have been joined by matching the CUST_ID attributes.

![Order_Customer_Tables_Inner_vs_Outer_Joins](https://i.ibb.co/KVsFs9V/Order-Customer-Tables-Inner-vs-Outer-Joins.png)

As you can see, the Inner Join of these two tables returns the record only for ORD1, as this value appears in both the tables. On the other hand, the Outer Join returns all the rows of both the tables and NULL values wherever the data is missing.

Now that you have understood Joins, let us understand how to work with Inner Joins on SQL.

**VIDEO**    

#### Joins

Qn: Write the SQL query to find the shipment date, mode and profit made for every single order.

Ans: _Suggested Answer_

    select ord_id, ship_date, profit, ship_mode
    from market_fact_full m
    inner join shipping_dimen s
    on m.ship_id  = s.ship_id;

Qn: Which customer ordered the highest number of products? Use the ‘market_fact_full’ and ‘cust_dimen’ tables to answer this question.

- Aaron Bergman
- Aaron Smayling
- Brian Moss
- Aaron Hawkins

Ans: 

In this video, you learnt how to write SQL queries to apply INNER and OUTER joins on two tables. In the next segment, you will learn about the RIGHT and the LEFT joins.

Qn: What should be the keyword to perform the Right Outer Join in the last query?

Ans: _right join_
