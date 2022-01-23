# Features of RDBMS

In the previous segment, you learned how a Database Management System is different from a Database. But have you wondered how data is stored in a Database? What if the data is interlinked? Is there a way to store the data to avoid all the drawbacks highlighted in the case of the File-Based Storage System?

In this video, Vishwa will explain how you can use an RDBMS to store your data while preserving the relationships within the data. Also, how an RDBMS overcomes the disadvantages of the File-Based Storage System.   

**VIDEO**   

#### Entity

Suppose you are working at a mutual funds company. It holds data about the  **customers** who have bought mutual funds from them, along with their  **address, age and marital status.**   
There are other data points that show the prices of multiple  **stocks** in the market; it shows the  **‘prices of stocks’** and  **‘future predicted prices’.**   
Now, suppose this company also stores data about its  **employees**, which includes **employee name, employee salary** and  **employee designation.**   
Now, based on the statements above, which of the following is a group of entities?

- Customers, customers’ marital status, employees
- Customers, stocks, employees
- Prices of stocks, employee designation, future predicted prices
- Customers’ age, customers’ marital status, employees

Ans: Customers, stocks, employees. _An entity is any real-world object that is represented in the form of tables in a database and hence, customers, stocks and employees are the entities in this example._

**VIDEO**   

**VIDEO**   

So, an RDBMS is a Database Management System that stores data in the form of tables, where each table is related to the other tables in the database. This kind of model is called a relational model. Hence, it is said that an  **RDBMS follows a relational model.**

In the video, Vishwa explained this concept with the help of the two tables shown below.

![Employee_Table](https://i.ibb.co/1RsXPVM/Employee-Table.png)

![Department_Table](https://i.ibb.co/51dpBK2/Department-Table.png)

EMP_ID: Employee_ID

D_ID: Department ID

D_NAME: Department Name

**Entity**: As Vishwa mentioned, an entity is any real-world object that is represented in the form of tables in a database. In the table shown above, the entity for the table would be ‘EMPLOYEE’. Thus, entities can be used to identify each table.

In the video, Vishwa mentioned a practical example of a company. In this company, there are two tables, of which one is the ‘Employee’ table and the other is the ‘Department’ table.

**Relation Building**: If you observe the tables, you will notice that the Employee table uses the information from the Department table to show you the department assigned to each employee (EMP_ID). In this way, the Employee and Department tables are related through the Department ID (D_ID).

So, now you must have understood how you can identify each table in a database. But there is a way to identify each row in a particular table using the **Primary Key**.

So, in the video, you learned about primary keys and composite primary keys.  

As you have learned already, the tables in a database are related to each other. But how do we address the relationship among the tables? Let us watch the next video to learn about it from our expert.  

In this video, you learn about Foreign Keys. Now let us revise the concepts of primary keys and foreign keys:

- **Primary Keys:**  A primary key is used to identify each row in a certain table uniquely.
- **Composite Primary Keys:**  This kind of key is used when a single key is not enough to identify each row in a table uniquely. In such a case, a combination of two or more keys can be used to identify each row in a table uniquely.
- **Foreign Keys:**  A foreign key is a field in one table that acts as a primary key in another table, thus helping us to identify the rows in the latter table uniquely.

In the upcoming segment, you will learn about normalization and its two forms.
