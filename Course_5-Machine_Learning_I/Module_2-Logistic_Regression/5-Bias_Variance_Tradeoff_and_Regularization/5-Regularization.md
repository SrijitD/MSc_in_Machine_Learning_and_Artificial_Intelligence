# Regularization

Welcome to this segment on Regularization which is an essential concept to understand in the context of machine learning. 

Before looking at this, let’s quickly revisit our earlier discussions on Bias-Variance tradeoff and Overfitting. You understood that in an ideal scenario, we want our model to be a low bias and low variance model. But in practice, as the model complexity increases, the bias decreases but the variance increases, resulting in a trade-off.

A common phenomenon in the context of bias-variance tradeoff which you observe is Overfitting. It occurs when a model becomes too specific to the data it is trained on and fails to generalize to other unseen data points in the larger domain. There are few ways you can avoid overfitting your model on training data. One such method is known as regularization. Let’s explore regularization in the next video.

**VIDEO**

In this video, you understood what is regularization and how it addresses the problem of overfitting.

Regularisation is a process used to create an optimally complex model, i.e., a model that is as simple as possible while performing well on the training data. Through regularisation, one tries to strike the delicate balance between keeping the model simple and yet not making it too naive for any use.

Regularization involves adding a new error part to your cost function thereby controlling the model complexity. You most common regularization techniques are as follows:

-   L2 regularization / Ridge Regression / Tikhonov Regularization
    
-   L1 regularization / LASSO
    
-   Elastic Net regularization = combination of L1 and L2
    

You will learn about these techniques in more detail in the next segment. 

In ridge regression, an additional term, '**sum of the squares of the coefficients**', is added to the cost function along with the error term, whereas in case of lasso regression, a regularisation term, **'sum of the absolute value of the coefficients**', is added. 

Before we get into the details of L1 and L2 regularization, let's understand the significance of the regularization parameterλ in the next video.

**VIDEO**

In this video, you saw that choosing the right value of the regularization parameter,λ  is crucial for getting an optimal fit for the model. In the image below, we have considered a model that was overfitting when no regularization was applied (Image (A)). On adding the regularization parameter,λ, we were able to land on a good fit (Image (B)). However, if we increase the λ even further, then the effect of regularization dominates the cost function and eventually, the model leads to underfitting.

![Regularisation_lambda](https://i.ibb.co/5538FTL/Regularisation-lambda.png)

Now that you have understood the effect of regularization, in the next segment, you will learn about the different types of regularization in much more detail, namely ridge, lasso and elastic net regularization.

#### Cost Function in Regularised Regression

Qn: A cost function in a regularised regression model has two terms: the error term (loss term) and the regularisation term. The objective of the learning algorithm is to find the model coefficients alpha such that

- The error term is minimised.

- The sum of the error term and the regularisation term is minimised

- The regularisation term is minimised

Ans: B. *The objective function to minimise is the sum of the error and the regularisation terms.*

#### Overfitting

Qn: Besides regularization, what other methods can be used to control overfitting? \[More than one option may be correct]

- Reducing the number of features

- Adding more data to train

- Reducing the data

- Choosing a more complex model

Ans: A & B. *Some algorithms have built-in feature selection such as the RFE method in Linear Regression. You can manually improve their generalizability by removing irrelevant input features. Training with more data can help algorithms detect the trend better.*