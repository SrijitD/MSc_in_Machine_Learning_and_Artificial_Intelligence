# Introduction to RDBMS

Before moving further into the session, take a moment to think about how you usually store data on your computer. You create one folder for storing all the PDF files and a separate one to store all your codes.

Now, suppose a particular code is stored in two different locations, and you make changes to the code in one of these locations. Wouldn’t that result in an inconsistency between the two codes stored in the two separate locations?

Now, ask yourself, is this the right way to store data? Have you ever found yourself in a situation where you were not able to find a particular file and had to use the search option? You have, right? Now, imagine dealing with heaps of confidential data stored on your computer. Let us watch the next video and hear what Vishwa has to say about such a scenario.

**VIDEO**   

#### Traditional File-Handling System

Suppose you are working in an office that has multiple employees. This office stores the dump of the data of its employees in a traditional file system. Suppose there are two files, of which one is ‘Employee_Details’ and another is ‘Payroll’. Both of these files have the address and employee name information. Based on the scenario above, choose the correct statement from the options below.   

- Storing the same information in many files is called data redundancy, which consumes extra storage space to store the files.
- Suppose you want to update the address of a particular employee; to do this, you have to update the address in each file related to that employee, else it will create data inconsistency among the files. This is one of the drawbacks of a traditional file-handling system.
- Data is more secure in such systems because the data is duplicated across multiple files.

Ans: A, B.

- _This option is correct, as the repetition of data takes up extra storage space to store the same file multiple times._ 
- _If you do not update the address of the employee in each file, then it will create data inconsistency and leave you in a situation where you will have multiple addresses in multiple files for the same employee._

**VIDEO**   

Clearly, you cannot rely on Traditional File-Based Storage Systems for managing your company’s database. So, let’s revise the key disadvantages of a File-Based Storage System:

- **Data Redundancy (Duplicate Data):**  Using the file system as data storage, you are likely to end up storing duplicate files in different folders. The duplicity of data creates data redundancy, this makes it difficult for users to update/delete data.  
- **Data Inconsistency:**  If you want to update a file stored in multiple locations, then you will have to locate each copy of the file and update it individually. In case you miss out on any copy of the file, it will give rise to data inconsistency on your machine.
- **Scattered Data:**  Data is mostly scattered across various files, and each file may be stored in a different format. As a result, developing new applications to retrieve this data becomes difficult.
- **No Support for Transactions:**  Consider the example of a banking transaction. This process consists of multiple steps for money to be transferred from one account to another. Suppose an ongoing transaction fails in the middle resulting in a partial success. In an ideal scenario, this money should be transferred back to its owner so that the transaction can be repeated. However, this is not possible in the case of a File Based Storage System. Examples of other transactions are communication channels, booking a ticket, etc.
- **Poor Data Security:**  It is difficult to impose stringent security constraints in file processing systems.
- **Data Integrity:**  In order to ensure data quality, we need to impose some constraints on the incoming data before storing into the File Storage Systems. However, these constraints are not supported inherently in the File Storage System. 

But wait, Vishwa has also been mentioning about a Database Management System, not a database. So, before you learn about what a Relational Database Management System (RDBMS), let us learn what a Database Management System (DBMS) is.  

In the video, you learnt about the difference between a database and a Database Management System. In the next segment, you will be introduced to the concept of an RDBMS and explore the different features associated with it.  

#### Traditional File-Handling System

Qn: Which of the following are challenges of a traditional file-handling system? Multiple options may be correct.

- There is duplicacy of data in various files or in a single file. The duplicate data consumes extra storage space.
- The update process is complicated, as there are multiple entries of single data values, and it is difficult to update each and every point.
- Data is scattered across various files.
- There is no atomicity in the process which involves any update or creation of data in file-handling systems.

Ans: All of the above.

- _Due to duplicate data entries, there is an extra consumption of storage space._
- _In the update process, you need to update each and every duplicate entry to maintain the uniformity of data. Hence, due to duplicacy of data, it is difficult to manage the update._
- _Data is scattered across various types of files. This means there is a lack of uniformity of the data that is available in various files._
- _Operations are not atomic in nature; for instance, if a transaction consisting of multiple steps fails in-between, there is no scope of rolling back._

#### Database Management System

Qn: Which of the following options are correct regarding a Database Management System?

- MySQL and Oracle are databases.
- A DBMS can manipulate the data, data format and record structures in a database.
- A DBMS is just a storage space, and it is used to dump the data into the storage.
- A DBMS is a software package that is defined to govern the database.
- The user cannot interact with the database without a DBMS. The DBMS is an interface between the user and the database.

Ans: B, D & E.

- _A DBMS can add, manipulate and delete the data from a database. Also, it can change the structure of the data in the database._
- _A DBMS is a set of software that is used to interact with the database._
- _A DBMS acts as a layer between the user and the database. And without the DBMS, the user cannot access the database._
