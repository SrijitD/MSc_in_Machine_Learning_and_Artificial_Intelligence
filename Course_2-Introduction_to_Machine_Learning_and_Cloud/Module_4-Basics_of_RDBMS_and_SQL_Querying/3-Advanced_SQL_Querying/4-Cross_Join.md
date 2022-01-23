# Cross Join

In the previous segment, you learned about Left and Right Joins. In this segment, you will learn about Cross Joins. These are used to produce all possible combinations for merging two tables. Let us understand this concept in detail from Vishwa.

Please note: In the next video, the resultant table after cross join, the 'Cust_ID' value should be  **C01** for the 'Med_ID' =  **M3** and 'Quantity' =  **5**, not the value of C02 (Which is the second last row of the resultant table).    

**VIDEO**    

Now, let us revise what you have already learned about Cross Joins. As you can see in the diagram, we can merge two separate sets of m and n elements to form all the possible ways of combining them to form a single table of m*n elements.

In this video, Vishwa has used a practical example of Cross Joins. Consider a company with a database of two tables, one for Medicine and the other for Customers. Suppose they want to find different combinations that can be formed to sell all their medicines to all the customers. As seen in the diagram below, below is a table with all the possible ways to merge the rows of the Customer and Medicine tables.

![Customer_Medicine_Tables_Cross_Join](https://i.ibb.co/r5Dk3gV/Customer-Medicine-Tables-Cross-Join.png)

In the next segment, you will learn how to use Views in Join statements.

#### Joins

Qn: You are given the following two tables named ‘Transactions’ and ‘Company’.

**Transactions**

![Transactions_Table_2](https://i.ibb.co/h8tgdQk/Transactions-Table-2.png)

**Company**

![Company_Table_2](https://i.ibb.co/mGz4pm6/Company-Table-2.png)

If you perform the Right Outer Join on these two tables (the ‘Transactions’ table is on the left and the ‘Company’ table is on the right) on ‘Company_id’, then how many rows will the resulting table contain?

- 4
- 3
- 5
- 6

Ans: D. _When you perform a Right Outer Join on these two tables, you will get all six rows corresponding to all the 'Company_id' of ‘Company’ table because 'Company_id' 'B' occurs twice in the 'Transaction' table._

Qn: If you perform the following query in MySQL workbench on these two tables, then how many rows are there in the resulting table containing at least one NULL value?

    select  * from Transactions right join Company using (Company_id);

- 1
- 2
- 4
- 3

Ans: D. _This is the correct option. Please make the outer joined table using an SQL query and answer the question._

![Transaction_Right_Join_Company](https://i.ibb.co/KKwDVgn/Transaction-Right-Join-Company.png)

#### Cross Joins

Qn: Suppose you are given two tables. Table-1 contains a total of seven rows and table-2 contains a total of four rows. What will be the row count in the cross joined table of table-1 and table-2?

- 28
- 11
- 7

Ans: A. _Cross Join returns the cartesian product of both tables. Thus, the total rows will be 7*4 = 28_    
