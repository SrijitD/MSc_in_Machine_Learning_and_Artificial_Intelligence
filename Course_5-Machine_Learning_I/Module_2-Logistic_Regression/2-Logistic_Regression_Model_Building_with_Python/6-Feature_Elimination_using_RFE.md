# Feature Elimination using RFE

You built your first model in the previous segment. Based on the summary statistics, you inferred that many of the variables may be insignificant. Therefore, you need to do some feature elimination. Since the number of features is huge, let's first start off with an automated feature selection technique (RFE) and then move onto manual feature elimination (using p-values and VIFs). This is exactly the same process that you used in linear regression.

So, let's start off with the automatic feature selection technique: RFE.

**VIDEO**

Recursive Feature Elimination (RFE) is an automated feature elimination algorithm. As you saw in the code, the RFE object takes two arguments: a machine learning algorithm object and an integer to represent the number of features to keep. RFE trains a model of the given ML algorithm to find the least important feature and eliminate it. Then it retains a new model and again finds the least important feature to eliminate. This repeats until the specified number of features are left.

Now, let's summarise the steps that you just performed to execute the RFE algorithm. First, you imported the logistic regression library from sklearn and created a logistic regression object using the following:

```python
from sklearn.linear_model import LogisticRegression
logreg = LogisticRegression()
```

Then you ran an RFE on the data set using the same command as you did in linear regression. In this case, you selected 15 features first (15 is, of course, an arbitrary number).

```python
from sklearn.feature_selection import RFE
rfe = RFE(logreg, n_features_to_select=15)             # running RFE with 15 variables as output
rfe = rfe.fit(X_train, y_train)
```

![](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==)

RFE selected 15 features for you, and the following is the output that you got.

![RFE Output](https://i.ibb.co/FYtg1ZF/RFE-Output.png)

You can see that RFE has eliminated certain features such as 'MonthlyCharges', 'Partner' and 'Dependents'.

We decided to go ahead with this model, but since we are also interested in the statistics, we take the columns selected by RFE and use them to build a model using statsmodels and the following code.

```python
X_train_sm = sm.add_constant(X_train[col])
logm2 = sm.GLM(y_train,X_train_sm, family = sm.families.Binomial())
res = logm2.fit()
```

![](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==)

Here, you use the **GLM (Generalised Linear Models)** method of the library statsmodels. **'Binomial()'** in the 'family' argument tells statsmodels that it needs to fit **a logit curve to a binomial data** (i.e., the target will have just two classes; in this case, 'Churn' and 'Non-Churn').

Now, recall that the logistic regression curve gives you the **probabilities of churning** and **not churning**. You can get these probabilities by simply using the **'predict'** function as shown in the Notebook.

Since the logistic curve gives you just the probabilities and not the actual classification of **'Churn'** and **'Non-Churn'**, you need to find a **threshold probability** to classify customers as 'churn' and 'non-churn'. Here, you choose 0.5 as an arbitrary cut-off, wherein if the probability of a particular customer churning is less than 0.5, you would classify it as **'Non-Churn',** and if it is greater than 0.5, you would classify it as **'Churn'**. **The choice of 0.5 is completely arbitrary at this stage,** and you will learn how to find the optimal cut-off in 'Model Evaluation'. For now, let's move forward with 0.5 as the cut-off.

#### Threshold Value

Qn: You saw that Rahim chose a cut-off of 0.5. What can be said about this threshold?

- It was arbitrarily chosen, i.e., there is nothing special about 0.5. He could have chosen another value as well.

- It was learnt by the model during training.

- It was learnt by the model while making predictions.

Ans: A. *The threshold of 0.5 chosen is completely arbitrary. You will learn how to choose an optimal threshold during model evaluation.*

#### Significance Based on RFE

Qn: Based on the RFE output shown above, which of the variables is the least significant?

- OnlineBackup_Yes

- Partner

- gender_Male

- PhoneService

Ans: C. *Recall that RFE assigns ranks to the different variables based on their significance. While 1 means that the variable should be selected, a rank > 1 tells you that the variable is insignificant. The ranking given to 'gender_Male' by RFE is **9**, which is the highest; hence, it is the most insignificant variable present in the RFE output.*

#### Churn Based on Threshold

Suppose the following table shows the predicted values for the probabilities for 'Churn'. Assuming you chose an arbitrary cut-off of 0.5, wherein a probability of greater than 0.5 means that the customer would churn, and a probability of less than or equal 0.5 means the customer would not churn, which of these customers do you think will churn? (Note: More than one option may be correct.)

| Customer | Probability(Churn) |
| -------- | ------------------ |
| A        | 0.45               |
| B        | 0.67               |
| C        | 0.98               |
| D        | 0.49               |
| E        | 0.03               |

- A

- B

- C

- D

- E

Ans: B & C. *The threshold mentioned in the question for churning is given to be 0.5, which means that the customers with a churn probability > 0.5 will churn and those with a churn probability of < 0.5.  For customer B & C, the churn probability are 0.67 & 0.98, which is greater than 0.5. Therefore, customer B will churn based on the decided threshold.*

## Coming up

In the next segment, you will learn how to calculate the accuracy of the fitted logistic regression curve.