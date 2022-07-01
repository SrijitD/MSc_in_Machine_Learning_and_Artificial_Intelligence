# Data Cleaning and Preparation - I

Before you jump into the actual model building, you need to clean and prepare your data. As you saw in the last segment, all the useful information is present in three dataframes, with ‘Customer ID’ being the common column. So, as the first step, you need to merge these three data files so that you have all the useful data combined into a single master dataframe. 

**VIDEO**

Now that you have the master dataframe in place and you have also performed a binary mapping for a few categorical variables, the next step is to create dummy variables for features with multiple levels. The dummy variable creation process is similar to what you did in linear regression. 

**VIDEO**

**Note: At 3.22 - Rahim used the "convert_objects" function to convert the column from objects to numeric. This function is deprecated in newer version of Pandas. Instead, [pd.to_numeric](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.to_numeric.html) can be used.**

 So, the process of dummy variable creation is quite familiar, except this time, you manually dropped one of the columns for many dummy variables. For example, for the column ‘MultipleLines’, you dropped the level ‘MultipleLines_No phone service’ manually instead of simply using ‘drop_first = True’, which would have dropped the first level present in the ‘MultipleLines’ column. The reason we did this is that if you check the variables ‘MultipleLines’ using the following command, you can see that it has the following three levels:

![Dummy Variable Levels](https://i.ibb.co/fkyrknH/Dummy-Variable-Levels.png)

Now, out of these levels, it is best that you drop ‘No phone service’, as it is not of any use because it is anyway indicated by the variable ‘PhoneService’ that is already present in the dataframe.

To put it simply, the variable **‘PhoneService’** already tells you whether the phone services are availed by a particular customer or not. In fact, if you check the value counts of the variable 'PhoneService', you will get the following output.

![Levels of the Variable 'PhoneService'](https://i.ibb.co/923SQFR/Levels-of-the-Variable-Phone-Service.png)

Levels of the Variable 'PhoneService'

You can see that the level 'No' appears **682 times,** which is **exactly equal to** the count of the level 'No phone service' in 'MultipleLines'.

You can see that the dummy variable for this level, i.e., 'MultipleLines_No phone service', is clearly redundant, as it does not contain any extra information. Therefore, to drop it is the best option at this point. Similarly, you can verify it for all the other categorical variables for which one of the levels was manually dropped.

#### Level Counts

Qn: In the text given above, you saw that for the variable ‘MultipleLines’, the value counts of the levels ‘Yes’, ‘No’ and ‘No phone service’ are 3390, 2971 and 682, respectively. When you run the same command for the column ‘OnlineBackup’, what will the value count for its level ‘No internet service’ be? \[Hint: If you have dropped the 'OnlineBackup' column, you can read the data in a new variable called 'quiz'.]

- 3088

- 2429

- 2019

- 1526

Ans: D. *When you run the command, if you have not dropped 'OnlineBackup':*

```python
telecom['OnlineBackup'].astype('category').value_counts()
```

*or, if you read the internet_data.csv into quiz:*

```python
quiz['OnlineBackup'].astype('category').value_counts()
```

*you will get the following output:*

```python
No                     2785  
Yes                    2732  
No internet service    1526
Name: OnlineBackup, dtype: int64
```

#### Levels of Dummy Variables

Qn: If you check the value counts of the levels ‘OnlineBackup’, ‘OnlineSecurity’, ‘DeviceProtection’ and all the others for which one of the levels was dropped manually, you can see that the count of the level ‘No internet service’ is the same for all, that is, 1526. Can you explain briefly why this happened?

Ans: *This happened because the level ‘No internet service’ just tells you whether a user has internet service or not. Now, because the number of users not having internet service does not change, the count of this level in all of the given variables will be the same as the number of people not having internet. You can also check the value counts of the variable ‘InternetService’, and you will see that the output you get is:*

```python
Fiber Optic    3096
DSL            2421  
No             1526
Name: InternetService, dtype: int64
```

*Coincidence? No! This information is already contained in the variable ‘InternetService’. Therefore, the count will be the same for all the variables with the level ‘No internet service’. This is also the reason that we chose to drop this particular level.*

## Coming up

In the next segment, you will learn about the data cleaning and preparation steps.

Report an error