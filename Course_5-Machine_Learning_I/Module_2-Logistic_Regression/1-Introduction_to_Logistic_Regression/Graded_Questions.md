# Graded Questions

All the questions below are **graded.** All the best! 

#### Odds and Log Odds

Qn: The following equation represents a model of the vanilla logistic regression, where $x_1$ and $x_2$ are the features and p is the bias of the positive class.   
Log odds = $2x_1−4x_2$  
One data point has features $x_1=3$ and  $x_2=4$. According to the model, what should the label of the data point be? \[**Hint:** Recall the classification criteria for the vanilla logistic regression.]

- True

- False

- Information is not enough

Ans: B. *The Left side of the equation represents the log odds. For a vanilla logistic regression with 0.5 as the threshold, if the log odds are negative the class label is also false.*

#### Evaluation Metrics

Qn: A database records the studying habits of students and is used to predict which students are likely to fail. Extra classes will be conducted for these students. Which of the following statements is true in this case? (Note: More than one option may be correct.)

- The model should have high sensitivity.

- The model should have high accuracy.

- You can use the ROC curve to find the correct threshold for the model.

- The model should have a high prevalence.

Ans: A, B, & C.

- *Correct. Specificity is the fraction of the correctly predicted positives among all the positives. The model needs to identify the maximum possible number of students who are likely to fail. You are predicting failures here.*

- *Correct. Accuracy is the fraction of the correctly predicted labels among all the labels. Higher the number of students you identify correctly, better will be the model performance.*

- *Correct. In this case, having a high true positive rate and a low false-positive rate is ideal. The ROC curve can help in selecting such a threshold.  You are predicting failures here.*

- *Incorrect. Prevalence is the fraction of positive classes in the total data set, which does not matter in this case. You are predicting failures here.*

#### Classification Algorithms

Qn: Both logistic and linear are regression algorithms. Which of the following are/is the reason(s) for not using linear regression as a classification algorithm? (Note: More than one option may be correct.)

- Model output: Linear regression gives a continuous output. 

- Prediction function used: Linear regression uses a straight line to predict dependent variables.

- Predictability Evaluation: Linear regression uses mean squared error.

- Model interpretability: Linear models are interpretable.

Ans: A, B & C.

- *Correct. Linear regression gives a continuous output, while a classification algorithm needs a binary discrete output.*

- *Correct. A straight line cannot be used directly as a prediction function in logistic regression. The sigmoid function is used as the prediction function in logistic regression.*

- *Correct, In logistic regression there is no significance of mean squared error. The number of correct vs incorrect labels is evaluated.*

- *Incorrect. Both linear and logistic models are interpretable. Logistic model is interpretable through odds and log odds.*

#### Evaluation Metrics

Qn: Consider the confusion matrix provided below.

|                     | Actual Positives | Actual Negatives |
| ------------------- | ---------------- | ---------------- |
| Predicted Positives | P                | R                |
| Predicted Negatives | Q                | S                |

For which of the following does a model with high accuracy also have high values?

- P + R

- Q + P

- R + Q

- S + P

Ans: D. *P + S represents the number of predictions that match the actual labels. So, for a high accuracy model, P + S will be high.*

Qn: Which of the following options is true of a logistic regression model with the threshold set to 1? (Note: More than one option may be correct.)

- False positives = 0

- Specificity  = 1

- Precision = 0 

- Sensitivity = 0

Ans: A, B & D.

- *If the threshold is set to 1, all the data points will be labelled as false. So, there will be no false positives, as there will be positive labels to begin with.*

- *Since all negative labels will be correctly identified, the specificity will be 1.*

- *No value will be marked positive. So, sensitivity will be 0.*

#### Odds Ratio

Qn: Six fair coins are tossed, what are the odds of getting exactly 4 heads?

- 15/64

- 15/49

- 49/64 

- 15/34

Ans: B. *First, calculate the probability of getting 6 heads out of 4 coin tosses using the binomial distribution. Then find the odds ratio.*
$$p=^6C_4*(0.5)^4×(1−0.5)^2=\frac{15}{64}$$$$odds=\frac{\frac{15}{64}}{1−\frac{15}{64}}=\frac{15}{49}$$
#### Classification Function

Qn: Consider a function $p(y|x,w) = g(x,w)$. $g(x)$ is the sigmoid function. If x and w belong to the set of real numbers, then what is the range of values that $p(y)$ will take?

- $-\infty$ to $+\infty$ 

- 0 to 1, including 0 and 1. 

- 0 to 1, not including 0 and 1. 

- -1 to 1

Ans: C. *The sigmoid function is always between 0 and 1 but does not include 1 or 0.*

#### Evaluation Metrics

Qn: A logistic regression model is used to classify 1000 data points into classes A (positive class) or B. The model has a recall of 0.6 and a prevalence of 0.5. Find the number of data points that are correctly predicted as belonging to class A.

- 500

- 400

- 600

- 300

Ans: D. *Use prevalence to find the total number of data points that actually belong to class A (Positives).*
$$prevalence=\frac{TP+FN}{TP+FN+FP+TN}$$$$0.5=\frac{TP+FN}{1000}$$$TP+FN=500$. Now use the total number of data points in class A to find the true positives(Correctly predicted as class A). 
$$Recall=\frac{TP}{TP+FN}$$$$0.6=\frac{TP}{500}$$$$TP=300$$