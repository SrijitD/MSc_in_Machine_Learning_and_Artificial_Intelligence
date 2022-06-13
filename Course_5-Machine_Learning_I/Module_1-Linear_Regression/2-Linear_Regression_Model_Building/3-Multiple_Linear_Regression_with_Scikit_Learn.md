# Multiple Linear Regression with scikit-learn

In the previous segment, you saw how to build a regression model for a pair of X and Y vectors. In this segment let’s extend our discussion to a more practical dataset. 

  
**Note**: The [dataset](https://scikit-learn.org/stable/modules/generated/sklearn.datasets.load_boston.html#sklearn.datasets.load_boston) used in the demonstration comes loaded with the scikit learn library and to use it you need to first import the sklearn datasets. Using .load_boston() you can directly load the dataset necessary for our demonstration.

**Steps to create a dataframe**

```python
# Importing pandas
Import pandas as pd

# Importing inbuilt datasets 
from sklearn import datasets as data

# Using .load_boston() to load the dataset
boston = data.load_boston()

# Creating a dataframe out of the loaded dataset
df = pd.DataFrame(boston.data, columns=boston.feature_names)
df['value'] = boston.target
df.head()
```

**VIDEO**

In this video, you saw how to build a linear regression model to predict the price of a house given various features such as the number of rooms, per capita income of the town, accessibility index. Like in the earlier case of simple linear regression, to build a multiple linear regression model you need to define the X and Y parameters of the model

```python
X = boston.data    # [predictor variables]

y = boston.target  # [target variables]
```

**Note:** X and y are not dataframe and are arrays. Keep this in mind wherever you are building a model. 

#### Linear Regression

Qn: Identify all the issues associated with the code given below. \[Assume you are building a linear model using the Boston housing dataset to predict the price of a house given number of rooms]. More than one option can be correct

```python
#Code starts here
from sklearn import datasets as data
from sklearn.linear_model import LinearRegression
import pandas as pd
boston = data.load_boston()
df = pd.DataFrame(boston.data, columns=boston.feature_names)
df['value'] = boston.target
X_train = df['RM']
y_train = df['value']
lr.fit(y_train, X_train)
```

- The order of parameters being passed for linear model should be X_train,  y_train and not  y_train,X_train

- The parameters passed should be arrays and not dataframes

- lr isn’t defined in the code

- No Issues in the code

Ans: A, B & C.

- *The order of parameters being passed to build a linear model should be (predictor variables, outcome variable). In this case X_train is the predictor variable and y_train is the outcome variable hence it should be lr.fit(X_train, y_train)  The correct code to the above question will look as shown below.*

```python
#Code starts here
from sklearn import datasets as data
from sklearn.linear_model import LinearRegression
import pandas as pd
boston = data.load_boston()
df = pd.DataFrame(boston.data, columns=boston.feature_names)
lr = LinearRegression()
df['value'] = boston.target
X_train = df['RM'].values
y_train = df['value'].values
lr.fit(X_train.reshape(-1, 1), y_train)
```

- *The parameters passed should be in array format and the currently used X and Y being passed are dataframes. Refer to the feedback provided in option 1 for the correct code.*

- *LinearRegression object isn’t initialized in the code and this would result in lr not defined error. Refer to the feedback provided in option 1 for the correct code.*

Now that you have built the linear regression model, let’s look at the performance of the model in the next video.

**VIDEO**

In the earlier session, you learnt about r2 score and the significance of it in measuring the performance of the model. To find the performance of this model, you first need to import the necessary metrics from the sklearn library.

```python
from sklearn.metrics import mean_squared_error, r2_score
```

After the necessary import, you need to call the mean_squared_error and r2_score function by passing the necessary functional parameters. The mean_squared_error is the sum of squares of residuals divided by the total data points or in other words, the number of y values.

> $MSE=\sum\limits_{i=1}^n (y_i - \hat{y_i})^2/n$

```python
mean_squared_error(y, yhat)
```

Similarly for **r2 score**,

```python
r2_score(y, yhat)
```

Here y is the actual value and yhat is the predictions made by the model.

R2_score or r squared metric explains how much variance of y has been explained by the model. In the above demonstration, 74 per cent of the variance in y has been explained by the model which means the model is doing good. There is nothing like this r2_score is the best possible for this problem, you can always try to make the performance better. In an ideal scenario, the best model should have an r2_score of 1 and this means the model is able to predict the exact same values as the actual values.

You also saw a plot of coefficients associated with each feature.

![Multiple Linear Reg graph 1](https://i.ibb.co/qYRtxP5/Multiple-Linear-Reg-graph-1.png)

Here if you observe some features have a high valued coefficient associated with them and some have almost negligible valued coefficients. An important point to note here is the scale of each feature isn’t considered while performing this exercise. In Linear Regression, scaling doesn't impact your model. However, it is extremely important to rescale the variables so that they have a comparable scale. If we don't have comparable scales, then some of the coefficients obtained by fitting the regression model might be very large or very small as compared to the other coefficients.  

If you observe the scale of values involved in the Boston housing dataset you can find the scale of TX is in the range of 100’s whereas the scale of DIS, NOX is in the range of 10’s. 

![Multiple Linear Reg table 1](https://i.ibb.co/jLQFvqf/Multiple-Linear-Reg-table.png)

Using a [min-max scalar](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.MinMaxScaler.html) feature transformer in sklearn you can rescale the data.

As a first step, you need first import the MIxMaxScalar from the sklearn preprocessing module

```python
from sklearn.preprocessing import MinMaxScaler
scaler = MinMaxScaler()
```

Using the .fit() method you can transform the input dataset into a scaled dataset

```python
# Apply scaler() to all the columns except the charles river 'dummy' variable

num_vars = ['CRIM', 'ZN', 'INDUS', 'NOX', 'RM', 'AGE', 'DIS', 'RAD', 'TAX',

       'PTRATIO', 'B', 'LSTAT']

df[num_vars] = scaler.fit_transform(df[num_vars])
```

Now that you have performed this try rebuilding the linear regression model and observe the new coefficients of the linear regression.

![Multiple Linear Reg graph 2](https://i.ibb.co/WGhft2s/Multiple-Linear-Reg-graph-2.png)

If you observe this plot and compare with the earlier plot of coefficients you will find that coefficients in the case of features such as ‘TAX’ and ‘B’ due to their values range being in 100's had very small coefficients in the first case but now on scaling the values you find the effect of these features on the final outcome feature. A coefficient explains the effect of a particular independent variable on the dependent variable when all other variables remain constant. For example, in our above case let’s say all other variables are kept constant and a 1 unit rise in the value of ‘RM’ would increase the price of the house approximately by 20 units.

When running regression models, you are trying to determine whether the coefficients of your independent variables are really different from 0 or if alternatively any apparent deviation from 0 is just due to random chance.? You will learn more about this in the upcoming segment of hypothesis testing in linear regression.

![Multiple Linear Reg graph 3](https://i.ibb.co/3Cm0qCM/Multiple-Linear-Reg-graph-3.png)

Multiple Linear Reg graph

Remember our discussion around the assumptions of linear regression. One of the assumptions states that the errors should be normally distributed with mean zero. You can plot this distribution to check if the calculated betas are significant or not. 

In the next segment, you will understand how the explained variance of the model gradually increases as you increase the number of features.

#### Linear Regression

Extend the following code snippet, and Identify the r2 score by using NOX and CHAS variables as your predictor variables and value as outcome variable?

```python
#Code starts here
from sklearn import datasets as data
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score
import pandas as pd
boston = data.load_boston()
df = pd.DataFrame(boston.data, columns=boston.feature_names)
df['value'] = boston.target
```

- 0.182

- 0.229

- 0.030

- 0.258

Ans: B. *Create a list of columns required to build your model. Initialize an instance of regression class and pass the input and output parameters to build the regression model. Then use the model for predictions. You can find the complete code below.*

```python
# Code starts here
from sklearn import datasets as data
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score
boston = data.load_boston()
df = pd.DataFrame(boston.data, columns=boston.feature_names)
df['value'] = boston.target
collist = ['NOX', 'CHAS']
X= df[collist].values
y = df['value'].values
lr  = LinearRegression()
lr.fit(X, y)
yhat = lr.predict(X)
r2_score(y, yhat)
```