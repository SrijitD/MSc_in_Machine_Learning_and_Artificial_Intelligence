# Multiclass Classification

The foundation of logistic regression is built on the PMF of variables, which can have one of the two possible values. Using this PMF, a likelihood function is derived and then maximised to find the coefficients of the features that can achieve the best separation. This whole algorithm is built for binary classification, but it can also be used to solve multiclass classification problems. These problems have more than two categorical outcomes, such as the blood group of a person, mode of transport taken by a person to reach their workplace and the political party that a person is likely to vote for. 

In the next video, let’s understand how logistic regression is used to solve multiclass classification problems.

**VIDEO**

As you saw in this video, logistic regression can be used to classify multinomial problems.

1. **Algorithm 1 cascading models**: The first model is used to distinguish one class from the rest, and subsequent models are used to identify the next class from the rest of the labels. This is continued until the penultimate label. This approach seems logical and efficient, but it is not. This is because the accuracy keeps on decreasing with every new model that is built. Moreover, there are multiple ways to select the first label on which you want to build the model. 
2. **Algorithm 2 individual models**: For K variables, K models are trained, each to predict one class over the rest. For each data point, the label of the model with the best probability is selected.

Before you apply the logistic regression algorithm to multiclass problems, one key assumption needs to be made.

**VIDEO**

The independence of irrelevant alternatives is an important assumption that is made while using the logistic regression algorithm for multiclass problems. It means that the presence or absence of an alternative does not affect the occurrence rate of any class. For example, consider a model that predicts the blood group of people. If the features of a data point are such that the label is predicted to be B+, then this prediction will not change based on the presence of a different class such as AB+. 

Why is this assumption important?

Take a look at how the training happens; K models will train to predict K labels/ classes. Each model will predict the probability of a data point belonging to the positive class of that model. At this stage, the probabilities of the models are compared, and the labels are decided. The model built for a label does not consider the other labels or their model parameters at any point in the training process. This is why the labels cannot affect one another. 

The modification in the training process also changes the coefficient vector. A binary logistic model produced one vector of coefficients. Since multiple such models are being trained, multiple vectors of coefficients will be generated. These multiple vectors form a matrix of coefficients. In the prediction phase, the label of each data point will be predicted using all the models, and a vector of probabilities will be formed, in which each element of the vector will be the probability of the data point belonging to that particular label/ class.

To understand the prediction phase better, let's consider an example. The following is an extract from the Iris data set. It is a toy data set used for multiclass classification problems. You know the label for the first three data points. You need to find the label for the fourth data point.

| **Id** | **SepalLengthCm** | **SepalWidthCm** | **PetalLengthCm** | **PetalWidthCm** | **Species**     |
| ------ | ----------------- | ---------------- | ----------------- | ---------------- | --------------- |
| 1      | 5.1               | 3.5              | 1.4               | 0.2              | Iris setosa     |
| 2      | 7                 | 3.2              | 4.7               | 1.4              | Iris versicolor |
| 3      | 7.3               | 2.9              | 6.3               | 1.8              | Iris virginica  |
| 4      | 8                 | 5                | 3.4               | 1.5              | ??              |

Let’s say three logistic models are trained each to predict one species of flower.  Assume that the matrix given below shows the weights of three different models found after training, each column representing the weights for the different classes of Iris mentioned in the table provided above.

$$W=\begin{bmatrix}w_1&w_2&w_3\end{bmatrix}=\begin{bmatrix}0.023&0.055&0.034\\0.14&0.21&0.19\\-0.08&0.01&-0.04\\0.1&-0.05&0.03\end{bmatrix}$$

As seen earlier, you can represent the fourth data point as follows:

$$x_4=\begin{bmatrix}8\\5\\3.4\\1.5\end{bmatrix}$$

Using these weights facilitates the calculation of the probabilities of the fourth data point belonging to each of the three classes. To do that, you first need to find the values for $w^T_1x_4$, $w^T_2x_4$ and $w^T_3x_4$.

Hence,  $w^T_1x_4=(0.023*8)+(0.14*5)+(−0.08*3.4)+(0.1*1.5)=1.32$

Similarly, $w^T_2x_4=1.434$ and $w^T_3x_4=1.131.$

