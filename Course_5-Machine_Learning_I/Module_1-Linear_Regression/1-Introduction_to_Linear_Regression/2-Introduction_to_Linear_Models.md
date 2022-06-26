# Introduction to Linear Models

Imagine that you are a real estate agent and you are presented with a scenario to predict the price of a flat based on its square feet area or number of rooms. In this scenario, you can apply a simple linear regression model and predict the price. A simple linear regression model here attempts to explain the relationship between a **dependent** variable (price) and an **independent** variable (square feet) using a straight line. The independent variables are also known as the **predictor variables** and the dependent variables are known as the **outcome variables**.

Now, in the next video, let’s understand linear models and their importance in machine learning.

**VIDEO**

#### Linear Models

If you are to represent the following equation in a higher-dimensional space, what would be the dimensionality of the plot?

$y=m_1x_1+m_2x_2+m_3x_3...m_nx_n+c$

- 3

- n

- n+1

- 2

Ans: C. *The equation $y=m_1x_1+m_2x_2+m_3x_3...m_nx_n+c$ involves n+1 variables, and you require an n+1 dimensional space to plot it.*

#### Occam's Razor

Qn: Occam’s razor is a fundamental principle in machine learning, which suggests that:

- A model should be simplified as much as possible.

- A model should be as simple as possible but robust.

Ans: B. *Occam’s razor does not say that a model should be unjustly simplified till no further simplification is possible. It says that when faced with a trade-off between a complex and a simple model, with all other things being roughly equal, you are better off choosing the simpler one. The reason for this will be explained shortly.*
 
In the video, you learnt that a linear relationship between more than two variables is represented as follows.

$y=m_1x_1+m_2x_2+m_3x_3...m_nx_n+c$

Here, y is the dependent variable (output variables) and x1,x2,..xn are independent variables (predictor variables). To put it simply, let’s take our earlier example of predicting the price of a house; here, in addition to the variable square feet area, you are also given locality, floor number and many other variables. In that case, if you are still able to represent all these variables as a linear equation, then that is a higher-dimensional linear model. You will learn more about this as we go further in the module.

Towards the end of the video, Jaidev mentions Overfitting. It is a common phenomenon in machine learning when a model becomes too specific to the data it is trained on and fails to generalise to other unseen data points. A model that has become too specific to a training dataset has actually ‘learnt’ not just the hidden patterns in the data but also the noise and inconsistencies in the data. Note that noise is something that cannot be learnt as it is random and does not have any pattern. In a typical case of overfitting, the model performs very well on the training data but fails miserably on the test data. You will understand more about this in the latter part of the module, where you will build linear regression models and compare their performance on the training and testing datasets.

## Comprehension

Answer the following questions in the context of the straight-line plot given below.

![Linear Algebra Comprehension](https://i.ibb.co/f4BNfdx/LR-Intro-Comprehension.png)


#### The intercept of a Straight Line

Qn: What is the intercept of the given line? Use the graph given above to answer this question.

- 0

- 3

- 4

- 1/2

Ans: B. *The value of y when x = 0 in the given straight line is 3. So, the intercept, in this case, is 3.*

#### Slope of a Straight Line

Qn: What is the slope of the given line? Use the graph given above to answer this question. (Hint: Use any two points on the line and use the formula mentioned in the slides to find the slope)

- 1/2

- 1/3

- 1

- 2

Ans: A. *The slope of any straight line can be calculated by (y₂ - y₁)/(x₂ - x₁), where (x₁, y₁) and (x₂, y₂) are any two points through which the given line passes. This line passes through (0, 3) and (2, 4); so, the slope of this line would be (4-3)/(2-0) = ½.*

#### Equation of a line

Qn: What would be the equation of the given line?

- $Y = X/2 + 3$

- $Y = 2X + 3$

- $Y = X/2 + 1/2$

- $Y = 3X + 1/2$

Ans: A. *The standard equation of a straight line is y = mx + c, where m is the slope and c is the intercept. In this case, m = ½ and c = 3. So, the equation would be $Y = X/2 + 3$.*

So, that was easy! You could find the linear regression line in just three steps. But, in real life, not all data points lie on the same line or hyperplane, so you need to find the best fit line or hyperplane. You will learn how to do that in the upcoming segments. But before that, let's look at why do we need linear regression with the help of some real-world use cases.