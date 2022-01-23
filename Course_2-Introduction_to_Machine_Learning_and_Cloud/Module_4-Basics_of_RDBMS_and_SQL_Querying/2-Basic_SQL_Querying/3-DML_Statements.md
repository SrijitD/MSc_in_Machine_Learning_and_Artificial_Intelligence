# DML Statements

Now you will look at the next set of commands, which is known as DML, or Data Manipulation Language. As you learned, DML commands are mainly used to manipulate data as per our requirements.   

**VIDEO**   

#### DML Statements

Consider the following operations:    
a. Inserting a new column into a table    
b. Deleting the entries of some of the rows    
c. Changing the data type of particular column    
d. Changing the foreign key of a particular table    
e. Adding some of the entries in a column    
f. Deleting the entire table    

Qn: Which of the aforementioned statements are DML statements?

- b, c, d, e
- a, c, d
- d, e
- b, e

Ans: b, e. _Deleting the entries and adding some values in the tables/columns are DML statements._   

![DML_Commands](https://i.ibb.co/PFRjyZK/DML-Commands.png)

Now, let’s jump to the code implementation of each of these commands. In order to demonstrate their use cases, a table named ‘transportation’ has already been created with the following attributes:

![DML_DataTypes](https://i.ibb.co/qxgb2fn/DML-Data-Types.png)

**VIDEO**   

#### DML statements

Qn: You are given a table named 'transportation'. Write the query to delete all the rows from the table.

Ans: 

    delete from transportation;

In the next video, you will learn about the UPDATE and DELETE commands.

**VIDEO**   

**VIDEO**   

Let’s revise the use cases of each of the commands shown in the video above:

- The  **INSERT command**  was used to add the following records to the table:
  
  ('DELIVERY TRUCK', 'Ashok Leyland', false)  
  ('REGULAR AIR', 'Air India', false)

- The  **UPDATE command**  was used to modify the attribute ‘toll_required’ to ‘True’ wherever ‘ship_mode’ contained the value ‘DELIVERY TRUCK’.
  
  **Note**: We have also used the WHERE command for the purpose of this demonstration, which will be explained in detail in the next segment. The WHERE command is used to filter out specific rows of a table.

- Next, the  **DELETE command**  was used to delete all the rows where the attribute ‘vehicle_company’ had the value ‘AIR INDIA’.
  
  **Note**: Executing the same command without the WHERE clause will result in deleting all the rows of the table.

- Using the  **ALTER command**, we added a column known as ‘vehicle_number’ and set its data type to varchar(32). Following this, the UPDATE command was used to update all the records in this column to 'MH-05-R1234'.

There can be additional subcategories besides DDL and DML. You may refer to this  [link](https://www.w3schools.in/mysql/ddl-dml-dcl/) to explore the different commands within SQL.

**Note**:

- If you wish to view your table at any point in time, use this command:
  
   SELECT * FROM table_name

- The commands in SQL are  **not case-sensitive**, I.e., you can use an uppercase or a lowercase to write your SQL queries.

In the next segment, you will learn how to generate an ERD in MySQL once you define your database and its tables. After that, you will learn about some of the common SQL operators and their use cases with the help of a case study.   

#### DDL and DML statements

Qn: Consider the following statements:

1. CREATE
2. INSERT
3. UPDATE
4. DELETE
5. ALTER
6. DROP
7. TRUNCATE
8. RENAME

Based on the types DDL/DML statements, select the correct options from below:

- CREATE, UPDATE, DELETE, DROP are DDL statements.
- SELECT, UPDATE, ALTER, DROP, RENAME are DML statements.
- CREATE, ALTER, DROP, RENAME, TRUNCATE Are DDL statements.
- SELECT, INSERT, UPDATE, DELETE are DML statements.

Ans: C & D. _These keywords are part of DDL, as they help in defining the schema or database. Whereas, the DML keywords are the ones which help to work with the manipulating the data in the rows of the table._    

Qn: What is the difference between the 'DROP' and 'TRUNCATE' commands?

- ‘TRUNCATE’ removes the table completely from the database, and you can not retrieve this table. All the integrity constraint is removed. On the other hand, ‘DROP’ only drops the table rows; it does not delete the schema of the table from the database.
- ‘DROP’ removes the table completely from the database, and you can not retrieve this table. All the integrity constraint is removed. On the other hand, ‘TRUNCATE’ only drops the table rows; it does not delete the schema of the table from the database.
- The table remains in the database when you use the ‘DROP’ command, but all of its rows will vanish.
- The table is deleted completely from the database when you use the ‘TRUNCATE’ command. If you want to get this table, you need to create the table again from scratch using the 'create table' command.

Ans: B   

Qn: Suppose you want to create a table named 'mobile_phone', which contains the following columns:

- Mobile_phone_ID, which is an integer type
- Camera, which is a string type
- RAM, which is an integer type
- Memory, which is a string type

The primary key in this table is 'Mobile_phone_ID'.   
What will be the right SQL query to create such a table? Also, identify the type of operation, i.e., whether it is a DDL statement or a DML statement.

A. **It is a DML statement.**

    create table mobile_phone (
        Mobile_phone_ID int(11) NOT NULL,
        Camera varchar(12),
        RAM int(11),
        Memory varchar(12)
    );

B. **It is a DDL statement.**

    create table mobile_phone (
         Mobile_phone_ID int(11) NOT NULL,
         Camera varchar(12),
         RAM int(11),
         Memory varchar(12)
    );

C. **It is a DML statement.**

    create table mobile_phone (
         Mobile_phone_ID int(11) NOT NULL,
         Camera varchar(12),
         RAM int(11),
         Memory varchar(12),
         Primary Key (Mobile_phone_ID)
    );

D. **It is a DDL statement.**

    create table mobile_phone (
         Mobile_phone_ID int(11) NOT NULL,
         Camera varchar(12),
         RAM int(11),
         Memory varchar(12),
         Primary Key (Mobile_phone_ID)
    );

Ans: D. _This is the correct way to create a table with the primary key._   

Qn: Suppose you want to add a new column: 'price', with ‘float’ as the data type, in the table 'mobile_phone'. What is the right query to add this new column?

- `ALTER 'mobile_phone' ADD COLUMN 'price' float(24)`
- `ADD COLUMN 'price' float(24) IN TABLE 'mobile_phone'`
- `ALTER TABLE 'mobile_phone' ADD COLUMN 'price' float(24)`
- `ADD COLUMN ‘price’ float(24) IN 'mobile_phone'`

Ans: C   

Qn: Suppose you want to update the value of ‘Camera’ to 15MP, where the RAM = 8. What will be the right query to perform such operation?

- `update mobile_phone set Camera= ‘15MP’ where RAM= 8;`
- `alter mobile_phone set Camera= ‘15MP’ where RAM= 8;`
- `insert Camera= ‘15MP’ where RAM= 8; in table mobile_phone`
- `update mobile_phone set Camera= ‘15MP’ where RAM= ‘8’;`

Ans: A. _RAM column has int data_   
