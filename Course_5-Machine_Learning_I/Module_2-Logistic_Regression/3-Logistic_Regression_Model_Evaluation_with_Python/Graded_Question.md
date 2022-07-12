# Graded Questions

All the best!

#### Calculating Sensitivity

Qn: Suppose you got the following confusion matrix for a model by using a cut-off of 0.5.

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 1200          | 400       |
| Churn                | 350           | 1050      |

Calculate the sensitivity of this model. Now suppose for the same model, you changed the cut-off from 0.5 to 0.4 such that your number of true positives increased from 1050 to 1190. What will the change in sensitivity be?

**Note:** Report the answer in terms of new_value - old_value, i.e. if the sensitivity was, say, 0.6 earlier and then changed to 0.8, report it as (0.8 - 0.6), i.e. 0.2.

- 0.05

- -0.05

- 0.1

- -0.1

Ans: C. *Recall that the formula for sensitivity is given by: $Sensitivity=\dfrac{TP}{TP+FN}$. Here, TP = 1050 and FN = 350. Hence, initially, the sensitivity was: $Sensitivity=\dfrac{1050}{1050+350}=75\%$. Now, when you changed the threshold, the number of true positives changes from 1050 to 1190. Now, since the number of actual positives will always be the same, i.e., (1050 + 350 = 1400) as the original confusion matrix, you can calculate the new sensitivity as:  $Sensitivity=\dfrac{1190}{1400}=0.85$. Hence, the change in sensitivity = 0.85 - 0.75 = 0.1.*

#### Calculating Precision

Qn: Consider the confusion matrix that you had in the last question.

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 1200          | 400       |
| Churn                | 350           | 1050      |

Calculate the values of precision and recall for the model and determine which of the two is higher.

- Precision

- Recall

- Both are the same

Ans: B. *Recall that precision and recall are given by: $Precision=\dfrac{TP}{TP+FP}$ and $Recall=\dfrac{TP}{TP+FN}$. Here, TP = 1050; FP = 400; TN = 350. Hence, you get: $Precision=\dfrac{1050}{1050+400}\approx72.41\%$ and $Recall=\dfrac{1050}{1050+350}=75\%$. As you can see, of the two, recall is higher.*

#### True Positive Rate

Qn: Fill in the blank. The True Positive Rate (TPR) metric is exactly the same as \_\_\_\_\_.

- Sensitivity

- Specificity

- Precision

- False Positive Rate

Ans: A. *Recall the formula for TPR is given as: $TPR=\dfrac{True\ Positives}{Total\ Number\ of\ Actual\ Positives}$. Which can be rewritten as: $TPR=\dfrac{TP}{TP+FN}$. And this is exactly the same as sensitivity as you might remember.*

#### Threshold

Qn: Suppose someone built a logistic regression model to predict whether a person has heart disease or not. All you have from their model is the following table containing data of 10 patients.

| **Patient ID** | **Heart Disease** | **Predicted Probability for Heart Disease** | **Predicted Label** |
| -------------- | ----------------- | ------------------------------------------- | ------------------- |
| 1001           | 0                 | 0.34                                        | 0                   |
| 1002           | 1                 | 0.58                                        | 1                   |
| 1003           | 1                 | 0.79                                        | 1                   |
| 1004           | 0                 | 0.68                                        | 1                   |
| 1005           | 0                 | 0.21                                        | 0                   |
| 1006           | 0                 | 0.04                                        | 0                   |
| 1007           | 1                 | 0.48                                        | 0                   |
| 1008           | 1                 | 0.64                                        | 1                   |
| 1009           | 0                 | 0.61                                        | 1                   |
| 1010           | 1                 | 0.86                                        | 1                   |

Now, you want to find out the cut-off based on which the classes were predicted, but you cannot. But can you identify which of the following cut-offs would be a valid cut-off for the model given above based on the 10 data points given in the table? (Note: More than one option may be correct.)

- 0.45

- 0.50

- 0.55

- 0.60

Ans: B & C. *Take a look at the table carefully. For patient 1007, the predicted probability is 0.48 and the predicted class is 0. This means that the cut-off has to be greater than 0.48. Also, for patient 1002, the predicted probability is 0.58 and the predicted class is 1. This means that the cut-off has to be less than 0.58. Therefore, the cut-off can lie between 0.48 and 0.58. Therefore, 0.50 are 0.55 can be valid cut-offs for the model given above.*

#### Evaluation Metrics

Qn: Consider the same model given in the last question.

| **Patient ID** | **Heart Disease** | **Predicted Probability for Heart Disease** | **Predicted Label** |
| -------------- | ----------------- | ------------------------------------------- | ------------------- |
| 1001           | 0                 | 0.34                                        | 0                   |
| 1002           | 1                 | 0.58                                        | 1                   |
| 1003           | 1                 | 0.79                                        | 1                   |
| 1004           | 0                 | 0.68                                        | 1                   |
| 1005           | 0                 | 0.21                                        | 0                   |
| 1006           | 0                 | 0.04                                        | 0                   |
| 1007           | 1                 | 0.48                                        | 0                   |
| 1008           | 1                 | 0.64                                        | 1                   |
| 1009           | 0                 | 0.61                                        | 1                   |
| 1010           | 1                 | 0.86                                        | 1                   |

Calculate the values of accuracy, sensitivity, specificity and precision. Which of these four metrics is the highest for the model?

- Accuracy

- Sensitivity

- Specificity

- Precision

Ans: B. *From the table given above, you can easily find out that: TN = 3, FP = 2, FN = 1, TP = 4. Hence, your confusion matrix will look like this.*

| Actual/Predicted | No Heart Disease | Heart Disease |
| ---------------- | ---------------- | ------------- |
| No Heart Disease | 3                | 2             |
| Heart Disease    | 1                | 4             |

*Hence, you get: $Accuracy=\dfrac{3+4}{3+2+1+4}=70\%$, $Sensitivity=\dfrac{4}{4+1}=80\%$, $Specificity=\dfrac{3}{3+2}=60\%$ and, $Precision=\dfrac{4}{4+2}\approx67\%$. As you can clearly see, sensitivity has the highest value.*
