# Evaluation Metrics for Classification Problems II

As discussed in the last segment, we will talk about a metric that helps in applications where the false positive number needs to be very low. People use many metrics to evaluate a model with high-class imbalance. In the video below, Jaidev will highlight a few important ones. 

**VIDEO**

As you saw in this video, precision is that metric. With precession, another metric called recall was introduced. Let’s define these metrics and understand how they can be used. 

1. **Precision:**   
   This gives the fraction of the correctly predicted positives among all the data points that were predicted to be positive. For instance, if 10 points were predicted to be positive and only 9 of these are actually positive, then the precision is 0.9.   
   **Precision= TP/(TP+FP)**  
    
2. **Recall:**  
   It is the fraction of the correctly predicted positives among all the actual positive data points. Continuing from the earlier example, if 18 data points were actually positive, then the recall would be 9/18 or 0.5.   
   **Recall = TP/(TP+FN)**  
   It is the same as the sensitivity of a model. 

What do the values of precision and recall mean? How should you interpret them? Suppose a model has a precision of 0.9 and a recall of 0.5. It can be said that the data points that are predicted as positive by the model will most likely be positive, but the model will be able to correctly predict only half of the actual positives.   

For example, consider a model that predicts the presence of certain contagious diseases among people. This model needs to have a high recall (TP/TP+FN) in order to be able to detect most of the actual positive cases, as with every positive case that you miss predicting, there is a high chance of losing a life and the disease spreading further. In this case, precision is of less importance, and even if some people who do not have the disease are labelled as positive, you can simply retest the person and discharge them if they test negative. 

Consider a high profile bank that used a logistic regression algorithm to detect credit card fraud. The clients of the bank are influential and rich people. So, what criterion should the bank set for the model? High recall or high precision (TP/TP+FP)? Remember that every time you flag a transaction as fraudulent, you call up the customer to verify the transaction. If you have high net worth clients who do not want to be disturbed unnecessarily, your precision should be high. At the same time, you should be able to cover as many fraud transactions as possible, as the ticket size is usually high for these customers and every fraud would cost you a lot. This means that the recall must be high, too. Therefore, you need to find a balance between precision and recall in this case. In such cases, a new metric known as the **F1 score** can be used. Let's see what that is.

Precision and recall can also be used together to measure the predictability of the model for positive class labels. Taking the **harmonic mean** of precision and recall will give a new metric, the F1 score. 

$$F1=\left(\dfrac{(Recall)^{−1}+(Precision)^{−1}}{2}\right)^{−1}=2*\dfrac{Recall*Precision}{Recall+Precision}$$
Let's calculate the F1 score for a few cases of precision and recall to understand its trends.

| **Precision** | **Recall** | **F1 score** |
| ------------- | ---------- | ------------ |
| 0.9           | 0.85       | 0.87         |
| 0.85          | 0.25       | 0.38         |
| 0.15          | 0.25       | 0.18         |

Observations: 

1. The value of the F1 score always lies between precision and recall. This means that like precision and recall, F1 is also bound between 0 and 1. 
2. A high F1 score means that both precision and recall for the model are high. So, the model is good at identifying positive classes. 
3. The F1 score falls if either precision or recall is low. 

So, a model with a high F1 score identifies most of the positive data points accurately.   
 

That was all about precision, recall and a metric derived from their combination, the F1 score. One more metric that is used quite frequently for model evaluation is called the **ROC curve**. Although it is derived from the metrics that you learnt about in an earlier segment, it still merits its own discussion.

**VIDEO**

All the metrics that were introduced before the ROC curve used a single thresholding point, or the predictions were set and then these metrics were calculated. But the threshold is not a static point. Think of it as a slider; by changing the threshold, the labels assigned to the data points change, and so does the predictability of the model. 

The ROC curve does exactly the same; it changes the threshold from 0 to 1 and plots the true positive rate versus the false positive rate for each threshold.

**The true positive rate** (TPR) is the same as sensitivity and recall. It measures the proportion of actual positives correctly identified.   
TPR =  TP/(TP + FN)  
On the other hand, the **false positive rate** (FPR) is the fraction of wrongly identified positive cases of all the actual negative cases, which is (1 - specificity).  
FPR = FP/(FP + TN)

This discussion was a simple introduction to the metrics that are used to evaluate logistic regression. For you to gain a deeper understanding, we will explain these metrics in much more detail in the coming segments through a case study.

#### Evaluation Metrics

Qn: Which of the following must be as low as possible in the case of a model predicting patients with a contagious disease?

- True positive

- True negative

- False negative

- False positive

Ans: C. *This number must be as small as possible. These are the people who have the disease but are detected as negative. They are most likely to spread the disease.*

Qn: Which of the following metrics convey the same meaning? (Note: More than one option may be correct.)

- True positive rate

- Sensitivity

- Prevalence

- Recall

Ans: A, B & D. *The true positive rate, sensitivity and recall represent the fraction of the correctly predicted labels among all the positive labels.*

Qn: Given below is the confusion matrix for a particular model. 

|                     | Actual Positives | Actual Negatives |
| ------------------- | ---------------- | ---------------- |
| Predicted Positives | 50               | 30               |
| Predicted Negatives | 10               | 60               |

Which of the following metrics will have the highest value?

- Accuracy

- Specificity

- FPR

- Recall

Ans: D. *50/50 + 10 = 0.83, which is the highest value in this case.*

Qn: Which of the following is used as both a cost function and an evaluation metric? (Note: More than one option may be correct.)

- Accuracy

- Least square error

- Prevalence

- Log loss function

Ans: B & D.

- *Incorrect. Accuracy is an evaluation metric for logistic regression, and the cost function for logistic regression is the log loss function. No evaluation metric is used as a cost function in case of logistic regression.*

- *Correct. The least-square error is the cost function for linear regression, and it is also an evaluation metric.*

- *Incorrect. Prevalence is an evaluation metric for logistic regression, and the cost function for logistic regression is the log loss function. No evaluation metric is used as a cost function in case of logistic regression.*

- *Correct, the log loss is calculated by summing up the difference in the actual labels and the predictions. $\hat{L}(y;p)=−\frac{1}{n}\sum^n_{i=0}\left[y_ilog(\sigma_i)+(1−y_i)log(1−\sigma_i)\right]$. It is the most basic way to evaluate a classification model. Nearer the log loss value is to 0, higher is the accuracy of the model; farther away the value is from 0, lower is its accuracy.*

In the next segment, we will summarise your learnings from this session. In the next session, you will work on a case study using Python. The session will also cover some essential implementation concepts.
