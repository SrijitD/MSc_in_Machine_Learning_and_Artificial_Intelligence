# Summary

Let's hear Rahim summarise the last two sessions for you.

**VIDEO**

**Note**: At **0.11**, the heading on the right reads 'Multivariate Logistic Regression'. The term 'multivariate' means that the model is built by considering multiple features. In real life, almost all models are multivariate. 

So, to summarise, the steps that you performed throughout the model building and model evaluation were as follows:

1.  Data cleaning and preparation
    -   Combining three dataframes
    -   Handling categorical variables
        -   Mapping categorical variables to integers
        -   Dummy variable creation
    -   Handling missing values
2.  Test-train split and scaling
3.  Model building
    -   Feature elimination based on correlations
    -   Feature selection using RFE (coarse tuning)
    -   Manual feature elimination (using p-values and VIFs)
4.  Model Evaluation
    -   Accuracy
    -   Sensitivity and specificity
    -   Optimal cut-off using the ROC curve
    -   Precision and recall
5.  Predictions on the test set

First, classes were assigned to all the customers in the test data set. For this, a probability **cutoff** of 0.5 was used. The model thus made was very accurate (accuracy of ~80%), but it had a very low **sensitivity** (~53%). Thus, a different cut-off, 0.3,  was tried out, which resulted in a model with slightly lower accuracy (~77%) but a much better sensitivity (~78%). Therefore, you learnt that you should not blindly use 0.5 as the cut-off for probability every time you make a model. Business understanding must be applied. Here, that means playing around with the cut-off until you get the most useful model.

Also, recall that the sensitivity of a model is the proportion of yeses (or positives) correctly predicted by it. Also, the **specificity** is equal to the proportion of nos (or negatives) correctly predicted by the model. For any given model, if the sensitivity increases by changing the cut-off, its specificity goes down.

![Sensitivity and Specificity](https://cdn.upgrad.com/UpGrad/temp/c690b78e-0a8a-408a-af3f-903c5a10652c/Sensitivity%20and%20specificity.png)

High values of both sensitivity and specificity cannot be achieved in a single model. Therefore, you need to choose which one you would want to be higher. The safest option is the one in which you just take the cut-off that equalises accuracy, sensitivity and specificity. But it totally depends on the business context. Sometimes you may want a higher sensitivity, while at other times, you may want a higher specificity.

You also learnt about another view of things, that is, the Precision and Recall view. These are similar to sensitivity and specificity. Precision essentially refers to the number of 'Yeses' correctly predicted, which is what sensitivity refers to as well.

Question 1/1

Mandatory

#### Takeaways

What are your top three takeaways from this session? (Word Limit: 100)