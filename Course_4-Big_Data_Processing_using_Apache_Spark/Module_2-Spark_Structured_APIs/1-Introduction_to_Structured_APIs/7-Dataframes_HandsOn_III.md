# Dataframes Hands-on III

In this segment, you will learn about the grouping and the aggregate commands. The function of these commands can be interpreted easily from their names. Let’s listen to Sajan as he explains how to implement these commands in Spark in the next video.

**VIDEO**

groupBy and aggregate functions are very much like pivot tables in Excel. Users can quickly segment the dataset based on categorical variables, and get some aggregation done. In pivot tables one used the GUI whereas here it is done by coding.

When a groupBy command is called alone, it just creates a groupBy object. When the object is printed the output is not a dataframe segregated by the column specified in the command, it is simply a groupBy object and its memory location. Only the instructions to the group are not enough, the aggregation to be done on the group also needs to be specified. Even after specifying the aggregation function, the command does not show the output it simply shows that the command has created a dataframe. To actually see the result one needs to call an action as well like .show() or .collect().  Now let’s look at the implementation of functions in Spark.

Consider a groupby command shown in the video.

```python
df.groupBy("company").max().show()
```

This command will do the aggregation for all the columns. For example, if the dataset had more columns like monthly sales, the number of units sold and so on, the aggregation gets applied to all the columns. If you want to select column specific columns, those columns need to be specified in the command itself.

```python
df.groupBy("company").max('monthly_sales','units_sold').show()
```

**VIDEO**

Apart from the ones shown by Sajan, there are a number of inbuilt functions available in Spark. [Official Spark documentation](http://spark.apache.org/docs/2.4.4/api/python/pyspark.sql.html#module-pyspark.sql.functions) will give you an exhaustive list of the available functions.

All these commands and their usage creates a strong repertoire of options to perform basic EDA on all kinds of data sources. Let this be a starting point for your deep dive into the Spark environment. We will now take a look at Spark SQL and then solve some questions based on our hands-on learning in this session.

#### Dataframes

Qn: Consider the following code:

```python
df2 = df.select(df.name).orderBy(df.name.desc())
```

df2  is a dataframe with:

- All columns in df in ascending order

- All columns in df in descending order

- All rows in the 'name' column in descending order

- All rows in the 'name' column in ascending order

Ans: C. *The name column and in descending order.*

Qn: Consider the following code:

`df.describe()`

Qn: What will be the output of the code?

- The statistical description of all columns in df

- The object df and its memory location

Ans: B. *Correct. When we call .describe() it returns the object and the memory location. To see the statistical information we need to call .show over it.*

Now let's understand the next programing API, SQL.

Download [Dataframes GroupBy Aggregates](Dataframes_GroupBy_Aggregates)

Download [Dataframe Assessment Notebook](Bitcoin_Assessment.ipynb)
