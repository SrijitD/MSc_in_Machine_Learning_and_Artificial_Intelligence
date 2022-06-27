# Graded Questions

All the best!

#### Overfitting

Qn: In linear regression, which of the following are clear signs of overfitting?

- The R-squared value is 0.80 on both training and testing data

- The R-squared value on training data is 0.80 and 0.90 on train and test data respectively

- The R-squared value on training data is 0.90 and 0.30 on train and test data respectively

- None of the above

Ans: C. *In overfitting, the model fits the training data very well since it has somehow memorised it and is not able to perform that well on the test data.*

Download the notebook and dataset given below. Attempt the last two exercises in the notebook and report the r2 scores. Please follow the code in the notebook for imputation and scaling.

Download [Exercise](Exercise.ipynb)

Download [MPG - Dataset](auto-miles-per-gallon-Raw.csv)

#### Question 1

Qn: As mentioned in the notebook, what is the r2 score of the model built on 'MPG-Out' after the imputing and scaling the features? [Mark the nearest values]

- 0.78

- 0.66

- 0.69

- 0.79

Ans: C. *Reference code:*

```python
# Use the transformed dataframe to create our input data 
input_data = Final_output
#Build a linear regression model
from pyspark.ml.regression import LinearRegression
lr = LinearRegression(featuresCol='scaledFeatures', labelCol='MPG-Out')
model1 = lr.fit(input_data)
#Find the r2 score of the model
summary =model1.evaluate(input_data)
print(summary.r2)
```

#### Question 2

Qn: As mentioned in the notebook, what is the r2 score of the model built on 'MPG-Out' after just imputing the features and not scaling them? [Mark the nearest values]

- 0.78

- 0.66

- 0.69

- 0.79

Ans: C. *Refer to the code here. Hence, scaling does not affect the overall model performance but helps in better interpretation.*

```python
#Initialize a new dataframe
input_data = df1
#import Pipeline and set the stages of the pipeline
from pyspark.ml import Pipeline
pipeline =  Pipeline(stages = [imputer,assembler])
#Use .fit() and .transform() on the pipeline
model = pipeline.fit(data)
input_data = model.transform(input_data)
#Build a new linear regression model
from pyspark.ml.regression import LinearRegression
lr = LinearRegression(featuresCol='features', labelCol='MPG-Out')
model2 = lr.fit(input_data)
#Find the r2 score of the model
summary = model2.evaluate(input_data)
print(summary.r2)
```