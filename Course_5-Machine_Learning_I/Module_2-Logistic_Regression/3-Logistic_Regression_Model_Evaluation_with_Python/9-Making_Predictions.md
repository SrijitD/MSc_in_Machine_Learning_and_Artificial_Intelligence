# Making Predictions

The model evaluation on the train set is complete, and the model seems to be doing a decent job. You learnt about two views of the evaluation metrics: one was the sensitivity-specificity view and the other, the precision-recall view. You can choose any of the metrics. In this session, we will use the sensitivity-specificity curve to decide the cut-off. As we had seen earlier it comes out to be 0.3.

**Note:** At **2:45**, Rahim mistakenly says, "On the main model, we had an accuracy of about 79%". Please note that this was a mistake. It should be 77% as you had calculated in the 'Model Evaluation Metrics - Exercise'.

**VIDEO**

The metrics seem to apply to the test data set as well. So, it looks like you have created a decent model for the churn data set, as the metrics are decent for both the training and the test data sets.

You can also take the cut-off that you got from the precision-recall trade-off curve and try making predictions based on that on your own.

#### Calculating Accuracy

Qn: Recall that in the last segment, you saw that the cut-off based on the precision-recall trade-off curve was approximately 0.42. When you take this cut-off, you get the following confusion matrix on the test set.

| Actual/Predicted | Not Churn | Churn |
| ---------------- | --------- | ----- |
| Not Churn        | 1294      | 234   |
| Churn            | 223       | 359   |

What will the approximate value of accuracy be on the test set now?

- 60%

- 72%

- 75%

- 78%

Ans: D. *Recall that the accuracy of the model is given by: $Accuracy=\dfrac{Correctly\ Predicted\ Labels}{Total\ Number\ of\ Labels}$. Hence, you get: $Accuracy=\dfrac{1294+359}{1294+234+223+359}\approx78.34\%$*



#### Calculating Recall

Qn: For the confusion matrix that you saw in the last question, what will the approximate value of recall be?

| Actual/Predicted | Not Churn | Churn |
| ---------------- | --------- | ----- |
| Not Churn        | 1294      | 234   |
| Churn            | 223       | 359   |

- 62%

- 72%

- 78%

- 82%

Ans: A. *Recall that the recall is given by: $Recall=\dfrac{TP}{TP+FN}$. Here, TP = 359 and TN = 223. Hence, you get: $Recall=\dfrac{359}{359+223}\approx61.68\%\approx62\%$. It is recommended that you calculate these values in the Jupyter Notebook provided.*

## Coming up

In the next segment, let's summarise your learnings from the last two sessions.
