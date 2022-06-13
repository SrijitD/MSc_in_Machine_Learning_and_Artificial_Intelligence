# Cumulative Feature Variances

Having learnt how to build a model using all the features, in the next video let’s look at how r2 score or the explained variance varies as you add features while building the model. 

**VIDEO**

In the video, you saw how the explained variance gradually increases when you increase the features considered one by one.

![CumFeaturesVariance graph1](https://i.ibb.co/bQf3Rvd/Cum-Features-Variance-graph1.png)

At step number 5 you can see a drastic increase in the explained variance, if you go back to the dataset and check you will find that ‘RM’ is the feature responsible for this. One major thing to note here is no matter what may be the feature when you add it to the list of features your R2 score increases. You need to maintain a balance between keeping the model simple and explaining the highest variance (which means that you would want to keep as many variables as possible). You can do this using the key idea that a model should be penalised for keeping a large number of predictor variables as the variance of model increases as the number of features increase since it makes the model complex. 

Hence, there are two evaluation metrics that you should measure in such scenarios:

> $Adjusted\ R^2=\dfrac{(1-R^2)(N-1)}{N-p-1}$

> $AIC=nlog\left(\dfrac{RSS}{n}\right) + 2p$

In the formula, n is the sample size, meaning the number of rows you would have in the data set, and p is the number of predictor variables. Unfortunately, scikit learn library doesn’t provide a direct implementation to these metrics, however, the statsmodel package which you will explore in the upcoming segments provides all these measures as part of summary statistics.

#### Exercise

Qn: Use the Diabetes dataset to fit a linear regression model. Identify the correct option that represents features in the order of decreasing importance.[Note the diabetes dataset isn’t having values of different scales so you don’t have to use MinMax scaling here]

- S5, bmi, s3, bp

- s3, bp, S5, bmi

- S5, bmi, bp, s3

- S5, s3, bp, bmi

Ans: B. *Correct! Once you build a linear regression model and sort the features columns based on their respective coefficients you will find that S5, bmi, bp, s3 are in the order of decreasing importance. If you are stuck with the implementation part, you can refer to the solution video.*