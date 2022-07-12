# Building your First Model

Let’s now proceed to model building. Recall that the first step in model building is to check the correlations between features to get an idea of how the different independent variables are correlated. In general, the process of feature selection is almost exactly analogous to linear regression.

**VIDEO**

Looking at the correlations certainly did help, as you identified a lot of features beforehand, which would not have been useful for model building. Recall that Rahim dropped the following features after looking at the correlations from the heatmap.

-   MultipleLines_No
-   OnlineSecurity_No
-   OnlineBackup_No
-   DeviceProtection_No
-   TechSupport_No
-   StreamingTV_No
-   StreamingMovies_No

If you look at the correlations between these dummy variables and their complimentary dummy variables, i.e., **‘MultipleLines_No’** with **‘MultipleLines_Yes’** or **‘OnlineSecurity_No’** with **‘OnlineSecurity_Yes’**, you will find out that they are highly correlated. Have a look at the heat map given below.

![Heatmap for the Complimentary Dummy Variables](https://i.ibb.co/1LbX0wx/Heatmap-for-the-Complimentary-Dummy-Variables.png)

If you check the highlighted portion, you will see that there are high correlations between the pairs of dummy variables that were created for the same column. For example, **‘StreamingTV_No’** has a correlation of **-0.64** with **‘StreamingTV_Yes’**.

So, it is better to drop one of these variables from each pair, as they will not add much value to the model. The choice of the pair of variables that you desire to drop is completely up to you; we have chosen to drop all the 'Nos' because the 'Yeses' are generally more interpretable and easy-to-work-with variables.

#### Correlation Table

Qn: Which of the following commands can be used to view the **correlation table** for the dataframe **telecom**?

- `telecom.corr()`

- `sns.heatmap(telecom.corr(), annot = True)`

- `sns.pairplot(telecom)`

- All of the above

Ans: A. *`telecom.corr()` will give you the correlation table for the dataframe telecom.*

#### Checking Correlations

Qn: Take a look at the heatmap provided above. Which of the variables have the highest correlation between them?

- StreamingTV_Yes and StreamingMovies_Yes

- StreamingTV_No and StreamingMovies_No

- MultipleLines_No and MultipleLines_Yes

- OnlineBackup_No and OnlineBackup_Yes

Ans: C. *The following are the correlation values between the four pairs of variables given in the options:*

1.  0.53
2.  0.54
3.  -0.82
4.  -0.64

*As you can clearly see, the third pair, i.e., MultipleLines_No and MultipleLines_yes, is the most correlated, with a value of -0.82.*

Now that you have completed all the preprocessing steps, inspected the correlation values and eliminated a few variables, it is time to build your first model. 

**VIDEO**

You have finally built your first multivariate logistic regression model using all the features present in the data set. This is the summary output for different variables that you got:

![Summary Statistics for Logistic Regression Model](https://i.ibb.co/W2DnZ24/Summary-Statistics-for-Logistic-Regression-Model.png)

In this table, our key focus area is just the different **coefficients** and their respective **p-values**. As you can see, there are many variables whose p-values are high, implying that that variable is statistically insignificant. So, you need to eliminate some of the variables in order to build a better model.

You will first eliminate a few features using Recursive Feature Elimination (RFE), and once you have reached a small set of variables to work with, you can then use manual feature elimination (i.e., manually eliminating features based on observing the p-values and VIFs).

#### Significant Variables

Qn: Which of the following variables are insignificant as of now based on the summary statistics above? (More than one option may be correct.) Note: Use p-value to determine the insignificant variables.

- PhoneService

- MultipleLines_Yes

- TechSupport_Yes

- TotalCharges

Ans: A & C. *For a variable to be insignificant, the p-value should be greater than 0.05. For these variables, the p-value are 0.228 and 0.888 respectivly, which is clearly greater than 0.05.*

#### Negatively Correlated Variables

Qn: Which of the following variables are negatively correlated with the target variable based on the summary statistics given above? (More than one option may be correct.)

- tenure

- TotalCharges

- MonthlyCharges

- TechSupport_Yes

Ans: A, C & D. *Recall to check whether a variable is positively or negatively correlated with the target variable, you simply need to see the sign on its coefficient. The coefficient for 'tenure', 'MonthlyCharges' and, 'TechSupport_Yes' are -1.5172, -2.1806 and, -0.0305 respectively which are all indeed negative and hence, there is a negative correlation between the target variable and 'tenure', 'MonthlyCharges' and, 'TechSupport_Yes'.*

#### p-values

Qn: After learning the coefficients of each variable, the model also produces a ‘p-value’ of each coefficient. Fill in the blanks so that the statement is correct: 

“The null hypothesis is that the coefficient is __. If the p-value is small, you can say that the coefficient is significant and hence the null hypothesis ____.”

- zero, can be rejected

- not zero, can be rejected

- zero, cannot be rejected

- not zero, cannot be rejected

Ans: A. *Recall that the null hypothesis for any beta was: $\beta_i=0$. And if the p-value is small, you can say that the coefficient is significant, and hence, you can reject the null hypothesis that $\beta_i=0$.*

## Coming up

In the next segment, you will use RFE to build another model and also look at some metrics using which you can check the model's goodness of fit.