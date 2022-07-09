# Bias-Variance Tradeoff

In the previous segment, you had learned about bias and variance in detail. In this segment, you will understand how the concepts of bias and variance prove useful in choosing an optimal model. Let us understand this tradeoff in the next video.

**VIDEO**

In this video, you learned about the bias-variance tradeoff. In the below graph, we can see that increasing the Max Depth of the Decision Tree results in increasing the model complexity. This led to decreasing the bias and increasing the variance, resulting in a trade-off.

![Bias variance trade off graph 1](https://i.ibb.co/L9t48H4/Bias-Variance-Tradeoff-Graph1.png)

Bias variance trade off graph 1

You had also seen how bias and variance can be represented mathematically. 

Any model you create is to model the true underlying function. As earlier, let’s assume that the true function that fits the dataset is given by $f(x)$ and the model built by us is given by $f'(x)$. Then, the relationship between the response value Y (which essentially are the data points available for modelling) and the predictor variables X is given by

$Y=f(X)+?$

where ? is the irreducible error term or noise which cannot be modelled. Note that the values belonging to the irreducible error will be normally distributed with mean 0 since it is noise and cannot be modelled. 

Hence, the Mean Square Error (MSE) at an unknown dataset is the expected value of $(Y−f'(x))^2$.

Then MSE can be decomposed into the following,

$$MSE=\left(E[f'(x)]−E[f(x)])^2+(E[f'(x)^2]−E[f'(x)]^2\right)+\sigma^2_?$$

The first term is known as the bias of the model and the second term is the variance of $f'(x)$ , the model used for prediction while the third term is the variance of the irreducible error.

$$MSE=Bias(f'(x))^2+Variance(f'(x))+\sigma^2_?$$

or, 

$$MSE=Bias^2+Variance+Irreducible\ error$$

As you can see from the above equation, for the same MSE, if the Bias decreases, Variance increases and vice versa. Hence, there is a trade-off between bias and variance in the ML modelling process. 

## **Bias-Variance Trade-off**

In an ideal case, we want to reduce both the bias and the variance because the expected total error of a model is the sum of the errors in bias and variance. In practice, we often cannot have low bias and low variance model. As the model complexity increases, the bias decreases but the variance increases, resulting in a trade-off.

![Bias_Variance Trade Off](https://i.ibb.co/NWDGNK7/Bias-Variance-Tradeoff-Graph2.png)

These terms are used very frequently in the domain of Machine Learning when you are building models and validating the test results.

**Why Does the Bias – Variance Tradeoff Exist?**

As you have understood, our goal must be to choose a model having a low bias and a low variance. Unfortunately, as a consequence of the bias-variance tradeoff, it is extremely difficult to create such a model. A systematic approach to solving this bias-variance problem has been shown in the next video.

**VIDEO**

In this video, Jaidev has shown a simple flow diagram with respect to model complexity, underfitting and overfitting. Let us consider the following scenarios that may arise while choosing the best model.

-   **Training error is high**: As a consequence of this problem, we have got a high bias model. Hence, to avoid high bias, the existing model can be replaced with a more complex model. 
-   **Testing / Validation error is high**: As a consequence of this problem, we have got a high variance model. Hence, to avoid high variance, the existing model can be replaced with a simpler model. 

#### Bias-Variance

Qn: Consider that data is generated via a polynomial equation of degree 4 (i.e. the said polynomial equation will perfectly fit the given data). Which of the following statements are correct in this case?

- Linear regression will have high bias and low variance

- Linear regression will have low bias and high variance

- Polynomial equation of degree 4 will have low bias and high variance

- Polynomial equation of degree 4 will have low bias and Low variance

Ans: A & D. *Linear regression would create a degree 1 polynomial which would be less complex than the degree four polynomial and hence would have a higher bias. Since the model is less complex and won’t overfit, it would have a low variance. Since the polynomial equation fits the data perfectly, bias and variance will both be low here.*

In the next video, you will have been given a set of train and test error. Your task is to classify these cases into one of the four categories - (a) High bias, (b) High variance, (c) High bias, High variance, (d) Low bias, Low variance.

**VIDEO**

#### Bias and Variance

Qn: The correct order of bias in the three models is:

- Straight line > Degree-15 > Polynomial

- Straight line > Polynomial > Degree-15

- Polynomial > Degree-15 > Straight line

- Polynomial > Straight line > Degree-15

Ans: A. *Bias is high when the model is too simple. Increasing order of complexity would mean bias is decreasing.*

#### Variance

Qn: The variance in the higher degree polynomial is said to be higher than the other two models because:

- The variance in the y-values of the polynomial is clearly higher, as shown in the figure

- The model will change drastically from its current state when plotted on unseen test data

- The model will change drastically from its current state if the current training data is altered

- The y-values of the model will change drastically from the current y-values when tested on unseen data

Ans: C. *Variance refers to changes in the model as a whole when trained on a different dataset, rather than the variance in the predicted values of a single model. This is a key point to understand.*

Now try solving the comprehension given below.

## Comprehension - Bias-Variance Tradeoff

An artificially generated dataset was used to generate data of the form (x, 2x + 55 + e), where e is a normally distributed noise with mean zero and variance 1. Three regression models have been created to fit the data - linear, a degree-15 polynomial and a higher degree polynomial which passes through all the training points.

![BiasVariance Tradeoff Polynomialfit](https://i.ibb.co/9b4B5JF/Bias-Variance-Tradeoff-Graph3.png)
