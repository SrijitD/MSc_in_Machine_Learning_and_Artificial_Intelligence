# Differentiation

In this segment, let's revisit some concepts and formulae of derivatives.

## **Differentiation**

Differentiation is the action of computing a derivative. The derivative of a function  y=f(x)  is a measure of the rate at which the value  y of the function changes with respect to the change in the variable  x. It is called the derivative of  f with respect to  x.
Although in practice, we usually compute derivatives using 'rules' ![](https://i.ibb.co/LkQkGNQ/Diff-1.png) it is worth recalling how these rules are arrived at, and more importantly, what they mean.

## Video

To get a basic understanding of derivatives, watch this video on the [first principles of derivatives](https://www.youtube.com/watch?v=ay8838UZ4nM&index=18&list=PL19E79A0638C8D449)  by Khan Academy.

To get a visual understanding of limits, you can  **optionally**  [watch this video on limits](https://www.youtube.com/watch?v=kfF40MiS7zA&list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr&index=7) by 3Blue1Brown. We have summarized the concepts from these two videos in the section below.
![](https://i.ibb.co/68cfZ4Y/Diff-2.png)
Let's consider an example f(x)=x2 and calculate it's derivative at x=4:
![](https://i.ibb.co/6B7dQ36/Diff-3.png)The above method is also referred to as **derivatives by first principles**. This method is the foundation for the rest of differential calculus: every differentiation rule and identity in calculus is based on the concept of derivatives by first principles.

#### Derivatives by First Principles

Q - Differentiate the following function f(x)=x3+x2/2+3 and evaluate the differential at x=5. You may already know how to compute the derivative directly, but you may try doing it using first principles for a short algebra warm-up.
A - 80

Q - Differentiate the function f(x)=x2−5x+6 and evaluate the differential at x=−1 using first principles.
A - -7

In practice, computing derivatives by first principles is a tedious process. But once the derivatives of a few simple functions are known, the derivatives of other complex functions can be easily computed using some rules_._

## **Differentiation Rules for Common Functions**

In the following section, we have summarised the differentiation rules for common functions. You can quickly skim through these.

-   **Derivatives of powers:**![](https://i.ibb.co/m4D4Kj5/Diff-4.png)
-   **Exponential and logarithmic functions:**
![](https://i.ibb.co/z43DhN1/Diff-5.png)
-   **Trigonometric functions:**
![](https://i.ibb.co/3fzDBC5/Diff-6.png)

## Rules for Combined Functions

Here are some rules for combinations of functions:
![](https://i.ibb.co/Y0FPvrJ/Diff-7.png)
## Video

To get a basic understanding of differentiation using the chain rule, watch this video on [Chain rule | Derivative rules](https://www.youtube.com/watch?v=0T0QrHO56qg) by Khan Academy. You can  **optionally**  watch this video on [Visualizing the chain rule and product](https://www.youtube.com/watch?v=YG15m2VwSjA) [rule](https://www.youtube.com/watch?v=YG15m2VwSjA) by 3Blue1Brown.

The following example illustrates some of these rules in action:

![](https://i.ibb.co/JtMtmHM/Diff-8.png)

#### Differentiation

Q - What is the derivative of the function f(x)=x3cos(x)ex ?
A - ![](https://i.ibb.co/KmjZhGM/Diff-9.png)
![](https://i.ibb.co/Dp33Ycx/Diff-10.png)

#### Differentiation

Q - What is the derivative of the function  f(x)=x3/2+πx2+√49 evaluated at the point x=2 ?
![](https://i.ibb.co/kMZN4FC/Diff-11.png)
![](https://i.ibb.co/4KJYKDg/Diff-12.png)

Q - What is the derivative of the function f(x)=sin(x)e^cos(x) at the point ​x=π​​​​​​?
A - f'(π)=−1/e

# Partial Derivatives

You often need to compute the rate of change of multivariate functions f(x,y) with respect to the variables x and y. This is done using **partial derivatives**  - derivatives of a function computed with respect to only one variable.

## Video

To get a basic understanding of partial derivatives, watch  [this video on partial derivatives by Khan Academy](https://www.youtube.com/watch?v=AXqhWeUEtQU). We have summarised the concepts from this video in the section below.

## Example

Consider the following example: the volume  V  of a cone depends on the cone's height h and its radius  r according to the following equation:

which represents the rate at which the cone's volume changes with its radius  _while the height is kept constant_. The italicised part of the previous sentence is very important - while computing a partial derivative, all other variables of the function are kept constant.
![](https://i.ibb.co/R2XL4vd/Diff-13.png)
Similarly, the partial derivative with respect to the height h  equals:
![](https://i.ibb.co/GWS7Y8D/Diff-14.png)
This rate represents how the volume of a cone (of a constant radius r) changes as you change the height.

#### Partial Differentiation
Q - ![](https://i.ibb.co/VNKph7w/Diff-15.png)

![](https://i.ibb.co/9sTf7KZ/Diff-16.png)
![enter image description here](https://i.ibb.co/Wg8yqt5/Diff-17.png)

Q - 
![](https://i.ibb.co/61znQ2z/Diff-18.png)
A - 
![](https://i.ibb.co/cgGSv25/Diff-19.png)

Q -
![](https://i.ibb.co/QXDdWqY/Diff-20.png) 
A - 
![](https://i.ibb.co/2ZhVbL2/Diff-21.png)
![](https://i.ibb.co/QCpvWj3/Diff-22.png)

## **Total Derivatives**

Suppose that f is a function of two variables x and  y. Normally these variables are assumed to be independent. However, in some situations, they may be dependent on some other common variables. For example, both x and  y themselves may be varying with time t, i.e. we can write them as x=x(t) and y=y(t).

In such cases, we cannot assume that x and  y are independent (because they now depend on a common variable and are not independent), and thus, we cannot compute the partial derivatives assuming so. We rather use what are called  **total derivatives.**

## Video

To get the basic understanding of total derivative, watch this video on [Multivariable chain rule](https://www.youtube.com/watch?v=NO3AqAaAE6o) by Khan Academy.

Thus, total derivatives are somewhat analogous to the rate of change of a function with respect to all its variables. Consider the function f(x,y,z) where x,y,z are functions of t  . By using chain rule we can write the formula for the 'total derivative' as :
![](https://i.ibb.co/3SL5h0D/Diff-23.png)
## Example

Let's take an example problem which can be easily solved using total derivatives. Suppose that the radius and height of a cone are both 2 cm at some time t. The radius is decreasing at the rate of 1 cm/s and the height is increasing at the rate of 2 cm/s. What is the change in volume with respect to time at an instant  t?

We know that the volume of the cone is:

V=13πr2h

Also, we are given that the radius is decreasing at the rate of 1 cm/s and the height is increasing at the rate of 2 cm/s. In other words, drdt=−1 cm/s and dhdt=2 cm/s respectively.

By using the total derivative formula, we can calculate the rate of change of volume with respect to time:
![](https://i.ibb.co/db0mcVs/Diff-24.png)
Hence, we can say that the volume of the cone is not changing at this time point t.

#### Total Derivative

Q - Recall the formula for the total derivative, that is, for f(x,y),x=x(t) and y=y(t):
![](https://i.ibb.co/3TSShdh/Diff-25.png)
Given that f(x,y)=π2x2y, x(t)=t2+1 and y(t)=t2−1, calculate the total derivative df/dt.
A - ![](https://i.ibb.co/10syB3r/Diff-26.png)
![](https://i.ibb.co/h8d9bmW/Diff-27.png)
