# Summary

In this session, you learnt how to **build a logistic regression model in Python**.

The example used for building the model in Python was the **telecom churn example**. Basically, you learnt how Python can be used to decide the probability of a customer churning based on the value of 21 predictor variables such as monthly charges, paperless billing, etc.

First, the data was imported, which was present in three separate CSV files. After creating a merged master data set, one that contains all 21 variables, **data preparation** was done, which involved the following steps:

1.  Missing value imputation
    
2.  Outlier treatment
    
3.  Dummy variable creation for categorical variables
    
4.  Test-train split of the data
    
5.  Standardisation of the scales of continuous variables
    

After all of this was done, a logistic regression model was built in Python using the function **GLM()** under statsmodels library. This model contained all the variables, some of which had insignificant coefficients. Hence, some of these variables were removed first through an automated approach, that is, RFE, and then a manual approach based on VIFs and p-values.

In addition to this, you also learnt about the confusion matrix and accuracy and saw how accuracy was calculated for a logistic regression model.