# Graded Questions

**Note:** The questions all questions in this quiz are **'graded'.** All the best!

For question 3, 4 and 5 use the following dataset.

Download [Data file for Q3 Q4 and Q5](employees_1.json)

#### Read command

Qn: The following read command was used to read data and it was executed successfully.  

_spark.read.load(“filename.fileformat”)_

What should be the file format here?

- CSV

- JSON

- ORC

- parquet

Ans: D. *Yes, if no format is specified spark by default considers parquet*

#### Reading data

Qn: The following command was used to create a spark session.

```python
Spark = SparkSession.builder.appName(‘HIVE’).getOrCreate()
```

This spark session is now used to connect to HIVE tables. Hence, this session will execute HIVE queries.

State whether the above is True or False.

- True

- False

Ans: B. _This session will not be able to execute HIVE queries as it has not enabled HIVE._

#### Reading data

Qn: Read the JSON file attached on this page, into your spark application and answer the following question.

The data type of the column salary and DOB is _**and**__ respectively. Fill in the blanks with the correct options.

- integer, string

- string, integer

- string, date

- string, string

Ans: D. _Correct. to read the file into spark application you can use this code._

```python
df = spark.read.json('employees_1.json')
```

_Then you need to print the schema of the data frame to check the data types. Use the following code for it._

```python
df.printSchema()
```

#### Casting Data Types

Qn: In the previous question, you read in a data file with will all string columns. Now your task is to add new columns by converting the salary and date to the right data types. Form the following make the correct code segments to complete your task.

More than one option can be correct.

- ```python
  df = df.withColumn('salary_int',df["salary"].cast(Integer()))
  ```

- ```python
  df = df.withColumn('salary_int',df["salary"].cast(IntegerType()))
  ```

- ```python
  df = df.withColumn('DOB_date',df["DOB"].cast(DateType()))
  ```

- ```python
  df = df.withColumn('DOB_date',df["DOB"].cast(Date()))
  ```

Ans: B & C. _This will add a column with salaray as integer and  DOB as a date. But do be careful this works inly when the date is in iso 8601 date format. If the format does not match then the string date casting will return null values._

#### Write Data

Qn: In the earlier question, you converted the salary and the date columns to the right data types. Now to save the dataframe with only the two corrected columns (salary_int, DOB_date) as a csv file on the EC2 instance, which of the following code will correct? More than one option can be correct.

- ```python
  df.write.csv('emplyee_corrected', Header = True)
  ```

- ```python
  df.select('salary_int','DOB_date').write.csv('emplyee_corrected.csv')
  ```

- ```python
  df.select('salary_int','DOB_date').write.option("header", "true").csv('emplyee_corrected.csv')
  ```

- ```python
  df.write.option("header", "true").csv('emplyee_corrected.csv')
  ```

Ans: B & C. _This code will write a file to the current directory in the csv format there will be only the selected columns._
