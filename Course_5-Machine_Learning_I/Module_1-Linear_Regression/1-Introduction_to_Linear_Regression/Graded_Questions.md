# Graded Questions

All the best!

#### Machine Learning Models

Qn: A Singapore-based startup Healin launched an app called JustShakeIt, which enables a user to send an emergency alert to emergency contacts and/or caregivers simply by shaking the phone with one hand. The program uses a machine learning algorithm to distinguish between actual emergency shakes and everyday jostling, using data with labels. What kind of problem is this?

- Supervised learning - Regression

- Supervised learning - Classification

- Unsupervised learning - Clustering

- Cannot say with this information

Ans: B. *The algorithm has to distinguish between actual emergency shakes and everyday jostling. Here, your output variable has predefined labels (shake/jostle), which are categorical in nature. So, this is a supervised learning-classification problem.*

#### Regression in Machine Learning

Qn: Select all the tasks where a linear regression algorithm can be applied. (More than one option can be correct)

- You have a dataset of body mass index (BMI) and the fat percentage of the customers of a fitness centre. Now, the fitness centre wants to predict the fat percentage of a new customer, given this dataset.

- You have collected data from a house rental website like commonfloor.com. The data has the rental prices of apartments and customer ratings as HIGH or LOW. You want to predict the customer rating, given the rental price of a new house.

- You want to predict the sales of a retail store based on its size, given the dataset of sales of retail stores and their sizes.

- You want to predict whether a customer is likely to leave the telecom network.

Ans: A & C.

- A. *Here, the output variable (dependent variable, which is to be predicted) is the fat percentage, which is a numeric variable. So, this is a regression task.*

- B. *Here, the output variable (dependent variable, which is to be predicted) is the customer rating, which is a categorical variable. It can take only two values: HIGH or LOW. So, this is a classification task.*

- C. *Here, the output variable (dependent variable, which is to be predicted) is sales, which is a numeric variable. So, this is a regression task.*

- D. *This is a classification task which has 2 outcomes: Yes or No.*

#### Best fit line

Qn: Which method is used to find the best fit line for linear regression? [UNGRADED]

- Root Mean Square Error

- Least Squares Method

- Mean Square Error

- Either A or C

Ans: B. *The least-squares method which gives the sum of the square of differences between the actual values and the predicted values (using the regression line fitted) is used to determine the best fit line. The key to getting the best fit line is minimising these least sqaures.*

#### Heteroscedasticity

Qn: What does it imply if your linear regression model is said to be heteroscedastic?

- The variance of the error terms is constant

- The variance of the error terms is not constant

- The variance in the data is zero

- None of the above

Ans: B. *Recall that one of the major assumptions of simple linear regression was that the variance of the error terms should be constant, i.e., homoscedastic. Heteroscedastic is the opposite of homoscedastic.*
