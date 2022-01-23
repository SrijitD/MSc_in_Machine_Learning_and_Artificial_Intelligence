# Summary

Let’s summarise your learnings from this session.

SQL stands for Structured Query Language. In some applications, it is also referred to as DSL, or Domain Specific Language. SQL is used for managing and manipulating data held in a relational database management system (RDBMS).

SQL helps you:

- Create data
- Manipulate data
- Delete data
- Share data

Features of SQL:

- SQL is language-agnostic, which makes it a language that can be easily learnt and comprehended.
- It is also supported by all the modern database systems such as Oracle, MySQL, SQL Server, and so on.    
- The SQL syntax can be used for Hive, which is used for big data processing

Among the existing RDBMS systems, you learned how to work with MySQL. RDBMS commonly finds application in the following:

- The banking sector
- E-commerce websites
- Social networking sites

SQL commands are mainly divided into two subcategories:

- DDL (Data Definition Language)
- DML (Data Manipulation Language)

![DDL_and_DML](https://i.ibb.co/c24Gh4y/DDL-and-DML.png)

Following this, we worked on a case study where we learnt how to work with SQL operators and inbuilt functions. You also learnt how to create an ERD on MySQL. Now, let’s look at some common syntaxes:

- SELECT: Used to read the data
- COUNT: Used to count the data
- WHERE: Used as a conditional statement to filter out data
- OPERATORS: Some examples of operators that can be used along with the WHERE clause are OR, AND, IN, BETWEEN.
- LIKE: Used to search for a specific pattern
- GROUP BY: Groups data that have the same values based on the specified condition
- HAVING: Used as a WHERE clause in conjunction with grouping statements
- ORDER: Used to sort the data

You also learnt about aggregation functions as shown below:

- COUNT(): Counts the total number of records specified by the given condition
- SUM(): Returns the sum of all the non-NULL values
- AVG(): Returns the average of all the non-NULL values
- MIN(): Returns the minimum of the specified values (NULL is not included)
- MAX(): Returns the maximum of the specified values (NULL is not included)

SQL has several [String](https://dev.mysql.com/doc/refman/8.0/en/string-functions.html) and [Date-time](https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_day) inbuilt functions.

Common string functions are LOWER, UPPER, SUBSTRING, SUBSTRING_INDEX, LENGTH.

Common date-time functions are CURTIME, MONTH, YEAR, DAYNAME.

After this, you learnt about nested queries. A nested query is a query within another query. You also learnt about views. A view is a virtual table created as a result of operations on a single or multiple tables. A view can be treated like any other table and can be further updated or deleted. One major advantage of creating a view is the data security. They can be used to extract the specific data from the database while keeping the main table hidden from the restricted user. As a result, the restricted user is only permitted to work with the view.

In the next session, you will learn about joins and the different types of joins. You will also work with joins in conjunction with views.
