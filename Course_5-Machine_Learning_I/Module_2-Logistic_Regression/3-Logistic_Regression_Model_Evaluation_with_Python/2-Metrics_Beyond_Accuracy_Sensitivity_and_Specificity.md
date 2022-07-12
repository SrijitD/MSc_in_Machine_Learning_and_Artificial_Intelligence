# Metrics Beyond Accuracy: Sensitivity & Specificity

In the previous session, you built a logistic regression model and arrived at the final set of features using RFE and manual feature elimination. You got an accuracy of about **80.475%** for the model. But the question now is: Is accuracy enough to assess the goodness of the model? From what you learnt in the first session, you know that the answer is a big **NO!** You have gone through the concepts covered in this segment, but it is recommended that you test yourself by understanding the metrics with respect to the churn problem and answering the questions that follow.

To understand why accuracy is often not the best metric, consider the following business problem.

Let’s say that increasing ‘churn’ is the most serious issue in the telecom company, and the company desperately wants to retain customers. To do that, the marketing head decides to roll out discounts and offers to all customers who are likely to churn; ideally, not a single ‘churn’ customer should be missed. Hence, it is important that the model identifies almost all the ‘churn’ customers correctly. It is fine if it incorrectly predicts some of the ‘non-churn’ customers as ‘churn’, as in that case, the worst that will happen is that the company will offer discounts to those customers who would anyway stay.

Let's take a look at the confusion matrix that we arrived at for our final model again. The actual labels are along the column, while the predicted labels are along the rows (e.g., 595 customers are actually 'churn' but predicted as 'not-churn').

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 3269          | 366       |
| Churn                | 595           | 692       |

From this table, you can see that there are **595 + 692  = 1287** actual ‘churn’ customers. So, ideally, the model should predict all of them as ‘churn’ (i.e., corresponding to the business problem given above). But out of these 1287 customers, the current model only predicts 692 as ‘churn’. Thus, only 692 out of 1287, or **only about 53% of ‘churn’ customers**, **will be predicted by the model as ‘churn’**. This is very risky, as the company will not be able to roll out offers to the rest 47% ‘churn’ customers and they could switch to a competitor.  
 

So although the accuracy is about 80%, the model only predicts 53% of churn cases correctly.

In essence, what is happening here is that you care more about one class (class = 'churn') than the other. This is a very common situation in classification problems: you <u>almost always care more about one&nbsp;class&nbsp;</u> than the other. On the other hand, the accuracy tells you the model's performance on both classes combined, which is fine but not the most important metric.

Similarly, if you are building a model to determine whether you should block (where blocking is a 1 and not blocking is a 0) a customer's transactions or not based on his past transaction behaviour in order to identify frauds, you would care more about getting the 0s right. This is because you might not want to wrongly block a good customer's transactions, as it might lead to very bad customer experience. 

Hence, it is crucial that you consider the **overall business problem** that you are trying to solve to decide the metric that you want to maximise or minimise.

This brings us to two of the most commonly used metrics to evaluate a classification model:

- Sensitivity
- Specificity

Let's understand these metrics one by one. **Sensitivity** is defined as follows:

$$Sensitivity=\dfrac{Number\ of\ actual\ Yeses\ correctly\ predicted}{Total\ number\ of\ actual\ Yeses}$$
Here, 'yes' means 'churn' and 'no' means 'non-churn'. Let's look at the confusion matrix again.

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 3269          | 366       |
| Churn                | 595           | 692       |

The different elements in this matrix can be labelled as given below.

| **Actual/Predicted** | **Not Churn**   | **Churn**       |
| -------------------- | --------------- | --------------- |
| Not Churn            | True Negatives  | False Positives |
| Churn                | False Negatives | True Positives  |

