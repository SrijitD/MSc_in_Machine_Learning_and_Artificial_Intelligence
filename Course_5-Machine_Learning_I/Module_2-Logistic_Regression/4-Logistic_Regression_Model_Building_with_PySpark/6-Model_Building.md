# Model Building

Now that you are equipped with all the knowledge required to prepare the data, let’s start building the model. As discussed earlier, it is always a good practice to start small. In the next video, let’s apply some domain knowledge to select the columns and build a model.

**VIDEO**

In this video, you saw that we used a set of variables of which you have some understanding. The next step is to prepare the data and let the logistic model train on it. The logistic regression model is a function built in the ML library of PySpark. In the next video, let’s understand how it is used. 

**VIDEO**

In this video, you looked at one example of how the logistic regression function is used. The parameters passed to it are featureCol and labelCol. These are used to specify the names of the features and the label columns, and by default, the values of these parameters are set to ‘features’ and ‘label’, respectively. These columns need to be in the DataFrame, or the compilor will throw an error. 

You can read about the logistic regression function and the parameters that you can set [here](https://spark.apache.org/docs/2.4.5/api/python/pyspark.ml.html#pyspark.ml.classification.LogisticRegression). Let’s highlight a few important parameters here. 

**threshold**: Float between 0 and 1; used to set the threshold/ cut - off for classification into classes 0 and 1  
**fitIntercept**: Boolean; used to specify whether the weighted feature column should have an intercept or not  
**family**: [auto, binomial, multinomial]; used to specify the kind of regression to use 

The following two steps are involved in implementing logistic regression:

1.  **Creating the logistic regression object**: First, you create an object with all the properties and attributes that you need.
    
    ```python
	lr = LogisticRegression(featuresCol='features', labelCol='label')
	```
    
2.  **Training the model**: Then use the object you created to train the data. 
    
    ```python
	model = lr.fit(encoded)
	```
    
    The .fit() method is used to begin the training process. It works with all the estimators, and the argument passed to the fit method is the DataFrame to be used to train the model. 
    

After the model is trained, the next step is to evaluate the model. Recall the evaluation metrics, let’s see how these metrics can be found using the PySpark ML library.

**VIDEO**

The evaluate() method is used to evaluate a model’s performance. As you saw in the video, it is called on a trained model. And it takes the DataFrame on which the evaluation needs to be performed. 

The model was evaluated on the following metrics: 

1.  **Accuracy**: The accuracy of the model is 0.83. So, the model is able to correctly guess the class of 83% data points. But recall (not the evaluation metric) that this data set has a heavy class imbalance, and so, other metrics are needed to correctly evaluate the model’s performance. 
2.  **The area under the ROC curve (ROC AUC)**: The ROC AUC of the model is 0.73. It is not intuitive, and the judgement is based on the magnitude of the AUC. The models are said to be good if they have a ROC AUC closer to 1. 
3.  **Recall by label**: A better metric than ‘accuracy’ is recall by label. As the name suggests, it finds the recall with respect to each class label. The model is able to correctly identify 99% of the negative classes and only 6% of the positive classes. So, this model does not perform well in terms of predicting the ads that are likely to be clicked on, which is important information, and correctly predicting only 6% of the true predictions is not helpful. 

Note that the data frame used for testing is the same as the one used for training. Usually, this is not a good practice. One should never test a model on the training data. But remember that this model is the first iteration, and this is not the final testing. The testing done here is just to get a sense of the model’s performance. Find the Notebook used in this segment linked below.

Download [Basic model notebook](CTR_03_Modelling.ipynb)

As you can see from the metrics, the model is not performing well. How will you improve the performance of the model? Before you start working on the improvement of the model, try to answer the following questions.

#### Logistic Regression Model

Qn: Explore the [Spark API docs](https://spark.apache.org/docs/2.4.4/api/python/pyspark.ml.html#pyspark.ml.classification.LogisticRegression) and answer the following question. 

Which of these is not a parameter of the logistic regression estimator?

- predictionCol

- maxIter

- family

- Assembler

Ans: D. *No parameter named assembler exists for this estimator.*

Qn: Which of the following statements that are used to call the evaluation metrics from the model will be executed?

- 
```python
result = model.evaluate(df)
model.accuracy
```

- 
```python
result = model.evaluate(df)
result.accuracy
```

- 
```python
model = lr.fit(df)
model.accuracy
```

- 
```python
model = lr.fit(df)
lr.accuracy
```

Ans: B. *The evaluation metrics are called on an evaluation type object.*

You now have the skills or knowledge needed to build a logistic model in PySpark from data preparation to model evaluation. But the model that you developed is not performing well. In what ways can you improve the model’s performance? Let’s find out in the next segment.