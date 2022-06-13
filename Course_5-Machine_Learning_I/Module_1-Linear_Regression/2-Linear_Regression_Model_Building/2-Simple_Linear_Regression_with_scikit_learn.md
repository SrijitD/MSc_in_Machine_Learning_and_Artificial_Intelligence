# Simple Linear Regression with scikit-learn

In our earlier session, you understood how to build a linear regression model using the numpy library. Given the values of X and Y (X being the predictor variable and Y being the outcome variable), you learnt how to calculate β and then make inferences based on the obtained  β . This  β is essentially the representation of the slope and intercept of the model.

#### Linear Regression using Numpy

Qn: Assume you have the following x and y values

`x = np.linspace(0, 1, 20)`

`y = np.linspace(2,10, 20)`

Identify the slope and intercept of the linear regression model built using these values of X and Y

- 9,2

- 2,8

- 8,2

- 4,0

Ans: C. *Using the given values of X and Y if you try to calculate beta-hat you will end up getting beta as $array([[8.], [2.]])$ . Here 8 represents slope and 2 represents the intercept.

```python
import numpy as np
x = np.linspace(0, 1, 20)
y = np.linspace(2,10, 20)
x = x.reshape(-1, 1)
y = y.reshape(-1, 1)
x = np.c_[x, np.ones(x.shape)]
a = np.linalg.inv(np.dot(x.T, x))
b = np.dot(x.T, y)
beta_hat = np.dot(a, b)
```

Assume you have more predictor variables the computation of  β becomes even more tedious. Wouldn’t it be great if you have a direct library which handles all the internals of model building for you? This is what you will be looking at in the next series of videos. You will be using scikit learn library and OLS stats library to build linear regression models. 

Download the jupyter notebook provided below. It is recommended to try the exercises given after every topic in these notebooks. These are meant to improve your understanding of the concepts, and also develop practical skills.

Download SKLearn Notebook

**VIDEO**

#### Linear Regression using Numpy

Qn: What would be the output of the following code snippet?

```python
m = 13
c= 1.34
x = np.linspace(0,1,100)
y = m*x+c
lr =LinearRegression()
lr.fit (x.reshape(-1,1),y)
lr.coef_, lr.intercept_
```

- 13, 13.4

- 13, 1.34

- 12, 0.1

- 1.3, 1.34

Ans: B. *Here first you are considering a regression model to predict the values of y for given values of x. Once you have the values of y, you are considering new values of x in a different range and building a linear regression model. Since the linear relationship between y and new x hasn’t changed, the properties of the newly built model remain the same as the earlier model.*

In this video, you learnt how to build a linear model using scikit-learn API.  The first step to build a linear regression model is creating an instance of the linear regression class by defining,

`lr = LinearRegression()`

Then you build the model using the .fit() method and specifying the independent and dependent variables.

`lr.fit(x, y)`

Here, x is the input/ independent variable and y is the output/ dependent variable. The .fit() method is responsible for building a linear regression model.  The lr variable now has all the information pertaining to the model. Using lr.predict() you can predict the values of y for given values of x.  lr.coef_  and lr.intercept_ return the coefficients and intercept of the regression model.

Use **help(lr)** to read more about the other parameters defined in the function.

An important point to note here is the usage of .reshape() on X.  Using lr.fit(x,y) would give us the following error if you do not reshape X.

![Image 1](https://i.ibb.co/XZn8MWQ/SK-Learn-LR-Image-1.png)

This means that the .fit() method expects the X parameter to be a 2D array and not a 1D array. So to simply convert the 1D array to a 2D array you need to use .reshape(-1,1).  To understand the reason you can go through the additional link provided at the end of the segment.

#### Scikit Learn

Qn: The linear regression inherits the RegressorMixin class. The score function defined in the class implements which of the following evaluation metrics? You can look at the [documentation](https://scikit-learn.org/stable/modules/generated/sklearn.base.RegressorMixin.html) or use help(LinearRegression) for further details.

- MSE

- R-squared

- Adj R-squared

- RSS

Ans: B. *If you look at the documentation provided or use help(LinearRegression) you will find that the score function implements the R- squared metric for predictions.* 

![LinearRegression Score DocString](https://i.ibb.co/r57brF6/Linear-Regression-Score-Doc-String.png)

## Additional Links

1.  Refer to the [Stackoverflow thread explaining the significance of - 1 in the numpy reshape](https://stackoverflow.com/questions/18691084/what-does-1-mean-in-numpy-reshape)