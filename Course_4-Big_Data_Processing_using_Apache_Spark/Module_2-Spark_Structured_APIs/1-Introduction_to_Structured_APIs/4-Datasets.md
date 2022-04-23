# Datasets

Just like dataFrames, datasets are also high-level APIs capable of working with structured data in Spark. Dataset combines the advantages of RDDs like compile-time type safety with the advantages of dataframes like catalyst optimiser and the ease of high-level programming. Now, before we move forward, you should note that Datasets are only available in JVM compatible languages: they are available in Java and Scala, and not in Python. With this in mind, let’s take a look at some of the features of datasets explained in the upcoming video.

**VIDEO**

So, as you learnt in the video, the features of a Dataset are as follows:

- **High-Level API**: If you compare a code written in RDDs to a code written in datasets, then you will notice that the code written in the dataset abstraction is elegant, readable and short. Since the instructions given are high level, the Spark optimisation engine can figure out ways to improve the performance of the code. This is one of the features of dataframes that is also offered by datasets.  

- **Compile-time type safety**: It is the ability of dataset abstraction to catch errors in the code at compile time itself.
  
  Let's try to understand this in detail. Suppose while typing a code you make a syntax error or call a function that does not exist in the API. Then, an error will be raised during compilation. These errors are called syntax errors and dataframes also have the ability to catch such errors at compile-time, this is called **syntax error safety**. But what about logical mistakes that are made while coding?
  
  **But what about logical mistakes that are made while coding?**  
  For instance, let’s say you typed a wrong column name or made an integer operation on string type data. This category of errors is known as analysis errors. RDDs and datasets have compile-time analysis error safety as well. Consider a SQL-style code written in the dataFrame abstraction using Python:
  
  `df.filter("salary > 5000")`
  
  You will be practising coding on structured APIs in the upcoming segments. For now, let us break this code down and understand its details. This code is written in the dataFrame abstraction using Python. 'df' represents the dataframe that already exists. On that dataFrame, the 'filter' operation is being called with an argument that describes the required criteria.  

  Note that the actual condition is in string format. The compiler won’t be able to check the correctness of the statement. So even if you make a mistake here, for example, let’s say there was no column called salary in the dataFrame, the compiler will not raise an error. The error will only be raised at runtime when the string inside the filter is being run. Now consider the  same code written using dataset abstraction in Scala:
  
  `dataset.filter(_.salary < 5000);`
  
  The compiler, in this case, is able to read the actual condition as .salary is being called as a method over the dataset, not as a string. If there is no column named ‘salary’ in the dataset it will raise an error at compile time itself because the method will be invalid. By catching these errors at compile-time, datasets help save a lot of computational resources and developer time.  

  |                | SQL     | Dataframes    | Datasets     |
  | -------------- | ------- | ------------- | ------------ |
  | Syntax errors  | Runtime | Complile-time | Compile-time |
  | Analysis error | Runtime | Runtime       | Compile-time |

- **Encoders**: The primary function of an encoder is the translation between the heap memory, that is JVM memory and the off-heap memory. It achieves this by serialising and deserialising the data. Serialisation is the process of converting a JVM object into a byte stream. This conversion is necessary as off-heap memory does not understand objects, it understands byte streams. The data stored in off-heap memory is serialised in nature.
  
  When a Spark job is run, the job query is first optimised by Spark. At runtime, the encoder takes this optimised query and converts it into byte instructions. In response to these instructions, only the required data is deserialised. This also happens in the case of DataFrames.  

- **Reduction in memory usage**: Datasets “understand” the data as it is structured, and can create efficient layouts to reduce the memory usage while caching.

Please remember, though, that datasets are only available in Scala and Java. In Python, dataframes are only available in PySpark. Having said that, in recent versions of Spark,  dataframes have adopted all the functionalities of datasets, except for the features that come from the programming language itself, such as the benefits that come from a strongly-typed language. Scala is a strongly-typed language; this means that the rules of typing the code are stricter. All the variables and constants that are used in a program need to have a predefined datatype. However, in Python, it is okay to not define the data types.

As far as dataframes and datasets are concerned, they are the same thing in PySpark. Going forward we will use dataFrames in this course.

Now, try and answer a few questions based on your knowledge of datasets:

#### Dataframes vs Datasets

Qn: You are given a data set, which is quite large (in Gbs). Since it has a lot of columns, you are unsure you will remember all the column names. Which of the following APIs is the most suitable for calling column-type transformations on this kind of data?

- Dataset

- Dataframe

Ans: A. *If you don’t remember the column names, it will cause problems while calling those columns, the coding will become a bit easier if the abstraction can throw errors while compiling itself. A datasets programming paradigm is such that it can throw logical errors at compile time. So while writing the code itself the errors in column names will be highlighted.*

#### Encoders

Qn: What is the function of an encoder?

- Encryption of the data so that it is safe on the cluster

- Conversion of high-level instructions to an optimised query.

- Translation of optimised code to the off-heap memory

- Encoding categorical variables.

Ans: C.

#### RDDs vs Datasets

Qn: Which of the following are common features in both RDDs and datasets?

- Immutable

- Lazy evaluation

- In-memory

- Compile-time type safety

Ans: All of the above.

- *Both RDDs and dataframes are immutable.*

- *Both RDDs and dataframes are lazily-evaluated.*

- *Both RDDs and dataframes are evaluated in-memory.*

- *Both RDDs and dataframes have compile-time typy safety.*

So far, you have gained theoretical knowledge of structured APIs. In the next segment, you will perform hands-on analysis of these APIs on PySpark.

## Additional Reading

[RDD vs Dataframes vs Dataset](https://databricks.com/blog/2016/07/14/a-tale-of-three-apache-spark-apis-rdds-dataframes-and-datasets.html)  - (Databricks)

[RDD vs Dataframes vs Dataset](https://stackoverflow.com/questions/31508083/difference-between-dataframe-dataset-and-rdd-in-spark) [](https://stackoverflow.com/questions/31508083/difference-between-dataframe-dataset-and-rdd-in-spark) - (Stackoverflow)

[Datasets](https://www.ivan-nikolov.com/2019/03/15/spark-caching-rdd-vs-dataset/)
