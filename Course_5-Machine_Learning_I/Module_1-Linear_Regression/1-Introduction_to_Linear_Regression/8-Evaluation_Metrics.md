# Evaluation Metrics

You have now learnt how to get the target equation, or in other words, the linear regression model using the given set of points. Now arises a critical question: how well is this model representing the data at hand and how well does it perform on unseen data? 

Before answering this, let’s look at the image given below and understand it better.

![Evaluationetrics Graph 1](https://i.ibb.co/qgNbvM6/Evaluationetrics-Graph-1.png)

Here, $(x_i, y_i)$ represents your data point. $\hat{y}$ represented the predicted value in the case of $(x_i, y_i)$. The sum of squared errors (SSE) or residual sum of squares (RSS) will be $\sum{(y_i−\hat{y})^2}$. This sum of squares defined the variance of the residuals.

$RSS = \sum{(y_i−\hat{y})^2}$

The strength of this line should be defined around this RSS because it is this value/ objective function that you need to minimise. So, for any two given lines or linear models, you can check this value and decide which model is better.

#### Residual Sum of Squares

Qn: Consider an example of marketing spend (in lakh rupees) and sales amount (in crore rupees). Let’s assume that you get the same data in different units: marketing spend (in lakh rupees) and sales amount (in dollars). Do you think there will be any change in the value of the RSS due to a change in the units?

- Yes, the value of the RSS will change because the units are changed.

- No, the value will not change.

- Cannot say.

Ans: A. *The RSS for any regression line is given by the expression* 

*$\sum(y_i−\hat{y})^2$: RSS is the sum of the squared difference between the actual and the predicted values, and its value will change if the units change, as it has units of $y_2$. For example, $(₹140−₹70)^2$ = 4,900, whereas $(USD2−USD1)^2$ = 1. So, the value of RSS is different when the units are changed.*

If you remember from our statistics discussion, the variance in a variable is calculated by $\sum(y_i−\bar{y})^2/n$. This is the maximum variation in the model. Now, why do we say that? This is because the most simplistic or trivial linear regression model that you can build on a set of data points is a line that passes through the mean of all the target values, y. Essentially, this is $y = \bar{y}$. Hence, any other model that you build should be better than this. Now for $y = \bar{y}$  , $RSS = \sum(y_i−\bar{y})^2$. We define this as the total sum of squares which is the RSS of the most trivial model, which essentially captures the maximum variation in the data.

Hence, the total sum of squares (Total/ Maximum variation in the data) $TSS =  \sum(y_i−\bar{y})^2$.

Now, consider the model $y = \hat{y}$ in the above diagram. This is a linear model that tries to fit the data better than the trivial model $y=\bar{y}$. For this model, $RSS = \sum(y_i−\hat{y})^2$.

With these concepts in mind, we define one of the commonly used evaluation metrics R2 as

$R^2=\dfrac{TSS−RSS}{TSS}=1−\dfrac{RSS}{TSS}$

Now, let’s try to understand $R^2$. The Total sum of squares (TSS) is a measure of the total/maximum variation in the data. If you look at the image at the start of the segment, you will notice that $TSS - RSS$ is an indicative measure of the total variation captured by the model $y=\hat{y}$ . Hence, $R^2$ is a measure of the ratio of the total variation captured by the model divided by the total variation present in the data. If $\hat{y}$ in the model $y=\hat{y}$ becomes $\bar{y}$, then $RSS = TSS$, and hence, $R^2 = 0$. And if $\bar{y}$ in the model $y=\hat{y}$ becomes such that $\hat{y_i}=y_i$ for all i, then $RSS = 0$ and $R^2 = 1$. Hence, for the perfect model, $R^2$ is 1. 

With these points, you would have realised that as R2 increases, the model fit improves.

With this understanding, let’s proceed to the next video.

**VIDEO**

The coefficient of determination or $R^2$ determines how well a model captures the variance in the data. 

$R^2$ should be the go-to metric for prediction, but there are few issues in using $R^2$.

The number of predictor variables associated with y should also be considered in our calculations. It is for this reason that the adjusted r squared value is defined. 

  > $Adjusted\ R^2=1−\dfrac{(1−R^2)(N−1)}{N−p−1}$

Where, 

N = Number of points in the data

p = Number of independent predictor variables, excluding the constant

![Evaluation Graph 2](https://i.ibb.co/ryx2tp8/Evaluationetrics-Graph-2.png)

**Important -** Note that r2 score, $R^2$ , R-squared are all one and the same and are used interchangeably.

#### RSS

Qn: Find the value of the RSS and TSS for this regression line.

- 0.5, 11.5

- 6.25, 14

- 6.5, 0

- -0.5, 14

Ans: B. *The residuals for all five points are $-0.5,\ 1,\ 0,\ -2,\ and\ 1$. The sum of squares of all five residuals would be $0.25 + 1 + 0 + 4 + 1 = 6.25$.*

*The average of y-value for all data points $(3 + 5 + 5 + 4 + 8)/5 = 25/5 = 5$. So, the (y−¯y)term for each datapoint would be $-2,\ 0,\ 0,\ -1,\ and\ 3$. The squared sum of these terms would be $4 + 0 + 0 + 1 + 9 = 14$.*

#### Coefficient Of Determination

Qn: For this example, the RSS comes out to be 6.25 and TSS at 14. What would be the R² for this regression line?

- 1 - (14/6.25)

- (1 - 14)/6.25

- 1 - (6.25/14)

- (1 - 6.25)/14

Ans: C. *The $R^2$ value is given by $1 - (RSS/TSS)$. So, in this case, the R² value would be $1 - (6.25 / 14)$*

There are other metrics apart from those listed above and you can read those from the additional reading section. In the next segment, you will learn why linear models should be considered before performing any analysis.

## Additional reading

-   [AIC](https://en.wikipedia.org/wiki/Akaike_information_criterion)
    
-   [BIC](https://en.wikipedia.org/wiki/Bayesian_information_criterion)
    
-   [Mallows' CP](https://en.wikipedia.org/wiki/Mallows%27s_Cp)
    
-   [Guide to Regression Metrics](https://www.h2o.ai/blog/regression-metrics-guide/)