# Operations on Dataframes

So far, in this session, you have been working with a dummy data set, and the functions that were performed on the data were more theoretical than practical. From this point, you will be working with a real-life data set. Find the dataset and the Notebook used from this point onwards linked below.

The dataset contains weather data from Australia, and the same data is being used by an FMCG company to predict sales in its stores. Before going into the details of the tasks that you will be performing in this session, let’s watch the upcoming video where Behzad will share some more details on the same.

**VIDEO**

As you saw in this video, the dataset contains weather data from Australia. Now, let's take a look at the data dictionary given below.

1. **Date**: The date on which the data was recorded
2. **Location**: The location where the data was recorded
3. **MinTemp**: Minimum temperature on the day of recording data (in degrees Celsius)
4. **MaxTemp**: Maximum temperature on the day of recording data (in degrees Celsius)
5. **Rainfall**: Rainfall in mm
6. **Evaporation**: The so-called Class A pan evaporation (mm) in 24 hours up to 9 am
7. **Sunshine**: Number of hours of bright sunshine in the day
8. **WindGustDir**: Direction of the strongest gust of wind in 24 hours up to midnight
9. **WindGustSpeed**: Speed (km/h) of the strongest gust of wind in 24 hours up to midnight

The type of data that is recorded after a specific time period is called time-series data. The data being used in this case study is an example of time-series data. The observations in the data are recorded periodically after 1 day. We will have a brief discussion on how to work with time-series data a bit later in the session; for now, let’s focus on the dataset and the tasks associated with it. In the upcoming video, Behzad will begin solving the examples given in the Notebook. 

**VIDEO**

You are already familiar with the filter function, which was used to solve the problem given in this video. Similar to filtering in NumPy, running a Pandas DataFrame through a conditional statement also returns boolean values. These boolean values can be used to slice out data. 

The next important task that you will learn is to create new columns in the DataFrame. Frankly speaking, creating new columns is as simple as assigning a column to the output of an operation that you are carrying out. Although it might seem not so simple, it really is; it will become clear after you watch the demonstration.

To create new columns, you will use the time-series functionality. Before moving on to the actual demonstration, let’s discuss a time series briefly.

## Handling Time-Series Data

Time-series data refers to a series of data points that are indexed over time. The data is recorded over regular time intervals and is stored along with the time it was recorded. Some common examples of time series include stock prices, temperature and weather report; this information would make sense only when presented with the time it was recorded.

If a date-time variable has values in the form of a string, then you can call the ‘parse_dates’ function while loading the data into the Pandas DataFrame. This will convert the format to date-time for that particular variable. Fortunately, no such data-type conversion is required in the given dataset. In the upcoming video, you will learn how to extract the series data.

**VIDEO**

As you saw in this video, once data is loaded in a date-time format, Pandas can easily interpret the different representations of date and time.

Apart from handling time-series data, another important feature of a DataFrame is the user-defined functions. In the previous module, you have already seen that lambda functions are the most accessible of all types of user-defined functions. Before proceeding further, let’s take a quick look at lambda functions again.

## Lambda Functions

Suppose you want to create a new column ‘is_raining’ that categorises days into rainy or not rainy based on the amount of rainfall. You need to implement a function that returns ‘Rainy’ if rainfall > 50 mm and ‘Not raining’ otherwise. This can be done easily by using the apply() method on a column of the DataFrame. You will see a demonstration of the same in the upcoming video. 

**VIDEO**

In this video, you saw the use of the apply() method to apply a simple lambda function on a column in the DataFrame. Now, the next step is to add the data in a new column to the DataFrame. Let’s watch the next video for a demonstration of this step. 

**VIDEO**

### Employee Training

#### Problem

Description

You are provided with the [dataset](https://media-doselect.s3.amazonaws.com/generic/NMgEjwkAEGGQZBoNYGr9Ld7w0/rating.csv) of a company which has offices across three cities - Mumbai, Bangalore and New Delhi. The dataset contains the rating (out of 5) of all the employees from different departments (Finance, HR, Marketing and Sales). 

The company has come up with a new policy that any individual with a rating equal to or below 3.5 needs to attend a training. Using dataframes, load the dataset and then derive the column ‘Training’ which shows ‘Yes’ for people who require training and ‘No’ for those who do not.

Print the first 5 rows as the output. Refer to the image below for your reference.

![](https://media-doselect.s3.amazonaws.com/generic/QRJ27vaKx7XVW3B2nag54Bepv/03.%20Employee%20Rating.PNG)

Note: You should not sort or modify values in other columns of the dataframe.

#### Solution

```python
import numpy as np
import pandas as pd

# The file is stored at the following path:
# 'https://media-doselect.s3.amazonaws.com/generic/NMgEjwkAEGGQZBoNYGr9Ld7w0/rating.csv'
df = pd.read_csv('https://media-doselect.s3.amazonaws.com/generic/NMgEjwkAEGGQZBoNYGr9Ld7w0/rating.csv')

# Provide your answer below
df["Training"] = df.Rating.apply(lambda x: "Yes" if x <= 3.5  else "No")
print(df.head())
```

#### Dataframe

Qn: In the dataframe created above, find the department that has the most efficient team (the team with minimum percentage of employees who need training).

- Finance

- HR

- Sales

- Marketing

Ans: B. *This is the correct answer. You have to divide the count of employees who do not need training in each department by the total employee count of the department. You can go through the syntax below for reference:*

```python
for i in ['Finance', 'HR', 'Sales', 'Marketing']:
    print(i, len(rating[(rating['Training'] == 'No') & (rating['Department'] == i)]) / len(rating[rating['Department'] == i]) * 100)
```



The columns that are created by the user are known as ‘**derived variables**’. Derived variables increase the information conveyed by a DataFrame. Now, you can use the lambda function to modify the DataFrames. 

In the upcoming segments, you will learn how to use the groupby function to aggregate the created DataFrame.

## Additional Resources

Here is a video tutorial on [slicing and indexing using Pandas](https://www.youtube.com/watch?v=SYNEHBofpGE).
