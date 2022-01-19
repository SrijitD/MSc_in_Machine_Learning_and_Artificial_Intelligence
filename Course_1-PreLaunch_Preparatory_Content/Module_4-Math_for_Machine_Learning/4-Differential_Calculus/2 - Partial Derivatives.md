Partial Derivatives

You often need to compute the rate of change of multivariate functions f(x,y) with respect to the variables x and y. This is done using **partial derivatives** - derivatives of a function computed with respect to only one variable.

## Video

To get a basic understanding of partial derivatives, watch [this video on partial derivatives by Khan Academy](https://www.youtube.com/watch?v=AXqhWeUEtQU). We have summarised the concepts from this video in the section below.

## Example

Consider the following example: the volume V of a cone depends on the cone's height h and its radius r according to the following equation:

which represents the rate at which the cone's volume changes with its radius *while the height is kept constant*. The italicised part of the previous sentence is very important - while computing a partial derivative, all other variables of the function are kept constant. ![](https://i.ibb.co/R2XL4vd/Diff-13.png) Similarly, the partial derivative with respect to the height h equals: ![](https://i.ibb.co/GWS7Y8D/Diff-14.png) This rate represents how the volume of a cone (of a constant radius r) changes as you change the height.

#### Partial Differentiation

Qn: ![](https://i.ibb.co/VNKph7w/Diff-15.png)

Ans:  
![](https://i.ibb.co/9sTf7KZ/Diff-16.png)  
![](https://i.ibb.co/Wg8yqt5/Diff-17.png)



Qn: ![](https://i.ibb.co/61znQ2z/Diff-18.png)

Ans: ![](https://i.ibb.co/cgGSv25/Diff-19.png)



Qn: ![](https://i.ibb.co/QXDdWqY/Diff-20.png) 
Ans: ![](https://i.ibb.co/2ZhVbL2/Diff-21.png) ![](https://i.ibb.co/QCpvWj3/Diff-22.png)

## **Total Derivatives**

Suppose that f is a function of two variables x and y. Normally these variables are assumed to be independent. However, in some situations, they may be dependent on some other common variables. For example, both x and y themselves may be varying with time t, i.e. we can write them as x=x(t) and y=y(t).

In such cases, we cannot assume that x and y are independent (because they now depend on a common variable and are not independent), and thus, we cannot compute the partial derivatives assuming so. We rather use what are called **total derivatives.**

## Video

To get the basic understanding of total derivative, watch this video on [Multivariable chain rule](https://www.youtube.com/watch?v=NO3AqAaAE6o) by Khan Academy.

Thus, total derivatives are somewhat analogous to the rate of change of a function with respect to all its variables. Consider the function f(x,y,z) where x,y,z are functions of t . By using chain rule we can write the formula for the 'total derivative' as : ![](https://i.ibb.co/3SL5h0D/Diff-23.png)

## Example

Let's take an example problem which can be easily solved using total derivatives. Suppose that the radius and height of a cone are both 2 cm at some time t. The radius is decreasing at the rate of 1 cm/s and the height is increasing at the rate of 2 cm/s. What is the change in volume with respect to time at an instant t?

We know that the volume of the cone is:

V=13πr2h

Also, we are given that the radius is decreasing at the rate of 1 cm/s and the height is increasing at the rate of 2 cm/s. In other words, drdt=−1 cm/s and dhdt=2 cm/s respectively.

By using the total derivative formula, we can calculate the rate of change of volume with respect to time: ![](https://i.ibb.co/db0mcVs/Diff-24.png) Hence, we can say that the volume of the cone is not changing at this time point t.

#### Total Derivative

Qn: Recall the formula for the total derivative, that is, for f(x,y),x=x(t) and y=y(t): ![](https://i.ibb.co/3TSShdh/Diff-25.png) Given that f(x,y)=π2x2y, x(t)=t2+1 and y(t)=t2−1, calculate the total derivative df/dt.  
Ans: ![](https://i.ibb.co/10syB3r/Diff-26.png) ![](https://i.ibb.co/h8d9bmW/Diff-27.png)
