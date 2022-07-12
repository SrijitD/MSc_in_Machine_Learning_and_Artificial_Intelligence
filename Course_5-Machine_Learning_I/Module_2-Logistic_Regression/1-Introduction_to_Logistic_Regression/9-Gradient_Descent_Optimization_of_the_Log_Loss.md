# Gradient Descent Optimization of the Log Loss

In the previous segment, you found the following expression for the derivates. For the log loss of a single data point,
$$\nabla_wl_i=x_i(\sigma_i-y_i)$$
For the log loss of all the data points,
$$\nabla_w\hat{L}(y;p)=-\dfrac{1}{n}\sum^n_{i-0}\dfrac{\delta}{\delta{w}}=-\dfrac{1}{n}\sum^n_{i-0}s_i(\sigma_i-y_i)$$
Let's see how these are used to find the weights of the logistic regression model.

**VIDEO**

You saw that the gradients calculated earlier $\nabla_wl_i$, $\nabla_wl_i$ are used in the gradient descent optimization to calculate the weights of the model. Now, let's understand the optimization procedure.

1. Initialise the weights with some random values. Here, t denotes the iteration. Therefore, we have:    
   $w_t\begin{bmatrix}w_1\\w_2\\.\\.\\w_k\end{bmatrix}$
2. Calculate the sigmoid of $w^T_tx_i$ with these values of $w$ for all the data points: $\sigma(wTtxi)=\dfrac{1}{1+e^{(−w^T_tx_i)}}$.  
    
3. Use this to calculate the log loss $\hat{L}(y;p)=−\dfrac{1}{n}\sum^n_{i=0}\left[y_ilog(\sigma_i)+(1−y_i)log(1−\sigma_i)\right]$. You should monitor this log loss to ensure that it keeps decreasing with every iteration.  
    
4. Plug the value of the sigmoid equation into the gradient function to calculate the derivate of the loss of the ith data point, $\nabla_{w_t}l_i=x_i(\sigma(w^T_tx_i)−y_i)$.  
   Also, calculate the gradient of the log loss, $\\nabla_{w_t}\hat{L}(y;p)=−\dfrac{1}{n}\sum^n_{i=0}\nabla_{w_t}l_i$.   
   Note that both $\nabla_{w_t}l_i$ and $\nabla_{w_t}\hat{L}(y;p)$ have the dimensions of the weight vector, $w_t$, which is also the dimension of the data point $x_i$.  
    
