# Assumptions of Linear Regression

While building a linear model, you assume that the target variable and the input variables are linearly dependent. But do you need any assumptions other than this to apply linear regression on a particular dataset?

Let’s find the answer to this in the next video.

**VIDEO**
Let's understand the importance of each assumption one by one.

There should be a linear relationship between X and Y:

-   X and Y should display some sort of a linear relationship; otherwise, fitting a linear model between them is of no use.

![Assumptions Graph 1](https://i.ibb.co/Yp1ysDV/Assumptions-Graph-1.jpg)

Error terms are independent of each other:

-   The error terms should not be dependent on one another (like in a time-series data wherein the next value is dependent on the previous one).

![Assumptions Graph 2](https://i.ibb.co/w6jqfgq/Assumptions-Graph-2.jpg)

Error terms have constant variance (homoscedasticity):

-   The variance should not increase (or decrease) as the error values change.
    
-   Also, the variance should not follow any pattern as the error terms change.
    

![Assumptions Graph 3](https://i.ibb.co/HYrCP0m/Assumptions-Graph-3.jpg)

Error terms are normally distributed with mean zero:

-   It is fine if the error terms are not normally distributed in the case you just want to fit a line and not make any further interpretations.
    
-   However, if you want to make some inferences/ predictions using the model that you have built (you will see this in the upcoming segments), you need to have a notion of the distribution of the error terms. One particular repercussion of the error terms not being normally distributed is that the p-values obtained during the hypothesis test to determine the significance of the coefficients become unreliable. (You will see this in a later segment.)
    
-   The assumption of normality is made, as it has been observed that the error terms generally follow a normal distribution, with the mean equal to zero.
    

![Assumptions Graph 4](https://i.ibb.co/cxNQxWY/Assumptions-Graph-4.jpg)

Coming to the important assumption which says that all columns of X or in other words all predictor variables should be linearly independent. This is essential because if there exists a dependency between my features (Columns of X), then the determinant of X would be zero, which makes X inverse undefined. So, it is essential to avoid having dependency among features, and the existence of such dependencies is called multicollinearity. In such cases, you remove the columns that cause multicollinearity.

In the next video, you will understand what is multicollinearity what happens if multicollinearity is not handled.

You can download the notebook used for the demonstration here.

Download [Multicollinearity](multicolinearity.ipynb)

**VIDEO**

Multicollinearity refers to the phenomenon of having related predictor (independent)  variables in the input data set. In simple terms, in a model that has been built using several independent variables, some of these variables might be interrelated, due to which the presence of that variable in the model is redundant. In one of the earlier videos, you saw how multicollinearity affects the model building, and how it fails in capturing the true properties of the model.

Based on your understanding, attempt the questions given below.

#### Assumptions of Simple Linear Regression

Qn: What will be the effect of the error terms not being homoscedastic in nature?

- You will not be able to fit a straight line through the data.

- The error terms will not be normally distributed.

- The inferences made on the model would be unreliable.

- Both B and C.

Ans: C. *Even if you fit a line through the data, you cannot make inferences about the model. The parameters used to make inferences (you will learn these in later segments) will become highly unreliable.*

#### Assumptions of Simple Linear Regression

Which of the assumptions of linear regression is the following image shown to be violating?

![Assumptions Graph 5](https://i.ibb.co/7W4ZSLV/Assumptions-Graph-5.jpg)

- The linear relationship between X and y

- Error terms being independent of each other

- Error terms being normally distributed

- Error terms having a constant variance

Ans: D. *As is evident from the graph, the error terms seem to be reduced with an increase in the value of X. This is clearly a violation of the assumption that the error terms have constant variance.*

In the next segment, let's see how the linear regression model performs on unseen data.

**Additional Links**

1.  Image sources: [Assumptions of Simple Linear Regression](http://reliawiki.org/index.php/Simple_Linear_Regression_Analysis)
2.  You can also go through the following [link](http://people.duke.edu/~rnau/testing.htm) to see what happens when the assumptions are violated.