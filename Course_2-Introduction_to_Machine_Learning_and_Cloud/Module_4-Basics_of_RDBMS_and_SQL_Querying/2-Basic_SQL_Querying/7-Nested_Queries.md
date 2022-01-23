# Nested Queries

In this segment, you will learn about nested queries. In simple terms, a  **nested query is a query within another query**. The inner query is known as the subquery; it performs an operation, the output of which is used by the main query to perform additional operations. Let’s look at some use cases from the code demonstrations in this video.    

**VIDEO**    

Let’s revise some use cases of nested queries.    

![SQL_Nested_Queries_1](https://i.ibb.co/Xy2LD04/SQL-Nested-Queries-1.png)

In the image above, the inner query groups each customer ID and sorts them by the count of each customer in descending order. Finally, it returns the customer ID of the most frequent customer. This value is used to find the customer in the cust_dimen table whose Cust_id is equal to that value.    

![SQL_Nested_Queries_2](https://i.ibb.co/w0srGn5/SQL-Nested-Queries-2.png)

In this image, the inner query returns the Prod_id sorted by their count. Note that their corresponding count has only been shown for your understanding and is not returned as part of the inner query. In the outer query, we find the Product_Category and Product_Sub_Category for the corresponding Prod_id values and limit them to 3.    

With this, we conclude our segment on ‘Nested Queries’. The next segment will be about Views. Take the example that we used in nested queries itself. Suppose the result from the inner query would have to be used on multiple occasions. It would be a cumbersome task to write this code again and again. Instead, would it not be more efficient to store this data in some virtual table, which can be used simply by calling the name of the table? That is what Views are all about. Let’s learn more about them in the next segment.    

#### Nested Queries

Qn: To perform nested queries, which of the following constraints are required?    

- Entity constraints, i.e., the primary key
- Referential constraints, i.e., the foreign key
- Semantic constraints

Ans: A & B

- _The primary key is required to query in the single table, and a nested query may call the same table in it using the primary key._
- _Foreign keys are the keys that interlink the two tables, and nested queries may require referential constraints._
- _Semantic constraints are not an essential component for nested queries._

Qn: You are given two tables named 'Student' and 'Branch'.    

![SQL_Nested_Queries_Student_Table](https://i.ibb.co/KhG0vGC/SQL-Nested-Queries-Student-Table.png)

![SQL_Nested_Queries_Branch_Table](https://i.ibb.co/hCQwHHb/SQL-Nested-Queries-Branch-Table.png)

Based on the structure of the tables and the following query, select the correct options from the following. (Note: Multiple options may be correct.)

    select student_name, year
    from Student
    where branch_id in (
         select branch_id, branch_name
         from Branch
        where branch_name = 'Electrical Engineering'
        );

- It will print the names of the student and their respective year who belong to the Electrical Engineering branch.
- There is an error in the nested part of this query. And hence, it will show an error message.
- There is an error in the starting part of this query. And hence, it will show an error message.
- 'branch_id' is the foreign key in the 'Student' table, which is referring to the 'Branch' table.

Ans: B & D.

- _There should only be the ‘branch_id’ in the nested part of this query because the ‘where’ clause has been applied on the 'branch_id', and the nested query returns two attributes: the ‘branch_id’ and the corresponding ‘branch_name’._
- _You can call the other table in the nested query once you have foreign key relation between the tables. And the ‘branch_id’ is the foreign key of the 'Student' table._
