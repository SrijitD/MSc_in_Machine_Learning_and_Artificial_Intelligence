# Types of Regularization

In the previous segment, you had learned that there are majorly three types of regularization namely:

-   L2 regularization or Ridge Regression
    
-   L1 regularization or Lassi Regression
    
-   Elastic Net regularization
    

In the next video, you will learn how we can express L1 and L2 regularization mathematically.

**VIDEO**

In this video, you learned how we can express the L1 and L2 regularization mathematically. Consider the following linear regression model.

$$y=w_0+w_1x_1+w_2x_2+...+w_nx_n$$

where,

$y$  is the target variable

$x_1,x_2...x_n$ are the specific features

$w_1,w_2...w_n$ are the corresponding weights for each feature

If we consider the image below, we can see how we can express Ridge and Lasso mathematically. 

![Ridge and Lasso Mathematically](https://i.ibb.co/MGkk3rb/Ridge-and-Lasso-Mathematically.png)

In the next segment, we will understand the geometrical significance of Ridge and Lasso regression. Before we proceed to understand their geometrical significance, let us quickly understand how a function can be represented in the form of contour plots.

Refer to the image given below. For a function given as f(x,y), a third axis, say Z is used to plot the output values of the function, and once we connect all the values, we get a surface.

![Types of regularisation graph 1](https://i.ibb.co/wh71DMj/Types-of-Regularisation-Graph1.jpg)

The above function exists in 3d. However, if we want to project any function, f(x, y) onto a 2d plot, we can use the concept of contour plots as shown below.

![Types of regularisation graph 2](https://i.ibb.co/TtxmFWT/Types-of-Regularisation-Graph2.png)
**Source**: _http://gnuplot.sourceforge.net/demo_5.2/contours.html_

This kind of contour plots are frequently used in topological maps to indicate elevations that are the same. For the purpose of explaining the geometrical significance of Ridge and Lasso regression, we have considered the case of a simple linear regression model as shown below.

y=w0+w1x

Our weights of interest are w0 and w1. Hence the loss or error function may be represented as follows. The image on the right depicts the 3d plot of the loss function, while the image on the left depicts the corresponding contour plot.

![Types of regularisation graph 3](https://i.ibb.co/dM5HLvn/Types-of-Regularisation-Graph3.png)

If we add the regularisation term, to this loss function, we will get a contour plot similar to the one shown below.

![Types of regularisation graph 4](https://i.ibb.co/v1jpw4X/Types-of-Regularisation-Graph4.png)

In the next video, we will understand the significance of these contour plots with respect to ridge and lasso regression.

**VIDEO**

When dealing with contour plots, the solution will lie on the point where the contour of the loss function meets the contour of the ridge or lasso contour plot. To summarise, for ridge regularisation, it's very unlikely that the contour meets at the x-axis or y-axis, which in turn will make the other coefficients to be zero. On the other hand, lasso forces many of the parameters in the solution to become zero, and this is a big advantage of lasso in spite of the computational inconvenience.

With everything that you have learned in ridge and lasso, let us summarise the key takeaways in the next video.

**VIDEO**

One of the most important benefits of lasso regression is that it results in model parameters, such that the lesser important features' coefficients, becoming zero (and hence increasing the sparsity or certain features no longer being part of the final regression fit). In other words, lasso regression indirectly performs feature selection. The ways in which lasso regression performs feature selection (and some other mathematical properties of ridge and lasso) is beyond the scope of this discussion. You can use the below table and see the key difference between ridge and lasso.

![Ridge and Lasso Differences](https://i.ibb.co/x1nrgZL/Ridge-and-Lasso-Differences.png)

In the next video, we will learn about the third type of regularization which is a combination of lasso and ridge regularization. This one is known as the Elastic net regularization.

**VIDEO**

Elastic net regularization is a combination of ridge and lasso regression defined to provide a good balance between reducing overfitting without eliminating too many features from the model. The function is given by:

$$L_{elastic}=Loss+\lambda_2||w||_2+\lambda_1||w||_1$$

In this equation:

-   Set $\lambda_1=0$ for Ridge regression
-   Set $\lambda_2=0$ for Lasso regression

This way, we are able to get the best of both worlds and attain a middle ground by setting the corresponding $\lambda_1$ and $\lambda_2$ parameters.

#### Variable Selection

Qn: Which of the following methods performs variable selection, i.e., it can help discard redundant variables from the model?

- Ridge

- Lasso

- Both

Ans: B. *Lasso trims down the coefficients of redundant variables to zero and, thus, indirectly performs variable selection as well. Ridge, on the other hand, reduces the coefficients to arbitrarily low values, though not zero.*