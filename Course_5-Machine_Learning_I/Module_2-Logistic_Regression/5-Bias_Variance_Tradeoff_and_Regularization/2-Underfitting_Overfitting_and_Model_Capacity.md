# Underfitting, Overfitting and Model Capacity

In the previous sessions, you learned that the goal of a good machine learning model is to generalize well from the training data to any unseen data, referred to as the testing data. 

As you would have seen in the earlier case studies, the model may not always perform well on the dataset, and it is left to us to decide on whether to go ahead with the model or not. There are several ways to assess a model’s performance. In this video, let us look at the major causes of a model to perform poorly - namely underfitting and overfitting. 

**VIDEO**

In the previous discussions, you saw whenever we got a low accuracy or high error, indicating a low model performance, we tend to perform some additional feature engineering or data manipulation in order to increase the performance.

The poor performance of our model of the model may be attributed to two factors:

1.  The model may be too simple, or underfitting
    
2.  The model is highly complex or overfitting
    

Let us understand these two terminologies in some more detail using the image shown below.

![Underfitting, Overfitting and Model Capacity_Model Complexity](https://i.ibb.co/7b8RYdg/Underfitting-Overfitting-and-Model-Capacity-Model-Complexity.png)

In image A, you can see that the data was assumed to follow a linear trend and a linear model is fitted. However, on a closer look, it is clear that this model is poorly fitting the data. Such a model is said to be **underfitting**.

Imagine you are provided with the data with no model fitted on it and asked to draw a line that would fit almost all the data points. You would draw a line that may be similar to the model shown in Image B. This model is not as simple as the model created in Image A but fits most of the data points properly. This can be assumed as an **optimal model**.

Now, let us consider the same model as in Image B and increase the complexity even further by trying to fit all the points including the outliers in the data. Such a model is said to be **overfitting**. 

In the next video, you will see some more instances to get a sense of how underfitting and overfitting can affect model performance. We will play around with the model capacity (also known as model complexity) and demonstrate how underfitting and overfitting models can severely affect the performance of the model.

**VIDEO**

**Note:** 

1.  **Polynomial Regression** is outside the scope of this course and you can use the additional links at the end of the segment to explore more about it.
2.  **Decision Trees** are tree-based learning algorithms which you will learn in much more detail in the upcoming course.

In this video, you saw the performance of three different models on a particular dataset. Consider the following dataset.

![Graph 1](https://i.ibb.co/ynhmQYG/Underfitting-Overfitting-and-Model-Capacity-Graph1.png)

In this dataset, you can see that the data is attributed to three aspects which the model needs to look out for. They are as follows:

1.  The sinusoidal wavy structure
    
2.  The upward linear ramp
    
3.  The noise surrounding the trend
    

We are interested in finding the model that can capture only the sinusoidal wavy structure and the linear ramp, not the noise.

So let’s say we pick a linear regression model and fit the data. In such a case, we would get a fit similar to the one shown below. 

![Graph 2](https://i.ibb.co/hRK3XC0/Underfitting-Overfitting-and-Model-Capacity-Graph2.png)

### Linear fit

As you can see, the linear fit was able to capture the upward linear ramp perfectly. However, as you may have expected, the linear fit was unable to capture the sinusoidal wavy structure and hence is a poorly fitted model. Hence this is a case of **underfitting.**

Now if we consider a slightly more complex model such as the polynomial fit as shown below, we can see that the model has been able to capture both, the linear ramp, as well as the sinusoidal wave.  This is an optimal fit, and we can consider this model as our best fit model. 

![Graph 3](https://i.ibb.co/h2VFGcH/Underfitting-Overfitting-and-Model-Capacity-Graph3.png)

### Polynomial fit

But let’s suppose we try to complicate the model even further. In the below image, we have considered a model is known as the decision tree, which you will learn in more detail in the **upcoming course**. This model takes a parameter known as ‘max_depth’. Increasing the Max_depth parameter increases complexity. As you can see, a Max_depth of 10 has captured not only the linear ramp and sinusoidal wave but also the noise in the data. Hence this is a clear example of overfitting. 

![Graph 4](https://i.ibb.co/N3xds8q/Underfitting-Overfitting-and-Model-Capacity-Graph4.png)

### Decision Tree fit

In a nutshell, **overfitting** is a phenomenon where a model becomes too specific to the training data and fails to generalize and perform well on the unseen data points. An overfitting model learns not just the hidden patterns in the data but also the noise and inconsistencies in the data.

In the same data, you can also make out the underfitting and optimal model complexity for a Max_depth of 1 and 5, respectively.

Hence it is crucial to decide on whether the model is underfitting or overfitting or an optimal model. In the context of machine learning, these concepts of underfitting and overfitting can be generalized to any machine learning model by defining two parameters - Bias and Variance. You will learn about Bias and Variance in much more detail in the next segment.

## Additional Links

You can read more about polynomial regression [here](https://online.stat.psu.edu/stat462/node/158/) and [here](https://en.wikipedia.org/wiki/Polynomial_regression#:~:text=In%20statistics%2C%20polynomial%20regression%20is,nth%20degree%20polynomial%20in%20x.)