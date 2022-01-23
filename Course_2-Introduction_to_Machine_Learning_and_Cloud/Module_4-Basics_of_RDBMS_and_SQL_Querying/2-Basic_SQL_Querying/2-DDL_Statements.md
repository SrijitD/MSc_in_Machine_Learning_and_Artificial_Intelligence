# DDL Statements

Now that you have understood that RDBMS plays a vital role in our day-to-day lives, let’s learn SQL, starting with some basic syntaxes. In this segment, you will learn about DDL statements. Before we move onto learning these syntaxes, let us first understand the two basic subcategories of SQL commands.   

**VIDEO**   

#### DDL Statements

Consider the case of your company. Each company stores the data of its employees, and if you want to uniquely identify a particular employee, then there has to be a primary key. Let’s say ‘employee_id’ is the primary key in this case.  
Suppose one of the columns, named ‘year_of_joining’, in this table has data corresponding to each of the employees.  
At a particular point in time, the primary key needs to be changed. And the company wants to make the ‘composite primary key’, which comprises ‘employee_id’ and ‘year_of_joining’.

Qn:  Here, you can see that the employee table is as it is, but you are changing the primary key only. Now, based on your understanding of DDL statements, state whether changing the primary key is a DDL statement or not.

- Yes, it is a DDL statement
- No, it is not a DDL statement

Ans: Yes, _By changing the primary key, you are changing the schema of the table. Hence, it is a DDL statement._   

Qn: Suppose there is one of the columns named ‘year_of_joining’ in this table that corresponds to each of the employees.  
Now, suppose you want to delete all the data of the employees who joined in the year ‘2008’. Select the correct option from below:

- It is a DDL statement.
- It is not a DDL statement.
- This process is changing the definition of the table because it is deleting the employees whose ‘year_of_joining’ is 2008.
- It is not changing the definition of the data, as it is just manipulating some records.

Ans: B & D. _This process is simply deleting the data of those employees whose year of joining is 2008, and there is nothing like changing the schema of the table. Hence, it is not a DDL statement._   

SQL commands are mainly divided into two subcategories:

- DDL (Data Definition Language), and
- DML (Data Manipulation Language)

![DDL_and_DML](https://i.ibb.co/c24Gh4y/DDL-and-DML.png)

In this video, you learned the basic commands within the Data Definition Language. Let’s revise them one by one.   

![DDL_Syntaxes](https://i.ibb.co/8crvBDP/DDL-Syntaxes.png)

In the next video, you will learn how to write DDL commands using SQL.   

**VIDEO**   

Let’s summarize what you learned in the video above.   

You learned how to use the CREATE command and executed the following operations using this syntax:

- You created a database with the name ‘demonstration’.   
- Following this, you created a table named ‘customers’ with the following attributes, data types, and constraints:

![DDL_DataTypes](https://i.ibb.co/q0zYmwG/DDL-Data-Types.png)

**VIDEO**   

#### DDL & DML Statements

Qn: Suppose in the 'customers' table, you want to define the composite primary, which comprises the 'ID' and the 'NAME' columns. What will be the right code to perform this operation, and what type of query is this?

- A 
  
    alter table customers add constraint primary keys (ID) and (NAME);
    Type: DML statement.

- B
  
    alter table customers add constraint primary key (ID, NAME);
    Type: DML statement.

- C
  
    alter table customers add constraint primary keys (ID) and (NAME);
    Type: DDL statement.

- D
  
    alter table customers add constraint primary key (ID, NAME);
    Type: DDL statement.

Ans: D. _This is the correct way to define the composite primary key. Also, defining the composite primary key is a DDL statement._

After creating the table, you used the ALTER command to make the following modifications to the table:

- The ‘ID’ column in the ‘customers’ table was made as the primary key.
- A new column ‘employer’ was added to the ‘customers’ table with VARCHAR(32) as the data type.
- The column ‘employer’ was dropped (deleted) from the ‘customers’ table.

Following this, you learned how to use the DROP command to execute the following operations:

- Dropping the ‘customers’ table, and
- Dropping the database ‘demonstration’.

In the next segment, you will learn about the second set of commands known as DML (Data Manipulative Language).   
