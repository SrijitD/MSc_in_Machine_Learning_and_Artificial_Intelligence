# Evaluation Metrics for Classification Problems I

You learnt in the earlier sessions that the classification problem fundamentally differs from the regression problem in the sense that the objective of the classification problem is to assign discrete labels to the data sets. This causes the evaluation metrics to change a lot. One cannot simply use the **mean square error**, or the **R-squared** because it has no significance in classification problems. In classification problems, the evaluation metric is based on the **number of predictions** that were correct/wrong instead of the **degree of the wrongness** of the prediction.

The most intuitive evaluation metric is the number of predictions that the model estimated correctly versus the total number of predictions made. This is called the accuracy of the model. In the next video, Jaidev will talk about the 'accuracy' metric used to evaluate models. 

**VIDEO**

As you learnt in this video, accuracy alone can be misleading, especially when the data labels are not represented equally in the data set. The data sets in which the number of positive classes and that of negative classes have a huge difference are said to have a ‘class imbalance’.

For example, in a data set with health metrics, the number of people with heart disease will be much lower than the number of healthy people. Some typical imbalanced data sets are:

- Credit card fraud data sets
- A data set of a particular rare disease where the percentage of occurrence is usually $<1\%$.

This does not mean that a 90–10% split between 0 and 1 is not an imbalanced data set. One way to solve this is by performing some sampling techniques to somehow balance the number of observations belonging to the different classes. Another way of dealing with the class imbalance problem is to choose a different set of metrics to evaluate models built on such data sets.

Which metrics can be used for such data sets? There is another way to find the accuracy of a model that is less affected by class imbalance. This is known as the true accuracy. In the next video, you will learn how the true accuracy of a model is determined. 

**VIDEO**

**Note:** In this video, Jaidev mentions **recall** and **precision**. Do not worry about these terms at the moment. They will get clearer as you proceed through the segment and watch the next video.

Many metrics are available for evaluating logistic regression models. In the previous video, a few of them such as **sensitivity**, **specificity** and **prevalence** were introduced. Before discussing other metrics, let's discuss the most important tool for evaluation of classification models: **the confusion matrix**.

![Evaluation Metrics for Classification Problems](https://i.ibb.co/DkSTcPr/Evaluation-Metrics-for-Classification-Problems.png)

Evaluation metrics for classification problems

Each row of the confusion matrix corresponds to the predicted values, and each column corresponds to the actual data labels. In some cases, you will find this matrix transposed, i.e., the rows represent the actual labels, and the columns represent the predictions. Both these forms represent similar information; you can use either. Therefore, let's try to understand what these terms in the confusion matrix mean.

1.  **True positives (TP)**: The data points that actually belong to the positive class and were predicted to be positive 
2.  **True negatives (TN)**: The data points that actually belong to the negative class and were predicted to be negative
3.  **False positives (FP)**: The data points that actually belong to the negative class but were predicted to be positive
4.  **False negatives (FN)**: The data points that actually belong to the positive class but were labelled to be negative

A good way to remember these is that the second word in each of these terms represents the label predicted by the model and the first term follows from the cell that you are referring to.

For example, if you consider false negatives, these are the data points that are predicted as negative by the model but they are incorrectly predicted, hence the word 'false', which means that the actual label is 'true'.

#### Model Evaluation

Qn: If you already have the actual label of a data point, why are you predicting the class label for the same?

Ans: *To evaluate the model. Making the model predict the labels of data points whose actual labels are known helps evaluate the model predictability power.*

Here is an [article](https://devopedia.org/confusion-matrix) to make your understanding of the confusion matrix better. From the confusion matrix, all the other metrics that were introduced in the video can be derived.

1.  **Sensitivity:**  
    It is the fraction of the correctly identified positives among all the positive labels in the data set. It is exactly the same as recall.   
    Sensitivity = (TP)/(TP + FN)  
     
2.  **Prevalence:**   
    It is the fraction of the positive classes among the complete data set. If there are 7 positive classes in a data set of 10, then the prevalence is 0.7.   
    Prevalence = (TP + FN)/(TP + TN + FP + FN)  
     
3.  **Specificity:**   
    It is the fraction of the correctly predicted negative classes among all the negative classes of a data set.  
    Specificity = (TN)/(TN + FP)

All these metrics combine to form the true accuracy of the model.   
**True accuracy = Sensitivity × Prevalence + Specificity × Probability of negative classes** 

Consider a data set with 9 negative classes and 1 positive class. The model marks all the data points as negative, which is a very naive model, as it does not model anything. This situation is quite similar to the credit card default situation that we discussed earlier. In this case, the accuracy will be 0.9, which may usually be considered to be quite good, but here, it is misleading.

Let’s find the true accuracy of this model. In this case, the sensitivity will be zero, as there are no positive predicted labels. The specificity will be 0.9, and the probability of negative classes will also be 0.9. The accuracy in the true sense will work out to be 0.81. As you can see, the model got one prediction incorrect, but the true accuracy is lower than accuracy. So you can say that true accuracy penalises more for incorrect predictions than accuracy. Having said that, it is always beneficial to consider a combination of the metrics mentioned above for evaluating a model, and these metrics need to be chosen with the application in mind. 

Even though accuracy is an obvious metric to evaluate the classification models, it is not the most foolproof. So, new metrics such as true accuracy, specificity and sensitivity come into the picture. But if you notice, sensitivity talks about the fraction of the positive class that was identified as positive. And specificity does the same with the negative class. There is a gap here; in some applications, you need a model that can identify positive classes with very high surety. Such a model will have low false positives.

None of the metrics that you have learnt about until now take the false positive into consideration. So, in the next segment, we will take a look at a few new metrics that can help us in this task.