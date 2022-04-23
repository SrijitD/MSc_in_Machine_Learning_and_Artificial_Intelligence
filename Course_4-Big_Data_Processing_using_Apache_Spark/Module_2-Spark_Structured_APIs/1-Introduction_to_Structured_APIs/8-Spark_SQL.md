# Spark SQL

Spark holds the ability to run SQL-like queries on the dataFrames and datasets with the help of **SparkSQL** module. It facilitates Spark to run SQL-type and HIVE-type queries on dataFrames. The power of SparkSQL is further improved by its capability to connect to a large number of standard databases via JDBC and ODBC, and it can collect data from a number of different file formats such as parquet, ORC, JSON, etc. A person who is used to writing SQL- and HIVE-type queries can easily switch to SparkSQL. Let us hear about SparkSQL from the industry expert.

**VIDEO**

With the ability to connect to a wide variety of data sources and the simplicity of SQL-type queries, SparkSQL is quite a powerful tool and is accessible to a lot of people. In the next video, we will try and use Spark SQL to run a few simple queries.

**VIDEO**

To run a SQL query on a dataframe, it needs to be converted to a table.

```python
createOrReplaceTempView("table_name")
```

This method converts a dataframe to a temporary SQL table internally, making it ready to run SQL queries. The view created the method shown above is temporary and only the local node can use it. There is a different method to create a global table. You can refer to the [Spark official documentation](http://spark.apache.org/docs/2.4.4/api/python/pyspark.sql.html) to learn more about this.

Once we have the table ready,  we can run queries on the data directly. The data extracted from the queries is in the form of a dataframe. All of the dataframe functionalities that you learnt earlier can be used to process the data further. This amalgamation of dataframes and SQL queries gives a lot of flexibility to the code.

Now, in the next video, let’s try to solve a real-life problem using Spark SQL.

**VIDEO**

So, in the video, you saw a demonstration of how powerful the combination of dataframes and abstractions can be. Earlier in the session you used the asDict method to convert a row to a dictionary and access its values using keys. In this case, SQL was used to filter out relevant data, and then the same dataframe transformations were used to extract relevant information.

#### Spark SQL

Qn: "SparkSQL helps in accessing structured as well as semi-structured data."

State whether the above statement is true or false.

- True

- False

Ans: A. *Spark SQL brings the native support of SQL in Spark. It provides features to read semi-structured datasets such as CSV, JSON, etc. but not unstructured.*

Qn: Consider a dataframe ‘df’ with sales data. What will be the output of the following line of code?

```python
spark.sql(“SELECT * FROM df”)
```

- It will show all the columns form the df dataframe

- It will throw an error

Ans: B *df is a dataframe not a table so sql queries cannot be run on it. The code will throw an error*

Qn: Consider the following code:

```python
# filters and gives a new dataframe with all speeds more than 100
df2 = df.filter(“speed>100”)
df2
```

Which of the following options summarises the output of the code?

- It will show the new dataframe created

- It will show that df2 is a dataframe and show its allocated memory position

Ans: B. *Spark lazily evaluates any transformation command. Even though a command has been given to create a new dataframe, it will only be created when an action is called. Until then, df2 will simply hold the memory location and object type.*

Download [Spark SQL notebook](Spark_SQL_Notebook)

Download [SQL assessment and dataset](SQL_Assessment)

## Additional reading

1. To read more about Spark SQL, kindly refer [this link](https://databricks.com/glossary/what-is-spark-sql).
