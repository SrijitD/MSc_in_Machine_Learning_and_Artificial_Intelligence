# Summary

Let us summarise what you have learned in this module.

You learned about the ETL process. ETL comprises of  three stages:

- Extract
- Transform
- Load

![ETL Process Case Study](https://i.ibb.co/4K2PgCY/ETL-Process-Case-Study.png)

You also learned to create and load your database in the RDS instance and connect with it from the HDFS. Following this, you learned to use Sqoop commands to import the data in various file formats and make use of its features.

![HDFS Data Platform](https://i.ibb.co/jWMfq53/HDFS-Data-Platform.png)

Following this, you explored the different file formats and their effects on the performance of the query.

- **Parquet** is column-based storage. So, running analytical queries, which involves handling specific columns, i.e., grouping by operations, is ideal while handling parquet tables
- **Avro** is row-based storage. So, queries that involve fetching the entire data are ideal while handling Avro tables.

Next, we cleaned the data and performed some basic Hive queries to gather insights from the data.

Finally, we orchestrated different steps of the case study into a workflow with the help of Oozie.
