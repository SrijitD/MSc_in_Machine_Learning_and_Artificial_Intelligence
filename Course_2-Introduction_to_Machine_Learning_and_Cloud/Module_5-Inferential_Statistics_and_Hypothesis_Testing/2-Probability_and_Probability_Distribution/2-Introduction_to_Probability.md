# Introduction to Probability

As you learnt previously, statistics has its foundation in probability and probability distributions. So, let’s start this segment by understanding the basics of probability.

**VIDEO**

Let’s take a look at how statistics plays a role in the following real-life instances. Don’t we come across probability in our everyday life?

- In cricket, a coin is flipped to decide which team will choose to bat first. There are two teams, and each team has a **50%** chance of winning the toss. Hence, the probability of both the teams winning the toss is **0.5**.  

- The weather report for the day conveys that there is a **40%** chance that your city will experience rain. This indicates that the probability of rain is **0.4**.  

- Now, probability also affects your day-to-day decision-making, some of which are as follows:
  
  - If the probability of rain is **high**, then you will choose to carry an umbrella with you.
  
  - If there is a **high probability** that the stock prices will increase, then you will decide to invest in that particular stock.
  
  - You may be tempted to purchase a lottery ticket in the hope that you will win the lottery even after knowing that the chances or probability of you winning the lottery is **close to nil**.

**What is a random variable?**

A random variable is a variable whose values are the outcomes derived from a random experiment. Let’s understand this using the example of a weather forecast. Considering the probability of rain is 0.4, the outcome of this experiment is that ‘it will rain’.

Suppose X is the random variable.

then Probability of (X = ‘raining’) = 0.4

Here, the probability of the random variable X for the outcome ‘raining’ is 0.4. However, there is a 60% probability of no rain. Hence, the probability of the random variable X = ‘it will not rain’ is 0.6. Here, the random experiment is whether it'll rain or not.

$Probability=Number\ of\ Outcomes\ of\ experiment\ A/Total\ Number\ of\ Outcomes\ of\ experiment\ A$

**What is a sample space?**

The sample space represents all the possible values of a random variable of a particular experiment. Let's elaborate on the examples taken by Ankit.

**Tossing of a coin**

What is the probability that the outcome of a coin toss will be Heads? The possible outcomes of this experiment are {Heads, Tails}. This is the sample space. Let’s consider a random variable X such that,

**X = 0** if the coin surface is ‘**Heads**’, and

**X = 1** if the coin surface is ‘**Tails**’.

Here, the coin toss is the random experiment.

Number of favourable outcomes = 1   {Heads}

Total number of outcomes = sample space = 2   {Heads, Tails}

Hence, P(X = 0) = ½ = 0.5

Let’s take another example.

**Rolling of a die**

Let X represent the number of pips (or dots) that the upper surface of the die displays after it is rolled.

What is the probability of getting the outcome X = 1?

If you roll the die, there is only one favourable outcome, i.e., the upper surface shows one pip. However, the total possible outcomes are {1, 2, 3, 4, 5, 6}. This is also your sample space. Hence, you have a total of 6 possible outcomes.

In this segment, you learned about the basics of probability. In case you are not familiar with the basic concepts of probability, you are requested to go through this document.

[**Probability and Set Theory**](https://drive.google.com/file/d/16x18DgX91nXwP--CmVXH9X7W4QBC8P78/view?usp=sharing)

In the next segment, you will learn about the concept of probability distributions.

#### Probability

Qn: Two dice are thrown at the same time. What is the probability of getting a sum of either 10 or 11?

- 0.112

- 0.241

- 0.138

- 0.213

Ans: C. *The sample space in this experiment is 36. In other words, there are 36 possible outcomes. Out of those 36 outcomes, three outcomes result in a sum of 10, and 2 outcomes result in a sum of 11. Now using the addition rule, we can directly calculate the final probability*

***Note:*** $P(A⋃B)=P(A)+P(B)−P(A⋂B)$

*Since the events are mutually exclusive, hence* $P(A⋃B)=P(A)+P(B)$

$P(A) =\ ^3/_{36}$  
$P(B) =\ ^2/_{36}$

Hence final probability = $\ ^5/_{36} \approx 0.138$

*In case you are unfamiliar with the concept of mutually exclusive or addition rule, refer to this doc [Probability and Set Theory](https://drive.google.com/file/d/16x18DgX91nXwP--CmVXH9X7W4QBC8P78/view?usp=sharing)*

#### Random Variables

Let’s say that as a data analyst at a bank, you are trying to find out which of the customers will default on their loan, i.e., stop paying their loans. Based on some data, you have been able to make the following predictions:

![](https://i.ibb.co/PF6WRDg/Bank-Table.png)

Qn: Define a random variable to indicate whether the customer is predicted to default or not.

Ans: *Let us define a random variable X to indicate whether the customer is predicted to default or not. The values will be assigned according to the following rule as follows:*

*X = 1, if the customer defaults;*

*X = 0, if the customer does not default.*
