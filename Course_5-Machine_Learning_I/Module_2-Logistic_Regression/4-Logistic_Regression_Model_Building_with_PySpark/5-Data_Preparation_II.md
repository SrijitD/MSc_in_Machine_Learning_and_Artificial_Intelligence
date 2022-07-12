# Data Preparation II

Earlier, you learnt how different columns are processed so that they are in a usable form. But before using the model, one last transformation is remaining. 

A learning algorithm takes only two columns as input: The first is the one with all the features combined as a list, and the second is the class label. You need to combine all the features in a single column, for which a transformer called **VectorAssembler** is used. In the next video, let’s take a look at how this is implemented.

**VIDEO**

Now, the output of the VectorAssembler can be pushed into logistic regression. Let’s revise the steps in making the data ready for machine learning:

1.  **Continuous** columns with numerical data: No processing required. 
2.  **Nominal** categorical variables represented with integers: One-hot encoding.
3.  **Ordinal** categorical variables with integer representation: No processing required 
4.  **Nominal** categorical variables represented with strings: String indexer + One hot encoding 
5.  **Ordinal** categorical variables represented with strings: String indexer (Make sure that the right categories get the right integer.)

Instead of performing these steps one by one, a parallel way to achieve the same output is the pipeline API in the ML library. 

Before talking about the pipelines, let’s revise the APIs available in the **SparkML library**. These APIs are built on the DataFrame structure and are as follows: 

1.  **Transformers**: These transform the DataFrame from one form to another, usually by adding a few columns or manipulating the values in the columns. The transform() method is used to transform a DataFrame. Any object that makes changes in the DataFrame is called a transformer.
2.  **Estimator**: Estimators are learning algorithms, fit() is used to call an estimator into action. The fit() method will take as input a DataFrame and create a model object. This model itself is a transformer. The job of a transformer is to transform a DataFrame; for example, a transformer created by a logistic model uses the weights to find the probabilities, and using these probabilities, it predicts the class of the data point. The actual transformation is creating two new columns, ‘probability’ and ‘prediction’. The transformation and the transformation object will be different for different algorithms.

The pipeline API combines all the transformers and estimators into one object so that the machine learning process becomes streamlined and better interpretable. The pipeline object has a parameter called stages, which takes as input a list of transformer and estimator objects that will be executed when the pipeline object is executed. Let’s take an example code to see how a pipeline is actually implemented.

```python
from pyspark.ml.feature import (VectorAssembler,VectorIndexer,OneHotEncoder,StringIndexer)

gender_indexer = StringIndexer(inputCol='Sex',outputCol='SexIndex')

gender_encoder = OneHotEncoder(inputCol='SexIndex',outputCol='SexVec')

embark_indexer = StringIndexer(inputCol='Embarked',outputCol='EmbarkIndex')

embark_encoder = OneHotEncoder(inputCol='EmbarkIndex',outputCol='EmbarkVec')

cols=['Pclass','SexVec','Age','SibSp','Parch','Fare','EmbarkVec']

assembler = VectorAssembler(inputCols=cols,outputCol='features')

from pyspark.ml import Pipeline
pipeline = Pipeline(stages=[gender_indexer,embark_indexer,gender_encoder,embark_encoder,assembler])

fit_model = pipeline.fit(df)
```

In the code given above, a few transformer objects are created, such as gender_indexer and embark_indexer. All these objects are put together in a pipeline to create a pipeline object. When the pipeline object is executed, all the internal objects are executed in the same order as they are specified. Pipeline API is a handy tool when a model is being developed iteratively. In the next video, let’s take a look at how Jaidev implements it. 

**VIDEO**

As you saw in the video, the pipeline made the code elegant and readable. You can achieve the same output as you get on executing the transformers individually. With these APIs and feature transformation, you can prepare data for the logistic regression estimator.

#### Pipelines

Qn: Following is a code extract that is used to create a pipeline.

```python
tokenizer = Tokenizer(inputCol="text", outputCol="words")
hashingTF = HashingTF(inputCol=tokenizer.getOutputCol(), outputCol="hashed")
lr = LogisticRegression(maxIter=10, regParam=0.001)
pipeline = Pipeline(stages=[tokenizer, hashingTF, lr])
```

What is the input column for the ‘lr’ object?

- text

- words 

- hashed

- The code will throw an error, as the input column is not defined.

Ans: D. *Since the input column name is not specified, by default, the lr model will look for the column named ‘features’. If it is not found, then an error will be thrown.*

Qn: Following is a code extract that is used to create a pipeline.

```python
tokenizer = Tokenizer(inputCol="text", outputCol="words")
hashingTF = HashingTF(inputCol=tokenizer.getOutputCol(), outputCol="features")
lr = LogisticRegression(maxIter=10, regParam=0.001)
pipeline = Pipeline(stages=[tokenizer, hashingTF, lr])
```

What will be the output of this section of code?

- A logistic regression model 

- A pipeline object

Ans: B. *A pipeline object will be created.*

Next, let's build the logistic regression model and assess its performance.