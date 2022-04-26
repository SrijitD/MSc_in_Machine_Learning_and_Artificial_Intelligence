# ML Lib Overview

In this segment, you will go through a few data preparation steps that are usually performed before building a machine learning model. This exercise is meant to give you a quick understanding of the MLlib API and also make you comfortable using it.

An **important note** as you move along the course is you will be using **Spark ML library** which is a **dataframe based API**, unlike mllib library which is an RDD based API. Spark Mllib is expected to be removed in the upcoming versions.

We will be making use of an automobile dataset with various features such as the number of CYLINDERS, DISPLACEMENT, HORSEPOWER, WEIGHT, and ACCELERATION for this exercise. The data has numerous missing and garbage values that will be handled as a part of the data preparation steps. You can download the notebooks and datasets used for this exercise here.

Download [ML_Lib_Overview](ML_Lib_Overview_Basics.ipynb)

[Dataset - MLlib Overview](auto-miles-per-gallon-Raw.csv)

**Important Note**: These codes are written in PySpark. While running them on your EC2 instances make sure you have configured your instances to run jupyter notebooks and also all the environment variables set to run spark applications.

**VIDEO**

The first step of data preparation is interacting with Spark and reading the data into a DataFrame. You can do this using the read() method, mentioning the file type and the file path.

The read() method is available through the SparkSession and also supports various optional methods for indicating the header and schema. By setting the header to true, Spark treats the first row in the DataFrame as the header and the rest of the rows as samples. Similarly, by setting "inferschema" to true, Spark automatically infers the schema of the dataset. You have already been through this in the previous course.

The columns with garbage values (MPG and HORSEPOWER) were auto inferred to the data type string. You can cast them to type double by using the **.cast()** method. After casting the columns, the entries with garbage values and NA will be converted to null. In the next segment you will learn how to handle this scenario.

#### Reading Data

Qn: If don’t you make use of the option "inferschema" or if you set the particular option to be "false". The attributes of the dataframe will automatically casted to which of the following data type?

- Integer

- Double

- String

- Compilation Error

Ans: C. *The option inferschema, infers the schema of the dataframe automatically. On not specifying this option all the attributes in the dataframe take the data type string. You won’t get a compilation error if you don’t make use of .option() methods.*

#### Importing Data

Qn: You can read which of the following file formats into a DataFrame using the read() method?

- CSV

- JSON

- Parquet

- TextFile

Ans: All of the above. *The read() method can read CSV, Json, parquet and Text file formats into a dataframe.*
