# Data Types

In this segment, we will discuss a very important aspect of any data set: Data types. In a particular data set, you have multiple types of variables with different kinds of data types such as integers, string, floats, etc.

For data analysis, you will use the following libraries through the entire module, which you must have already covered in prep content:

- **Pandas:**  It is a library to deal with dataframes in Python. Pandas is an acronym derived from panel data. It is solely used for data analysis purposes in Python.
- **NumPy:**  This library is used for performing numerical operations on data sets.

Now, in the forthcoming video, we will go through the bank marketing data set with Rahim and try to find out the data types that are present in it.  

**VIDEO**  

#### Python Libraries

Qn: What are the key features of the Pandas library?

- Data alignment
- Memory-efficient
- Reshaping
- Merge and join

Ans: All of the above. _Pandas is the library in Python which deals with the data frames. It is very user-friendly while handling big data sets. It is a memory-efficient library. Furthermore, it also provides many other data operations, such as merging, joining or reshaping the datasets._

#### Data Cleaning

Qn: From the options below, choose the appropriate data type for numeric type of data.

- int64, object, timedelta[ns]
- float64, int64
- datetime64, float64, object
- bool, datetime64

Ans: B, _Both float64 and int64 are of the numeric data type._  

In general, any data set is expected to have data of different types. Here are some examples of data along with their data types.  

![Data_Types](https://i.ibb.co/c6PQy3J/Data-Types.png)

#### Data Type

Qn: Let's say there is a column in a dataset which essentially contains numerical values. But its data type is an object, which needs to be rectified and should be converted into int or float type.

Choose the correct command to convert such object type column in a dataframe into integer or float type. Multiple options may be correct.

- df["feature"]= df["feature"].astype(int)
- df.["feature"]= df.["feature"].astype(int)
- df["feature"]= df["feature"].astype(float)
- df.["feature"]= df.["feature"].astype(float)

Ans: A, C. _These two particular commands can be used to convert any type of variable into int or float._  

#### Data Type

Qn: Find the average age of the customers in the bank marketing data set.

- 51
- 40
- 50
- 41

Ans: 41. _Convert the age variable into numeric type from object type, which can be an integer, and then find the mean._

    df['age'] = df['age'].astype('float')
    df['age'].mean()

In the next segment, you will learn about the steps in the data cleaning process, specifically, fixing the rows and columns.  
