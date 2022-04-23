# Summary

In this session, you learnt about structured APIs in Spark and how to perform analysis on them. Let us quickly revise all the concepts that you have learnt in this session:

- **RDDs** have a few limitations due to which there is a need for another API for analysing data. Some of those limitations are:

  - The low-level abstraction of data
  - Unstructured data is abstracted using RDDs. RDDs cannot handle structured data  

- Spark provides two APIs for structured data:

  - Dataframes

  - Datasets (these are not available in Python)  

- **Dataframes** are a Spark API that can be used in place of RDDs for analysing structured data along with high-level abstraction.  

- **Datasets** contain a combination of the features of both RDDs and dataframes.  

- Dataframes can be used for data analysis in Spark. The data inside Dataframes can be manipulated using different dataframe commands. Some of these commands are as follows:

    1. df.filter(Condition)

    2. df.collect()

    3. df.groupBy()

    4. df.describe

- **Spark SQL** allows us to run SQL- and HIVE-type queries on dataframes. With the ability to connect to a wide variety of data sources and the simplicity of SQL-type queries, SparkSQL becomes a very powerful tool and is accessible to a lot of people.

So, now that you have learnt about structured APIs in Spark in detail, let us proceed to the graded questions in the next segment.
