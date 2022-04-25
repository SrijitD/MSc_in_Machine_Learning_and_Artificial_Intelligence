# Feature Transformer - Vector Assembler

After identifying the necessary attributes, you can assemble the features in the form of a vector using the VectorAssembler() transformer. In the next video let’s understand how the VectorAssembler() feature transformer works.

**VIDEO**

A Feature transformer transforms the data stored in a data frame and stores the data back as a new data frame. This transformation generally takes place by appending one or more columns to the existing data frame. It can be broken down to a simple following sequence DataFrame =[transform]=> DataFrame. Transformer methods are generally executed during the step of preparing and processing the data sets.   
 

VectorAssembler() is a feature transformer that takes a set of individual column features as input and returns a vector that contains all the column features. It is an extension of the Transformer class and supports the .transform() method.


#### Vector Assembler

Qn: A vector formed by assembling the features using vector assembler can hold multiple variables of different data types

- True

- False

Ans: B. *A vector assembler assembles various columns into a single vector. This vector can only hold attributes of the data type double. All remaining data types such as integer, float, and long will be converted to type double. A vector cannot hold strings and to handle this, there are certain feature transformers such as string indexer, onehotencoder which enable you to convert string features to numerical. You will learn more about them when you handle categorical features.*


In a dataset, the values of different variables are on different scales. Some variables have values in the units range while some variables have values in the range of thousands. These varying scales may lead to the dominance of one feature over the other in the final model like clustering, the reason and the algorithm you’ll learn later. Moreover, in the case of linear regression, it makes it difficult to judge the feature importance from the coefficient values if the features are not on the same scale. Thus, it is crucial to scale all these values into a single range. It is common to scale all the data variables within the range [0, 1]. Scaling can be performed using transformers such as  [MaxAbsScaler()](https://spark.apache.org/docs/2.1.0/ml-features.html#maxabsscaler), [MinMaxScaler()](https://spark.apache.org/docs/2.1.0/ml-features.html#minmaxscaler), etc.

To perform scaling you need to create a scalar object followed by a scalar model. This model will transform any input DataFrame into a scaled DataFrame.


#### MaxAbsScaler

Qn: Which of the following will be the scaled output if you were to scale the data given below within the range (0-1) using MaxAbsScaler()?

| id  | feature |
| --- | ------- |
| 1   | 1       |
| 2   | 10      |
| 3   | 20      |
| 4   | 30      |
| 5   | 50      |

\[You can refer spark documentation and answer this question]

- (0.02, 0.2, 0.40, 0.60, 1.0)

- (1.0, 0.2, 0.15, 0.40, 0.10)

- (0.01, 0.10, 0.20, 0.30, 0.50)

Ans: A. ***MaxAbsScaler()** divides each entry in the vector with the maximum magnitude in the vector. In this case, the maximum absolute value is 50.0. So each entry will be divided by 50.0, giving us a scaled vector between the range (0-1).* 
 
*Please note had the vector included negative values MaxAbsScaler would have scaled it within the range (-1 to 1).*

```python
from pyspark.ml.feature import MaxAbsScaler
from pyspark.ml.linalg import Vectors

dataFrame = spark.createDataFrame([
(0, Vectors.dense([1.0]),),
(1, Vectors.dense([10.0]),),
(3, Vectors.dense([20.0]),),
(4, Vectors.dense([30.0]),),
(5, Vectors.dense([50.0]),)
], ["id", "features"])

scaler = MaxAbsScaler(inputCol="features", outputCol="scaledFeatures")

# Compute summary statistics and generate MaxAbsScalerModel
scalerModel = scaler.fit(dataFrame)

# rescale each feature to range [-1, 1].
scaledData = scalerModel.transform(dataFrame)

scaledData.select("features", "scaledFeatures").show()
```
*You can refer more about this here, [https://spark.apache.org/docs/2.1.0/ml-features.html#maxabsscaler](https://spark.apache.org/docs/2.1.0/ml-features.html#maxabsscaler)*



#### Normalizer

Qn: Which of the following will be the normalized output vector, if you were to normalize this vector (3.0, 4.0, 6.0, 8.0, 10.0) using Normalizer().

[You can refer spark documentation and answer this question]

- (0.30, 0.40, 0.60, 0.80, 1.0)

- (0.15, 0.20, 0.30, 0.40, 0.50)

- (0.20, 0.27, 0.4, 0.55, 0.67)

Ans: C. *Normalizer() divides each entry in the vector with the vector’s magnitude to generate a unit vector. Correspondingly, the magnitude of the given vector is 15. Dividing each entry with the value 15 will give you option C as the answer.*

```python
from pyspark.ml.feature import Normalizer
from pyspark.ml.linalg import Vectors

dataFrame = spark.createDataFrame([
(0, Vectors.dense([3.0, 4.0, 6.0, 8.0, 10.0]),)
], ["id", "features"])

normalizer = Normalizer(inputCol="features", outputCol="normFeatures", p=2.0)
NormData = normalizer.transform(dataFrame)
NormData.show()
```

*For more details please refer to the documentation, [https://spark.apache.org/docs/2.1.0/ml-features.html#normalizer](https://spark.apache.org/docs/2.1.0/ml-features.html#normalizer)*


Additional Reading

1. Refer this link to read more about [Normalisation of Data using Spark](https://pkghosh.wordpress.com/2017/12/05/data-normalization-with-spark/)
2. Refer this link to read more about [Feature Transformers](https://spark.apache.org/docs/latest/ml-features.html#feature-transformers)

In the next segment, you will explore how a pipeline can internally optimize the methods and improve efficiency for preparing data.
