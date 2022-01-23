# Third Normal Form and the ACID Model

In the previous segment, we discussed two important levels of normalization that you must strive to achieve while building a database. In this segment, we will discuss an even higher level of normalization, known as the  **Third Normal Form.**   

So, let us go through the features of the Third Normal Form as explained in the video.   

The third normal form has the following requirements:

- It should already be in the  **Second Normal Form**.
- There should  **not be any transitive dependency**  on that particular table.

## What do you mean by 'transitive dependency'?

In simple terms, transitive dependency occurs when a non-primary attribute does not depend on the primary key but, is dependent on another non-primary attribute in the table.

Let's try to understand this using the table provided below. It stores the marks of different students in different subjects. The exam also holds the maximum marks that can be obtained in the subject (TOTAL_MARKS).

![Student_Marks_Table_1](https://i.ibb.co/4Zh9B80/Student-Marks-Table-1.jpg)

The primary key in the above table is 'STU_ID' + 'SUB_ID'. In the above table, you can see that the 'TOTAL_MARKS' is independent of the primary key and is totally dependent on the 'EXAM'. This is called transitive dependency.

**How to resolve this issue?**

When you have a transitive dependency in the second normal form, you should break the table into two smaller tables with one of the related attributes (EXAM or TOTAL_MARKS) as the primary key.

![Student_Marks_Table_2](https://i.ibb.co/4SnbrwX/Student-Marks-Table-2.jpg)

For a table to be in third normal form, it is mandatory that there is no transitive dependency. Now that you have understood the concept, let us try to convert  **Table-1** into the third normal form.

![Student_Marks_Table_1](https://i.ibb.co/4Zh9B80/Student-Marks-Table-1.jpg)

As seen above, the above table suffers from transitive dependency. However, it also contains another issue. If you look closely, the variable EXAM is dependent on SUB_ID which indicates that the attribute is partially dependent on the primary key. Therefore, the table must be first converted into the second normal form. This can be done by breaking the table into two separate tables, as shown below.

**![Student_Marks_Table_4](https://i.ibb.co/zVsJ9d3/Student-Marks-Table-4.jpg)**

**2NF**

The third normal form of the above table can be obtained after removing the transitive dependency:

![Student_Marks_Table_5](https://i.ibb.co/vhvfchf/Student-Marks-Table-5.jpg)

**3NF**

So, by now, you must have understood how you can convert any table from its de-normalized form to its normalized form.

Advantages of Normalization:

- Using normalization, you can split a table into multiple tables to avoid the occurrence of multiple rows. In this way, it solves the problem of  **Data Duplicacy**.

- It ensures  **Data Integrity**, which means that the consistency and accuracy of the data are maintained. This suggests that you will not have to worry about conflicting information in different locations in your database.

- After normalization, you will have to update the data only where it is necessary, instead of updating in all the locations where it exists. In this way,  **updating the data becomes easy**.

- Each table in a normalized database is well-defined and each row in the individual tables is uniquely identifiable. This ensures your database is much more  **organized and flexible in design**.

However, in most of the real-life applications, the 3rd normal form is not needed and people work even on the 1st normal form or 2nd normal form, but it is good to know about these forms because this is important for interview perspective.

With this, we conclude the second essential feature of an RDBMS, that is, Database Normalization. The third feature that we will be covering is known as the ACID Model. Let’s watch the next video and learn about it from our expert.

**VIDEO**   

So, let us revise the ACID model concept that you have learnt in the video.

**A - Atomicity**:

Atomicity means ‘all or nothing’. Any operation on a database can either be a complete success or a complete failure. If an operation is partially successful and fails in-between, then it will revert to its original state.

**C - Consistency**:

Once an operation has been performed, the state of the database before and after that operation must be consistent. In other words, the execution of an operation cannot impact any other record or attribute apart from the ones it was set to execute on.

**I - Isolation**:

Any two operations are always isolated from or independent of each other. Their individual data shall remain concealed from the data of other operations (transactions).

**D - Durability**:

In case of any failure (such as power failure), your data must never be lost. Hence, your RDBMS must ensure the durability of your data.

You can understand the ACID model using the example of a banking transaction in the below diagram.

![ACID_Model](https://i.ibb.co/9yD0Xdp/ACID-Model.png)

In the next segment, you will learn about the different relational models that are followed in an RDBMS.

**Comprehension**

Suppose you are given four tables, Table 1, Table 2, Table 3 and Table 4, which contain information on a property, owners, and customers.

**Table 1**

![Property_Owner_Table_1](https://i.ibb.co/CtxB6tm/Property-Owner-Table-1.png)

Column names ‘customer_id’ and ‘prop_no’ are acting as the composite primary key in the ‘Property’ table.

Description of attributes:

- **customer_id**: Unique identification number of customers

- **prop_no**: Unique id assigned to a property

- **prop_location**: Location of the property

- **rent**: Rent for the property

- **rent_start_month**: Name of the month from which rent will be charged. It depends on the customer as well as the property.

- **cust_name**: Name of the customer who will be the tenant of the property

- **owner_no**: Unique id assigned to a particular owner_name

Primary key for Table 2 is '**customer_id**'

**Table 2**

![Property_Owner_Table_2](https://i.ibb.co/64SR8CG/Property-Owner-Table-2.png)

Composite Primary key for Table 3 is '**customer_id'** and **'prop_no**'

**Table 3**

![Property_Owner_Table_3](https://i.ibb.co/VpWx9WJ/Property-Owner-Table-3.png)

Primary key for Table 4 is '**prop_no**'

**Table 4**

![Property_Owner_Table_4](https://i.ibb.co/gWNtSbD/Property-Owner-Table-4.png)

#### Normalization

Qn: From your learning of normalization of data, can you write three of its advantages?   

Ans: _Suggested Answer_  

- It reduces data redundancy.    
- All the tables have unique data and hence, it is to look into the data to get the relevant insights.
- It is easy to query the data from relational databases.

Qn: What is the correct way to convert the ‘Property_Owner’ table into the Third Normal Form?

- Split it into two tables, each of which will contain the ‘prop_no’, ‘prop_location’ and ‘rent’ attributes. But one table will contain ‘owner_name’ and the other one will contain ‘owner_no’.
- Split it into two tables, of which one will contain the ‘prop_no’, ‘prop_location’, ‘rent’ and ‘owner_no’ attributes, whereas the other will contain the ‘owner_name’ and 'owner_no’ columns only.
- It is in the Third Normal Form and, hence, there is no need to split it into tables further.

Ans: B, _This is the correct way to split the table without duplicating the data._

Qn: Consider the ‘Property_Owner’ table and choose the correct statement regarding this table.

- All the attributes are fully dependent on the ‘prop_no’ column.
- The ‘owner_name’ attribute is dependent on the ‘owner_no’ column.
- This table is in the Second Normal Form but not in the Third Normal Form.
- There is transitive dependency in this table.

Ans: B, C & D

- _The ‘owner_name’ column is not dependent on ‘prop_no’ but is dependent only on ‘owner_no’._
- _Since none of the attributes show any partial dependency on the primary key, it is in the Second Normal Form. But there is transitive dependency and, hence, it is not in the Third Normal Form._
- _As ‘owner_no’ is dependent only on the ‘owner_name’ attribute and all other attributes are dependent on ‘prop_no’, there is transitive dependency in this table._

Qn: Which of the following statements is correct regarding the normalization of tables?

- The ‘Property’ table is in de-normalised form.
- The ‘Month’ table is in the First Normalized Form.
- The ‘Customers’, ‘Month’ and the ‘Property_owner’ tables are in the Second Normal Form of the ‘Property’ table.
- The ‘Property’ table does not have any partial dependency on the primary key.

Ans: B & C.  

- _Each row in the ‘Month’ table is uniquely identifiable and, hence, it is in the First Normal Form._
- _Since there is partial dependency of many attributes of the ‘Property' table, and each partial dependency is rectified in the ‘Customers’, ‘Month’ and ‘Property’ tables, this option is correct._
- A is not TRUE, _Each row in the ‘Month’ table is uniquely identifiable and, hence, it is in the First Normal Form._   

Qn: Based on the tables above, choose the correct statements from the options below.   

- In the ‘Property’ table, ‘cust_name’ is completely dependent on the composite primary key.
- In the ‘Property’ table, ‘prop_location’ is partially dependent on the composite primary key.
- In the ‘Property’ table, ‘owner_name’ is completely dependent on the composite primary key.  

Ans: B, _‘prop_location’ will depend only on ‘prop_no’; it is not dependent upon ‘customer_id’._
