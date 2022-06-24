# Graded Questions

All the best!

The notebook given below outlines a step by step approach in solving a problem. A few questions are embedded in the notebook for which you need to write appropriate codes to find the right answer.

Download [Graded Questions](Graded_Questions.ipynb)

You can download dataset used for the notebook here

Download [Dataset - Graded](Housing.csv)

#### Question 1

Qn: Inspect the various aspects of the housing dataset and identify the mean of the area feature in the dataset. (Identify the closest answer)

- 5150

- 545

- 510

- 296

Ans: A. *You can find mean of area feature by checking summary statistics of the dataset. you use one of the two functions below.*

```python
# Describe all different statistics for the housing dataset
display(housing.describe())

# Get the mean for the area column for the housing dataset
print(f"Housing Area Mean: {housing.area.mean()}")
```

#### Question 2

Qn: Identify the plot that best represents the plot between area and price column.

- ![Option 1](https://i.ibb.co/8jRWn3R/Q2-1.png)

- ![Option 2](https://i.ibb.co/1q6ZpDb/Q2-2.png)

- ![Option 3](https://i.ibb.co/6sJJtTZ/Q2-3.png)

- ![Option 4](https://i.ibb.co/Mgmj0rM/Q2-4.png)

Ans: D. *You can use pairplot to check the plot between different features*

```python
# Using seaborn pairplot on the housing dataset with "area" and "price" columns

sns.pairplot(housing[["area", "price"]])

plt.show()
```


#### Question 3

Qn: How does a box plot between price and mainroad looks like?

- ![Option 1](https://i.ibb.co/xmQ7w4W/Q3-1.png)

- ![Option 2](https://i.ibb.co/2s9gxM4/Q3-2.png)

- ![Option 3](https://i.ibb.co/8bsP1tH/Q3-3.png)

- ![Option 4](https://i.ibb.co/TqjTJwg/Q3-4.png)

Ans: C. *You can do a boxplot between price and different categorical features*

```python
plt.figure(figsize=(20, 12))
plt.subplot(2,3,1)
sns.boxplot(x = 'mainroad', y = 'price', data = housing)
plt.subplot(2,3,2)
sns.boxplot(x = 'guestroom', y = 'price', data = housing)
plt.subplot(2,3,3)
sns.boxplot(x = 'basement', y = 'price', data = housing)
plt.subplot(2,3,4)
sns.boxplot(x = 'hotwaterheating', y = 'price', data = housing)
plt.subplot(2,3,5)
sns.boxplot(x = 'airconditioning', y = 'price', data = housing)
plt.subplot(2,3,6)
sns.boxplot(x = 'furnishingstatus', y = 'price', data = housing)
plt.show()
```

![Q3 Answer](https://i.ibb.co/Wgvv3p8/Q3-Ans.png)

#### Question 4

Qn: Identify the columns that can be part of my varlist. \[More than option can be correct]

- guestroom

- basement

- hotwaterheating

- bathrooms

Ans: A, B, C. *My varlist should have columns with values as 'Yes' or 'No'. You need to define the varlist as:*

```python
varlist =  ['mainroad', 'guestroom', 'basement', 'hotwaterheating', 'airconditioning', 'prefarea']
```

#### Question 5

Qn: Let's say another categorical column has five different labels, now using dummy variables on that column would add a minimum of ___ columns to my dataset

- 2

- 6

- 5

- 4

Ans: D. *In the example shown on dummy variable, you can see that when a dummy variable on a categorical column with three distinct labels is used, the addition of 2 new columns was sufficient and you dropped the third column. In a similar way when a categorical column with 5 labels is used, addition of 4 minimum columns would be necessary.*

#### Question 6

Qn: Identify the correlation coefficient between the area and price column.

- 0.53

- 0.32

- 0.52

- 0.43

Ans: A. *Use .corr() to find the correlation between the pair of variable. You can use the following code to check pair-wise correlation.*

```python
plt.figure(figsize = (16, 10))
sns.heatmap(df_train.corr(), annot = True, cmap="YlGnBu")
plt.show()
```

#### Question 7

Qn: Build a linear regression model to predict price of a house using two input variables that have the highest correlation with price. Report r2 score of the model?

- 0.681

- 0.480

- 0.759

- 0.915

Ans: B. *Look for the feature with the highest correlation with price from the previous exercise of pairwise correlation. Build a linear model using the statsmodel package and do not forget to add constant.*

```python
# Add a constant
X_train_lm = sm.add_constant(X_train[['area', 'bathrooms']])

# Create a first fitted model
lr = sm.OLS(y_train, X_train_lm).fit()

# Print a summary of the linear regression model obtained
print(lr.summary())
```

#### Question 8

Qn: Build a linear regression model (Use lr1) to predict the price of a house by considering all features of the housing dataframe. By observing the summary statistics, identify which of these variables is insignificant considering the level of significance to be 0.05?

- Parking

- stories

- main road

- semi-furnished

Ans: D. *By building a linear regression model with all the feature columns, you get column semi-furnished having the highest p-value*

```python
X_train_lm = sm.add_constant(X_train)
lr_1 = sm.OLS(y_train, X_train_lm).fit()
print(lr_1.summary())
```
