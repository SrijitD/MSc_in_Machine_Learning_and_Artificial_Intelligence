# Variance Inflation Factor

It is essential to detect and deal with the multicollinearity present in a model while interpreting it. Let's revisit what multicollinearity is. Multicollinearity occurs when one independent feature is correlated with more than one independent features. This gives incorrect estimates of the significance of the features and hence, the model predictions cannot be trusted. Let's see how you can handle it in the next video.

**VIDEO**

There are two basic ways to deal with multicollinearity:

-   Looking at **pairwise correlations**
    
    -   Looking at the correlation between different pairs of independent variables
        
-   Checking the **variance inflation factor** (VIF)
    
    -   Sometimes, pairwise correlations are not enough.
        
    -   Instead of just one variable, the independent variable may depend upon a combination of other variables.
        
    -   VIF calculates how well one independent variable is explained by all the other independent variables combined.
        

The VIF is given by:

$VIF=\dfrac{1}{1-R_i^2}$


Here,'i' refers to the i-th variable, which is being represented as a linear combination of the rest of the independent variables and R2i is the R2 score of the model when the linear regression model is fit for the variable i against the other independent variables.   
 

The common heuristic we follow for the VIF values is:

- > 10:  VIF value is definitely high, and the variable should be eliminated.

- > 5:  Can be okay, but it is worth inspecting.

- < 5: Good VIF value. No need to eliminate this variable.

Towards the end of the video, you saw that the boston housing dataset has features having a very high VIF associated with them. In the next video let’s remove one of the feature **‘PTRATIO’** or ‘pupil-teacher ratio by town’ that is highly correlated and see how it impacts the model performance.

**VIDEO**

You can see that model performance dropped slightly but you eliminated one of the highly correlated features. You can also check that the value of the condition number has dropped slightly but is still high.

#### Model Building

Qn: Consider the below list of features for model building 

collist =  ['CRIM', 'ZN', 'INDUS', 'CHAS', 'NOX', 'RM', 'AGE', 'DIS', 'RAD', 'TAX',  'B', 'LSTAT' ]

By observing the p-values, identify the list of features that comes out to be insignificant?

- ZN

- INDUS

- RM

- AGE

Ans: B & D. *If you observe the summary statistics of the model, you will find  that the features x3 and x7 have p value higher than 0.05. These features correspond to ‘INDUS’ and ‘AGE’ from my feature set.*

![Features P-Ratio](https://i.ibb.co/8D8V5Nc/Feature-P-Ratio.png)

In the next video let’s eliminate the features which are having VIF value above 50 and features which are insignificant (which have p-value > 0.05).

**VIDEO**

You saw how manually eliminating each feature resulted in a model with just five features but a decent R2 score of 0.615. This is how important is feature selection, where you identify features that best define the model and remove features that are redundant in the dataset.  
 

An important thing to ponder upon is your model 4 has a good R2 score with no multicollinearity but is it the best model you can build? The answer to this depends on the business requirements, here while eliminating the features you haven’t considered the importance of individual features in predicting the outcome feature ‘value’. You eliminated some of the features such as ‘RM’ and ‘NOX’ which are found to be important as per our EDA exercises.   
 

At times, instead of eliminating the highest correlated feature (assume ‘RM’) you may decide to keep that feature as it may make more business sense and remove the associated features which aren’t of much importance to the model. In this way too, by removing manually the features 'RM' is multicollinear with and checking VIF at each step, you can remove multicollinearity. You can see this below; by considering 'RM' with a couple of other variables, we can get a fairly good model with no multicollinearity.

#### OLS Regression Model

Qn: Consider the three features ['CHAS', 'RM',  'LSTAT']. Identify the _R2_ score of the linear regression model built to predict prices using these three features?

- 0.611

- 0.615

- 0.651

- 0.649

Ans: C. 
- *Step 1 - From the boston housing data frame choose only those columns necessary for model building.*
```python
collist5 = ['CHAS', 'RM', 'LSTAT']
X = df[collist5].values
y = df['value'].values
```
- *Step 2 - Build a linear regression model using the following code snippet.*
```python
X_C = sm.add_constant(X)
model5 = sm.OLS(y, X_C)
result = model5.fit()
```
- *Step 3 - Print the summary statistics*
```python
result.summary()
```
- *This will print the summary statistics associated with the model, and if you look for the R-squared metric you will find it to be 0.651.*

#### VIF

Qn: Consider the earlier scenario where you are built a linear regression model using the features ['CHAS', 'RM', 'LSTAT']. Calculate the VIF in case of RM  in this case.

- 3.37

- 3.26

- 1.08

- 3.09

Ans: A. 

- *Step 1 - Create a VIF dataframe with feature column having all the column names.*

```python
vif5 = pd.DataFrame()
collist5 = ['CHAS', 'RM', 'LSTAT']
X = df[collist5].values
```

- *Step 2 - Create a new column VIF to store the calculated VIF for every feature.*

```python
vif5['VIF'] = [variance_inflation_factor(X, i) for i in range(X.shape[1])]
```

- *Step 3- Print the VIF dataframe.*

*Here, You will find the VIF associated with ‘RM’ feature to be 3.37.*

To summarize It is essential to detect and deal with the multicollinearity present in a model while interpreting it. To find an optimal model, you can always try all the possible combinations of independent variables and see which model fits best. But this method is time-consuming and infeasible. Hence, you need another method to get a decent model. This is where manual feature elimination comes in, wherein you:

-   Build the model with all the features,
    
-   Drop the features that are the least helpful in prediction (high p-value),
    
-   Drop the features that are redundant (multicollinearity),
    
-   Rebuild the model and repeat.
    

You should notice one thing here: we do not drop all the insignificant variables and the variables with high VIF in one steps. We do it sequentially as there is interdependence among variables and one doesn’t want to drop an important variable just on the basis of the initial result.

You understood how feature selection works manually by looking at the p-values and also handling multicollinearity in the dataset. In the next segment, let’s revisit the sklearn and look for other feature selection methods provided by the sklearn API.

#### Calculating VIF

Qn: When calculating the VIF for one variable using a group of variables, the R2 came out to be 0.75. What will the approximate VIF for this variable be?

- 1

- 2

- 4

- 5

Ans: C. *The formula for VIF is given as:* $/dfrac{1}{1-R_i^2}=/dfrac{1}{1-0/75}\approx4$.

#### Analysing the VIF Value

Qn: Is the VIF obtained in the previous case acceptable?

- YES

- NO

- It is okay but still worth inspecting.

Ans: A. *The common heuristic for VIF values is that if it is greater than 10, it is definitely high. If the value is greater than 5, it is okay but worth inspecting. And anything less than 5 is definitely okay.*