This can also be written in the following manner:

$$z=W^T.x_4=\begin{bmatrix}0.023&0.14&-0.08&0.1\\0.055&0.21&0.01&-0.05\\0.034&0.19&-0.04&0.03\end{bmatrix}.\begin{bmatrix}8\\5\\3.4\\1.5\end{bmatrix}=\begin{bmatrix}1.32\\1.434\\1.131\end{bmatrix}$$

So,  you get the following values for the three different models. 

$$z=\begin{bmatrix}w^T_1x_4\\w^T_2x_4\\w^T_3x_4\end{bmatrix}=\begin{bmatrix}1.32\\1.434\\1.131\end{bmatrix}$$

What you do next is pass the z that you calculated for the different models into the softmax function. For multiclass classification problems, the softmax function is used to find the probabilities of the data point belonging to different classes. The softmax function applied to the given problem will look like the following. 

$$q_1=\dfrac{e^{w^T_1x_4}}{e^{w^T_1x_4}+e^{w^T_2x_4}+e^{w^T_3x_4}}$$

Here, q1 is the probability of the point belonging to the class/ label 1. Similarly,

 $$q_2=\dfrac{e^{w^T_2x_4}}{e^{w^T_1x_4}+e^{w^T_2x_4}+e^{w^T_3x_4}}$$

and

$$q_3=\dfrac{e^{w^T_3x_4}}{e^{w^T_1x_4}+e^{w^T_2x_4}+e^{w^T_3x_4}}$$

You already have the values for $w^T_1x_4$, $w^T_2x_4$ and, $w^T_3x_4$. You need to plug them in the formulae given above and find the probabilities. Let's do that.

$$q_1=\dfrac{e^{1.32}}{e^{1.32}+e^{1.434}+e^{1.131}}=0.34$$

$$q_2=\dfrac{e^{1.434}}{e^{1.32}+e^{1.434}+e^{1.131}}=0.38$$

and

$$q_3=\dfrac{e^{1.32}}{e^{1.32}+e^{1.434}+e^{1.131}}=0.28$$

You can write it in a compact form as a vector as follows.

$$p=\begin{bmatrix}q_1\\q_2\\q_3\end{bmatrix}=\begin{bmatrix}0.34\\0.38\\0.28\end{bmatrix}$$

This makes each output of the softmax equivalent to the probability of that class. Now, can you conclude to which class the fourth datapoint belongs? Yes, of course, it belongs to class 2, that is, Iris versicolor.

Regardless of the input given to the softmax function, the output vector has the following specific properties: 

1. Each element on the output is between 0 and 1.
2. The sum of all elements in the output equals 1.

A lot of different [online tools](https://keisan.casio.com/exec/system/15168444286206) are available to calculate the output of the softmax function. You can try out different combinations, even negative numbers. The resultant vector always follows the same properties as mentioned above. The softmax function is widely used in neural networks for multiclass classification. You can read about the softmax function [here](https://stats.stackexchange.com/questions/233658/softmax-vs-sigmoid-function-in-logistic-classifier).

The application of multinomial regression does not differ from the normal logistic regression model that you trained. The aforementioned changes happen in the background. In PySpark, you can simply set the family of the regression object to multinomial. You can explore the multinomial logistic regression in the [Spark documents](http://spark.apache.org/docs/latest/ml-classification-regression.html#multinomial-logistic-regression).

#### Multiclass Classification

Qn: Which of the following statements is true in the case of multinomial logistic regression?

- It can be used to solve multilabel problems.

- The class labels need must be independent of one another.

- The features must be independent of one another.

- In place of the sigmoid function, the softmax function is used.

Ans: All of the above. 

- *Multinomial logistic regression can predict multi-label classification as well; only when the classes are mutually exclusive. This means that the presence of a label does not affect the presence or absence of any other label.*

- *If the labels are dependent on one another, it will be difficult to train individual models to predict individual classes.*

- *Teh features must be independent of one another for all logistic models, not just multinomial regression.*

- *Using the softmax function gives the comparable probabilities, thereby making the decision about the class label easier.*

This concludes the module on logistic regression. In the next segment, we will summarise your learnings from this module.
