# Confusion Matrix and Accuracy

You chose a cut-off of 0.5 in order to classify the customers into 'Churn' and 'Non-Churn'. Now, since you are classifying customers into two classes, you will obviously have some errors. The classes of errors are as follows:

- 'Churn' customers being (incorrectly) classified as 'Non-Churn'
- 'Non-Churn' customers being (incorrectly) classified as 'Churn'

To capture these errors and to evaluate how well the model is built, you will use something known as the **'confusion matrix'**. A typical confusion matrix would look like the following.

![Confusion Matrix](https://cdn.upgrad.com/UpGrad/temp/9780e6c7-ffe6-40ff-9593-de14d919dec6/pasted+image+0.png)

Confusion Matrix

This table shows a comparison of the predicted and actual labels. The actual labels are along the vertical axis, while the predicted labels are along the horizontal axis. Thus, the second row and first column (263) is the number of customers who have actually ‘churned’ but were predicted as 'non-churn' by the model.

Similarly, the cell at the second row and second column (298) is the number of customers who are actually ‘churn’ and were also predicted as 'churn' by the model.

**Note:** This is an example table and not what you will get in Python for the model that you have built so far. It is just used as an example to illustrate the concept. Also, note that this is the transpose of the confusion matrix shown in the previous session. This will help you in understanding the confusion matrix better.

Now, the simplest model evaluation metric for classification models is **accuracy,** which is the percentage of correctly predicted labels. So, what would the correctly predicted labels be? They would be as follows:

- 'Churn' customers being actually identified as churn
- 'Non-churn' customers being identified as non-churn

As you can see from the table given above, the correctly predicted labels are contained in the first row and first column and the last row and last column as can be seen highlighted in the table provided below.

![Correctly Predicted Labels](https://cdn.upgrad.com/UpGrad/temp/b8f2e216-e7bb-4bf6-9c08-06c831453bec/Confusion+Matrix.png)

Correctly Predicted Labels

Now, accuracy is defined as follows:
$$Accuracy=\dfrac{Correctly\ Predicted\ Labels}{Total\ Number\ of\ Labels}$$
Using the table, we can say that the accuracy for this table would be as follows:
$$Accuracy=\dfrac{1406+298}{1406+143+263+298}\approx80.75$$
Now that you know about the confusion matrix and accuracy, let's see how good your model is so far based on the accuracy. But first, answer a couple of questions.

#### Confusion Matrix and Accuracy

Qn: Given the confusion matrix below, can you tell how many 'Churns' were correctly identified, i.e., the person who was predicted to churn actually churned?

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 80            | 30        |
| Churn                | 20            | 70        |

- 80

- 30

- 20

- 70

Ans: D. *Look at the table carefully. The value in the last row and last column will give you this number. You can see that there are 70 people who had actually churned and were also predicted to churn.*

#### Calculating Accuracy

Qn: Based on the confusion matrix that you saw in the last question, compute the accuracy of the model.

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 80            | 30        |
| Churn                | 20            | 70        |

- 70%

- 75%

- 80%

- 90%

Ans: B. *The accuracy of a model is given by:*
$$Accuracy=\dfrac{Correctly\ Predicted\ Labels}{Total\ Number\ of\ Labels}$$
*Here, the number of correctly predicted labels are present in the first row, first column and the last row, last column. Hence, you get: Correctly predicted labels = 80 + 70 = 150.* The total number of labels is simply the sum of all the numbers present in the confusion matrix. Therefore, Total number of labels $=80+30+20+70=200$.

*Hence, you get: Accuracy$=\dfrac{150}{200}=75\%$*

**VIDEO**

Using the confusion matrix, you got an accuracy of about 80.8%, which seems to be a good number to begin with. The steps in calculating accuracy are as follows:

- Creating the confusion matrix
- Calculating the accuracy by applying the 'accuracy_score' function to the matrix created above

The code used to do this is given below.

```python
# Create confusion matrix
confusion = metrics.confusion_matrix(y_train_pred_final.Churn, y_train_pred_final.predicted)

# Calculate accuracy
print(metrics.accuracy_score(y_train_pred_final.Churn, y_train_pred_final.predicted))
```

#### Confusion Matrix

Qn: Suppose you built a logistic regression model to predict whether a patient has lung cancer or not and you get the following confusion matrix as the output.

| **Actual/Predicted** | **No** | **Yes** |
| -------------------- | ------ | ------- |
| No                   | 400    | 100     |
| Yes                  | 50     | 150     |

How many of the patients were wrongly identified as a 'Yes'?

- 400

- 100

- 50

- 150

Ans: B. *Look at the table carefully. The value in the first row and the second column will tell you this number. Hence, you get 100 patients which actually didn't have lung cancer but were identified as having lung cancer.*

Qn: Take a look at the table again.

| **Actual/Predicted** | **No** | **Yes** |
| -------------------- | ------ | ------- |
| No                   | 400    | 100     |
| Yes                  | 50     | 150     |

How many of these patients were correctly labelled, i.e. if the patient had lung cancer it was actually predicted as a 'Yes' and if they didn't have lung cancer, it was actually predicted as a 'No'?

- 150

- 400

- 500

- 550

Ans: D. *The sum of values of the numbers in the first row, first column and the last row, last column will give you the answer. From the table above, the value in the first row, first column is 400, and the value in the last row, last column is 150. Hence, you get the total correctly predicted labels as 400 + 150 = 550*

Qn: From the table you used for the last two questions, what will be the accuracy of the model?

| **Actual/Predicted** | **No** | **Yes** |
| -------------------- | ------ | ------- |
| No                   | 400    | 100     |
| Yes                  | 50     | 150     |

- 57.14%

- 64.29%

- 71.43%

- 78.57%

Ans: D. *The accuracy of a model is given by: $Accuracy=\dfrac{Correctly\ precited\ labels}{Total\ Number\ of\ Labels}$. The number of correctly predicted labels as you found out from the last question is equal to 550. The total number of labels is $(400 + 100 + 50 + 150) = 700$. Hence, the accuracy becomes: $Accuracy=\dfrac{550}{700}≈78.57\%$.*

## Coming up

So far, you have only selected features based on RFE. Further elimination of features using p-values and VIFs manually is yet to be done. You will do that in the next segment.
