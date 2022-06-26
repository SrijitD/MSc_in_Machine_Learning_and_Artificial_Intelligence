# Feature Selection - Variance Thresholding

The one crucial aspect that remains to be further discussed is feature selection. When building a multiple linear regression model, you may have quite a few potential predictor variables; selecting the right ones is an extremely important exercise. Using the modelstats library you saw how to trim down the features by looking at p values and VIF at each step. Well, when the number of predictor variables is very few, this approach can be followed but let’s say you are dealing with a large number of features, say 200, then this would be practically impossible. Hence, you need to resort to other techniques such as recursive feature elimination or regularization ( you will learn this later in the course).

As per the general norm, what you can follow is to use automated approaches such as RFE (recursive feature elimination) or regularization. When you are down to a few features, you can start looking at the p values and VIF and proceed with a manual improvement by considering the business requirements and other validity checks.

Download the feature selection notebook provided below. You can use this notebook as you go through the next few segments on feature selection.

Download [feature_selection](feature_selection.ipynb)

Let’s look at the first way or the most basic way of feature selection which is variance thresholding.

**VIDEO**

Having understood what variance thresholding means let’s understand how to apply it on the Boston housing dataset.

**VIDEO**

Variance Thresholding involves removing all features which show very low variance or in other words columns whose values more or less remain almost the same for the data points in the dataset. You should be careful while using a thresholding value, this may eliminate important features in the model. For example, in our case, if you consider the individual variance of each feature.

![Variance Thresholding Numbers](https://i.ibb.co/CHwMqPn/Variance-Thresholding-Numbers.png)

You can find that NOX and RM with a pretty low variance around 0.5 and 0.01 but if you remember the explained variance graph, it was due to the 'RM' feature, there was a significant rise in the r2_score. 

Hence, to get the correct insights, you should scale your data using a min-max scalar to bring all the features into a similar scale and then apply variance thresholding. This will help you in making a better comparison between all the features involved in our experiment.

For example, let's apply a min-max scalar that you saw during our discussion about comparing coefficients.

Step 1 - Applying MinMaxScalar

```python
#import the MinMaxScalar
from sklearn.preprocessing import MinMaxScaler
scalar = MinMaxScaler()
# Apply scaler() to all the columns except the 'yes-no' and 'dummy' variables
num_vars = ['CRIM', 'ZN', 'INDUS', 'RM', 'AGE', 'DIS', 'RAD', 'TAX','PTRATIO', 'B', 'LSTAT','price']
df[num_vars] = scalar.fit_transform(df[num_vars])
```

Step 2 - plotting the individual variances after scaling 

```python
#plot of individual variance after scaling
ax = df.var(0).plot(kind='bar', label='Variance')
ax.hlines(0.05,0,13 ,label='Threshold')
plt.legend()
```

![Variance Thresholding Graph 1](https://i.ibb.co/TKf43JR/Variance-Thresholding-Graph-1.png)

You can now observe that the variance in NOX and RM are not as insignificant as shown in the earlier plot. This is because you have now scaled your data and brought all the features to a comparable range. This step is essential when data being used involves features of different scales.

To summarize, this method belongs to the class of univariate statistics where you don’t consider the relation of one variable with other variables. You usually apply this right before the modelling process and hence, comparing the cut off with R2 score is a good way to confirm your variance thresholding process. In the next segment, you will look at the SelectKbest feature selection method - where you consider feature selection by looking at the relationship between input and output features.