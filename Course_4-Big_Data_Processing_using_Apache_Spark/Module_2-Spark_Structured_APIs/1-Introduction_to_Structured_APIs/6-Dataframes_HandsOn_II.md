# Dataframes Hands-on II

The next important command that you will learn is the filter() command. It is one of the most commonly used commands in dataset manipulation. In the following video, you will learn about the usage and syntax of the filter command in the following video.

**VIDEO**

**Filter Command:**

The filter() command can be called on a dataFrame directly. As an argument to the filter method, we give the column name and specify the condition over the column. There are multiple ways to apply filter commands.

The argument to the filter command can also be given in the SQL syntax.

```python
df.filter("column>500").show()
```

It can also be called using a column type object.

```python
df.filter(df['column']>500)
```

If a column name has a space in it the filter condition will throw an error. As a standard practice, whenever you encounter a column name with space in it, rename the column with one single-word name. If you can't do that, a slight modification to the SQL syntax should make it work. You can use wrap the column name in backtick (`) .

```python
df.filter(' `High Price` < 5 ').show()
```

You can also use the column type object to specify the filter condition no change is needed there.

```python
df.filter(df['High Price']<5).show()
```

**VIDEO**

The filter command can also handle multiple filter conditions. You can provide the conditions under a single command using the logical operators or through multiple filter commands. Spark will handle both the methods in a similar manner as long as there is no action between the filters. This is because Spark will combine the filters internally while executing them. It is possible because of two reasons: lazy evaluation and the catalyst optimiser. This ability will be explored in detail in the next session. Having said that, if you have to apply multiple filters, then you can use the operators listed in the table below.

| **Logical Operators** | **Symbols** |
| --------------------- | ----------- |
| and                   | &           |
| or                    | \|          |
| not                   | ~           |
| equal to              | ==          |

If you wish to apply a filter based on multiple conditions, then it is a good practice to write conditions on column-type objects rather than SQL-type conditions.

**VIDEO**

So, in the video, you learnt about the collect() method. Just like in RDDs, the collect() command fetches all the elements in a dataFrame. The output of the collect() command is a list of row objects. All the list operations such as index and loop, which are used to extract elements, work on the list that is created.

Compared with the .show() command, which prints a dataFrame with only 20 rows, the collect() command collects all the rows in the dataFrame.

Consider a scenario where you are creating an application for filtering some data set. To take the full advantage of the internal optimisation and processing power of Spark, it is a common practice to build apps with a minimum number of action statements. In such a situation, if the dataset has a lot of features, then it would be quite difficult for the app user to remember the index of the feature. In such a situation, a dictionary could be a good tool to convert the row objects to dictionaries so that the values can be indexed with feature names. In the video, you learnt about the asDict method to do this.

Now, try and solve the following questions related to dataFrame programming based on your learning so far.

#### Dataframe Filtering

Qn: Suppose you are given a dataframe with the following columns:

*Roll_No, Age, Weight, Height, Medical_Alleries.*

You are supposed to find out the number of students whose weight is above 60 kg and height is greater than 5 feet. Which of the following commands will yield the required solution correctly?

- `df.filter((df['weight']>60.0) & (df['Height’]>5.0)).show()`

- `df.filter((df['weight']>60.0) ~  (df['Height’]>5.0)).show()`

- `df.filter((df['weight']>60.0) |  (df['Height’]>5.0)).show()`

- `df.filter((df['weight']>60.0) == (df['Height’]>5.0)).show()`

Ans: A. *The filter command filters the df according to the condition mentioned. The ‘&’ command is a logical operator, and it finds the output that fulfil both the conditions.*

#### Dataframes

Qn: Which of the following commands can you use in order to convert a ‘row’ into a dictionary?

- df.asDict(‘row’)

- row.asDict()

- df.asDict(df[row])

- row.asDict(df)

Ans: B. *You can convert a list into a dictionary easily using row_objecct.asDict()*

Let's continue learning about dataFrame API.

Download [Dataframe Filters](Dataframe_Filters)
