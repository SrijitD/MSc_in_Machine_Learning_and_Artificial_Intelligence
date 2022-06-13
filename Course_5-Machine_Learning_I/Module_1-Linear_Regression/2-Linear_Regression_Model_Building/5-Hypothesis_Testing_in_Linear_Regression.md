# Hypothesis Testing in Linear Regression

So far, you have worked with the **'sklearn'** package. This is a great package if you want to fit a line through the data and make predictions. But many times, you may be interested in the statistics part of linear regression. You might want to fit a line and draw some statistical inferences as well. In such cases, you can use the **'Statsmodels'** package. The industry standard as to what package should be used varies widely. Some companies prefer statsmodels whereas some others prefer sklearn, so it is desirable that you know about both of these packages.  
 

Before you move on to the model building part using the stats library, there is still one theoretical aspect left to be addressed - the significance of the derived beta coefficient. Now, let’s first try to understand why we need to check the significance of the beta coefficients? The answer is simple: you are trying to model a phenomenon using the sample of the dataset, the one that is available to you or the one that you were able to collect. Hence, you need to perform hypothesis testing on the estimated values of the coefficients, the betas. This in turn decides which independent variables are significant so that you can use them in your model.  
 

Hence, the first question you need to ask yourself when building a linear regression model is, "Is my feature significant?" or in other words for predicting y what columns should be used. Let’s try to understand this using the following example.  
 

 Suppose you have a dataset for which the scatter plot looks like the following:

![Hypothesis Testing graph 1](https://i.ibb.co/c60YD3R/Hypothesis-Testing-graph-1.jpg)

Now, if you run a linear regression on this dataset, you will fit a line on the data which, say, looks like the following:

![Hypothesis Testing graph 2](https://i.ibb.co/Vgyyzxy/Hypothesis-Testing-graph-2.jpg)

Now, you can clearly see that the data is randomly scattered and doesn't seem to follow a linear trend or any trend, in general. But applying linear regression will anyway fit a line through the data using the least-squares method. But you can see that the fitted line is of no use in this case.   
 

Hence, every time you perform a linear regression, you need to test whether the fitted line is a significant one or not or to simply put it, you need to test whether $\beta_1$ is significant or not. And here comes the idea of Hypothesis Testing on $\beta_1$.   
 

Let’s understand more about this in the next video.

**VIDEO**

Note:  In the video, the mention "_we can't use Z distribution because predictor variables are not independent of each other so we are using t distribution_" isn't accurate. A Z distribution isn't used here because you don't know the population standard deviation or in other words, the data you have is just a sample of the true population, so you use a t-distribution instead of a z-distribution.

Consider the simple model $y = \beta_1x+\beta_0$.

![Hypothesis Testing graph 3](https://i.ibb.co/Vgyyzxy/Hypothesis-Testing-graph-2.jpg)

In order to test whether $\beta_1$ is significant or not, you start by disproving that β1 is not significant, i.e. there is no relationship between X and y. Hence to perform the hypothesis test, we propose the null hypothesis that β1 is 0. And the alternative hypothesis thus becomes $\beta_1$ is not zero.

-   Null Hypothesis $(H_0):\ \beta_1 = 0$
    
-   Alternate Hypothesis $(H_A): \beta_1 \ne 0$
    

If you fail to reject the null hypothesis that would mean that you are not able to prove that β1 is not equal to zero which would simply mean that β1 is insignificant and of no use in the model. Similarly, if you reject the null hypothesis, it would mean that β1 is not zero and the line fitted is a significant one.

Steps to perform hypothesis test [Concepts taught in the hypothesis testing are being referred here]

-   You first to compute the t-score (which is very similar to the Z-score) which is given by $\dfrac{(X−\mu)}{(s/\sqrt{n})}$ where μ is the population mean and s is the sample standard deviation which when divided by √n is also known as the standard error.
    
-   Using this, the t-score for $\hat{\beta_1}$ comes out to be (since the null hypothesis is that β1 is equal to zero): $\dfrac{\hat{\beta_1}-0}{SE(\hat{\beta_1})}$ with (n-2) degrees of freedom
    

Now, in order to perform the hypothesis test, you need to derive the p-value for the given beta. If you're hazy on what p-value is and how it is calculated, it is recommended that you revisit the segment on the p-value calculation. Please note that the formula of SE(β1) provided in the t-score above is out of the scope of this course.

Let's do a quick recap of how do you calculate p-value:

-   Calculate the value of t-score for the mean point (in this case, zero, according to the Null hypothesis that we have stated) on the distribution
    
-   Calculate the p-value from the cumulative probability for the given t-score using the t-table
    
-   Make the decision on the basis of the p-value with respect to the given value of $\beta$  (significance level)
    

Now, considering a significance level of 0.05, if the p-value turns out to be less than 0.05, you can reject the null hypothesis and state that $\beta_1$ is indeed significant. A practical usage of this concept in identifying the right set of variables will be demonstrated in the next segment.

Now considering the regression line fit as $y = \beta_1x0 +\beta_0$, answer the following questions.

#### Hypothesis Test

Qn: What does it mean if you fail to reject the Null hypothesis in the case of simple linear regression?

- $\beta_1$ and thus, the independent variable it is associated with is significant in the prediction of the dependent variable. 

- $\beta_1$ and thus, the independent variable it is associated with is insignificant in the prediction of the dependent variable. 

- $\beta_0$ and thus, the independent variable it is associated with is significant in the prediction of the dependent variable. 

- $\beta_0$ and thus, the independent variable it is associated with is insignificant in the prediction of the dependent variable.

Ans: B. *The Null Hypothesis in simple linear regression is: $\beta_1=0$. Thus, if we fail to reject the Null hypothesis, it means that $\beta_1$ is indeed zero, and thus insignificant for the prediction of the dependent variable.*

#### P-value

Qn: Which of the following is used to calculate the p-value for a particular beta coefficient?

- The standard error of the beta coefficient

- The t-statistic of the beta coefficient

- The null hypothesis for the beta coefficient

- None of the above

Ans: B. *The t-statistic along with the t-distribution table is used to determine the p-value of the coefficient.*

#### Distribution of the Error Terms

Qn: If the sample size is small, i.e. less than 30, which of the following distribution is used to describe the error terms?

- Normal distribution

- Uniform distribution

- T-distribution

- Both A and C

Ans: C. *In case of a small sample size, we use a t-distribution which is very similar to a normal distribution.*

#### T-score

Qn: Suppose that for a linear model, you got β1 as 0.5. Also, the standard error of β1 was found out to be 0.02. What will be the value of t-score for β1?

- 2.5

- 25

- 0.04

- 0.4

Ans: 