# SQL Basic Statements and Operators

In the previous segment, you learned about the various DDL and DML statements. In the coming segments, we are going to work on an e-commerce data set and fetch relevant insights using SQL.

In the next video, Vishwa will begin by introducing you to the e-commerce process. You will also learn how to create the ERD for this database using MySQL.

This case study is about 'market_data', where you are given a total of five tables. The description of the tables is as follows:

- **cust_dimen**: This table contains information regarding the customers. It defines their customer ID, customer name, city, state and the nature of their business.

- **shipping_dimen**: This table stores the data of the shipping modes for each order ID placed by the customers. Its attributes are order_ID, ship_mode and ship_date.

- **orders_dimen**: This table contains information about the orders placed by customers. It contains the Order_Number, order_ID, order_date and the order_priority. The order ID denotes the ID of the order placed by the customer. In the same order, the customer may order multiple products, where the ID of each product is given by the ‘Order_Number’.

- **prod_dimen**: This table contains information about the products of a company that are going to be sold to the customers. It includes information about product types and product subcategories.

- **Market_fact_full**: This table contains the details of each order, regarding the customer who placed the order, shipping details and the product details. It contains the foreign keys of all four tables described above.

**Download** the workbench given below, which includes the query for table creation and few comments. As you move along the module, you are expected to use this workbench to practise hands-on.    

**VIDEO**    

#### Keys

Qn: You saw that there is a KEY defined in the tables 'orders_dimen' and 'market_fact_full'. What is the purpose of defining such a KEY in these tables?

- This is just another way to define the primary key in the table.
- This is a way to define foreign keys in the table.
- KEY is a way to define the index for a particular column in the table. Index is an efficient way of querying into the table, as it reduces the time of the query.
- None of the above.

Ans: C. _Using the keyword 'KEY', you allot an index value to a particular column in the table. When you query a certain thing on the table, this keyword reads each row of the table, which is a time-consuming task. Using indexes, it only reads a particular column and gives the answer of that query, which saves time._    

In this video, you learnt how to perform a case study of an e-commerce process. The database was structured, and the data was inserted using various DDL and DML commands that you learnt in the previous segment. Finally, with the help of MySQL, an ERD was constructed depicting the relationship of all the tables within this database as shown below.    

You also learnt about the different data types that can be used in MySQL. To understand further, refer to this  [link](https://www.tutorialspoint.com/mysql/mysql-data-types.htm).    

**Note**: In the video above, Vishwa used the keyword ‘KEY’. This attribute has been used to apply indexing to the tables. By applying indexing, search queries can be executed faster.    

![Market_Star_Schema_Relationship_between_Tables](https://i.ibb.co/sshtfqz/Market-Star-Schema-Relationship-between-Tables.png)

**VIDEO**    

**VIDEO**    

Let us revise the commands that you learned in the earlier videos.    

1. **SELECT**: Used to read the data. The SELECT statement is a limited form of DML statement and it can only access data in the database. It cannot actually manipulate data in the database.

2. **WHERE**: Used as a conditional statement to filter out data

3. **OPERATORS**: Some examples of operators that can be used along with the WHERE clause are ‘OR’, ‘AND’, ‘IN’, ‘BETWEEN’.

![SQL_SELECT_Command_Examples](https://i.ibb.co/kXLhHdh/SQL-SELECT-Command-Example-1.png)

The  **LIKE** operator is a logical operator that checks whether a string contains a specified pattern or not. The following two wildcards are used to specify the pattern:    

1. ‘%’ allows you to check with a string of any length.
2. ‘_’ allows you to check with a single character.

Consider the following examples:

![SQL_SELECT_Command_Example_2](https://i.ibb.co/m9WdSv6/SQL-SELECT-Command-Example-2.png)

**Note**: In the example demonstrated above, the escape operator (‘\’) has been used to search for strings containing the substring ‘_5’. This is because the character ‘_’ is itself an operator. Hence, we need to specify the escape character so that MySQL interprets ‘_’ as a literal character. To understand the LIKE operator in-depth, you can refer to this  [Link](https://www.techonthenet.com/mysql/like.php).    

In the next segment, you will learn about aggregate and other inbuilt functions of SQL.    

#### Basic SQL Querying

Qn: With SQL, how do you select all the records from a table named ‘employees’ where the ‘LastName’ is alphabetically between (and including) ‘Joshi’ and ‘Sharma’?

- `select * from employees where LastName > ‘Joshi’ and LastName < ‘Sharma’;`
- `select * from employees where LastName between ‘Joshi’ and ‘Sharma’;`
- Both of the above
- None of the above

Ans: B. _This query returns employees with Joshi or Sharma as surnames, along with all surnames in between, alphabetically._    

Qn: Which of these queries will return the same output? (Note: More than one option may be correct.)

- `select * from employees where EmpID in (2,3,4, 5);`
- `select * from employees where EmpID between 2 and 5;`
- `select * from employees where EmpID >= 2 and EmpID <= 5;`
- `select * from employees where EmpID > 2 and EmpID < 5;`

Ans: A, B & C. _These queries will return the details of employees with employee IDs 2, 3, 4 and 5._    

Qn: What would be the result of the following statement?    

    select '54' > 'a';

- 0
- 1
- Error
- None of the above

Ans: A. _The string values are converted to integer values before evaluation, as the operator used is ‘>’. The ASCII value of ‘a’ is 97. Therefore, the statement transforms to ‘select 54 > 97’, which is false. False is converted to 0 in the numeric format._    

Qn: What will be the output of the following query?

    select * from employee  where first_name like '%ee%';

- It will display the details of all employees whose names contain ‘ee’.
- It will display the details of all employees whose names both begin and end with ‘e’.
- It will display the details of all employees whose names only begin with ‘ee’.
- It will display the details of all employees whose names only end with ‘ee’.

Ans: A. _The % character can replace any number of preceding and trailing characters._    
