# Model Improvement I

The performance of a model refers to how good the model is at predicting the class labels and also how fast the model is at predicting. In the next couple of segments, we will focus on the predictability aspect of the model performance.  
   
**Using more data**  
The most brute-force way to improve a model’s predictability is to use more training data. Higher the number of data points model trains on, better will the model be at predicting. But this involves certain issues. Often, the improvement in a model’s performance that is achieved by training on large amounts of data is not worth the computational resources spent on it. Sometimes, abundant data might not be available. So, even though this method makes the predictability of the model better, similar improvements with the same data can be achieved in other ways. 

**Using more features**   
A model is only as good as the data on which it trains; having the optimum number of and the most relevant features improves the performance of a model significantly. In the previous segment, the model that Jaidev built used only a few features from the data, which were selected based on domain knowledge. Other anonymised categorical variables in the data set were not considered for building the model. In the next video, let’s build a model that uses all the features given in the data set and check its predictability. 

**VIDEO**

As you saw in this video, the predictability of the model improved only by including more features. But by increasing the number of features, the computational resources also increased. Is this worth the 3% improvement in the label 1 recall? This depends on the application. Another possibility that you will need to consider here is that increasing the number of features has diminishing returns. Since Jaidev wanted to demonstrate that using more features would improve the model’s predictability, he chose all the features. But you need to select the features more carefully.

Recall the features selected by Rahim in the telecom churn problem. He selected features that made sense statistically. PySpark has a distributed architecture, and so, all the methods that are available for feature selection in Scikit-learn will not work. In PySpark, features are selected by performing the chi-squared test. You can read about the application of the chi-squared test in the [Spark documentation](https://spark.apache.org/docs/2.4.5/api/python/pyspark.ml.html#pyspark.ml.feature.ChiSqSelector). Choosing the correct number of columns has the following advantages: a limited amount of computational resources will be used, and the model will not learn noise from the unnecessary features. 

Model improvement is more of an art than science. By changing a few settings like the amount of data, the number of features and selecting the relevant features can change the model predictability a lot. To get the best performing model all these settings need to be correctly set. This can only be achieved by experimenting. Always start with a small data set, experiment on it, find the right model and then apply the model on a larger data set. In the next video, Jaidev will demonstrate the process of testing the model on unseen data.

**VIDEO**

So, blindly increasing the number of features did not really result in performance improvement. The Notebook used is given below for your reference.

Download [Using all features notebook](CTR_04_Model_Improvement.ipynb)

What else can be done to make the model better? A few other techniques can be used, which we will explore in the next segment. Before that, attempt the question given below.

#### Model Improvement

Qn: Which of the following is a valid reason for performing a feature selection exercise?  
(Note: More than one option may be correct.)

- To stop the model from learning noise in the data.

- To ensure that the features considered to build a logistic regression model need to be independent of one another.

- To save computational resources.

- To make the model generalisable.

Ans: All of the above. 

- *Having more features than necessary can cause the model to learn unnecessary trends from the data.*

- *An assumption made while developing the logistic regression model is that the features need to be independent of one another.*

- *Selecting only the relevant columns will make the data set small and save a lot of computational resources.*

- *Selecting relevant features stops the model from learning noise and, in most cases, improves predictability. These properties make the model more generalisable.*

Next, let’s try to improve the model performance further by performing some feature engineering.