# Linear Regression with NumPy

In our previous segment, you understood how the OLS approach works while building a linear regression model. Eventually, the estimates for the coefficient vector turn out to be a series of matrix operations.

$\hat{\beta}=(X^TX)^{−1}X^TY$

In the next video, you will learn how to perform linear regression using the NumPy library. We shall use the results derived above.

Download the notebook used for the below demonstration. 

Download [Linear Regression using numpy](linear_regression.ipynb)

**VIDEO**

In the notebook, you started by creating a vector of X values and assuming that the linear regression model is of the form y = mx + c. Using this model, y = mx+c, you can predict the values of y by simply substituting the values of X.

With these X and Y values, when you perform the exercise of building the linear model using the formula of ^β you should end up with the same values of slope and intercept. There is a catch here, which is that if you do not add the constant part to the x vector and assume that the final model is of the form y = mx, you would end up with an m value different from the original value.

#### Linear Model

Qn: Assume that you have a linear regression model of the form y = 3.14x + 0.123. Predict the value of yi when xi is 0.4.

- 1.256

- 3.263

- 1.379

- 3.14

Ans: C. *Substituting the values of x in the model would give you predicted values of y.*

Having learnt how to implement linear regression using the numpy library. You can try out a small exercise involving the following steps.

## Exercise

1.  Step 1: Pick a random slope (m) in the interval [0.5, 2]
2.  Step 2: Pick a random intercept (c) in the interval [0, 1]
3.  Step 3: Create y = mx + c and add some noise to it, with np.random.randnp.random.ranp.random.ranp.random.ranp.random.ranp.random.ranp.random.ra
4.  Step 4: Finally find m and c,  and verify your solution

## Solution

**VIDEO**

Let's summarize the key understanding that we derive from this exercise.

1.  The linear regression line is the best fit line that minimizes the sum of squared errors.
2.  The linear regression line that you find out is the same as the true function, $f(x) = y = 3.14 x + 0.123$, demonstrated in the video above.

This shall help us get an understanding of what model overfitting and underfitting means. The data points present with us is the sum of the true underlying function f(x) and the error term. This is usually the case in real life.

Note that the error term is random and hence cannot be modelled. Every machine learning model eventually tries to estimate the true underlying function f(x). Now, if the model is also able to model the error or in other words learning too much to estimate the exact value then you say the model has overfitted and if the model is not even able to model f(x), then the model has under fitted. Both overfitting and underfitting are bad for the model. You'll learn more about these terms in the latter part of the module.