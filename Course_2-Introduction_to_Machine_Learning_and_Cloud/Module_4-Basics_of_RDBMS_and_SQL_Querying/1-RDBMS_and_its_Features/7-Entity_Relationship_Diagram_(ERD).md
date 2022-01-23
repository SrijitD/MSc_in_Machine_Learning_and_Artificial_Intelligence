# Entity Relationship Diagram (ERD)

Let us assume you are starting your own company. You want to create a database that consists of data on your employees, customers, order details, departments, projects, roles, etc.

Here, you will not be dealing with just one or two tables but several tables. Wouldn’t it be easier if you could just visualize the entire database on a piece of paper? This is where Entity Relationship Diagrams come into the play

**Entity Relationship Diagrams**

An Entity Relationship Diagram, or an ERD, is a visualization of all the tables that represent how all the entities interact with each other. In the next video, you will learn how to create an ERD and portray the different interactions between the entities.

Let us consider the example of a company database that consists of the following tables.

1. ‘Employee’ table

2. ‘Department’ table

3. Table of the ‘Account Details’ of the employees

4. ‘Employee Roles’ table

![Entity_Relationship_Diagram_1](https://i.ibb.co/SJZ421X/Entity-Relationship-Diagram-1.png)

**VIDEO**   

So, in the video, you saw how the dependency of the different tables on each other was portrayed using an ERD.

Now, let us learn how you can use an ERD to represent the different interactions among the tables in a database:

- **One to One Relationship**
  
  ![Entity_Relationship_Diagram_2](https://i.ibb.co/FWr351h/Entity-Relationship-Diagram-2.png)
  
  This representation translates into the following statements:
  
  **“Only one employee corresponds to one salary account”, and “Only one salary account corresponds to one employee.”**

- **Many to Zero/One Relationship**
  
  ![Entity_Relationship_Diagram_3](https://i.ibb.co/nmVpjhX/Entity-Relationship-Diagram-3.png)
  
  This interaction can be translated into the following statements:
  
  **“Many employees might correspond to minimum zero or maximum one department”, and “Minimum zero or one department corresponds to multiple employees”.**

- **Many to Many Relationship**
  
  ![Entity_Relationship_Diagram_4](https://i.ibb.co/1RwLTwx/Entity-Relationship-Diagram-4.png)
  
  This representation can be translated into the following statements:
  
  **“Any employee in the ‘Employee’ table can have multiple roles”, and ‘Any role in the ‘Roles’ table can be assigned to multiple employees”.**

**Comprehension**

Suppose you are given a data set of a college. This data set includes mainly four tables:

- **Student**: This table contains information about the students, such as student id, name, range of marks scored in the exam, year of graduation and branch id.
  
  ![ERD_Comprehension_1](https://i.ibb.co/k3gBhZ2/ERD-Comprehension-1.png)

- **Branch**: This table includes the different branches present in the college, such as Electrical, Mechanical, Civil, Computer Science, Chemical, etc., along with the branch ids.
  
  ![ERD_Comprehension_2](https://i.ibb.co/hBrHXbN/ERD-Comprehension-2.png)

- **HoD**: This table contains information about the HoDs of the different branches. The information includes HoD name, duration of service as HoD, branch id of the branch in which a particular person is/was HoD and their contact information.
  
  ![ERD_Comprehension_3](https://i.ibb.co/VxQjTgs/ERD-Comprehension-3.png)

- **Marks**: This table contains the mapping of the range of marks with the grades assigned.  
  ![ERD_Comprehension_4](https://i.ibb.co/DgvT7pc/ERD-Comprehension-4.png)  

You can consider the following entries as examples of each of the table formats above.

**Student**

![ERD_Comprehension_5](https://i.ibb.co/yFVtp1h/ERD-Comprehension-5.png)

**Branch**

![ERD_Comprehension_6](https://i.ibb.co/42dzzL8/ERD-Comprehension-6.png)

**HoD**

![ERD_Comprehension_7](https://i.ibb.co/S3wtFBV/ERD-Comprehension-7.png)

**Marks**

![ERD_Comprehension_8](https://i.ibb.co/6wjpKdw/ERD-Comprehension-8.png)

Answer the following questions based on the information in the tables above.

#### Primary Key

Qn: Which of the following fields can be a possible primary key of the ‘marks_range’ table? Multiple options can be correct.

- grades
- marks_range
- There is no primary key in this table.

Ans: A & B.

- _Each row can be identified uniquely by grade and, hence, it can be the primary key_
- _Each row can be identified uniquely by marks_range and, hence, it can be the primary key_

#### Foreign Key

Qn: What are the foreign keys in the ‘Student’ table? Multiple options can be correct.

- student_id
- marks_range
- year
- branch_id

Ans: B & D.

- _‘marks_range’, which refers to the ‘Marks’ table, is the foreign key of this table._
- _‘branch_id’, which refers to the ‘Branch’ table, is the foreign key of this table_

#### Primary and Foreign Keys

Qn: Choose the correct statements for the ‘HoD’ table from the options given below. Multiple options can be correct.

- ‘branch_id’ can be the primary key of the ‘HoD’ table.
- ‘branch_id’ is the foreign key of the ‘HoD’ table.
- ‘branch_id’ and ‘year_of_service_as_HoD’ can be the composite primary key of the ‘HoD’ table.
- ‘branch_id’ and ‘branch_HoD_name’ can be the composite primary key of the ‘HoD’ table.

Ans: B & C.

- _‘branch_id’ is the foreign key of the ‘HoD’ table, as this is the primary key of the ‘Branch’ table._
- _branch_id’ alone cannot be the primary key, as there can be multiple HoDs for the same branch id for different years. But if you combine branch id with year, then it will uniquely identify the rows in the table. Hence, ‘branch_id’ and ‘year_of_service_as_HoD’ can be the composite primary key._
- _‘branch_HoD_name’ can be the same for different people and, hence, ‘branch_HoD_name’ and ‘branch_id’ cannot be the composite primary key._

Qn: Which of the following statements could be correct? Multiple options can be correct.

- In the ‘Branch’ table, ‘branch_id’ can have NULL values.
- In the ‘Student’ table, ‘marks_range’ can have NULL values.
- In the ‘Student’ table, “branch_id’ cannot have NULL values.
- In the ‘HoD’ table, ‘branch_id’ can have NULL values.

Ans: B. 

- _In the ‘Student’ table, ‘marks_range’ is the foreign key, which refers to the ‘Marks’ table; hence, it can have null values._
- _In the ‘Student’ table, ‘marks_range’ is the foreign key, which refers to the ‘Marks’ table; hence, it can have null values._
