# Practice Questions

To solve these questions, you can create a cluster of 1 master 1 node with m4.large memories. That should be enough. These questions are meant for practice and are not graded. 

You can find the data needed to solve these questions at the link given below.

`s3a://logistic-data/segment1.csv`

For the sake of convenience, the data in CSV format is also attached.  

Download [segment1 data file](segment1.csv)

#### Data Preparation

Qn: Which of the following could be the output of a running string indexer and one-hot encoding on the column C14 from the segment1.csv data set?

- (926,[567],[1.0])

- (964,[158],[1.0])

- (964,[218],[2.0])

- (964,[964],[1.0])

Ans: B. *This is the sparse matrix representation of the output columns.*

```python
df = spark.read.csv("s3a://logistic-data/segment1.csv", header = True, inferSchema= True)

from pyspark.ml.feature import StringIndexer, OneHotEncoderEstimator
si  = StringIndexer(inputCol='C14', outputCol='C14_si')
df = si.fit(df).transform(df)
ohe = OneHotEncoderEstimator(inputCols=['C14_si'], outputCols=['C14_enc'])
df= ohe.fit(df).transform(df)
df.select('C14_enc').show()
```

#### Logistic Model Building

Qn: Build a logistic regression model only using the anonymised columns [C1 and C14 to C21] on the segment1 data. The model must be a vanilla logistic regression model with all default parameters. After the preprocessing is done split the data into train and test datasets, using a ratio of 80:20. Evaluate the model on the test data set. What is the AUC of this model rounded to two decimal places? 

Hint:

1.  Split the data only after you have completed all the preprocessing steps. This will ensure that the train and test datasets have the same variables and transformations done on them.  
2.  You can use the randomSplit function to split the data in pyspark. Search [here](https://spark.apache.org/docs/2.4.4/api/python/pyspark.sql.html) for the instructions about randomSplit function. Set the seed value to 12345 while splitting the data. 

- 0.80

- 0.66

- 0.76

- 0.84

Ans: B. *You can use the following code to build the model and find the ROC AUC.*

```python
df= spark.read.csv('s3a://logistic-data/segment1.csv', header = True, inferSchema = True)

from pyspark.sql.functions import udf
from pyspark.sql.types import IntegerType

df = df.withColumn("y", df["click"].cast(IntegerType()))

posMapper = udf(lambda x: 0 if x < 0 else x)
df = df.withColumn('C20_1', posMapper(df['C20']))
df = df.withColumn("C20_1int", df['C20_1'].cast(IntegerType()))

from pyspark.ml.feature import OneHotEncoderEstimator
col = ['C1','C14','C15','C16','C17','C18','C19','C20_1int','C21']
ohe = OneHotEncoderEstimator(inputCols=col, outputCols=[c +'enc' for c in col])
df= ohe.fit(df).transform(df)

trainCols = [c+'enc' for c in col]

from pyspark.ml.feature import VectorAssembler
assembler = VectorAssembler(inputCols=trainCols, outputCol='features')
df = assembler.transform(df)

train, test = df.randomSplit([0.8, 0.2], seed=12345)

from pyspark.ml.classification import LogisticRegression

lr = LogisticRegression(featuresCol='features', labelCol='y')
model = lr.fit(train)

result_test = model.evaluate(test)

result_test.areaUnderROC
```

#### Evaluation Metrics

Qn: Build a model using only anonymised variables in the data set (C1 to C21) from the segment1.csv dataset. The dataset is linked above. Split the data in segment1 into train and test (using 80:20 ratio) and find the recall for label 1. 

Hint:

1.  Split the data only after you have completed all the preprocessing steps. This will ensure that the train and test datasets have the same variables and transformations done on them.  
2.  You can use the randomSplit function to split the data in pyspark. Search [here](https://spark.apache.org/docs/2.4.4/api/python/pyspark.sql.html) for the instructions about randomSplit function. Set the seed value to 12345 while splitting the data. 

- 0.134

- 0.176

- 0.056

- 0.091

Ans: C. *To find the recall for the positive class, you can execute the following code.*

```python
df= spark.read.csv('s3a://logistic-data/segment1.csv', header = True, inferSchema = True)

from pyspark.sql.functions import udf
from pyspark.sql.types import IntegerType

df = df.withColumn("y", df["click"].cast(IntegerType()))

posMapper = udf(lambda x: 0 if x < 0 else x)
df = df.withColumn('C20_1', posMapper(df['C20']))
df = df.withColumn("C20_1int", df['C20_1'].cast(IntegerType()))

from pyspark.ml.feature import OneHotEncoderEstimator
col = ['C1','C14','C15','C16','C17','C18','C19','C20_1int','C21']
ohe = OneHotEncoderEstimator(inputCols=col, outputCols=[c +'enc' for c in col])
df= ohe.fit(df).transform(df)

trainCols = [c+'enc' for c in col]

from pyspark.ml.feature import VectorAssembler
assembler = VectorAssembler(inputCols=trainCols, outputCol='features')
df = assembler.transform(df)

train, test = df.randomSplit([0.8, 0.2], seed=12345)

from pyspark.ml.classification import LogisticRegression

lr = LogisticRegression(featuresCol='features', labelCol='y')
model = lr.fit(train)

result_test = model.evaluate(test)

result_test.recallByLabel
```

#### Cluster Management

Qn: Execute the code to find the ROC AUC for a model built using only anonymised variables. After this code has been executed, find out which job took the least time to complete. 

- csv at NativeMethodAccessorImpl.java:0

- treeAggregate at RDDLossFunction.scala:61

- collect at BinaryClassificationMetrics.scala:195

- aggregate at AreaUnderCurve.scala:45

Ans: D. *This is the quickest job. The name of the job suggests that the job was to aggregate all the AUC values. You can execute the following code and then visit the jobs tab to find this job.*

```python
df= spark.read.csv('s3a://logistic-data/segment1.csv', header = True, inferSchema = True)

from pyspark.sql.functions import udf
from pyspark.sql.types import IntegerType

df = df.withColumn("y", df["click"].cast(IntegerType()))

posMapper = udf(lambda x: 0 if x < 0 else x)
df = df.withColumn('C20_1', posMapper(df['C20']))
df = df.withColumn("C20_1int", df['C20_1'].cast(IntegerType()))

from pyspark.ml.feature import OneHotEncoderEstimator
col = ['C1','C14','C15','C16','C17','C18','C19','C20_1int','C21']
ohe = OneHotEncoderEstimator(inputCols=col, outputCols=[c +'enc' for c in col])
df= ohe.fit(df).transform(df)

trainCols = [c+'enc' for c in col]

from pyspark.ml.feature import VectorAssembler
assembler = VectorAssembler(inputCols=trainCols, outputCol='features')
df = assembler.transform(df)

train, test = df.randomSplit([0.8, 0.2], seed=12345)

from pyspark.ml.classification import LogisticRegression

lr = LogisticRegression(featuresCol='features', labelCol='y')
model = lr.fit(train)

result_test = model.evaluate(test)

result_test.areaUnderROC
```

#### Spark UI

Qn: Fill in the blanks. "When a Spark application is started on an m4.large EMR cluster, the default driver memory and the number of executor cores assigned to it are \_\_\_\_\_ and \_\_\_\_\_. "

- 2048M; 2 cores 

- 4269M; 2 cores

- 2048M; 4 cores

- 4269M; 4 cores.

Ans: C. *Even though the memory of the machine is more, less memory is allocated to an application so that some memory is free for you if you want to run additional applications.*