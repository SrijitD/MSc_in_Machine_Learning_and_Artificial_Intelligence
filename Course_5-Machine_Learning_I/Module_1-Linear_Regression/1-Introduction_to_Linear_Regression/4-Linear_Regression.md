# Linear Regression

Having understood the importance of linear models in machine learning and after understanding why do we need linear regression through examples, let’s start looking at these linear models in the context of regression analysis. In the next video, you will learn linear regression, a basic linear model for performing regression.

As you move along this session, you will hear about various concepts around vectors and matrices, which you learned in your high school. The additional resources provided with this module will help you brush up on these concepts.

**VIDEO**

#### Equation of a line

Consider the following representation of the two points on a given line with slope m and intercept c.

$\begin{bmatrix}4\\5\end{bmatrix}=\begin{bmatrix}2 & 1\\\ 3 & 1\end{bmatrix}\begin{bmatrix}m\\c\end{bmatrix}$


Find m and c for the above set of equations.

- 1, 2

- 1, 3

- 2, 1

- 3, 1

Ans: A. *Converting the above matrix representation into a set of equations will give 4 = 2m + c and 5 = 3m+c. On solving these equations for m and c, you get m = 1 and c = 2.*


In this video, you saw how a system of linear equations can be converted to a [simple matrix](http://numpy.org/doc/stable/reference/generated/numpy.linalg.solve.html) form, which can later be used to identify the unknown variables m and c in the equation. In crude terms, this is the simplest type of linear regression where you are given certain points, or in other words, certain features, with the help of which you try to represent a linear relationship among these features. 

For example, consider the earlier real estate example. Assume that you have values as shown in the table below:
  

![Real Estate Example](https://i.ibb.co/nRdrDsT/Real-Estate-Example.png)

You can represent this data in the table by the equation given below.

$Value = 10,000*Rooms + 10,000*floor + 10* Area + 10,00,000$
Rel
This representation of the data in the form of a linear relationship involves estimating the coefficient values, here 10,000 for Rooms, 10,000 for floor, and 10 for Area. The process of estimating the values of these coefficients to best predict the dependent variables, here ‘Value’, using a system of linear equations is known as linear regression.

**Is linear regression this simple?**

Usually, data is presented to us in the form of the response and predictor variables as shown below.

![Real Estate Example](https://i.ibb.co/nRdrDsT/Real-Estate-Example.png)

For the above table, we were given the coefficients of the equation that perfectly predicts the variable, ‘Value’, given the values of ‘Rooms’, ‘Floor’ and ‘Area’ for all the data points. However, practically, all the data points may not perfectly fit any linear line but can be approximated to fit a certain line as shown in the case below.

![Linear Regression graph](https://i.ibb.co/ry3gFQk/Linear-Regression-Graph.png)

Hence, using the data at hand, we try to find the line that fits the best so that we can predict the response variable with minimum error.

Question 1/1

Mandatory

#### System of Equations

Qn: The data represented here falls under which category of the system of equations?

![System of Equations Question](https://i.ibb.co/CVNkv0w/System-of-Equations-Question.png)

If you are not clear regarding the system of equations, you can refer to the additional link provided at the end of this segment 

- Ideal System

- Underdetermined

- Overdetermined System

- None of the above

Ans: B. *At first glance, you may think that the presented scenario represents an ideal system. On a closer look, you will find that the equation formed out of row 3 data is twice of row 1 data and similarly equation formed out of row 4 data is thrice of row 1 data. This boils down to the fact that you have more number of unknowns compared to the number of possible equations. Hence the presented scenario is an underdetermined system.*

As stated earlier, the data provided in the table represents an ideal scenario where all points are fitting in the given equation. However, in a practical scenario, data never follows a similar trend, so using the data at hand you should try to find a representation of the data, through a model, which would help us predict the value around the actual value for all the data points. You will know more about this in the next segment.

## Additional Links:

1.  Refer to the link [Overdetermined and underdetermined systems of equations](https://quickmathintuitions.org/intuition-for-overdetermined-and-underdetermined-systems-of-equations/) for an intuitive understanding.