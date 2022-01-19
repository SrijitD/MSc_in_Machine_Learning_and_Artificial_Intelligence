# Basics of Pandas

Pandas has two main data structures as mentioned below. 

- Series
- Dataframes 

The more commonly used data structure is DataFrames. So, most of this session will be focused on DataFrames. When you encounter a series data structure, Behzad will explain it briefly to you. Let's begin the session by understanding Pandas DataFrames. 

## DataFrame

It is a table with rows and columns, with rows having an index each and columns having meaningful names. There are various ways of creating dataframes, for instance, creating them from dictionaries and reading from .txt and .csv files. Let’s take a look at them one by one. 

**Creating dataframes from dictionaries**

If you have data in the form of lists present in Python, then you can create the dataframe directly through dictionaries. The ‘key’ in the dictionary acts as the column name, and the ‘values’ stored are the entries under the column.   
 

You can refer to the Notebook provided below for this segment.

Next, the following video will demonstrate creating DataFrames from dictionaries.

To create a dataframe from a dictionary, you can run the following command:

`pd.DataFrame(dictionary_name)`

You can also provide lists or arrays to create dataframes; however, you will have to specify the column names as shown below.

pd.DataFrame(dictionary_name, columns = ['column_1', 'column_2'])

**Creating dataframes from external files**

Another method to create dataframes is to load data from external files. Data may not necessarily be available in the form of lists. Mostly, you will have to load the data stored in the form of a CSV file, text file, etc. Let’s watch the next video and understand how to do that.

Before you proceed, please download the file 'cars.csv' provided below.

**VIDEO**

Pandas provides flexibility to load data from various sources and has different commands for each of them. You can go through the list of commands [here](https://pandas.pydata.org/pandas-docs/stable/reference/io.html). The most common files that you will work with are CSV files. You can use the following command to load data into a dataframe from a CSV file:

pd.read_csv(filepath, sep=',', header='infer')

You can specify the following details:

- separator (by default ‘,’)
- header (takes the top row by default, if not specified)
- names (list of column name)

### Loading a csv in Pandas

#### Problem

Description

Create a dataframe from the file ‘[marks.csv](https://media-doselect.s3.amazonaws.com/generic/A08MajL8qN4rq72EpVJbAP1Rw/marks_1.csv)’ and print the contents of the dataframe. Open the file from the link above and inspect the required elements in the file (header, separator, etc.). If the top row is a regular entry, do not load it as the column header.

#### Solution

```python
import numpy as np
import pandas as pd

# The file is stored at the following path:
# 'https://media-doselect.s3.amazonaws.com/generic/A08MajL8qN4rq72EpVJbAP1Rw/marks_1.csv'
# Provide your answer below
# Write your answer here
df = pd.read_csv('https://media-doselect.s3.amazonaws.com/generic/A08MajL8qN4rq72EpVJbAP1Rw/marks_1.csv', sep='|', header=None)

print(df)
```
