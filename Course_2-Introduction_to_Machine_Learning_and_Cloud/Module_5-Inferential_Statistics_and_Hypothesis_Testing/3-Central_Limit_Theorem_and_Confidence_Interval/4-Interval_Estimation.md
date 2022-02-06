# Interval Estimation

Earlier, we tried to estimate the mean lead content of 30,000 Maggi packets by taking a small sample of 100 packets and finding their mean lead content. This sample’s mean was $\bar{X}$ = 2.2 ppm and its standard deviation was S = 0.7 ppm.

Recall that we also said that the population mean, i.e., the mean lead content of all 30,000 packets would be $\bar{X}$ = 2.2 (sample mean) ± some margin of error.

If you remember, you did not learn exactly how to find this margin of error. However, you can find it by using CLT (central limit theorem). Now that you know CLT, let’s see exactly how you can do this.

**VIDEO**

So, using the central limit theorem and the 1-2-3 rule of the normal distribution, you were easily able to state that:

$P(2.2−0.14<\mu<2.2+0.14)=95.4\%$

This is because you already know $P(μ−0.14<2.2<\mu+0.14)=95.4\%$ from the 1-2-3 rule of probability. Now, if you do a neat little trick and rearrange the terms in this expression, you can rewrite it as $P(2.2−0.14<\mu<2.2+0.14)=95.4\%$ which gives you the probability of the population mean (which was unknown), lying between (2.2 - 0.14) and (2.2 + 0.14).

This means that approximately 95% of the time you can say that the population mean $(\mu)$ will lie between 2.06 and 2.34.

Another thing to note here was how you estimated the sampling distribution's standard deviation. Although it is given by $\sigma/\sqrt{n}$, it can be closely estimated by $S/\sqrt{n}$ when the standard deviation of the population, i.e., σ is unknown.

Let’s learn a few more terminologies related to this.

**VIDEO**

#### Mean Estimation Using CLT

Qn: For the given data, $\bar{X}$ = 36.6, $S$ = 10 and $n$ = 100. What is the confidence level associated with the claim that the average commute time of the employees is between (36.6 - 1.65) and (36.6 + 1.65)?

(You can use the Z table [here](http://www.stat.ufl.edu/~athienit/Tables/Ztable.pdf).)

- 80%

- 84%

- 90%

- 95%

Ans: C. $P(36.6 - 1.65 < μ < 36.6 + 1.65)$ *is, as you saw earlier, the same as* $P(μ - 1.65 < 36.6 < μ + 1.65)$. *So basically, you have to find the probability of getting a value 1.65 standard deviations away from the mean. This would be equal to* $P(Z < 1.65) - P(Z < -1.65) = 0.95 - 0.05 = 0.90$

Let’s quickly jot down the three terminologies you just learnt.

1. The probability associated with the claim is called the **Confidence Level**.
2. The maximum error made in the sample mean is called the **Margin of Error**.
3. The final interval of values is called the **Confidence Interval**.

Let's quickly look at the steps required in general in order to estimate mean using CLT.

**VIDEO**

So, to summarise, let’s say that you have a sample with sample size n, mean $\bar{X}$ and standard deviation $S$. Now, the y% confidence interval (i.e., the confidence interval corresponding to y% confidence level) for μ would be given by the range:

$Confidence\ interval=(\bar{X}−\frac{Z^∗S}{\sqrt{n}},\ \bar{X}+\frac{Z^∗S}{\sqrt{n}})$

where, $Z^*$ is the Z-score associated with a y% confidence level. In other words, the population mean and the sample mean differs by a margin of error given by $\frac{Z^∗S}{\sqrt{n}}$.

Some commonly used $Z^*$ values are given below

![Z* Values for Commonly Used Confidence Levels](https://i.ibb.co/Dbys6bM/Z-Values-for-Commonly-Used-Confidence-Levels.png)

You must be wondering, if this the case, then why did you study sampling distributions? To understand the reason for this, let's go through the actual process of sampling. Recall that you are doing sampling because you want to find the population mean, albeit in the form of an interval. The three steps to follow are as follows:

1. First, take a sample of size n.
2. Then, find the mean $\bar{X}$ and standard deviation $S$ of this sample.
3. Now, you can say that for y% confidence level, the confidence interval for the population mean mu is given by $(\bar{X}−\frac{Z^∗S}{\sqrt{n}},\ \bar{X}+\frac{Z^∗S}{\sqrt{n}})$.  

However, as you may have seen in the video above, you cannot finish step 3 without CLT. CLT lets you assume that the sample mean would be normally distributed, with mean μ and standard deviation $\frac{\sigma}{\sqrt{n}} (\approx \frac{S}{\sqrt{n}})$. Using this assumption, it becomes possible to find many things such as margin of error, confidence interval, etc.

Hence, you learnt sampling distributions so that you could learn more about CLT and hence be able to make all the assumptions as stated above.

#### $Z^*$ and $Z$-Score

Qn: What is the difference between $Z^*$ and $Z$-score?

Ans: _Z-score is the value associated with a particular **cumulative probability** whereas $Z^*$ is the Z-score associated with a particular **confidence level**. If someone asks, what is the Z-score associated with 0.95 or 95%  probability, you just have to look up the table and find the corresponding value associated with it. In this case, it would come up as  1.65(or 1.645 to be more exact). However if someone asks you what is the $Z^*$ for 95% confidence level, then first you need to find the corresponding cumulative probability associated with that confidence level.  This can be easily calculated with the following formula: if y is the confidence level in percentage then the probability is given as y/100 +(1-y/100)/2. Thus for y=95, we have the probability as 95/100+(1-95/100)/2= 0.975. And the Z-score associated with 0.975 probability is 1.96. You can verify the rest of the values given above with this formula._

You can use the following python codes to generate a confidence interval directly.

```python
import pandas as pd
import math
import statistics

sample = ___________
μ = statistics.mean(sample) # sample mean
s = statistics.stdev(sample) # sample standard deviation
n = len(sample) # sample size

from scipy.stats import norm # Finding the interval using the norm function
confidence_interval = norm.interval(0.99, loc = μ, scale = s/math.sqrt(n))
```
