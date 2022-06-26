# Regression using Spark MLlib

In the early session on pyspark programming, you explored the Spark MLlib API and understood how to perform basic EDA on a dataset. You explored components such as feature transformers, feature estimators, pipelines, and their usage while writing your codes in PySpark. In this session, you will be building machine learning models using MLlib API, and this involves using feature transformers and feature extractors since they form the basis for data preprocessing.

You can download the earlier notebooks as a quick refresher for the concepts on feature transformers, feature estimators, and pipelines.

Download [Dataset - MLlib Overview](auto-miles-per-gallon-Raw.csv)

Download [MLlib Overview](MLlib_Overview_Basics.ipynb)

In the upcoming segments, let’s explore the library by building different machine learning models. In the next few videos, you will be building machine models that are outside the scope of this module and are something you will explore more in the upcoming modules. This part of the module is focused on giving an intuition of how simple is model building. What’s important before building any machine learning model is getting a sense of what is happening internally and that is you will develop as you move along this machine learning course. 

Let’s build a linear regression model on the Boston housing dataset using the spark ML library in the next video.

You can download the notebooks and dataset used for the demonstration here. Note that you may need to install some packages if not already installed. To install numpy, run the following

```python
!pip3 install --user numpy
```

Similarly, you can install the others.

Download [MLlib - Machine Learning Models](MLLib_Overview_Basics.ipynb)

Also, download the following dataset for the practice exercise. 

Download [Iris Dataset](iris.csv)

**VIDEO**

Earlier, remember Ankit mentioned that the machine learning models require input in the form of a vector. That is exactly what happened when you tried to apply linear regression for the first time. You get an error saying a linear regression object expects an input features column.

```python
assembler = VectorAssembler(inputCols=[c for c in sdf.columns if c != 'price'], outputCol='features')
dataset = assembler.transform(sdf)
```

Using the VectorAssembler feature transformer you can assemble the features in the form of a vector. After assembling the features to form a new features column, you can build a linear regression model by specifying the featuresCol and labelCol.

```python
lr = LinearRegression(featuresCol='features', labelCol='price')
model = lr.fit(dataset)
```

You can find the r2 score associated with the model by simply using model.evaluate(). You will find that the model gives the same r2 score as given by the statsmodel api and scikit learn library.

In the next video, you will learn how to build a decision tree regression model. Note that there is a dedicated module on decision trees explaining the internals involved in the algorithm. For this video, focus on how the implementation changes. Don’t worry if you are not able to understand all the commands in the code.

**VIDEO**

An important point to note while building the decision tree regressor model is that the decision tree regressor class doesn’t have an implementation of .evaluate() method. So you need to first transform the dataset by model.transform to create a new column named predictions. Now based on the predictions made and actual values of the independent variable you can calculate the performance of the model. Note that you need to mention the metric you want to consider for model building.

#### Random Forest Model Building

Qn: Based on your understanding so far in model building, build a random forest regression model and report the r2 score associated with the model? Select the closed option. You can refer the PySpark documentation on [random forest regression](https://spark.apache.org/docs/latest/ml-classification-regression.html#random-forest-regression).

**Note:** There is a solution video also in case you find it difficult to implement.

- 0.74

- 0.92

- 0.98

- 0.88

Ans: B. *Building a random forest model remains the same as that of a decision tree regression model and after predictions you can use the earlier defined regression evaluator to check the performance of the model. You can refer to the solution video for a better understanding on this.*

Now that you have learnt how to perform linear regression in the Spark ML library, let's understand how to perform classification as well in the next segment.