# Maximum Likelihood Function (MLE)

You saw that in linear regression, to find the best fit line, you optimise the **cost function,** which is the RMSE. Similarly, in logistic regression, you optimise the **likelihood function**. A likelihood function is a statistical tool used to measure the **goodness of fit** of a statistical model. This statement is a lot to process in one go. Let’s break it down and analyse in a step-by-step manner. 

Consider a model to predict whether a person is about to travel or not based on their recent purchase on Amazon. Person ‘A’ bought a neck pillow, a passport cover and a universal plug adaptor, and is about to travel abroad. And person ‘B’ bought a sofa, curtains and some stationery items. Person B has spent a lot of money on home and school items, which implies that they are not planning to travel at the moment. Based on this data, can you predict whether a person ‘C’ who bought a lot of wall paint and wall putty will travel or not? 

This person ‘C’ is not likely to travel. How did you reach this conclusion? The parameters, ‘money spent’ and ‘object helpful in travel’, are the features of this data. You developed a model subconsciously to use these features and predict the label, which in this case is whether the person will travel or not. What will you do if the data is complex and developing a subconscious model is not possible? In that case, you will find a function that gives the probability of a random guess being equal to the given data label. Then, you will maximise the probability.

Applying this to the earlier example, let the model be $p_1=\dfrac{1}{1+e^{−(\beta_1x_1+\beta_2x_2)}}$, where $x_1$ is the total money spent, $x_2$ is a Boolean representing whether the money was spent on travel accessories or not, and $p_1$ is the probability that the person will travel. Using $p_1$ and a suitable threshold, you can predict a label $y_1$. To solve this, you can write a function for $P(Y_1 = Y)$. Here, Y will be the original data label, also known as ground truth label. Then, you can maximise this function. 

This function also called the likelihood function, gives the probability of a guess or a predicted label being equal to a given label. In the coming video, Jaidev will talk about applying the likelihood approach to binary random variables.

**VIDEO**

The approach shown in this video seems fine theoretically, but don't you think it is not that useful if the actual probability function cannot be found? Your next task is to find the appropriate probability function.

#### Probability of a Desired Class

Qn: Suppose an experiment has two outputs. What is the probability mass function that will give you the probability of getting a positive class, given the bias of the experiment (p) and the output of the experiment is (k) and (1 - k)?

- $log\left(\dfrac{p}{1−p}\right)$

- $p^{k_i}_i*(1−p_i)^{(1−ki)}$

- $\dfrac{p}{1−p}$

- $p^{(1−k_i)}_i*(1−p_i)^{k_i}$

Ans: B. *The PMF equation that you learnt about earlier will give the probability of the positive class.*

Before the quiz, the unsolved question was: Which function can denote the probability of a random guess being equal to the given label? As you saw earlier, this can be represented by the PMF equation for Bernoulli random variables. To find the probability of a random guess being equal to the actual values, substitute it into the likelihood function.

But before you do that, the likelihood function needs to be simplified further. Watch the next video to learn how to simplify the likelihood function first. 

**VIDEO**

As stated by Jaidev, since all the _n_ data points are independent of each other, the likelihood of each data point's output, yi equal to the actual label, and can be multiplied with each other. Therefore, you get the likelihood function for the data set as follows:
$$P(y)=\prod^n_{i=1}p(y=y_i)$$
Here, p(y=y1) is given by the following: 
$$p(y=yi)=p^{y_i}_i*(1−p_i)^{(1−y_i)}$$
So, by substitution, you get:
$$P(y)=\prod^n_{i=1}p^{y_i}_i×(1−p_i)$(1−y_i)$$
To simplify this equation, take the log of both sides. Taking the logarithm of the likelihood function gives the log-likelihood function, which converts the multiplication of the terms for different observations to addition. But does taking the log change the function? The answer is no. 

The trend of the data points stays the same. Consider a function $y=x^2$ for a non-negative x, i.e., x >= 0; the minima of this function will be at x = 0. Now, on taking log of both sides, $log y = 2log(x)$, the minima will still be at 0. This happens because the log is a monotonically increasing function; if $x > y$, then $log\ x > log\ y$. So, if you find an x that gives the smallest value of y, then log y will also be the smallest at that value. 

By taking the log of the equation for P(y), you get: 
$$log(P(y))=\sum^n_{i=1}log(p^{y_i}_i*(1−p_i)^{(1−yi)})=\sum^n_{i=1}log(p^{y_i}_i)+\sum^n_{i=1}log(1−p_i)^{(1−y_i)}$$

So, the log-likelihood function is given by the following equation:
$$P(y:p)=\sum^n_{i=1}y_ilog(p_i)+(1−y_i)log(1−p_i)$$
Note that we have used P(y:p) instead of P(y) in the expression above for the log-likelihood function. P(y:p) is read as the log-likelihood of the variable y, given the parameter p. This process is also known as the **Maximum Likelihood Estimation** (MLE).

In the next video, you will learn how to maximise this function by minimising the log loss function.

**VIDEO**

In machine learning, it is a general practice to minimise loss functions, not maximise them. So the log-likelihood function is transformed into a log loss function, which is the negative of the log-likelihood function. In the next segment, you will learn how to minimise a log loss function.