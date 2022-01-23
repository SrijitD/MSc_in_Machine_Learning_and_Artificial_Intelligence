# String and Date-Time Functions and Ordering

In the previous segment, you learnt how to use the GROUP BY and HAVING clauses. In this segment, you will learn how to use the ORDER and LIMIT clauses. You will also gain an understanding of some of the common string and date-time functions that are very useful for analysis.

As the name suggests, the ORDER clause is used to sort the values in the columns in ascending or descending order. The order statement must be followed by ‘asc’ or ‘desc’ in order to specify an ascending order or descending order, respectively. In case nothing is mentioned, the default sort is ascending.    

**VIDEO**    

The general syntax for the grouping and ordering functions that you have learnt so far is as follows:

    SELECT column_names
        FROM table
        WHERE condition
        GROUP BY column_names
        HAVING condition
        ORDER BY column_names

Let’s do a revision of all the use cases.

![SQL_Order_By_Examples](https://i.ibb.co/6yhwFxn/SQL-Order-By-Examples.png)

In the previous segment, you were introduced to inbuilt functions such as UPPER and LOWER and many others. Similarly, there are many other useful String and Date-Time functions that can prove to be useful for extracting relevant insights. Let’s look at some of these functions.

![SQL_String_Functions](https://i.ibb.co/RhK4cTZ/SQL-String-Functions.png)

![SQL_Date-Time_Functions](https://i.ibb.co/F6n0Cyy/SQL-Date-Time-Functions.png)

**VIDEO**    

#### Date-Time function

Qn: Which month and year combination saw the most number of critical orders?

- Month: 2, Year: 2010
- Month: 12, Year: 2009
- Month: 1, Year: 2009
- Month: 3, Year: 2010

Ans: C. _Use the ‘month’ and ‘year’ functions along with the ‘group by’ and ‘order by’ clauses._

    select count(Ord_id) as Order_Count, month(Order_Date) as Order_Month, year(Order_Date) as Order_Year
        from orders_dimen
        where Order_Priority = 'Critical'
        group by Order_Month, Order_Year
        order by Order_Count desc
        limit 2;

There are many such functions that you might find useful. You can refer to the following links to learn more about them:

1. [String functions](https://dev.mysql.com/doc/refman/8.0/en/string-functions.html)  
2. [Date-time functions](https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_day)

Now you will learn about nested queries. As you may already know, a nested loop is a loop within a loop. Similarly, a nested query is a way of writing a query inside another query. In the next segment, we will see how we can implement nested queries.

#### Ordering

Qn: If you do not specify either of the ‘asc’ or ‘desc’ commands after the ‘orderby’ command, what will the output of this query be?

- This will throw an error.
- By default, it will arrange the data in ascending order.
- By default, it will arrange the data in descending order.

Ans: B. _It will, by default, arrange the data in ascending order._    

Qn: Suppose you are given the following table named 'Student'.

![SQL_Ordering_Question_Sample](https://i.ibb.co/9hm5n86/SQL-Ordering-Question-Sample.png)

Select the right query to arrange the students in increasing order of their ‘year’, and within the year, they should be arranged in the increasing order of their grades.

- `SELECT * FROM Student ORDER BY year, grades;`
- `SELECT * FROM Student ORDER BY grades, year;`
- `SELECT * FROM Student ORDER BY year ORDER BY grades;`
- `SELECT * FROM Student ORDER BY grades ORDER BY year;`

Ans: A. _This is the right way to query to sort the year as well as grades._    

#### SQL Querying

Qn: List the keywords below in order of their occurrence in a query:

1. groupby
2. orderby
3. select
4. where
5. from
6. limit
7. having
- 3 - 5 - 4 - 1 - 2 - 7 - 6
- 3 - 5 - 1 - 4 - 2 - 6 - 7
- 3 - 5 - 4 - 1 - 7 - 2 - 6
- 5 - 4 - 1 - 7 - 3 - 2 - 6

Ans: C. _This is the correct order in which clauses are written in a query._    

#### Date and Time functions

Qn: Suppose you are given the following table named 'details':

![SQL_DateTime_Question_Sample](https://i.ibb.co/LrT7NPH/SQL-Date-Time-Question-Sample.png)

What are the right commands to extract the day and year as ‘birth_day’ and ‘birth_year’, respectively, from the ‘birth_time’ in the table above for ‘Prateek’? (Note: Multiple options may be correct.)

- A
  
    SELECT name, EXTRACT(DAY FROM birth_time) AS birth_day 
    from details
    Where name = ‘Prateek’

- B
  
    SELECT name, DAY(birth_time) AS birth_day 
    from details
    Where name = ‘Prateek’

- C
  
    SELECT name, EXTRACT(YEAR FROM birth_time) AS birth_year 
    from details
    Where name = ‘Prateek’

- D
  
    SELECT name, YEAR(birth_time) AS birth_year 
    from details
    Where name = ‘Prateek’

Ans: All of the above. _You can refer to this  [link](https://www.geeksforgeeks.org/sql-date-functions/)  for a better understanding of date and time functions._    
