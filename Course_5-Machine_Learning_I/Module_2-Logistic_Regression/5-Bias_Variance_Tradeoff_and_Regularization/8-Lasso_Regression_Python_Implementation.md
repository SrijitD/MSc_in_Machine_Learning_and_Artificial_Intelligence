# Lasso Regression - Python Implementation

In the previous segment, you learnt that Ridge regression retains all the variables that are present in the data. As you learnt earlier, when the number of variables is very large and the data may have unrelated or noisy variables, we may not want to keep such variables in the model. Lasso regression helps us here by performing feature selection. Now, in the forthcoming video, we will see how Lasso is implemented using Python.

**VIDEO**

So, to summarise:

-   The behaviour of Lasso regression is similar to that of Ridge regression.
-   With an increase in the value of lambda, variance reduces with a slight compromise in terms of bias.
-   Lasso also pushes the model coefficients towards 0 in order to handle high variance, just like Ridge regression. But, in addition to this, Lasso also pushes some coefficients to be exactly 0 and thus performs variable selection.
-   This variable selection results in models that are easier to interpret.

In the forthcoming video, Anjali explains variable selection feature in Python.

Correction: Anjali meant to say lambda value of 0.001 instead of 0.01 at 0:27 and 0:58.

**VIDEO**

Generally, Lasso should perform better in situations where only a few among all the predictors that are used to build our model have a significant influence on the response variable. So, feature selection, which removes the unrelated variables, should help. But Ridge should do better when all the variables have almost the same influence on the response variable. 

It is not the case that one of the techniques always performs better than the other – the choice would depend upon the data that is used for modelling.

#### Lasso Regression

Qn: Ridge regression should perform better in situations where only a few among all the predictors that are used to build our model have a significant influence on the response variable.

- True

- False

Ans: B. *Lasso performs better in situations where only a few among all the predictors that are used to build our model have a significant influence on the response variable.*

Qn: Higher the value of lambda in the shrinkage term:

- Lesser the regularization

- More the regularization

- Does not affect the regularization

Ans: B *Higher the value of lambda in the shrinkage term, more are the model coefficients pushed towards 0 and hence more the regularization.*

Qn: Standardizing the variables before regularization is not necessary.

- True

- False

Ans: B. *Standardizing variables is necessary before regularization.*

In the next segment, we will look at a new technique known as K-fold Cross-Validation which can be used to detect overfitting and ensures that the model is not biased towards the dataset.