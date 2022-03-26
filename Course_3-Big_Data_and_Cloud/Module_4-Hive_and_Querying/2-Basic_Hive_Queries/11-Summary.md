# Summary

Let’s summarise your learnings from this session:

- **Creation of a Database**: You learnt how to create databases in Hive, where once you create the database, all the tables that you will create afterwards will go into these databases.

- **Internal and External Tables**: The following are the two types of tables in Hive:

  - **Internal Table**: In the case of an internal table, Hive is responsible for the data and takes control of the entire life cycle of the metadata as well as the actual data itself. When you drop an internal table, both the schema information and the actual table data get deleted.

  - **External Table**: When you create an external table, Hive is responsible for only the schema of the table. It does not consider the actual data. When you drop an external table, the schema information gets deleted, but the actual table data is still available in the HDFS.

- **Loading Data into the Tables**: When you load the data into the tables, you have to provide the structure of the data in the DDL statements. Also, before loading the data, you need to have a clear understanding of the data types and order of the attributes in the raw data, which is available in the HDFS. So, when you load the data into the predefined tables, it will not expose NULL values.

- **ORDER BY and SORT BY**: You may have to perform sorting operations on data in several situations.

  - The **ORDER BY** clause provides the total sorted list of the data. It guarantees the total ordering in the output and may use multiple mappers but only one reducer.

  - The **SORT BY** clause sorts the data at the reducer level only and does not guarantee the total sorting of the data. It will not provide the complete sorted list. Also, you may receive overlapping data in the two reducers.

- **DISTRIBUTE BY and CLUSTER BY**:

  - The **DISTRIBUTE BY** clause only distributes the data into multiple reducers, but the data is not sorted in each reducer.

  - The **CLUSTER BY** clause distributes the data into multiple reducers, each containing sorted and non-overlapping data.

- **User-Defined Functions**: You can customise functions in Hive. You need to create a Java program and export it into the ‘jar’ file and then add it to Hive. Once the file has been added, you can create a function for the particular ‘jar’ file and use that function in Hive queries.

- **Indexing**: This is a query optimisation technique, where you can reduce the time of the query. There are two types of indexing: Compact indexing and Bitmap indexing.

To give a comparison of SQL commands with Hive, you can refer to this [cheat sheet](http://hortonworks.com/wp-content/uploads/2016/05/Hortonworks.CheatSheet.SQLtoHive.pdf) for reference provided by Hortonworks.

Download [Hive SQL Comparison](Docs/Cheet_Sheets/SQL_to_Hive.pdf)

So, these are the concepts you learnt in this session. In the next session, you will be introduced to advanced Hive querying.
