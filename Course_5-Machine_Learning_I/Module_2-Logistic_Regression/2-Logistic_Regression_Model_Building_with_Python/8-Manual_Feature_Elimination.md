# Manual Feature Elimination

Recall that you had used RFE to select 15 features. But as you saw in the pairwise correlations, the values of correlations between the 15 features are high, i.e., there is still some multicollinearity among the features. So, you definitely need to check the VIFs as well to further eliminate the redundant variables. VIF calculates how well one independent variable is explained by all the other independent variables combined. And its formula is given as follows:
$$VIF_i=\dfrac{1}{1−R_i^2}$$
Here, $'i'$ refers to the ith variable, which is being represented as a combination of rest of the independent variables. A regression model is run with $x_i$ as the dependent variable, and all the other features are the independent variables. This regression model will give an  $R^2$ value, which is used to calculate the VIF of the feature $x_i$. The closer the value of $R^2$ is to 1, the higher is the VIF value. A high VIF value signifies that a linear combination of features can describe the $x_i$. You might want to drop the feature. 

Let's hear from Rahim as he talks about eliminating the insignificant variables based on the VIFs and p-values.

**VIDEO**

To summarise, you basically performed an iterative manual feature elimination using the VIFs and p-values repeatedly. You also kept on checking the value of accuracy to make sure that dropping a particular feature does not affect the accuracy much. 

Following is the set of 15 features that RFE had selected, which we began with.

![Initial Set of Features (after RFE)](https://i.ibb.co/LrcqqGg/Initial-Set-of-Features-after-RFE.png)

And following is the final set of features that you arrived at after eliminating features manually.

![Final Set of Features after Manual Feature Elimination](https://i.ibb.co/gdrTtwQ/Final-Set-of-Features-after-Manual-Feature-Elimination.png)

As you can see, we had dropped the features **'PhoneService'** and **'TotalCharges'** during the manual feature elimination.

## Interpreting the model

Refer to the image given above, i.e., the final summary statistics after completing the manual feature elimination. Now suppose you are a data analyst working for the telecom company, and you want to compare two customers, customer A and customer B. For both of them, the value of the variables tenure, PhoneService, Contract_One year, etc. are the same, except for the variable **PaperlessBilling**, which is equal to **1 for customer A** and **0 for customer B**.

In other words, customer A and customer B have the exact same behaviour as far as these variables are concerned, except that customer A opts for paperless billing and customer B does not. Now, use this information to answer the following questions.

#### Multivariate Logistic Regression (Variable Selection)

Qn: Based on the information given above, what can you say about the log odds of these two customers? 

**PS:** _Recall that the log odds for univariate logistic regression was given as follows:_
$$ln\left(\dfrac{P}{1−P}\right)=\beta_0+\beta_1X$$
_Hence, for multivariate logistic regression, it would simply become:_
$$ln\left(\dfrac{P}{1−P}\right)=\beta_0+\beta_1X_1+\beta_2X_2+\beta_3X_3+...+\beta_nX_n$$
- log odds (customer A) < log odds (customer B)

- log odds (customer A) = log odds (customer B)

- log odds (customer A) > log odds (customer B)

- Not enough information

Ans: C. *Recall the log odds are just the linear term present in the logistic regression equation. Hence, here we have 13 variables, so the log odds will be given by the following:*
$$ln\left(\dfrac{P}{1−P}\right)=\beta_0+\beta_1X_1+\beta_2X_2+\beta_3X_3+...+\beta_nX_n$$
*Now, for the two customers, all beta and all x values are the same, except for X2 (the variable for paperless billing), which is equal to 1 for customer A and 0 for customer B.* 

*Hence, the value will exceed by the coefficient of 'PaperlessBilling', which is 0.3367.*

*Basically, for customer A, this term would be = 0.3367 * 1.*

*And for customer B, this term would be = 0.3367 * 0.*

Qn: Now, what can you say about the odds of churning for these two customers?

- For customer A, the odds of churning are lower than those for customer B.

- For customer A, the odds of churning are equal to those for customer B.

- For customer A, the odds of churning are higher than for customer B.

- Not enough information

Ans: C. *Recall that in the last question, you were told that the log odds for customer A are higher than those for customer B. So, the odds of churning for customer A are also higher than the odds of churning for customer B. This is because as the number increases, its log increases, and vice versa.*

#### Multivariate Logistic Regression - Log Odds

Qn: Now, suppose the behaviour of two customers, customer C and customer D, is exactly the same, except that customer C has OnlineSecurity, while customer D does not. What can you say about the odds of churning for these two customers?

- For customer C, the odds of churning are lower than those for customer D.

- For customer C, the odds of churning are equal to those for customer D.

- For customer C, the odds of churning are higher than for customer D.

- Not enough information

Ans: A. *Recall that the log odds for customer C will differ from those for customer D by a margin of $\beta_{OnlineSecurity}$. Since in this case, this coefficient is negative (-0.3739), the log odds of customer C will be 0.3739 less than those of customer D. Since the log odds of customer C are lower, naturally, the actual odds for C would also be lower.*

Now that you have a final model, you can begin with model evaluation and making predictions. You will start doing that in the next session.

## Coming up

For now, let's summarise your learnings from this session in the next segment. We will start with model evaluation separately in the next session.