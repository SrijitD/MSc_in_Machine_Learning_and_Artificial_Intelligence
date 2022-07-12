# Precision and Recall

So far, you have learnt about sensitivity and specificity. You learnt how these metrics are defined, why they are important and how they are calculated. Now, in addition to sensitivity and specificity, there are two more metrics that are widely used in the industry that you should know about. They are **'Precision'** and **'Recall'**. Now, these metrics are very similar to sensitivity and specificity; however, knowing the terminology can be helpful, as both these pairs of metrics are often used in the industry. So, let's first hear from Rahim as he introduces these metrics.

**Note:** At 5:12, it was said 'at a lower threshold, precision is high and recall is low'; it should be 'low precision and high recall'.

**VIDEO**

Let's go through the definitions of precision and recall once again.

- **Precision:** Probability that a predicted 'Yes' is actually a 'Yes'

![Precision Elements in a Confusion Matrix](https://i.ibb.co/VThdKJf/Precision-Elements-in-a-Confusion-Matrix.png)

Precision Elements in a Confusion Matrix

The formula for precision can be given as follows:

$$Precision=\dfrac{TP}{TP+FP}$$

Remember that 'Precision' is the same as the 'Positive Predictive Value' that you learnt about earlier. From now on, we will call it precision.

- **Recall:**  Probability that an actual 'Yes' case is predicted correctly

![Recall Elements in a Confusion Matrix](https://i.ibb.co/2drPR0g/Recall-Elements-in-a-Confusion-Matrix.png)

The formula for recall can be given as follows:

$$Recall=\dfrac{TP}{TP+FN}$$

Remember that 'recall' is exactly the same as 'sensitivity'. Do not get confused between the two.

You may be wondering why you need to study them separately if they are the same. The main reason for this is that in the industry, some businesses follow the 'Sensitivity-Specificity' view and some other businesses follow the 'Precision-Recall' view. Therefore, it will be helpful for you to know both these standard pairs of metrics.

Now, let's check the precision and recall in code as well.

**VIDEO**

As Rahim said, the different views that you select might give you different interpretations for the same model. The choice of view while building a logistic regression model is completely subjective.

Now, recall that Rahim had said that just as in the case of sensitivity and specificity, there is a trade-off between precision and recall as well.

**VIDEO**

**Note**: at 3.14 the SME says "you would come to this curve". He is referring to the precision-recall curve. 

So, similar to the sensitivity-specificity trade-off, you learnt that there is a trade-off between precision and recall as well. The tradeoff curve that you plotted is given below.

![Precision-Recall Tradeoff](https://i.ibb.co/fxCBSqL/Precision-Recall-Tradeoff.png)

Precision-Recall Tradeoff

As you can see, the curve is similar to what you got for sensitivity and specificity, except now, the curve for precision is quite jumpy towards the end. This is because the denominator of precision, that is, $\Large(TP+FP)$, is not constant, as these are the predicted values of 1s. And because the predicted values can swing wildly, you get a very jumpy curve.

#### Calculating Precision

Qn: Calculate the precision value for the following model.

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 400           | 100       |
| Churn                | 50            | 150       |

- 60%

- 75%

- 78%

- 80%

Ans: A. *The formula for precision is given by: $Precision=\dfrac{TP}{TP+FP}$. From the matrix given, $TP=150$ & $FP=100$. Hence, you get, $Precision=\dfrac{150}{150+100}=60\%$*

#### F1-score

Qn: There is a measure known as **F1-score,** which essentially combines precision and recall. It is the [harmonic mean](https://en.wikipedia.org/wiki/Harmonic_mean) of precision and recall, and its formula is given by:
$$F=2×\dfrac{precision×recall}{precision+recall}$$
The F1-score is useful when you want to look at the performance of precision and recall together.

Calculate the F1-score for the model given below.

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 400           | 100       |
| Churn                | 50            | 150       |

- 33%

- 67%

- 37%

- 75%

Ans: B. *From the confusion matrix given, TP = 150, FP = 100 and, FN = 50. Hence, you get - $Precision=\dfrac{150}{100+150}=0.6$ and $Recall=\dfrac{150}{150+50}=0.75$ So, the F1-score becomes - $F=2*\dfrac{0.6*0.75}{0.6+0.75}\approx66.67\%\approx67\%$.*

#### Optimal Cut-off

When using the sensitivity-specificity trade-off, you found out that the optimal cut-off point was 0.3. Now, when you plotted the precision-recall trade-off, you got the curve given below.

![Optimal Cut-Off Qn](https://i.ibb.co/vzGZJGb/Optimal-Cut-Off-Qn.png)

What is the optimal cut-off point according to this curve?

- 0.24

- 0.42

- 0.62

- 0.8

Ans: C. *The optimal cut-off point is where the values of precision and recall will be equal. This is similar to what you saw in the sensitivity-specificity trade-off curve as well. So, when precision and recall are both around 0.62, the two curves are intersecting. And at this place, if you extend the line to the X-axis as given, you can see that the threshold value is 0.42.*

## Coming up

Now that you have evaluated the model using the train data set, you can finally move onto making predictions on the test data set in the next segment.
