# Describing Data

In the previous segment, you learnt how to load data into a dataframe and manipulate the indices and headers to represent the data in a meaningful manner. Let's first load the data that will be used in the demonstrations in this segment. You can use the Jupyter Notebook provided below to code along with the instructor.

In the following video, Behzad will demonstrate a different way of hierarchical indexing.

**VIDEO**

### Hierarchical Indexing

#### Problem

Description

You are provided with the [dataset](https://media-doselect.s3.amazonaws.com/generic/NMgEjwkAEGGQZBoNYGr9Ld7w0/rating.csv) of a company which has offices across three cities - Mumbai, Bangalore and New Delhi. The dataset contains the rating (out of 5) of all the employees from different departments (Finance, HR, Marketing and Sales). 

Create a hierarchical index based on two columns: Office and Department

Print the first 5 rows as the output. Refer to the image below for your reference.

![](https://media-doselect.s3.amazonaws.com/generic/g7aveJBgGJKbypd7pz97GMgXR/04.%20Hierarchical%20Indexing.PNG)

Note: You should not sort or modify values in other columns of the dataframe.

#### Solution

```python
import numpy as np
import pandas as pd

# The file is stored at the following path:
# 'https://media-doselect.s3.amazonaws.com/generic/NMgEjwkAEGGQZBoNYGr9Ld7w0/rating.csv'
df = pd.read_csv('https://media-doselect.s3.amazonaws.com/generic/NMgEjwkAEGGQZBoNYGr9Ld7w0/rating.csv', index_col = [2,1])

# Provide your answer below

print(df.head())
```

Now that you know how hierarchical indexing is done and what its benefits are, let's take a look at the ways of extracting information from a DataFrame. In this segment, you will learn some basic functions that will be useful for describing the data stored in the dataframes. The same Notebook will be used in the next segment as well.

**VIDEO**

While working with Pandas, the dataframes may hold large volumes of data; moreover, it would be an inefficient approach to load the entire data whenever an operation is performed. Hence, you must use the following code to load a limited number of entries:

`dataframe_name.head()`

By default, it loads the first five rows, although you can specify a number if you want fewer or more rows to be displayed. Similarly, to display the last entries, you can use the `tail()` command instead of `head()`.  
 

In the video provided above, you learnt about two commands that give statistical information. They are as follows:

- `dataframe.info()`: This method prints information about the dataframe, which includes the index data types and column data types, the count of non-null values and the memory used. 
- `dataframe.describe()`: This function produces descriptive statistics for the dataframe, that is, the central tendency (mean, median, min, max, etc.), dispersion, etc. It analyses the data and generates output for both numeric and non-numeric data types accordingly. 

Now, let’s try to visually understand the findings of the describe function using a box plot.

**VIDEO**

#### Describing Data

Which of the following commands would you use to check the count of all the entries in each column in the dataframe as well as the count of the non-null entries in each column in the dataframe at the same time?

- `describe()`

- `info()`

- `size()`

- `shape()`

Ans: B. *This is the correct answer. This function shows the range of indices for the count of all the entries in the column and maintains a count of non-null values for each column individually*

### DataFrames

#### Problem

Description

Given a dataframe 'df' use the following commands and analyse the result.

`describe() 
columns
shape`

#### Solution

```python
import numpy as np
import pandas as pd
df = pd.read_csv('https://query.data.world/s/vBDCsoHCytUSLKkLvq851k2b8JOCkF')
print(df.describe())#Type your code for describing the dataset)
print(df.columns)#Type your code for printing the columns of the dataset)
print(df.shape)#Type your code for printing the shape of the dataset)
```

In the next segment, you will learn how to slice and index the data in a dataframe.
