# Building the ALS Model

In the previous segment, you loaded the data into data frames. Now, in this segment, you will learn how to split the data into test and training data sets, and build the ALS model.

**VIDEO**

So, let us summarise our learnings in the above video:

- Before building the model, you need to split the data set into training, validation and test data sets. Using the training and validation data, you build the model, and once the model is built, you test it by predicting the values on the test data.
  
  `(training, validation, test) = ratings.randomSplit([0.6, 0.2, 0.2], seed=99)`

    So, now you have split the data into three data sets, that is, training, validation and test data sets, in ratios of 60%, 20% and 20%, respectively. The validation data set is used to analyse the variation of root mean square error with the number of iterations in the model building that you will see in the further segments.

    You usually split the data into training and test data and in the notebook, you are only required to split the data into test and training data only.  

    Now that you have the data prepared, you move on to the model building phase. Please note that there is a significant amount of work involved in the data preparation phase but since the data is very well prepared in our case, we just did one step: splitting into train, validation and test sets.

- You have earlier imported the ALS library; this library is in-built in the ml.recommendation package. Once you have imported the ALS library, you will then start building the model. So, to build the ALS model, you need to specify columns such as userCol, movieCol and ratingCol.
  
  `als = ALS(userCol="userId", itemCol="movieId", ratingCol="rating",maxIter=5, regParam=0.05, coldStartStrategy="drop")`

    Along with the columns, you also need to specify the regularization parameter, _regParam_. This parameter is related to that regularization term in the cost function, which you have studied earlier.

![Model Equation](https://i.ibb.co/mzvTW63/Model-Equation.png)

- Also, you need to specify the number of iterations for which the model will run. In this case, Sajan has set the _maxIter_ value to 5. You will learn more about this iteration parameter and how to choose the optimal value of this parameter in upcoming segments.  

- Once all the parameters are set, you build the model and fit it on the training data.

Now let's fit the training data into the ALS model.

**VIDEO**

Once you have fit the model on the training data, you need to test it using the test data set and calculate the RMSE (Root Mean-Squared Error) to see the amount of deviation the model has on an average. This is known as the model evaluation phase of the model building process where you judge the performance of the model by looking at the value of the cost function. You can follow the steps below to perform this operation:

- First, you need to predict the ratings based on the model built. To get the predicted ratings, you apply .transform() on the test data and then store it in a new dataframe ‘predictions’.
  
  ```python
  # Evaluate the model by computing the RMSE on the test data
  predictions = model.transform(test)
  ```

- Using the code above, you can actually get the predicted values corresponding to the test data. So, basically, you now have the predicted values for the test data and the actual values were already available in the test data. Using these two values (predicted and actual values), you can calculate the RMSE:
  
  ```python
  evaluator = RegressionEvaluator(metricName="rmse", labelCol="rating",predictionCol="prediction")
  ```

        Note that once you have decided on the evaluator function, you apply it on the         ‘predictions’ data set to get the RMSE.

```python
rmse = evaluator.evaluate(predictions)
```

So, in this way, you have built the ALS model with an iteration value of 5. But can you optimise this iteration value so you can get the result in fewer iterations, maybe, in just three iterations? In the next segment, you will learn how the RMSE value varies with the iteration value.
