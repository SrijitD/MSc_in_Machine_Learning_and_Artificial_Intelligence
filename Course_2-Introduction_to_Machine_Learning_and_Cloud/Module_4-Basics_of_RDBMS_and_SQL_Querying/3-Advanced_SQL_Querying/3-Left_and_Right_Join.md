# Left and Right Join

In the previous segment, you learned the different set relationships and how JOIN statements can be explained using Venn diagrams. We have already covered two types of JOINS, namely, INNER and OUTER Joins. In this segment, you will learn about LEFT and RIGHT Joins.    

**VIDEO**    

In this video, you learned about the LEFT and RIGHT Joins. Let us revise these concepts and understand them with the following example:

![Order_Customer_Tables_Left_vs_Right_Joins](https://i.ibb.co/y5Mrfpr/Order-Customer-Tables-Left-vs-Right-Joins.png)

- **Left Join**: It preserves the rows of the Left table while attaching the rows of the Right table with matching values in the corresponding column of the Left table.
  
    As you can see, we have preserved all the rows in the ORDER TABLE and attached only those rows from the CUSTOMER TABLE whose CUST_ID values match with those from the CUSTOMER TABLE.

- **Right Join**: It preserves the rows of the Right table, while attaching the rows of the Left table with matching values in the corresponding column of the Right table.
  
    Here, we have preserved all the rows from the CUSTOMER TABLE and attached only those rows from the ORDER TABLE whose CUST_ID values match with those in the ORDER TABLE. As you can see, wherever the data is missing, the table shows a NULL value.      

Let us see how we can write queries on SQL to apply LEFT and RIGHT JOINS.    

**VIDEO**    

In this video, you learnt to write SQL queries for LEFT and RIGHT JOINs. In the next segment, you will learn about a new JOIN known as the CROSS JOIN.

#### Joins

Qn: What will be the output of the following query?

    select id, col_1, col_2
    from table_1 a
    inner join table_2 b
    using(id)
    inner join table_3 c
    using(id_2)

- This query will show an error message.
- This query will perform the inner join of table_1 and table_3 only.
- This query will perform the inner join of table_1 and table_2 on ‘id’ and then perform inner join on ‘id_2’ with table_3.
- This query will perform the inner join of table_2 and table_3 on ‘id_2’ and then perform inner join on ‘id’ with table_1.

Ans: C. _This statement is correct. This command will perform the inner join of table_1 and table_2 on ‘id’ and then perform inner join on ‘id_2’ with table_3._

Qn: You have been given the following two tables, ‘Transactions’ and ‘Company’.

**Transactions**

![Transactions_Table](https://i.ibb.co/rbFCrtV/Transactions-Table.png)

**Company**

![Company_Table](https://i.ibb.co/fFByvxH/Company-Table.png)

If you perform an inner join on these two tables on ‘Company_id’, then how many rows will the resulting table contain?

- 4
- 3
- 2
- 5

Ans: B. _When you perform the inner join on these tables, the three rows of the ‘Transactions’ table, in which the ‘Company_id’ is equal to B, Band E, will appear._

Qn: You have been given the following three tables, ‘Transactions’, ‘Company’ and ‘Headquarter’.

**Transactions**

![Transactions_Table_1](https://i.ibb.co/DpYdk4F/Transactions-Table-1.png)

**Headquarter**

![Headquarter_Table](https://i.ibb.co/dt6sLT0/Headquarter-Table.png)

**Company**

![Company_Table_1](https://i.ibb.co/55KnFKv/Company-Table-1.png)

Suppose you want to get the company name corresponding to the highest amount paid in the ‘Transactions’ table. Which method will be the most efficient to perform such an operation?

- Perform the operation in 3 steps:
  
  - First, get the ‘Company_Headquarter_id’ corresponding to the highest amount from the ‘Transactions’ table.
  - Then, find the ‘Company_id’ from the ‘Headquarter’ table that corresponds to the ‘Company_headquarter_id’ obtained from the above step.
  - Perform the operation on the ‘Company’ table to get the ‘Company_name’.

- Perform the nested query operation among the three tables.

- Inner join the three tables and query for the maximum amount in the inner joined table directly.

Ans: C. _Performing inner joins on the three tables and querying the company name corresponding to the highest amount will be the most efficient to perform such a task._

Qn: Suppose you have been given the following two tables named ‘Customers’ and ‘Orders’:

**Customers**

![Customers_Table](https://i.ibb.co/S5nv5cy/Customers-Table.png)

**Orders**

![Orders_Table](https://i.ibb.co/n8rmx7Q/Orders-Table.png)

These two tables are to be joined on the ‘dept_no’ key.

Match each join type with the resulting table.

![Customers_Orders_Joins_Results](https://i.ibb.co/9tLsDTy/Customers-Orders-Joins-Results.png)

**Select the correct option from below.**

- A-2, B-1, C-4, D-5, E-3
- A-1, B-3, C-2, D-5, E-4
- A-4, B-3, C-1, D-2, E-5
- A-5, B-3, C-1, D-2, E-4

Ans: D. _Understand the Venn diagram and answer this question._    
