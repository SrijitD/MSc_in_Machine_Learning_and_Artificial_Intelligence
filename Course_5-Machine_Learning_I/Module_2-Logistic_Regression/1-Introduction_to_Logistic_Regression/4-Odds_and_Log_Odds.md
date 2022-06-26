# Odds and Log Odds

In the earlier segment, you were introduced to the logistic equation, which connects the features of a data point and their weights to the probability of that point belonging to the positive class. However, this relationship is complex. One cannot intuitively interpret the change in the probability caused by any change in the features.

For example, suppose a customer with a monthly mobile bill of ₹500 has a churn probability of 0.6. If his bill changes to ₹300, what will be the change in his churn probability? You will not be able to answer this without performing a series of calculations. In other words, **model interpretability** is an important criterion to meet while selecting an algorithm for a particular application.

For example, you would never choose a model that is not interpretable in the healthcare sector because it is important for doctors to know the effect of features on predictions.

In the next video, our SME will explain how to interpret the logistic regression equation.

**VIDEO**

In this video, Jaidev introduced the concept of odds and explained how they can help in interpreting the changes in the input to the sigmoid function. The odds are the ratio of the probability of an event happening to that of the event not happening as given by the formula provided below:

$$odds=\dfrac{p}{1−p}$$

Here, p is the probability of an event happening. 

Unlike probabilities, odds are not bound between 0 and 1. Consider an example of a fair die.   
What is the probability of obtaining a number larger than 1? The number of favourable outcomes in this case is 5, and so, the probability is ⅚. Now, find the odds for the same. 

$$odds=\dfrac{5/6}{1−5/6}=\dfrac{5}{1}$$

  
Similarly, the odds of getting the number 6 are ⅕, and you can calculate and check this yourself. So, it can be said that higher the odds, higher is the probability of the event happening. And simply taking the log of the odds ratio gives the log odds.

$$log(odds)=log\Big(\dfrac{p}{1−p}\Big)$$

Log odds follow the same trend; as the log odds increases, the probability of the event happening also increases. This is because taking the log of a function does not change its relative values, as the log is a monotonically increasing function. But taking the log of the odds makes interpreting the change in weighted features even easier.

Let’s say that [∑(weights * features + bias)] term for a particular combination of weights and features add up to -2. 

$$log\Big(\dfrac{p}{1−p}\Big)=\beta_0+\beta_1x_1+\beta_2x_2 =−2$$

Here, x1, x2 are the features; β1, β2 are the weights; and β0 is the bias. Therefore, to calculate the probability p, you need to do the following:
$$\dfrac{p}{1−p}=e^{−2}=0.1353$$
$$p=(1−p)×0.1353$$
$$1.1353p=0.1353$$
$$p=0.1192$$
As you can see, if the value of log odds is negative, the probability of the event happening is less than 0.5.  Let’s extend the same discussion to the vanilla logistic regression, which has a threshold value of 0.5. Remember, the threshold on the probability is used to classify the data point as a positive class or a negative class.

In the logistic regression, the probability of a class depends on the features and their weights. As you can see from the above example for the vanilla logistic regression with the threshold as 0.5,  when a data point is called a positive class, it means that the sum of the weighted features $[\sum(weights * features + bias)]$ of the data point is positive, and the data point will be classified as true.

#### Odds and Log Odds

QN: What are the odds of drawing a club card from a shuffled deck of 52 cards?

- 1/4

- 1/5

- 2/3

- 1/3

Ans: D. *The probability of getting a club card is ¼ and that of not getting a club card is ¾, and their ratio is ⅓.*

Qn: The value of the log odds of an event is 2. What is the probability of that event happening?

- 0.73

- 0.88

- 0.83

- 0.95

Ans: B. *Odds $= e^2 = 7.389$, and probability = odds / (1 + odds) = 0.88.*

So far, you have understood how you can calculate the probability values for a set of inputs, the xs. But, how do you calculate the parameters of the models, the βs? To understand that, we will revisit the concept of binomial distribution in the next segment, which you studied in the first module of this course.