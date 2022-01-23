# Module Summary

Congratulations on completing this module on SQL. We hope that you enjoyed this journey. Now, we will conclude this segment by summarizing all the concepts covered in this module so that in case you feel that you are doubtful with respect to any particular concept, you can go back to that segment and watch the relevant videos.

**VIDEO**

In the first session, you were introduced to the concept of RDBMS and its different features. RDBMS is a database management system that stores data in the form of tables, and each table is related to the others in the database. Further, RDBMS follows the relational model.

The features of RDBMS are as follows:

- **Tabular Structure**: Tables in the database are represented by their entities; within a table, you can have a Primary Key/Composite Primary Key and Foreign Keys.

- **Normalization**:
  
  - Data redundancy can pose several challenges, which are as follows:

    - Insertion anomaly
    - Updation anomaly
    - Deletion anomaly
  
  - To avoid data redundancy, we converted the tables into different levels of normalization, which are as follows:

    - First normal form (1NF)
    - Second normal form (2NF)
    - Third normal form (3NF)
  
  - Through normalization, you can avoid data duplicacy. Normalization ensures data integrity; because of this, data updation becomes easier, and the database becomes much more organized.  

- **ACID Model**: According to this model, RDBMS must exhibit the following properties:
  
  - A: Atomicity
  - C: Consistency
  - I: Isolation
  - D: Durability

RDBMS follows the relational model - you learnt about the following features of this model:

- **Data structure**: We define the structure of a relation using the following:
  - Relation heading
  - Relation body
- **Data integrity**: This includes three components:
  - Attribute integrity
  - Entity integrity
  - Referential integrity
- **Data manipulation**

You learnt about entity relationship diagrams (ERD) that help us visualize all the tables and represent how all the entities interact with each other.

In the second session, you learnt to work with Structured Query Language (SQL). Using SQL, you can create, manipulate, delete and share data. Being language agnostic, SQL can be easily learnt and understood. It is also supported by all the modern RDBMS systems such as Oracle, MySQL and SQL Server.

RDBMS applications are commonly used in the following:

- Banking sector
- E-commerce websites
- Social networking sites

SQL commands are mainly divided into two subcategories:

- **Data definition language (DDL)**: DDL queries include CREATE, ALTER, DROP etc.

- **Data manipulation language (DML)**: DML queries include INSERT, UPDATE, DELETE etc.

You looked at a case study in which we learnt how to work with SQL operators and inbuilt functions. You also learnt how to create an ERD using MySQL.

All SQL queries comprise one or more of the below keywords:

- SELECT
- FROM
- WHERE
- GROUP BY
- HAVING
- ORDER BY

You also learnt about aggregation functions, some of which are as follows:

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

SQL has several [String](https://dev.mysql.com/doc/refman/8.0/en/string-functions.html) and [Datetime](https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_day) inbuilt functions.

Common string functions are:

- LOWER()
- UPPER()
- SUBSTRING()
- SUBSTRING_INDEX()
- LENGTH()

Common datetime functions are:

- CURTIME()
- MONTH()
- YEAR()
- DAYNAME()

You also learnt about nested queries and views. A nested query is a query within another query. A view is a virtual table created as a result of operations on single or multiple tables.

In the third session, you learnt about the different types of Joins, which are as follows:

- Inner Join
- Outer Join
- Left Join
- Right Join
- Cross Join

Finally, you learnt about the following SQL-based set operations:

- UNION
- UNION ALL
- INTERSECT
