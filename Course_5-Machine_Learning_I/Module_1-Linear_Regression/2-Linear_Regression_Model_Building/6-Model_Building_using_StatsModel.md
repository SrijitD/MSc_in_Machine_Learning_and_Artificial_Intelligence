# Model Building using StatsModel

In the segment, you will learn how to use the statsModel API to build models. You will also learn how to check p values and remove the insignificant features from the model. Ankit will use the same Boston housing dataset to build a linear regression model.

Download the Jupyter notebook provided below. You can use this notebook while Ankit is covering model building using the statsModel API.

Download [Statsmodel](statsmodel.ipynb)


**VIDEO**

After you import the statsmodel.api, you can create a simple linear regression model in just a few steps.

```python
import statsmodels.api as sm
X_C = sm.add_constant(X)
model1 = sm.OLS(y, X_C)
result = model1.fit()
result.summary()
```

Remember to use the command 'add_constant' so that statsmodels also fits an intercept. If you don't use this command, it will fit a line passing through the origin by default. Also, in OLS() you pass the attributes as (y,X) which is different from the sklearn implementation.

**Summary statistics**

Now, let's take a look at the summary statistics that were output by the model again.

![Model Building using Statsmodel](https://i.ibb.co/7kwTWbp/Model-Building-using-Statsmodel.png)

**F-statistic**

Here you were introduced to a new term named **F-statistic** and **Prob(F-statistic)**. Recall that in the last segment, you did a hypothesis test for beta to determine whether or not the coefficient β1 outputted by the model was significant or not. Now, F-statistic is similar in the sense that now instead of testing the significance of each of the betas, it tells you whether the overall model fit is significant or not. This parameter is examined because many times it happens that even though all of your betas are significant, your overall model fit might happen just by chance.  
 

The heuristic is similar to what you learnt in the normal p-value calculation as well. If the **'Prob (F-statistic)'** is less than **0.05**, you can conclude that the overall model fit is significant. If it is greater than 0.05, you might need to review your model as the fit might be by chance, i.e. the line may have just luckily fit the data. In the image above, you can see that the p-value of the F-statistic is **1.52e-52**  which is practically a zero value. This means that the model for which this was calculated is definitely significant since it is less than 0.05.

  
**R-squared**

Like you studied earlier as well, R-squared value tells you exactly how much variance in the data has been explained by the model. In our case, the R-squared is about **0.741** which means that the model is able to explain **74 %** of the variance which is pretty good.

**Coefficients and p-values:**

The p-values of the coefficients tell you whether the coefficient is significant or not. In this case, the coefficient of x1 i.e. CRIM comes out to be **-0.1072** with a standard error of about  **0.033**. You got a p-value of **0.001**, less than 0.05. Hence you can reject the null hypothesis and state that coefficient is significant.

![Warnings](https://i.ibb.co/sCxcB7p/Warnings.png)

The above image shows the warnings that appear along with the summary statistics. The second point here highlights the existence of multicollinearity.  Multicollinearity refers to the phenomenon of having related predictor (independent)  variables in the input data set. In simple terms, in a model that has been built using several independent variables, some of these variables might be interrelated, due to which the presence of that variable in the model is redundant. In one of the earlier videos, you saw how multicollinearity affects the model building, and how it fails in capturing the true properties of the model.  
 

In the next segment, you will learn how to handle multicollinearity using VIF.


#### Linear Regression Model

Qn: Assume a linear regression model of the form y = β1X  + β0. Which of the following commands can be used to view β0 and β1 once you have fitted the line using statsmodels? The name of your linear regression object is lr.

(More than one option(s) may be correct.)

- lr.OLS()

- lr.params

- lr .summary()

Ans: B & C.

- *You can view both the parameters using this simple command.*
- *The summary() function also outputs the values of coefficients and hence, can be used to view these values as well.*

#### Summary Statistics

Suppose you built a linear regression model in which the target variable is 'Scaled Pressure' which is being predicted with the help of the feature variable 'Frequency', and you got the following summary statistics of the model that you built.

![OLS Regression Results](https://i.ibb.co/Lg3HwXm/OLS-Regression-Results.png)

Looking at the following summary statistic, what can be said about the significance of the overall model fit?

- The overall model fit is significant

- The overall model fit is not significant

- Can't be determined

Ans: A. *If you look at the summary statistics, you can see that the F-statistic has a value of 270.2 which is a very high value and the Prob(F-statistic) is 5.93e-56 (as shown in the table) which is a practically zero value. Hence, the value of less than 0.05 which means that the overall model fit is significant.*

Qn: Let's take a look at the summary statistics you saw in the last question again.

![OLS Regression Results](https://i.ibb.co/Lg3HwXm/OLS-Regression-Results.png)

What can you say about the significance of the coefficient variable 'Frequency'?

- The p-value of the coefficient for frequency is low and hence, it is insignificant.

- The p-value of the coefficient for frequency is low and hence, it is significant.

- The p-value of the coefficient for frequency is high and hence, it is insignificant.

- The p-value of the coefficient for frequency is high and hence, it is significant.

Ans: B. *If you look at the table, you can see that the p-value for the coefficient of the variable 'Frequency' is 0 which is a low value and hence, the coefficient is significant.*

![OLS Regression Results QnA](https://i.ibb.co/TLrBPsh/OLS-Regression-Results-Qn-A.png)

Qn: Finally, looking at the following summary statistics, what can you say about the extent of fit, i.e. the variance explanatory power of the model?

![OLS Regression Results](https://i.ibb.co/Lg3HwXm/OLS-Regression-Results.png)

- The R-squared value is high and hence, the model doesn't explain much of the variance.

- The R-squared value is high and hence, the model explains a lot of the variance.

- The R-squared value is low and hence, the model doesn't explain much of the variance.

- The R-squared value is low and hence, the model does explain a lot of the variance.

Ans: C. *Look at the summary statistics closely. The value of R-squared is 0.153. Recall that R-squared varies from 0 to 1 wherein a value of 0 implies that none of the variance in the data is explained and a value of 1 implies that all of the variance in the data is explained. Can you answer the question now? Hence, a value of 0.153 is a low value of R-squared which in turn implies that the model doesn't explain much variance present in the data.*