5. Use the calculated loss to modify the values of the weights. But which of the derivates calculated above will you use? In the previous video, you saw that we used $∇_{w_t}l_i$.  
   Hence, the weight update becomes, $w_{t+1}=w_t−\eta\nabla_{w_t}l_i$. Notice that we have updated the weights using the derivate of the log loss of a single data point. This is known as the stochastic gradient descent. One of the advantages of the **stochastic gradient descent**, as opposed to other gradient descent methods, is that it is faster in achieving the minimum. If you updated the weights using the average log loss of all the data points, you would spend time calculating the loss for all the data points and then performing the weight updates, $w_{t+1}=w_t−\eta\nabla_{w_t}\hat{L}$. This is known as the **batch-gradient descent**. You can read about the different types of gradient descent [here](https://www.geeksforgeeks.org/ml-stochastic-gradient-descent-sgd/).  
   In the equation given above, wt is a column vector. As discussed earlier, $\eta$ is a term called learning rate, usually a number between 0 and 1. On what basis is the value of  $\eta$ decided? This [article](https://ml-cheatsheet.readthedocs.io/en/latest/gradient_descent.html) will give you a good idea of the intricacies involved in selecting the right learning rate for your algorithm.
6. Check whether the new weights and the weights of the earlier generation have a significant difference. If no, then go to the next step, else go back to step 2 with newly updated weights.    
   When the value of $|w_{t+1}−w_t|$ is so small that it does not have any significant change, it is said that the values have converged.  The 'significant change' is usually set based on the application and is denoted by ϵ. Whenever new weights are calculated, the condition $|w_{t+1}−w_t|<\epsilon$ is checked. If the condition is true, then the weights are accepted and the model training is completed. If the condition is not true, then the new weights are used to calculate the sigmoid and the whole process iterates. When the above condition is satisfied the solution is said to be converged. Another way to check the convergence is when you see that the difference between the successive log losses is not significant.  
    
7. Use these converged weights to predict the class label for unseen data. Once you have the converged weights, you can predict the class label for unseen data points. Use the sigmoid function to calculate the probability,  $\dfrac{1}{1-e^{-(−w_1x_1+w_2x_2)}}$ of belonging to the positive class. Based on this probability and the threshold, a class can be assigned.   
   If $p_i >$ the threshold, the class assigned is positive, else the class assigned is negative. 

So, you have finally understood how to calculate the weights for a logistic regression model by minimising the log loss function using gradient descent optimization. Note that your learning in further segments will not be affected by whether or not you read more about it. 

These previous couple of segments were mathematically heavy. Take your time and go through them thoroughly even though these concepts will not be directly used in implementing logistic regression. For that, you will use prebuilt libraries. But knowing the actual process of model building will help you appreciate the algorithm.

#### Cost Function for Logistic Regression

Qn: The gradient equation for logistic regression is as follows: 
$$\nabla_wl_i=x_i(\sigma_i−y_i)$$
Which of the following variables do you need to calculate in the equation given above?

- $l_i$

- $y_i$

- $\sigma_i$

- $x_i$

Ans: C. *This represents the sigmoid of $\left[\sum(weights * features + bias)\right]$. In this term, you need to find the weights.*

Qn: Which of the following variables is the log loss function differentiated with respect to in order to find the gradient?

- $w$

- $y_i$

- $p_i$

- $x_i$

Ans: A. *It is the vector representing the coefficients to be multiplied by the features. The objective is to find the appropriate coefficients.*

#### Weights Calculation

Qn: A logistic regression model is trained on the following data set.

| x1  | x2   | x3  | y   |
| --- | ---- | --- | --- |
| 10  | -0.5 | 1   | 0   |
| 55  | 0.3  | 0   | 1   |

During the gradient descent, the weights calculated in the 20th iteration are $w1 = 0.04, w2= -1, w3 = 0.4$. Calculate the weights of the 21st iteration (assume a learning rate of 0.2 and use the batch-gradient algorithm). 

- $\begin{bmatrix}-0.025\\-0.0571\\0.322\end{bmatrix}$

- $\begin{bmatrix}0.325\\-0.2145\\0.39\end{bmatrix}$

- $\begin{bmatrix}7.8\\-0.39\\0.78\end{bmatrix}$

- $\begin{bmatrix}-7.15\\-0.039\\0\end{bmatrix}$

Ans: A.

- *Step 1: Calculate the sigmoids of all the given data points.*
$$\sigma_1=\dfrac{1}{1+e^{−((10*0.04)+(−0.4*−1)+(1*0.4))}}=0.78$$
$$\sigma_2=\dfrac{1}{1+e^{−((55*0.04)+(0.3*−1)+(0*0.4))}}=0.87$$
- $Step 2: Calculate the loss for each data point.$   
$$\nabla_wl_1=\begin{bmatrix}10\\-0.5\\1\end{bmatrix}(0.78-0)=\begin{bmatrix}7.8\\-0.39\\0.78\end{bmatrix}$$
$$\nabla_wl_1=\begin{bmatrix}55\\0.3\\0\end{bmatrix}(0.87-1)=\begin{bmatrix}-7.15\\-0.039\\0\end{bmatrix}$$
- *Step 3: Find the average loss.*  
$$\nabla_ql=\frac{1}{2}*(\nabla_wl_1+\nabla_wl_2)=\frac{1}{2}*\begin{bmatrix}0.65\\-0.429\\0.78\end{bmatrix}=\begin{bmatrix}0.325\\-0.2145\\0.39\end{bmatrix}$$
- *Step 4: Find the updated weights.*  
$$w_{t+1}=w_t-\eta\begin{bmatrix}0.325\\-0.9571\\0.322\end{bmatrix}$$$$w_{21}=\begin{bmatrix}0.04\\-1\\0.4\end{bmatrix}-2\begin{bmatrix}0.325\\-0.2145\\0.39\end{bmatrix}=\begin{bmatrix}-0.025\\-0.9571\\0.322\end{bmatrix}$$
#### Predicting the Class Label

Qn: Using the weights that you found in the earlier question (w1=−0.025;w2=−0.957;w2=0.322), predict the class of a data point with the following features: 
$$x_1=40;x_2=0.6;x_3=1$$
Assume the threshold to be 0.6. 

- 0

- 1

Ans: A. *Step 1: Find the probability of the data point belonging to the positive class.* 
$$\sigma_1=\dfrac{1}{1+e^{−((40*−0.025)+(0.6*−0.957)+(1*0.322))}}=0.222$$
*The value of $\sigma_1$ is less than the threshold. So, it is classified as 0.

By now, you have learnt about the following: 

1. **Sigmoid function:** A function to convert the value wTx into a probability of belonging to the positive class
2. **Probability Mass Function** **(PMF)** of a Bernoulli process: Gives the probability of a random variable occurring in an experiment with two outputs 
3. **Likelihood function:** A tool used to measure the goodness of fit of a distribution to the given data set, known as **Maximum Likelihood Estimation (MLE)** estimator
4. **Log loss function:** The cost function of the logistic regression algorithm, which is the negative of the MLE estimator
5. **The gradient of the log loss function:** The derivate used in the weight updates
6. **Gradient descent:** The iterative process of finding the best possible weights to make predictions about the labels of unseen data 

In the next segment, you will learn how to evaluate logistic regression models.