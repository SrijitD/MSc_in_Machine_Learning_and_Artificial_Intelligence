# Sensitivity and Specificity in Python

In the last segment, you learnt the importance of having evaluation metrics besides accuracy. You were introduced to two new metrics: **sensitivity** and **specificity**. You learnt the theory of sensitivity and specificity and understood how to calculate them using a confusion matrix. Now, watch the following video to learn how to calculate these metrics in Python as well.

**VIDEO**

As you saw in the code, you can access the different elements in the matrix using the following indexing.

```python
TP = confusion[1,1] # true positive 
TN = confusion[0,0] # true negatives
FP = confusion[0,1] # false positives
FN = confusion[1,0] # false negatives
```

![](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==)

And now, let's rewrite the formulas of sensitivity and specificity using the labels of the confusion matrix.
$$Sensitivity=\dfrac{True\ Positives}{True\ Positives+False\ Negatives}$$
$$Specificity=\dfrac{True\ Negatives}{True\ Negatives+False\ Positives}$$

#### False Negatives

Qn: What is the number of False Negatives for the model given below?

What is the number of False Negatives for the model given below?

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 80            | 40        |
| Churn                | 30            | 50        |

- 80

- 40

- 30

- 50

Ans: C. *The false negatives are the values which were actually 'Churn' but have been predicted as 'Not Churn'. Recall the labelling for the confusion matrix:*

| Actual/Predicted | Not Churn       | Churn           |
| ---------------- | --------------- | --------------- |
| Not Churn        | True Negatives  | False Positives |
| Churn            | False Negatives | True Positives  |

*Hence, you can see from the matrix above that the element in the 2nd row, 1st column gives you the value of 'False Negatives'. From the model given in the question, you can see that this number is equal to 30.*

#### Specificity

Specificity is defined as the fraction of the number of correctly predicted negatives and the total number of actual negatives, i.e.

$Specificity=\dfrac{TN}{(TN+FP)}$

What is the approximate specificity of the following model?

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 80            | 40        |
| Churn                | 30            | 50        |

- 60%

- 67%

- 75%

- 80%

Ans: B. Specificity is given as: $Specificity=\dfrac{TN}{(TN+FP)}$. Here, TN (True Negatives) = 80, and FP (False Positives) = 40, Hence, you get: $Specificity=\dfrac{80}{(80+40)}=66.67\%\approx67\%$.

#### Evaluation Metrics

Qn: Which among accuracy, sensitivity, and specificity is the highest for the model below?

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 80            | 40        |
| Churn                | 30            | 50        |

- Accuracy

- Sensitivity

- Specificity

Ans: C. *The formula for the three metrics are given as:*
$$Accuracy=\dfrac{Correctly\ Predicted\ Labels}{Total\ Number\ of\ Labels}=\dfrac{TP+TN}{TP+FP+TN+FN}$$
$$Sensitivity=\dfrac{Number\ of\ actual\ Yeses\ correctly\ predicted}{Total\ number\ of\ actual\ Yeses}=\dfrac{TP}{TP+FN}$$
$$Specificity=\dfrac{Number\ of\ actual\ Nos\ correctly\ predicted}{Total\ number\ of\ actual\ Nos}=\dfrac{TN}{TN+FP}$$
*Hence, you get: *$$Accuracy=\dfrac{80+50}{80+40+30+50}=65\%$$
$$Sensitivity=\dfrac{50}{30+50}=62.5\%$$$$Specificity=\dfrac{80}{80+40}\approx67\%$$
As you can clearly see, Specificity (~67%) is the highest among the three.*

#### Other Metrics

Qn: In the code, you saw Rahim evaluate some other metrics as well. These were:

$False\ Positive\ Rate=\dfrac{FP}{TN+FP}$

$Positive\ Predictive\ Value=\dfrac{TP}{TP+FP}$

$Negative\ Predictive\ Value=\dfrac{TN}{TN+FN}$

- As you can see, the 'False Positive Rate' is basically (1 - Specificity). Check the formula and the values in the code to verify.
- The positive predictive value is **the number of positives correctly predicted by the total number of positives predicted**. This is also known as **'Precision'** which you'll learn more about soon.
- Similarly, the negative predictive value is **the number of negatives correctly predicted by the total number of negatives predicted**. There's no particular term for this as such.

Calculate the given three metrics for the model below and identify which one is the largest among them.

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 80            | 40        |
| Churn                | 30            | 50        |

- False Positive Rate

- Positive Predictive Value

- Negative Predictive Value

Ans: C. *The values that you'll get are:*
$$False\ Positive\ Rate=\dfrac{FP}{TN+FP}=\dfrac{40}{80+40}\approx33\%$$
*You could have also used the specificity value you calculated in the last question (~67%) and simply calculated this as 1-Specificity = 1 - 0.67 = 33%*
$$Positive\ Predictive\ Value=\dfrac{TP}{TP+FP}=\dfrac{50}{50+40}=55.55\%\approx56\%$$
$$Negative\ Predictive\ Value=\dfrac{TN}{TN+FN}=\dfrac{80}{80+30}\approx72.72\%\approx73\%$$

*As you can clearly see, the Negative Predictive Value is the highest of the three.*

## Coming up

So, your model seems to have **high accuracy (~80.475%)** and **high specificity (~89.931%)**, but **low** **sensitivity (~53.768%),** and since you are interested in identifying the customers who might churn, you clearly need to figure out ways to deal with low sensitivity. You will learn how to do this in the next section.