1. The first cell contains the actual 'Not Churns' being predicted as 'Not-Churn' and hence, is labelled **'True Negatives'** ('Negative' implies that the class is '0', here, Not-Churn.).
2. The second cell contains the actual 'Not Churns' being predicted as 'Churn' and, hence, is labelled **'False Positive'** (because it is predicted as 'Churn' (Positive), but in actuality, it is not a Churn).
3. Similarly, the third cell contains the actual 'Churns' being predicted as 'Not Churn' which is why we call it **'False Negative'**.
4. And finally, the fourth cell contains the actual 'Churn's being predicted as 'Churn', and so, it is labelled as **'True Positive'**.

Now, to find out the sensitivity, you first need the number of actual Yeses correctly predicted. This number can be found in the last row of the last column of the matrix (which is denoted as 'true positives'). This number if **692.** Now, you need the total number of actual Yeses. This number will be the sum of the numbers present in the last row, i.e., the actual number of churns (this will include the actual 'churn's being wrongly identified as 'not churn's and the actual 'churn's being correctly identified as 'churn's). Hence, you get **(595 + 692) = 1287**. 

Now, when you replace these values in the sensitivity formula, you get the following:
$$Sensitivity=\dfrac{692}{1287}\approx53.768\%$$
Thus, you can clearly see that although you had a high accuracy **(~80.475%)**, your sensitivity turned out to be quite low **(~53.768%).**

Now, similarly, **specificity** is defined as follows:
$$Specificity=\dfrac{Number\ of\ actual\ Nos\ correctly\ predicted}{Total\ number\ of\ actual\ Nos}$$
As you can now infer, this value will be given by the value **True Negatives (3269)** divided by the actual number of negatives, i.e., **True Negatives + False Positives (3269 + 366 = 3635)**. Substituting these values in the formula, you get specificity as follows:
$$Specificity=\dfrac{3269}{3635}\approx89.931\%$$

#### False Positives

Qn: What is the number of false positives for the model given below?

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 400           | 100       |
| Churn                | 50            | 150       |

- 400

- 100

- 50

- 150

Ans: B. *False positives are the values that were actually 'Not Churn' but were predicted as 'Churn'. From the matrix given above, the answer would be 100.*

*You can also have a look at the labelled confusion matrix that you just learnt about.* 

| Actual/Predicted | Not Churn       | Churn           |
| ---------------- | --------------- | --------------- |
| Not Churn        | True Negatives  | False Positives |
| Churn            | False Negatives | True Positives  |

#### Sensitivity

Qn: Sensitivity is defined as the fraction of the number of correctly predicted positives and the total number of actual positives, i.e.,

$Sensitivity=\dfrac{TP}{(TP+FN)}$

What is the sensitivity of the following model?

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 400           | 100       |
| Churn                | 50            | 150       |

- 60%

- 75%

- 80%

- 90%

Ans: Sensitivity is given as: $Sensitivity=\dfrac{TP}{(TP+FN)}$. Here, TP (True Positives) = 50, and FN (False Negatives) = 50, Hence, you get: $Sensitivity=\dfrac{150}{(150+50)}=75\%$

#### Evaluation Metrics

Qn: Which of the three metrics that you learnt about is the highest for the model given below?

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 400           | 100       |
| Churn                | 50            | 150       |

- Accuracy

- Sensitivity

- Specificity

Ans: C. *The formula for the three metrics are given as follows:*
$$Accuracy=\dfrac{Correctly\ Predicted\ Labels}{Total\ Number\ of\ Labels}$$
$$Sensitivity=\dfrac{Number\ of\ actual\ Yeses\ correctly\ predicted}{Total\ number\ of\ actual\ Yeses}=\dfrac{TP}{TP+FN}$$
$$Specificity=\dfrac{Number\ of\ actual\ Nos\ correctly\ predicted}{Total\ number\ of\ actual\ Nos}=\dfrac{TN}{TN+FP}$$
*Hence, you get:*
$$Accuracy=\dfrac{400+150}{400+100+50+150}=78.57\%$$$$Sensitivity=\dfrac{150}{150+50}=75\%$$$$Specificity=\dfrac{400}{400+100}=80\%$$
*As you can clearly see, specificity (80%) is the highest among the three.*

## Coming up

In the next section, you will learn how to evaluate these metrics using Python.
