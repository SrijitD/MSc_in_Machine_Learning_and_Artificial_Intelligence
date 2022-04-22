# Dataframes Hands-on I

Now that you are familiar with dataFrames, let’s jump onto using them to analyse data in a Jupyter Notebook through Pyspark. Before you begin with the practice, you will need to set up the Spark environment on the Jupyter notebook for the same. An installation document has been attached below in order to explain the process of installation of Spark on Jupyter notebook on an EC2 instance.

Download [Jupyter Notebook on EC2](Docs/Installation_Guides/Jupyter_Notebook_on_EC2.pdf)

Run the Jupyter notebook as shown in the installation document. Before you start coding you need to configure the notebook. This can be done by running the following set of instructions. These instructions are meant to set the paths for home directories of Spark, Python and Java. Every time you open the notebook, first you need to run these commands. These commands make it possible to run Spark codes efficiently in the Jupyter notebook.

```python
import os
import sys
os.environ["PYSPARK_PYTHON"]="/home/ec2-user/spark-2.4.4-bin-hadoop2.7/python"
os.environ["JAVA_HOME"] = "/usr/java/jdk1.8.0_161/jre"
os.environ["SPARK_HOME"] = "/home/ec2-user/spark-2.4.4-bin-hadoop2.7"
os.environ["PYLIB"] = os.environ["SPARK_HOME"] + "/python/lib"
sys.path.insert(0, os.environ["PYLIB"] + "/py4j-0.10.7-src.zip")
sys.path.insert(0, os.environ["PYLIB"] + "/pyspark.zip")
```

Now, let us start with a basic session on dataFrames. To begin working with PySpark, you always need to create a SparkSession object. SparkSession is an advanced version of SparkContext and acts as the entry point to use the capabilities of the Spark framework in the later versions. It is a single interface for all the different contexts that existed earlier. We do not need to call each Spark context (SparkContext for RDDs, SQLContext for SQL queries, etc.) individually. All of them are included in the SparkSession. In the next video, you will see a demonstration of how it is done.

**VIDEO**

So, in the video, Sajan demonstrated the commands to  initiate a Spark session:

```python
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("Name of the app").getOrCreate()
```

Once the SparkSession object is ready, the next task is to read the data inside a dataFrame:

```python
df = spark.read.csv("file name.csv", inferSchema = True, header = True)
```

The .read method is used to read in the data, there are a lot of options that can be specified while reading the data. You will learn more about this in the upcoming sessions. Next in the video, you learnt about the commands to print the schema and the contents of the dataFrame. Keep in mind that the show() command by default shows only the first 20 rows of the dataFrame.

After loading the data inside the dataFrames, the next thing you should be able to do is slice and dice the data in different ways. Let's learn how to do this in the next video.

**VIDEO**

So, in the video, you learnt about the different methods to extract data row-wise and column-wise from a dataFrame. Most of the commands are quite intuitive:

- .withColumn() helps to add new columns to the dataFrame.

- .withColumnRenamed() function is used to rename the column names.

- .head() helps to extract the fixed number of rows from the dataFrame.  
    The output of the head command is a list of row objects. The function returns the starting rows from the dataFrame. The number of rows in the list is decided by an argument that is provided to the head function. Let's try to understand more about the row object.

**Row Object**  
A row object is a collection of attributes and their values. Each data point (row) in a dataFrame is stored as a row object. For example, consider the following row object:

```python
row1 = Row(age=27, name='Rahul').
```

The structure of the data can be understood from the row object. Multiple similar row objects when combined form a dataframe. The attributes of a row object can be accessed by using the dot syntax. For instance, row1.age will give 27 as output.

Rows can also be converted to dictionaries. In that case, the attributes and values become the keys and values, respectively, of the dictionary. You will see how this functionality is useful later in this session.  

#### Spark Session

Qn: Which of the following are the properties of a spark session?

- It provides a gateway to access all of the spark contexts functionality

- It can work with SQL APIs

- Spark context and spark session are the same

- Even after declaring a spark session, one needs to declare HIVE context for using HIVE

Ans: A & B.

- *With a spark session there is no need to create new spark context. A spark session combines all the different APIs.*

- *Spark session can work with different APIs no need for different spark context.*

Let's continue exploring coding using dataframe abstraction in the next segment as well.

Download [Dataframe Basics](Dataframe_Basics)
