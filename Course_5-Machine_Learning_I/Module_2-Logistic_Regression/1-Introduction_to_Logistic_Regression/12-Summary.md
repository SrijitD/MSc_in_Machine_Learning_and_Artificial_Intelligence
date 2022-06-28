# Summary

In this session, you were introduced to the next fundamental problem in machine learning: the classification problem. You also learnt about all the necessary concepts that help in solving it. This discussion was not exhaustive. Consider this discussion an introduction and keep exploring this algorithm. 

The session can broadly be divided into three sub-sessions: 

(1) All the **mathematical tools** and **concepts** needed to solve a classification problem

(2) The use of these tools to **build an** **algorithm** to solve the problem 

(3) Finally, **evaluating the model** 

Let’s summarise the topics covered in each sub-session.

**Mathematical tools and concepts:** 

1.  **Sigmoid function**: This is best suited for converting the continuous output of the $w^Tx_i$ term to probabilities. This is the probability of getting a positive class, given the features of the data. 
2.  **Bernoulli distribution**: Gives the distribution of the dependent variable in the case of vanilla logistic regression the dependent variable has discrete binary outputs. Furthermore, the Bernoulli distribution was used to build the function that gives the probability mass function for a Bernoulli process. 
3.  **Odds and log odds**: It helps in interpreting the relationship between the change in the inputs to the change in the probability of the positive class.
4.  **Gradient descent algorithm**: This algorithm helps minimise the log loss cost function. The negative sign of the gradient of the log loss function gives the direction in which the minima will be found, and its magnitude gives information about how big a step you can take in an iteration.

**Logistic model building:** 

1.  **Likelihood function**: It gives the likelihood of the guessed labels being equal to the actual labels. This is calculated by combining the PMF of the Bernoulli process with the sigmoid of the $w^Tx_i$.  
2.  **Maximum likelihood estimation**: Taking the logarithm and simplifying the likelihood function will give the log-likelihood function. The log-likelihood function gives the probability the variable y, pi being equal to the actual variable yi, given the parameters of the model: weights and bias/intercept. To fit the assumed parameter to the given data, the log-likelihood needs to be maximised. This process is called maximum likelihood estimation. 
3.  **Minimising the log loss function**: In machine learning, it is preferred to minimise a function. So, the sign of the maximum likelihood function is flipped to get the log loss function that can be minimised. The sigmoid of wTxi is substituted into the log loss function, and then it is minimised. 
4.  **Gradient optimisation for the log loss function**: The gradient descent algorithm is used to find the weights that will give the minimum loss. Using the weights after convergence and the sigmoid function, the predictions are made for the unseen data points. 

**Evaluation metrics for the classification problems:** 

As a classification problem fundamentally differs from a regression problem, the metrics used to evaluate the models are also quite different. You learnt about the following metrics: 

1.  Accuracy 
2.  True accuracy 
3.  Sensitivity and specificity 
4.  Precision and recall
5.  F1 score 
6.  ROC curve and the area under it

![Confusion Matrix](https://i.ibb.co/6rW8RkK/Confusion-Matrix.jpg)

In the next session, you will learn how to implement logistic regression using Python. But before moving on, try to answer the graded questions included in the next segment.