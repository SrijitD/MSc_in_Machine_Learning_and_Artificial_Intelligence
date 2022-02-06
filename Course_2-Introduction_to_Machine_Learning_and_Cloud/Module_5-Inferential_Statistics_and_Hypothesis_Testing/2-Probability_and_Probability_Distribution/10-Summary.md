# Summary

In the first section, you learnt how to **quantify the outcomes** of events by using **random variables**.

For example, recall that we quantified the colours of the balls we would get after playing our game by assigning a value of X to each outcome. We did so by defining **X as the number of red balls** we would get after playing the game once.

![Random-Variable](https://i.ibb.co/Npft7yt/Random-Variable.png)

Next, we found the **probability distribution**, which was a **distribution giving us the probability for all possible values of X**.

We created this distribution in a **tabular form**:

![Probability-Distribution-Table](https://i.ibb.co/QXv4bBT/Probability-Distribution-Table.png)

We also created it in a **bar chart form:**

![Probability-Distribution-of-the-up-Grad-Ball-Game](https://i.ibb.co/0p77mQL/Probability-Distribution-of-the-up-Grad-Ball-Game.png)

You saw that, in the bar chart form, we were able to visualise the probability in a much better way., Thus, this form is used more widely as it helps you see trends easily.

Then, we went on to find the **expected value** for X, the money won by a player after playing the game once. The expected value (EV) for X was calculated using the formula:

$EV(X) = x_1*P(X=x_1) + x_2*P(X=x_2) + ...... + x_n*P(X=x_n)$

Another way of writing this is

$EV(X) = \sum(x_i*P(X=x_i))$

Calculating the answer this way, we found the expected value to be +3.25.

In other words, if we conduct the experiment (play the game) **infinite times**, the **average money** won by a player would be ₹3.25. Hence, we decided that we should either decrease the prize money or increase the penalty to make the expected value of X negative. A negative expected value would imply that, on average, a player would be expected to lose money and the house would profit.

You then learnt about types of discrete probability distribution called the **uniform distribution and binomial distribution**. A discrete uniform distribution is basically a discrete probability distribution with **n discrete outcomes** with **the probability of each outcome being equal, i.e., 1/n**. You also learned about the binomial probability. The formula for calculating binomial probability is as follows:

![Binomial_Probability](https://i.ibb.co/BgpRx8P/Capture38.png)

where,  
n = number of trials,  
x = number of success trials, and  
p = probability of success.

Next, we discussed the **cumulative probability of X**, denoted by **F(X)**, which is the **probability that the random variable X takes a value less than or equal to x**.

For example, we found F(2), the probability of getting 2 or fewer red balls in our UpGrad game. It was calculated as:

$F(2) = P(X < 2) = P(X = 0) + P(X = 1) + P(X = 2) = 0.0256 + 0.1536 + 0.3456 = 0.5248$

You then understood that cumulative probability is a concept that you need to use extensively when working with continuous random variables.

After that, you saw that for a **continuous random variable**, the **probability of getting an exact value is** very low, almost **zero**. Hence, when talking about the probability of continuous random variables, you can only talk **in terms of intervals**. For example, for a particular company, the probability of an employee’s commute time being exactly equal to 35 minutes was zero, but the probability of an employee having a commute time between 35 and 40 minutes was 0.2.

Next, you learnt about a very famous probability distribution — the **normal distribution**. You saw that it is **symmetric** and its **mean, median and mode** lie at the **centre**.

![Mean_Median_Mode](https://i.ibb.co/CWGWfzF/Mean-Median-Mode.png)

You also learnt the **1-2-3 rule**, which states that there is a -

1. **68%** probability of the variable lying **within 1 standard deviation** of the mean

2. **95%** probability of the variable lying **within 2 standard deviations** of the mean

3. **99.7%** probability of the variable lying **within 3 standard deviations** of the mean  

![1-2-3-rule-for-a-normal-distribution](https://i.ibb.co/XDtPCSW/1-2-3-rule-for-a-normal-distribution.png)

However, you saw that, to find the probability, you do not need to know the value of the mean or the standard deviation — it is enough to know **the number of standard deviations away from the mean** your random variable is. That is given by:

Z=(X−μσ)

This is called the **Z score**, or the **standard normal variable**.

Finally, you learnt how to find the cumulative probability for various values of Z, using the **Z table**. For example, you found the cumulative probability for Z = 0.68 by using the Z table.

![Z Table](https://i.ibb.co/Nmt2Rp0/Capture16.png)

The intersection of row “0.6” and column “0.08”, i.e. 0.7517, is your answer.

The normal distribution finds use in many statistical analyses. In our module, it finds use in the next session, central limit theorem, which is then useful for understanding the session on hypothesis testing.
