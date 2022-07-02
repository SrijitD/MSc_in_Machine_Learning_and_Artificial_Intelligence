# Model Evaluation Metrics - Exercise

These questions are **non-graded**.

In the last segment, you saw that the optimal cut-off for the model turned out to be 0.3. Now, in order to assess the model, you need to rerun the predictions on the train set using the cut-off of 0.3. Recall that when you did this using a cut-off of 0.5, you used the following code.

```python
# Creating new column 'predicted' with 1 if Churn_Prob > 0.5 else 0
y_train_pred_final['predicted'] = y_train_pred_final.Churn_Prob.map(lambda x: 1 if x > 0.5 else 0)
```

Now, using the same code with just the cut-off value changed, calculate all the metrics (accuracy, sensitivity, specificity) and answer the questions given below.

#### Accuracy of the Model

QN: Using the threshold of 0.3, what is the approximate accuracy of the model now?

- 72%

- 77%

- 79%

- 80%

Ans: B. *Use the following code to calculate the accuracy.*

```python
metrics.accuracy_score(y_train_pred_final.Churn, y_train_pred_final.final_predicted)
```

*You will get an accuracy of about 77.14%.*

#### Confusion Matrix

Qn: Get the confusion matrix after using the cut-off 0.3. What is the number of 'False Negatives' now?

- 2793

- 842

- 296

- 1004

Ans: C. *When you run the following code to get the confusion matrix:*

```python
confusion2 = metrics.confusion_matrix(y_train_pred_final.Churn, y_train_pred_final.final_predicted )
```

*you will get the confusion matrix given below.*

| Actual/Predicted | Not Churn | Churn |
| ---------------- | --------- | ----- |
| Not Churn        | 2810      | 825   |
| Churn            | 296       | 991   |

*Also, recall that the labels in the confusion matrix are as given below.*

| Actual/Predicted | Not Churn       | Churn           |
| ---------------- | --------------- | --------------- |
| Not Churn        | True Negatives  | False Positives |
| Churn            | False Negatives | True Positives  |

*You can clearly see that the number of 'False Negatives' is now 296. Also, note that the number of 'False Negatives' has now dropped significantly and the number of 'True Positives' has increased. Thus, choosing a lower cut-off has definitely helped in capturing the 'Churns' better.*

#### Sensitivity

Qn: In the last question, you saw that in the confusion matrix, the Churns are being captured better now. Using the confusion matrix, can you tell what will the approximate sensitivity of the model now be?

- 67

- 72

- 75

- 77

Ans: D. The sensitivity is given as: $Sensitivity=\dfrac{TP}{TP+FN}$. Hence, you get: $Sensitivity=\dfrac{1004}{1004+283}\approx77.3\%$

*It is recommended that you calculate this in your Jupyter Notebook as well.*

If you want the solution to these questions, the code has been provided in the Logistic Regression Jupyter Notebook that you downloaded, below the plotted trade-off curve. However, it is recommended that you write the code and attempt these questions on your own before looking at the given code.

## Coming up

In the next segment, you will learn a few more evaluation metrics that are used in the industry.
