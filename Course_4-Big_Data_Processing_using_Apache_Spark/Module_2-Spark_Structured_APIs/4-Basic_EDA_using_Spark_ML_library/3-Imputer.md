# Imputer

You found that there are missing values and null values in our data. As a next step of the data cleaning activities, you can either remove the records containing the incomplete or garbage values or you can replace the missing values with an approximate value. Let’s understand how to do in our next video.

**VIDEO**

Generally, the median or mean of the complete column variable serves as a good approximate value. Removing the records often leads to the loss of some valuable information so you may impute those values instead. In this video, you saw two methods for handling missing values.

- In the first method, you remove the records with missing values by using the dropna() method present in Spark. This method drops all the rows that may contain a missing value.
  
  ```python
  df2 = df1.dropna()
  ```

- In the second method, you can replace the missing values with the mean of their respective features using the [Imputer() transformer](https://spark.apache.org/docs/latest/api/python/reference/api/pyspark.ml.feature.Imputer.html#:~:text=Imputation%20estimator%20for%20completing%20missing,the%20missing%20values%20are%20located.&text=All%20Null%20values%20in%20the,For%20computing%20median%2C%20pyspark.) that is present in the Spark ML library. It is an extension of the Transformer class.
  
  ```python
  from pyspark.ml.feature import Imputer
  imputer = Imputer(inputCols = ["MPG","HORSEPOWER"], outputCols = ["MPG-Out","HORSEPOWER-Out"])
  imputeModel = imputer.fit(df1) 
  df3=imputeModel.transform(df1)
  ```

#### Missing Values

Qn: Can the Imputer() in Spark only replace missing values with the mean of that particular attribute?

**Note**: Some of the questions would require you to go through the additional links given below the quiz.

- Yes

- No

Ans:B. *Imputer() is used for handling missing values while preparing the dataset for machine learning. Imputer() can also replace the missing values with the median of the attributes.*

## Additional Reading

1. Refer this link to read more about [Imputations in machine learning](https://dzone.com/articles/the-art-of-missing-value-imputations)

2. Refer this link to read more about [Handling missing values](https://www.linkedin.com/pulse/using-machine-learning-data-cleansing-sriram-parthasarathy/)

In the next segment you will learn about vector assembler feature which helps in assembling the features in the form of a vector.
