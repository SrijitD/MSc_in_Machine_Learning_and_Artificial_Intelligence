# Normalization - 1NF and 2NF

The second feature that you will learn about RDBMS is Database Normalization. Here, you will learn how an RDBMS addresses the issue of data redundancy. But first, let us learn what data redundancy is.

Data Redundancy occurs when the same piece of data is stored in multiple locations in a database. In such a case, the data stored in the database could be prone to inconsistency, therefore, in such a situation, it also becomes difficult for the user to make changes to the database. Let us learn more about it in the upcoming video:

**VIDEO**   

![Insertion_Updation_Deletion_Anomaly](https://i.ibb.co/nMStb21/Insertion-Updation-Deletion-Anomaly.png)

Let us revise what you learnt about the challenges faced by a table that is in its de-normalized form. We have used the table shown in the video (or above) to explain each of these anomalies.

- **Insertion Anomaly**: This kind of anomaly occurs when you cannot insert some attributes because certain attribute information is missing.

- **Updation Anomaly**: This kind of anomaly occurs in duplicated data when one copy is updated whereas the others are not, thus resulting in inconsistent data.

- **Deletion Anomaly**: A Deletion Anomaly occurs when the deletion of certain attributes results in the deletion of some other attributes as well.

Hence, all tables must be converted to their normalized forms before storing them in the database. The most commonly used normal forms are 1NF, 2NF and 3NF. So, let us try and understand how we can achieve different levels of normalization in the next video:   

**VIDEO**   

Now, let’s revise what you have learnt about the First Normal Form.

**First Normal Form**:

1. Any cell in a table  **cannot have multiple values**

2. Each row must be  **uniquely identifiable**

![First_Normal_Form](https://i.ibb.co/74wdMV9/First-Normal-Form.png)

Let us move on and learn about the Second Normal Form now in the upcoming video.   

**VIDEO**   

#### Second Normal Form

Qn: Suppose you have been given a table with five attributes, A, B, C, D and E. Here, A and B are composite primary keys. Column D depends on composite keys A and B. Column E depends on columns B and C. Once you convert this table into the Second Normal Form, you will have two tables. What would be the columns in these two tables?

- Table 1: A, C, D and Table 2: B, E
- Table 1: A, B, D and Table 2: B, E, C
- Table 1: B, D and Table 2: A, E, C
- Table 1: A, B, D, E and Table 2: B, C

Ans: B, _As column D depends on A and B, it will come under the same table. Also, column E depends on B and C, and, hence, it will come under the same table._
So, let us revise what you learnt about the Second Normal Form.

**Second Normal Form:**

- It should be in the  **First Normal Form.**
- None of the attributes should be  **partially dependent on the primary key**.

![Second_Normal_Form](https://i.ibb.co/Z1wjzLf/Second-Normal-Form.png)

In the next segment, you will learn about the Third Normal Form and the ACID Model.
