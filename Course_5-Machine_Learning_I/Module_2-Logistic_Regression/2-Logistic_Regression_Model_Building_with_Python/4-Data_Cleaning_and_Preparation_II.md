# Data Cleaning and Preparation - II

You have merged your dataframes and handled the categorical variables present in them. But you still need to check the data for any outliers or missing values and treat them accordingly. Let's get this done as well.

**VIDEO**

You saw that one of the columns, 'TotalCharges', had 11 missing values. Since this is not a big number compared to the number of rows present in a data set, we decided to drop them, as we will not lose much data.

Now that you have completely prepared your data, you can start with the preprocessing steps. You will first split the data into train and test sets and then rescale the features. So, let’s start with that.

**VIDEO**

Recall that for continuous variables, Rahim scaled the variables to standardise the three continuous variables: tenure, monthly charges and total charges. As you learnt, scaling basically reduces the values in a column to within a certain range; in this case, we have converted the values to the [Z-scores.](https://www.statisticshowto.com/probability-and-statistics/z-score/#:~:text=Simply%20put%2C%20a%20z%2Dscore,on%20a%20normal%20distribution%20curve.)

For example, let’s say that for a particular customer, tenure = 72. After standardising, the value of the scaled tenure becomes:
  $$\dfrac{72−32.4}{24.6}=1.61$$

This is because for the variable tenure, mean(μ) = 32.4 and standard deviation(σ) = 24.6.

The variables had these ranges before standardisation:

-   Tenure = 1 to 72
-   Monthly charges = 18.25 to 118.80
-   Total charges = 18.8 to 8685

After standardisation, the ranges of the variables changed to the following:

-   Tenure = -1.28 to +1.61
-   Monthly charges = -1.55 to +1.79
-   Total charges = -0.99 to 2.83

Clearly, none of the variables will have a disproportionate effect on the model’s results now.

**Churn rate and class imbalance**

Another point to note here is the churn rate, which Rahim talked about at the end of the video. You saw that the data has almost a 27% churn rate. Checking the churn rate is important, as you usually want your data to have a balance between the 0s and the 1s (in this case, churn and not-churn). 

The reason for having a balance is simple. Let’s do a simple thought experiment: if you had a data with, say, 95% not-churn (0) and just 5% churn (1), then even if you predict everything as 0, you will get a model that is 95% accurate (although it is, of course, a bad model). This problem is called **class imbalance.** You will learn how to solve such cases later.

Fortunately, in this case, you have about 27% churn rate. This is neither exactly 'balanced' (which a 50-50 ratio would be called) nor heavily imbalanced. So, you will not have to do any special treatment to balance this data set. 

#### Standardising Variables

Qn: In a data set with mean 50 and standard deviation 12, what will be the value of a variable with an initial value of 20 after you standardise it?

- 1.9

- -1.9

- 2.5

- -2.5

Ans: D. *The formula for standardising a value in a data set is given by:*  $\dfrac{(X−\mu)}{\sigma}$. Hence, you get: $\dfrac{20−50}{12}=−2.5$

#### Standardising Train and Test Sets

Qn: As Rahim mentioned in the lecture, you use **'fit_transform'** on the train set but just **'transform'** on the test set. You had learnt this in linear regression as well. Why do you think this is done?

Ans: *The **'fit_transform'** command first fits the data to have a mean of 0 and a standard deviation of 1, i.e., it scales all the variables using the following:
$$X_{scaled}=\dfrac{X−\mu}\sigma$$
Once this is done, all the variables are transformed using this formula. Now, when you go ahead to the test set, you want the variables to not learn anything new. You want to use the old centralisation that you had when you used fit on the train data set. This is why you do not apply 'fit' on the test data, just 'transform'. You can also refer to [this](https://datascience.stackexchange.com/questions/12321/difference-between-fit-and-fit-transform-in-scikit-learn-models) StackOverflow answer.*

## Coming up

Now that everything is in place, you can start building your model from the next segment.