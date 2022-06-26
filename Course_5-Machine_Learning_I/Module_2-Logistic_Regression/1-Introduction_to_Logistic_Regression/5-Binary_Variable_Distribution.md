# Binary Variable Distribution

In the case of continuous variables, such as the children’s height, the distribution is normal. To define a normal distribution, the following two parameters of the distribution are needed: mean (μ) and standard deviation (σ). 

Similarly, for a random variable that has two outcomes, we define the distribution by the **Bernoulli distribution**. Before we move on to understand what a Bernoulli distribution is, let’s understand what we mean by a Bernoulli random variable, in the next video. 

**VIDEO**

As discussed in the video, any experiment or question whose result is a Boolean value such as success or failure and 0 or 1 follows the Bernoulli distribution. What are the possible outcomes of a fair coin toss experiment? Heads and tails. So, this is an example of a Bernoulli process, and the distribution of the outcome will be a Bernoulli distribution. To completely define this distribution, only one parameter is enough, i.e., the bias of the experiment. 

In the next video, you will learn how to define a function to find the probability of an event belonging to the positive class, which is essentially a Bernoulli distribution.

**VIDEO**

As you saw in this video, the probability of obtaining a specific output from an experiment with discrete outputs is called the probability mass function (PMF), or discrete density function. Here, the PMF of getting heads on a coin toss is a Bernoulli distribution given by the following equation: 
$$f(p:k)=p^k.(1−p)^{(1−k)}$$
Here, k can be 0 or 1.

Here, k is the output, and p is the probability of getting heads. If k = 1, i.e., the coin toss results in heads, then k-1 becomes 0. Therefore, the probability of getting heads will be 0.5, given that the coin is a fair coin. This stays the same even if k = 0, i.e., the coin toss results in tails. The distribution works even when the coin is biased. Consider a coin that is 70% biased towards heads. In that case, p = 0.7. Now, if this biased coin toss results in heads, k = 1, the PMF equation will reduce to $(0.7^1∗ 0.3^0) = 0.7$, which is the probability of getting heads. If the coin toss results in tails, i.e., k = 0, the PMF will result in $(0.7^0∗ 0.3^1) = 0.3$, which is the probability of getting tails.  

The PMF of the Bernoulli distribution essentially shows the probability that can be taken by the random variable. Note that there are only two values that can be taken by the random variable, as it is a binary variable. For a coin toss, it is either heads or tails. You should also notice that the Bernoulli distribution mentioned above is only for one event, i.e, one coin toss.

Suppose you have to find the probability of the coin toss for more than one toss. This can be calculated by extending the probability mass function of a single coin toss to multiple coin tosses. In the next video, Jaidev will explain how this is done using a binomial distribution.

**VIDEO**

In this video, you saw that a binomial random variable is the output of a binomial experiment. So, let’s take a look at the binomial experiment first. 

A binomial experiment is a series of Bernoulli trials, each trial with binary output. The probability of getting a positive class in each trial should remain the same. The results of all the trials are independent of each other. In other words, the Bernoulli distribution represents the success or failure of a single Bernoulli trial. The Binomial distribution represents the number of successes and failures in _n independent_ Bernoulli trials for a given value of n.

Consider a binomial experiment with n trials and k successes. If each of the trials had a probability of p of getting a favourable outcome, then the overall probability would be given by the following equation:

$$\binom{n}{k})p^k.(1−p)^{(n−k)}$$

Here, (nk) represents k items picked from n identical items, or nCk. For a coin tossed twice, if you define the success as 'getting heads', you would want to find the probability of the different values: 2 successes (Head, Head), 1 success (Head, Tail), 0 success (Tail, Tail) using the binomial distribution.

Before moving on to the next segment, attempt the questions below to get a better understanding of these distributions.

#### Binomial Distribution

Qn: What is the probability of getting 7 heads when a fair coin is tossed 10 times?

- 50/128

- 15/128

- 27/128

- 30/128

Ans: B. *Use the binomial probability distribution function to solve this. Here, n = 10, k = 7 and p = 0.5.* 
$$P=\binom{10}{7}0.5^7.(1−0.5)^{(10−7)}=120×0.5^{10}=\dfrac{15}{128}$$

#### Bernoulli vs Binomial Distribution

The Bernoulli process has only two possible outcomes: success and failure (can also be written as 0 successes), and the distribution of the success and failure can be depicted by a histogram. 

![Bernoulli vs Binomial Distribution Q2 1](https://i.ibb.co/Mcd2DZw/Bernoulli-vs-Binomial-Distribution-Q2-1.png)

Here, the x-axis represents the number of successes, and the y-axis represents the probability of getting success. Similarly, the output of a binomial process with n trials will be \_\_\_\_\_ and the distribution for the same looks like \_\_\_\_\_. Fill in the blanks.

**Image A:** 

![Bernoulli vs Binomial Distribution Q2 2](https://i.ibb.co/KN8ZKbN/Bernoulli-vs-Binomial-Distribution-Q2-2.png)

**Image B:**

![Bernoulli vs Binomial Distribution Q2 3](https://i.ibb.co/YdV0x8S/Bernoulli-vs-Binomial-Distribution-Q2-3.png)

n; Image A

n +1 ; Image B

Now, let’s collate the concepts that you have learnt so far in this session:

1.  The outcomes of any single event/experiment with binary outcomes follow the Bernoulli distribution. You also learnt about the PMF that is used to calculate the probability of the positive class.
2.  The sigmoid of the weighted feature expression [∑(weights * features + bias)] of the data point gives the probability of a data point belonging to the positive class. 

Your next task is to bring both these parts together and create a cost function that will help you to calculate the parameters of the model.