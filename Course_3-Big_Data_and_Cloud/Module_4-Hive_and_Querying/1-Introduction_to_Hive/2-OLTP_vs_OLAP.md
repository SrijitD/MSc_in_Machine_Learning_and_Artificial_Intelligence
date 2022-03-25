# OLTP vs OLAP

Let’s take a pause and bring your focus to the important aspects of the Big Data world: OLTP and OLAP.

Let’s consider the following examples to understand the difference between OLAP and OLTP systems.

**Bank transactions:**

Suppose you go to an ATM and transfer money from your account to another account. What exactly happens when you perform this operation?

One thing you need to understand here is that each bank has its own database where it needs to update every transaction on a real-time basis. So, in this example, one account under a particular customer will be debited and some other account will be credited with the same amount of money instantly.

**Data analysis in an e-commerce company:**

Now consider another case of an e-commerce company that has to perform data analysis to derive useful insights from its sales and customers, or to make marketing strategies from its existing databases, which are continuously updating by each and every activity performed by their customers.

Can you identify the difference in the aforementioned two scenarios?

Watch the following video to have a better understanding of how to identify the difference between the aforementioned two scenarios.

**VIDEO**

Let’s summarise what you learnt in the video above and compare the OLTP and OLAP systems.

| **OLTP**                                                                                                                                                                                     | **OLAP**                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| - **On-Line Transaction Processing** systems are those systems that support online transactions in databases on a real-time basis. Its primary objective is to process data, not analyse it. | - **On-Line Analytical Processing** systems are those categories of software that provide analytical platforms to derive useful insights for business purposes.                                                                                                                 |
| - **Transactional:** OLTP is transactional data processing, and this mainly covers writing into databases.                                                                                   | - **Analytical:** OLAP systems are used for analytical purposes, where you perform analytical tasks to derive useful insights from the given data. OLAP is more of an offline datastore where you perform analytics on a data set.                                              |
| - **CRUD Operations:** It supports the CRUD operations, in which you can create, retrieve, update or delete data from a database.                                                            | - **Aggregation Operation:** OLAP systems are not meant to perform CRUD operations because OLAP does not alter the existing database. You can only perform aggregation of data on the existing data sets to derive useful insights.                                             |
| - **Less Query Time:** OLTP should take less query time because it has to be fast to work on a real-time basis.                                                                              | - **Longer Query Time:** OLAP systems have longer query time, as they need to process big data simultaneously at a particular point in time.                                                                                                                                    |
| - **Normalised Data:** An OLTP system mostly contains the normalised form of data to perform the CRUD operations easily.                                                                     | - **Mostly Denormalised Data:** Data available in this system is mostly denormalised and is available in a single table only to get the required inferences from that table.                                                                                                    |
| - **Strict Data Integrity:** The operations are performed on a transactional basis, and hence, there has to be strict data integrity and a well-defined structure of tables.                 | - There is no strict data integrity in an OLAP system.                                                                                                                                                                                                                          |
| **Examples:**<br><br>-  Bank transactions<br>- Online flight ticket booking system on Paytm<br>- Adding items to your cart on the Amazon app                                                 | **Examples:**<br><br>- An e-commerce company wants to perform an analysis of their sales, products in order to make marketing strategies.<br>- The Government of India wants to perform a demographic analysis of Aadhar card data to know the sex ratio in a particular state. |

One of the important notes is that OLTP systems are the original source of data, while in the case of OLAP systems, data comes from different OLTP databases.

Now you have an understanding of OLTP and OLAP systems, in the coming segments, you will learn how Hive works in an OLAP system.
