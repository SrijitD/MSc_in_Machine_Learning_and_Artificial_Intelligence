# Pandas: Rows and Columns

An important concept in Pandas dataframes is that of the row and column indices. By default, each row is assigned indices starting from 0, which are represented to the left of the dataframe. For columns, the first row in the file (csv, text, etc.) is taken as the column header. If a header is not provided (header = none), then the case is similar to that of row indices (which start from 0).

The Pandas library offers the functionality to set the index and column names of a dataframe manually. Now, let's understand how to change or manipulate the default indices and replace them with more logical ones. The required Notebook is the same as given in the previous segment.

**VIDEO**

You can use the following code to change the row indices:

`dataframe_name.index`

To change the index while loading the data from a file, you can use the attribute 'index_col':

`pd.read_csv(filepath, index_col = column_number)`

It is also possible to create multilevel indexing for your dataframe; this is known as **hierarchical indexing**. Let’s watch the following video and understand how to do it.

**VIDEO**

For a column header, you can specify the column names using the following code:

`dataframe_name.columns = list_of_column_names`

#### Setting the Index

Qn: Which of the following functions is used to change the name of an existing index in a dataframe?

- `df.set_index` 

- `df.index_name` 

- `df.index.name` 

- `df.index.change`

Ans: C. *This function is used to change the name of the index. You can simply provide a new name as follows: `df.index.name = 'new_name'`.*

### Loading a csv with index

#### Problem

Description

Using the file ‘[marks.csv](https://media-doselect.s3.amazonaws.com/generic/A08MajL8qN4rq72EpVJbAP1Rw/marks_1.csv)’, create a dataframe as shown below.

![](https://media-doselect.s3.amazonaws.com/generic/0rjOooeKe4RQwnebLP8pzOaPV/01.%20Coding%20Question.PNG)

You must be able make the first column of the file as the index and name it 'S.No.'. Also, the columns must be renamed as shown in the image.

#### Solution

```python
import numpy as np
import pandas as pd

# The file is stored at the following path:
# 'https://media-doselect.s3.amazonaws.com/generic/A08MajL8qN4rq72EpVJbAP1Rw/marks_1.csv'
# Provide your answer below
df = pd.read_csv('https://media-doselect.s3.amazonaws.com/generic/A08MajL8qN4rq72EpVJbAP1Rw/marks_1.csv', sep='|', header=None, index_col=0) # Write your answer here
df.columns = ['Name', 'Subject', 'Maximum Marks', 'Marks Obtained', 'Percentage']
df.index.name = "S.No."
print(df)
```

In the next segment, you will learn the methods of extracting statistical information from DataFrames.
