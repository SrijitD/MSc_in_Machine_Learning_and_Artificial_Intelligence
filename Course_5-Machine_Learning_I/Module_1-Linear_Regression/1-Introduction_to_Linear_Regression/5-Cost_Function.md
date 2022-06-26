# Cost Function

In the previous segment, you saw three different scenarios which may arise while solving a linear equation given a set of points. These are as follows:

-   Ideal System
    
-   Underdetermined system
    
-   Overdetermined system
    

In machine learning, you will mostly be dealing with the third criterion, where the number of equations, or in other words, the number of data points, is greater than the number of unknowns. There would not be any unique solution in this case. All you need to do is try to find the best line that would take values x1,x2...xn and give the value of y that is closest to the actual value. Now, what do you understand by the best line? How do you decide that a particular solution qualifies for the best line or not?

In the next video, let’s understand the internals involved in finding the best line by assuming that y = mx best represents the set of (xi,yi) points.  

Note: The next video would be a derivation involving concepts such as differentiation and partial derivates. You can get a quick refresher around these topics by referring to the Differential Calculus session in Resources section provided along with the module.

**VIDEO**

#### Best Fit Line

Qn What should we substitute in place of $g_i$?

- $y_i - mx_i$

- $2y_i x_i$

- $x_i$

Ans: A. *To simplify the differentiation, we had assumed $g_i$ as $(y_i - mx_i)$.*

An error or residual is the difference between the calculated value and the actual value. For example, if y = mx is the final assumed line, then for a given point (x1,y1) the error associated with it would be y1−mx1. Your aim in finding the best line should be to reduce the overall error.

![Cost Function Graph](https://i.ibb.co/NWCL4mb/Cost-Function-Graph.png)



#### Error

Similarly, what is the corresponding error for $(x_2,\ y_2)$?

Ans: $y_2 - mx_2$

This overall error is also known as the sum of squared error (SSE) or residual sum of squares (RSS). It is given by $\sum(y_i−mx_i)^2$. Our objective is to minimise SSEs. Assuming that the line y = mx best represents the set of points $(x_1,y_1)(x_2,y_2)...(x_n,y_n)$, you solve to minimise the SSEs. This would give an analytical solution that a line with slope $m = \dfrac{y^Tx}{x^Tx}$ would be the ideal line.

Now, there are a few things you should notice here:

1.  Though the error is $(y_1−mx_1),(y_2−mx_2)$ and so on for the different points, we do not minimise the sum of errors, i.e., $(y_1−mx_1)+(y_2−mx_2)+....$ We minimise the SSEs. We square it because the errors for the different points can nullify each other; hence, that would not give the correct result.  
    For example, $(y_1−mx_1)$ may be equal to 3 and $(y_2−mx_2)$ may be equal to -3. On adding the two, the sum of error gives zero, while adding the squared errors gives 18.
    
2.  All machine learning algorithms work towards minimisation of an objective function. Here, the objective function is RSS or SSE. It varies from model to model. This is also known as the cost function.
    
3.  You usually minimise the cost function/objective function as minimising the cost/ objective function results in the minimisation of the errors.
    
4.  For simplicity, we have considered the linear equation to be $y = mx$ instead of $y = mx + c$.
    

In our next video, let’s extend the discussion to a more generalised case where you have n predictor variables or in other words n independent variables. Linear regression involving more than one independent variable is multiple linear regression. Let’s see how we represent that in a matrix form.

**VIDEO**

For a generalised case, where you have n features (number of rooms, size, floor number ..), you can represent the individual values as shown in the figure.

![Image 1](https://i.ibb.co/zHHVrz9/Image-1.png)


The final equation for y (price) can thus be represented as given below:

![Image 2](https://i.ibb.co/G5w7Gbk/Image-2.png)


What we are interested in finding here is β, just like in the case y = mx, where our objective is to find m, which is the only variable in the equation.

Note that β in the above equation y=Xβ is a vector as shown below.

$\beta=\begin{bmatrix}\beta_1\\\beta_2\\.\\.\\\beta_n\end{bmatrix}$


Here again, you consider the cost function which is nothing but the sum of squares and minimise it to find the vector β.  The solution to β is an analytical one represented below. Note that we are not going to derive this here.

$\hat{\beta}=(X^TX)^{−1}X^TY$

On finding beta using the given values xi, you can find the value of $\hat{y_i}$. Hence,

$\hat{y}=X.\hat{\beta}$

This is very similar to the case when you have one independent variable. Now, the difference between the above-predicted value ^y and the actual value y is the error, ε. The MSE is defined as follow:

$MSE=||\epsilon||^2=||(y−X\hat{\beta}||^2$

Do not worry if these equations tend to scare you. These are for you to understand how linear regression is actually implemented in the machine and how it can be parallelised using Spark

## Comprehension 

Consider the following X and Y values

![Image 3](https://i.ibb.co/q7HTKqz/Image-3.png)

Using the OLS approach you need to find beta here.

Based on the above information given in the table, X would be 

$X=\begin{bmatrix}4 & 1\\3 & 1\\3 & 1\end{bmatrix}$

We have added a column containing 1 for the intercept.

$Y=\begin{bmatrix}5\\10\\6\end{bmatrix}$

 Y will be the column matrix representing the values of Y.

#### Finding Beta

Qn: For the given set of points, find beta.

![Image 3](https://i.ibb.co/q7HTKqz/Image-3.png)

**Hint:** To find an inverse of a matrix you can refer to this [link](https://www.mathsisfun.com/algebra/matrix-inverse.html).

- $Y=\begin{bmatrix}1/2\\-17/2\end{bmatrix}$

- $Y=\begin{bmatrix}17/2\\-1/2\end{bmatrix}$

- $Y=\begin{bmatrix}-1/2\\17/2\end{bmatrix}$

- $Y=\begin{bmatrix}-17/2\\1/2\end{bmatrix}$

Ans: C. *By using the X and Y matrices, calculate: $\hat{\beta}=(X^TX)^{−1}X^TY$*

> $(X^TX)^{-1} = \dfrac{\begin{bmatrix}3 & -9\\-9 & 29\end{bmatrix}}{6}$

> $X^TY=\begin{bmatrix}62\\21\end{bmatrix}$

> $\hat{\beta}=(X^TX)^{−1}X^TY=\begin{bmatrix}-1/2\\17/2\end{bmatrix}$

#### Finding Error

Qn: Using the calculated beta in the previous question, calculate the SSE for our previous question.

![Image 3](https://i.ibb.co/q7HTKqz/Image-3.png)

- 18

- 27/2

- 9

- 27/4

Ans: B. *The beta cap contains information about the slope and intercept of the linear regression line. Using this information about beta you can predict the values of y for given X. The SSE would nothing but the sum of the square of these errors.*

> $\hat{y}=X\hat{\beta}=\begin{bmatrix}6.5\\7\\7.5\end{bmatrix},\ (y-\hat{y})=\begin{bmatrix}-1.5\\3\\-1.5\end{bmatrix},\ SSE = 1.5^2 + 3^2 + 1.5^2 = 13.5 = 27/2$


Now, that you have manually estimated the coefficient vector, **$\hat{\beta}$ by doing the matrix calculations, let's try to do the same in the next segment using Numpy.