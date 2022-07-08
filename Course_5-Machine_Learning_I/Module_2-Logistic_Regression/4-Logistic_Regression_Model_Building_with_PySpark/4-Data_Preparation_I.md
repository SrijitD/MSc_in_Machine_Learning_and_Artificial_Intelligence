# Data Preparation I

Now that you have learnt how to draw a small sample from a larger data set, the next step is to prepare the data for the machine learning algorithm. Note that machine learning algorithms take numerical values as input. Values in the string form need to be converted to integers. In the data set, most of the string type variables are categorical variables. Given below is a screenshot of the schema of the data. 

![Data preparation 1](https://i.ibb.co/x156NyB/Data-Preparation-1.png)

Some columns such as the banner position are represented as integers when they are actually categorical variables, not continuous variables. Representing such categorical variables with integers gives them an order that does not otherwise exist. For instance, the banner position 3 is not three times the banner position 1. So, you need to find a way to communicate only the category of that particular data point using integers and, at the same time, make sure that no other relation or order is communicated.

Similarly, different types of variables need to be handled differently to make sure the right amount of information is being conveyed. Before talking about encoding variables, let's understand the different types of categorical variables. 

1. **Nominal variables**: These are categories with no relation between them; you can think of them as tags. E.g., which hand do you write with, right or left? They have no relationship between them.  
2. **Ordinal variables**: These are categorical variables that follow an order. For example, the education level of people: graduate, postgraduate, doctorate. These are categories but they have an order between them. The education of a doctorate person is more than a graduate person. These can sometimes be input as integers, as there is an order among the categories.

Then there are variables depicting values such as temperature, height and weight. They need not be encoded; they can be input directly into ML algorithms. So, variables such as the banner position are nominal variables. Hence, we will one-hot encode them. 

**One-hot encoding**

As discussed earlier, you need to communicate the category without sharing any extra information. One-hot encoding creates K columns for K categories. Each category is represented by a vector of 0s, and each vector has only one ‘hot value’ or ‘1’. For example, the table given below shows various types of fruit and the calories that they contain.  
 

| **Fruit** | **Category** | **Calories per 100 gm** |
| --------- | ------------ | ----------------------- |
| Banana    | 1            | 89                      |
| Apple     | 2            | 52                      |
| Banana    | 1            | 89                      |
| Mango     | 3            | 60                      |

After one-hot encoding, the same metrics will look like the following.

| **Apple** | **Banana** | **Mango** | **Calories per 100 gm** |
| --------- | ---------- | --------- | ----------------------- |
| 0         | 1          | 0         | 89                      |
| 1         | 0          | 0         | 52                      |
| 0         | 1          | 0         | 89                      |
| 0         | 0          | 1         | 60                      |

The columns become hot only when a  category is present, hence the name 'one-hot encoding'. In the previous session, you used get_dummies() method to encode categorical variables. The output of get_dummies() is similar to the one shown above, but there are a couple of problems with using get_dummies(). The get_dummies() is not available in the PySpark library, and more importantly, encoding variables this way wastes a lot of space. 

In the next video, let’s observe how Jaidev implements one-hot encoding in PySpark.

**VIDEO**

The ML library in PySpark has a prebuilt transformer for one-hot encoding, that is, OneHotEncoder(). To implement it, you need to simply call the library and pass the column to encode. The estimator will provide the encoded output. Some changes are expected in this function in the future versions of Spark. **Please make sure that you read the Spark API documentation for clarity.**

The output of OneHotEncoder() does not look similar to what you learnt about earlier in this segment. The transformation that the OneHotEncoder does is the same as earlier, but the representation is changed to reduce the data size.

Recall the dummy variable transformation that Mirza did in the Python implementation. The output of that transformation is exactly what was explained above. It created K new columns to represent K categories. Most of the new columns were filled with zeros, which wasted a lot of memory. On the other hand, the output of OneHotEncoder() in PySpark is called a ‘**sparse matrix**’. Let’s interpret one value of the matrix to understand how the sparse matrix represents the same amount of information as a one-hot encoded vector. 

(7, \[0], \[1.0])

7 represents the number of columns in the matrix.   
0 is the position with a non-zero value.  
1 is the non-zero value at the 0th position.   
In the expanded form, (7, \[0],\ [1.0]) will be represented as 1, 0, 0, 0, 0, 0, 0.  
   
The anomaly here is as follows: The number of values in the banner_pos column is eight, but only seven columns were created in the output of the one-hot encoder. What might be the reason for it? Give it some thought; Jaidev will explain it soon. You should also note that the [OneHotEncoder() in Python](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.OneHotEncoder.html) by default would create 8 columns instead of 7.

**String Indexing**

Now you know how to deal with columns that are categorical but use integers to denote the categories. But what about the columns that are categorical but use strings to denote the categories? In that case, you need to use the string indexer before one-hot encoding. 

The string indexer takes in a column, finds all the unique strings in that column, assigns unique integers to them and gives back a column with integers representing the categories, which is similar to the ‘banner_pos’ column. Then, this can be passed to the one-hot encoder to obtain an encoded sparse matrix. Watch the next video to learn how this is done.

**VIDEO**

After processing the column ‘site_category’, you should have got 25 columns, but you got 24 columns. This is because even after using one column less, the amount of information that is conveyed is the same. From the fruit example cited earlier, if you remove the column that represents the presence of bananas, no information will be lost. Even without that column, you can still identify the category.

| **Apple** | **Mango** | **Calories per 100 gm** |
| --------- | --------- | ----------------------- |
| 0         | 0         | 89                      |
| 1         | 0         | 52                      |
| 0         | 0         | 89                      |
| 0         | 1         | 60                      |

The row with zeros for both apple and mango is obviously the row for banana. The same is true for the site_catagory column.   
 

So, how is the row with all zeros represented in a sparse matrix form? Zeros in the null matrix are represented with null values. In the sparse column, the category with all zeros will be represented by (7,[],[]). 

Generalising what you have learnt so far, in any given data set, what are the columns that you will encounter most often? You will encounter continuous variables in numerical form, categorical variables in the numerical and string forms, Boolean variables and date/time information. You should be able to convert all of this information into the numerical form so that the machine learning algorithm can process them.

#### Data Preparation

Qn: A column has Boolean values denoted by the strings ‘true’ and ‘false’. By which of the following methods can these values be converted to ‘1’ and ‘0’, respectively? (Note: More than one option may be correct.)

- String indexer + one-hot encoding

- String indexer

- String indexer + a user-defined function(UDF) to assign the correct integers

- User-defined function(UDF) to assign the correct integers to the correct strings

Ans: C & D. *The string indexer can assign integers to strings, but it has no control over which integer to assign to what string. A UDF can help here, ensuring that the correct integers are assigned to the strings. You can also simply use a UDF to convert the true values to 1s and false values to 0s.*

Qn: Which of the following is the correct code to one-hot encode a column's 'data'?

- 
```python
encoder = OneHotEncoderEstimator(inputCols=["data", outputCols=["data_enc"])
model = encoder.fit(df)
```

- 
```python
encoder = OneHotEncoderEstimator(["data"] ,["data_enc"])
model = encoder.fit(df)
encoded = model.transform(df)
```

- 
```python
encoder = OneHotEncoderEstimator(inputCols=["data", outputCols=["data_enc"])
encoded = encoder.transform(df)
```

- 
```python
encoder = OneHotEncoderEstimator(inputCols=["data"], outputCols=["data_enc"])
model = encoder.fit(df)
encoded = model.transform(df)
```

Ans: D. *Both the fit and transform methods are needed to encode a column.*

In the next segment, you will learn about the last step before giving a data set to a logistic model.
