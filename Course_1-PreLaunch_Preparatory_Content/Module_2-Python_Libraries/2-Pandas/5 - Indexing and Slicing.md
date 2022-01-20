# Indexing and Slicing

There are multiple ways to select rows and columns from a dataframe or series. In this segment, you will learn how to:

- Select rows from a dataframe,
- Select columns from a dataframe, and
- Select subsets of dataframes.

Selection of rows in dataframes is similar to the indexing that you saw in NumPy arrays. The syntax `df[start_index:end_index]` will subset the rows according to the start and end indices. 

However, you can have all the columns for each row using the function provided above. With the introduction of column labels, selecting columns is no more similar to arrays. Let’s watch the next video and understand how to select the required column(s) from a dataframe.

The Notebook given above will help you in this segment. In the following video, Behzad will explain how to extract data from a DataFrame.

**VIDEO**

You can select one or more columns from a dataframe using the following commands:

- `df['column']` or `df.column`: It returns a series.
- `df[['col_x', 'col_y']]`: It returns a dataframe.

**Pandas Series Data Type**

To visualise a pandas series easily, it can be thought of as a one-dimensional (1D) NumPy array with a label and an index attached to it. Also, unlike NumPy arrays, they can contain non-numeric data (characters, dates, time, booleans, etc.). Usually, you will work with Series only as part of dataframes. 

You can create a Pandas series from an array-like object using the following command:  
`pd.Series(data, dtype)`

### Selecting Columns of a Dataframe

#### Problem

Description

Print out the columns 'month', 'day', 'temp', 'area' from the dataframe 'df'.

#### Solution

```python
import io
import requests
import pandas as pd
c = requests.get('https://query.data.world/s/vBDCsoHCytUSLKkLvq851k2b8JOCkF', verify=False)
s = c.content
df = pd.read_csv(io.StringIO(s.decode('utf-8')))

df_2 = df.loc[:, ["month", "day", "temp", "area"]]
print(df_2.head(20))
```

The methods discussed above allow you to extract columns. But, how would you extract a specific column from a specific row? 

Let’s watch the following video and understand how to do this over Pandas dataframes.

**VIDEO**

You can use the `loc` method to extract rows and columns from a dataframe based on the following labels:

`dataframe.loc[[list_of_row_labels], [list_of_column_labels]]`

This is called **label-based indexing** over dataframes. Now, you may face some challenges while dealing with the labels. As a solution, you might want to fetch data based on the row or column number.

As you learnt in the video provided above, another method for indexing a dataframe is the `iloc` method, which uses the row or column number instead of labels.

`dataframe.iloc[rows, columns]`

Since positions are used instead of labels to extract values from the dataframe, the process is called **position-based indexing**. With these two methods, you can easily extract the required entries from a dataframe based on their labels or positions. The same set of commands, `loc` and `iloc` , can be used to slice the data as well. In the following video, Behzad will demonstrate the slicing of DataFrames.

**VIDEO**

### Indexing Dataframes

#### Problem

Description

Print only the even numbers of rows of the dataframe 'df'.  

Note: Don't include the row indexed zero.

#### Solution

```python
import io
import requests
import pandas as pd
c = requests.get('https://query.data.world/s/vBDCsoHCytUSLKkLvq851k2b8JOCkF', verify=False)
s = c.content
df = pd.read_csv(io.StringIO(s.decode('utf-8')))

df_2 = df[2: :2]
print(df_2.head(20))
```

#### Indexing and Slicing

Take a look at the dataframe (‘df’) provided below.

![](https://images.upgrad.com/5b76cba2-c316-45e8-a646-5e5823fc2935-02.%20iloc%20vs%20loc.PNG)

Which of the code(s) below will fetch the row containing the following data?

[**S. No.**: 3, **Name**: Vikas, **Subject**: Mathematics, **Percentage**: 84]

- `df.loc[[2], ["S.No.", "Name", "Subject", "Percentage"]]`

- `df.loc[[3], ["Name", "Subject", "Percentage"]]`

- `df.iloc[[3], [0, 1, 4]]`

- `df.iloc[[2], [0, 1, 4]]`

- `df.loc[[2], [0, 1, 4]]`

Ans: B.

- *The `loc` function takes input in the form of labels. The specified row has the row label ‘3’ and the columns specified are also correct.*

- *The `iloc` function takes input in the form of position. The specified row is at index ‘2’ (starts at 0) and the columns specified are also correct.*

#### iloc vs loc

Qn: What is the difference between the use of `iloc` and `loc`?

Ans: *The functionalities of `iloc` and `loc` are different; `iloc` fetches the rows/columns at a particular position (and hence takes an integer as input), whereas `loc` fetches rows/columns with particular labels.*

## Subsetting Rows Based on Conditions

Often, you want to select rows that meet some given conditions. For example, you may want to select all orders where Sales > 3,000, or all orders where 2,000 < Sales < 3,000 and Profit < 100. Arguably, the best way to perform these operations is to use df.loc[], since df.iloc[] would require you to remember the integer column indices, which is tedious. Let’s start with one condition to filter the elements in the dataframe.

**VIDEO**

As you learnt in this video, you can easily segregate the entries based on the single or multiple conditions provided. To get the desired results by subsetting the data, it is important to have well-written conditional statements.

Next, you already know the basic conditional operators such as "<" or ">". There are a couple of other functions as well that might come in handy while handling real-life data sets. These are `isin()` and `isna()`. 

- `isin()`: Similar to the membership operator in lists, this function can check whether the given element 'is in' the collection of elements provided. 
- `isna()`: It checks whether the given element is null/empty. 

In the Notebook given to you at the beginning of the segment, there are six examples in total. The last two are not essential to the learning of this segment. They are given as practice examples for you to explore and learn by yourself. Some context is provided for both these examples in the Notebook, and the necessary links are also given.

### Applying Conditions on Dataframes

#### Problem

Description

Print all the columns and the rows where 'area' is greater than 0, 'wind' is greater than 1 and the 'temp' is greater than 15.

#### Solution

```python
import io
import requests
import pandas as pd
c = requests.get('https://query.data.world/s/vBDCsoHCytUSLKkLvq851k2b8JOCkF', verify=False)
s = c.content
df = pd.read_csv(io.StringIO(s.decode('utf-8')))

df_temp = df[df.area > 0]
df_temp = df_temp[df_temp.wind > 1]
df_2 = df_temp[df_temp.temp > 15]
print(df_2.head(20))
```

In the next segment, you will learn how to run operations over the dataframes; this will help you create or modify the stored data.
