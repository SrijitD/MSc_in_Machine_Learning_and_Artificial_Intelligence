# Multivariate Logistic Regression - Telecom Churn Example

Let's now look at the process of building a logistic regression model in Python.

You will be looking at the **telecom churn** **prediction** example. You will use 21 variables related to customer behaviour (such as the monthly bill, internet usage, etc.) to predict whether a particular customer will switch to another telecom provider or not (i.e., churn or not).

## Problem Statement

You have a telecom firm that has collected data of all its customers. The main types of attributes are as follows:

-   Demographics (age, gender, etc.)
-   Services availed (internet packs purchased, special offers, etc.)
-   Expenses (amount of recharge done per month, etc.)

Based on all this past information, you want to build a model that will predict whether a particular customer will churn or not, i.e., whether they will switch to a different service provider or not. So the variable of interest, i.e., the target variable, here is ‘churn’, which will tell us whether or not a particular customer has churned. It is a binary variable: 1 means that the customer has churned and 0 means that the customer has not churned.  
 

You can download the relevant data sets here.

Download [Churn Data](../churn_data.csv)

Download [Internet Data](../internet_data.csv)

Download [Customer Data](../customer_data.csv)

Also, here is the data dictionary.

Download [Telecom Churn Data Dictionary](../Telecom_Churn_Data_Dictionary.csv)

You can also download the code file and follow along. 

Download [Logistic Regression in Python - Telecom Churn Case Study](../Logistic_Regression_Telecom_Churn_Case_Study.ipynb)

So, here is what the data frame churn_data looks like.

![Data Frame 1:  Churn Data](https://i.ibb.co/c2ZknQR/Data-Frame-1-Churn-Data.png)

Here is the data frame customer_data.

![Data Frame 2: Customer Data](https://i.ibb.co/9GDzcc4/Data-Frame-2-Customer-Data.png)

Lastly, here is the data frame internet_data.

![Data Frame 3: Internet Data](https://i.ibb.co/q7kKKZc/Data-Frame-3-Internet-Data.png)

Now, as you can clearly see, the first five customer IDs are exactly the same for each of these data frames. Hence, using the column customer ID, you can collate or merge the data into a single data frame. You will start with that in the next segment.

## Coming up

In the next segment, you will start with reading and inspecting the dataframes and then move onto preparing that data for model building.