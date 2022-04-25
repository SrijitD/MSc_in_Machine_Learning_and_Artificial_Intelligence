# Sources of Data - I

Apart from offering flexibility through different APIs, Spark can also perform the following functions:

- Gather data from different sources, and

- Read/write files of different formats.

You must be familiar with data storing formats such as parquet, csv, json, ORC, etc. Spark Session can read files in these formats directly. These file formats have a built-in structure that allows Spark to read them. The data inside these files is in the form of rows and columns. In the previous session, you learnt that Spark SQL can read data, extract the headers from the data and infer the schema of data for .csv files. Let’s look at how this is done for other data formats/sources.

**VIDEO**

**Note**: at 05:51 timestamp, 'inferredschema = True' is not the right way to specify the option.

The correct condition is 'inferSchema = True'.

In the video above, you saw how Spark reads and writes files using parquet, csv and json files. In Spark, the default format for reading and writing files is parquet files. So, there is no need for specifying the format while reading or writing parquet files. For other formats, use the following syntax:

```python
spark.read.load("filename.fileformat", format = "fileformat", inferSchema = True, header = True)
```

The inferSchema option here asks Spark to read the schema on its own. If it turns out that the inferred schema is not correct, one can change the datatype manually as well. To do this the **.cast()** parameter is used.

For example, consider a dataframe with 2 columns - name and pin code; pincode is incorrectly inferred as a string, and now you want to correct it.

```python
corrected_df = df.select(df.pincode.cast(IntegerType()).alias("pincode_integer")
```

The argument given to the _cast_ method is imported from the _pyspark.sql.types_ library. Read about the available methods [here](https://spark.apache.org/docs/2.4.4/api/python/pyspark.sql.html#module-pyspark.sql.types). After running this command, the correct_df will have the 'pincode' column in integer type. All the data type methods on the _pyspark.sql.types_ library can be used here. But do keep in mind that dataframes are immutable; if you want the typecast to be permanent, then save the casted dataframe in a new variable.  

This syntax is generic; the read command can also work for different file formats. However, there are specific commands for reading data of different formats and you will be learning about them in the following video.

**VIDEO**

You can read about the options that are available for reading and writing different file formats in the Spark API documentation given below:

1. [Read Options](https://spark.apache.org/docs/2.4.4/api/python/pyspark.sql.html#pyspark.sql.DataFrameReader)

2. [Write options](https://spark.apache.org/docs/2.4.4/api/python/pyspark.sql.html#pyspark.sql.DataFrameWriter)

Similarly, one can use the following command for writing files:

```python
spark.write.save("filename.fileformat", format = "fileformat")
```

Spark is also able to run SQL queries on unread files. Let’s quickly take a look at the demonstration.

**VIDEO**

```python
spark.sql("select * from parquet.`<address and name for the file>`" )
```

You can use the above command for running SQL queries on unread files. This will work with other files types like csv, json as well.  

Before moving on to the next segment, try answering the following questions:

#### Reading data in Spark

Qn: Analysis needs to be carried out on a dataset stored in data.csv. Which the following commands will read the data from the CSV into a dataframe?

- ```python
  spark.read.load("data.csv",format = "csv")
  ```

- ```python
  spark.read.csv("data.csv")
  ```

- ```python
  spark.sql("select * from csv.`data.csv` ")
  ```

- ```python
  spark.createDataframe("data.csv", infetScema = True)
  ```

Ans: A, B & C.

- _This is a generic read command._

- _This command is a specific read command for csv._

- _Spark supports querying the data without loading it first. This can also be a way to read in the data._

In the next segment, we shall cover some other ways in which we can source the data.
