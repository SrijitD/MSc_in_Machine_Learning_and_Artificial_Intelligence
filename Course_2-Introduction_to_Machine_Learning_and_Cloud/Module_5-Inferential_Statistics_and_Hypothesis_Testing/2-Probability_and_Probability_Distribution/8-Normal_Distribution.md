# Normal Distribution

Now that you’ve gone through the concepts of probability distributions, cumulative probabilities, and continuous random variables, let’s move on to the most important type of continuous probability distribution, i.e., normal distribution.

**VIDEO**

Normal distribution is the most commonly occurring probability distribution in day-to-day life. Recall the examples that you saw earlier:

- Heights of a group of adult men
- IQs of a group of adult men and women
- Weights of Coca-Cola bottles

In the industry, normal distribution and central limit theorem (which you will study in the next session) have significant applications, especially in quality control. For instance, the third example that you saw was ‘Weights of Coca-Cola bottles’. The fact that the weights are normally distributed can help the company determine whether the weights are in an acceptable range, as they wouldn’t want a large number of bottles to be overweight. On the other hand, regulatory departments can use this fact to determine if Coca-Cola is, indeed, providing the promised weights to the customers. This is again just one of the many applications of normal distribution.

Let’s now learn about the properties of normal distribution and understand why the normal distribution looks the way it does.

**VIDEO**

Let's now look at some more quantifiable properties of the normal distribution.

**VIDEO**

Normal distribution, as you learnt right now, is an extremely symmetric distribution with its mean, median, and mode all lying exactly at the centre. Moreover, all data that is normally distributed follows the 1-2-3 rule. This rule states that there is a:

1. 68% probability of the variable lying within 1 standard deviation of the mean.
2. 95% probability of the variable lying within 2 standard deviations of the mean.
3. 99.7% probability of the variable lying within 3 standard deviations of the mean.

![1-2-3 rule for a normal distribution](https://i.ibb.co/XDtPCSW/1-2-3-rule-for-a-normal-distribution.png)

This is actually like saying that if you buy a loaf of bread everyday and measure it, then (assuming mean weight = 100 g, standard deviation = 1 g):

- For 5 days every week (5/7 ~ 68%), the weight of the loaf you buy that day will be within 99 g (100-1) and 101 g (100+1).
- For 20 days every 3 weeks (20/21 ~ 95%), the weight of the loaf you buy that day will be within 98 g (100-2) and 102 g (100+2).
- For 364 days every year (364/365 ~ 99.7%), the weight of the loaf you buy that day will be within 97 g (100-3) and 103 g (100+3).

A lot of naturally occurring variables are normally distributed. For example, the height of a group of adult men would be normally distributed. To try this out, we asked 50 male employees at the upGrad office for their height and then plotted the probability density function using that data.

![Height of 50 male upGrad employees - Normally distributed](https://i.ibb.co/BZxdyzx/Height-of-50-male-up-Grad-employees-Normally-distributed.png)

As you can see, the data is roughly normal.

You can visualise the normal distribution by using the interactive app given below. From the various options in the drop-down menu, select “Normal”. You will then get to see the probability distribution for a normal distribution with µ = 0 and σ = 1. In fact, you can play around with the value of µ and σ to see how that changes the distribution. Using the green slider below the distribution, you can visualise the distribution’s cumulative probability.

#### Normal Distribution

Qn: Let’s say that you have to find the cumulative probability for a random variable X, which is normally distributed. You do not know the value of X or, for that matter, the value of µ and σ. You only know that X = µ + σ. Can you find the cumulative probability, i.e., the probability of the variable being less than µ + σ?

- Yes

- No

Ans: A. *You can still find the cumulative probability. If the variable is normally distributed, then it doesn’t matter what the value of µ and σ is, there is a 34% probability that X lies between µ and µ + σ, i.e. P(µ < X < µ + σ = 34%). Similarly, there is a 50% probability that X is less than µ, i.e. P(X < µ = 50%). Again, this would happen regardless of what the value of µ and σ is. Hence, you can say that P(X < µ + σ) = 84% for every normal variable, no matter what the value of µ and σ is. Let's learn more about this in the next segment.*

Qn: In the interactive app above, what happens when you increase the value of σ for the normal distribution?

- The curve moves to the left.

- The curve moves to the right.

- The curve becomes narrower.

- The curve becomes wider.

Ans: D. *σ is the standard deviation of the curve, i.e., how much on average do the values deviate from the mean. So when you increase the value of σ, the curve becomes wider.*

Qn: Based on the given normal distributions, mark the correct statement. (More than one may be correct)

![](https://lh6.googleusercontent.com/n0pEF-GaRARjJ7q7rHZOEMpZTFLKA1IXNFo6ka8u_g9XtV5zScn6mf3dpkA79bgqTWFcGt4zq9wZH9nGCHig0M3Lvx01CBMyLhqp0gMbaSlP3Wc_MssPmGh-ayUXn3Z08RLdSzlp)

- μ1=μ2>μ3

- μ1=μ2<μ3

- σ1>σ3>σ2

- σ1<σ3<σ2

Ans: B & D.

- *μ is the centre of the distribution, or the point on the x-axis where the distribution has its peak. Based on this, the correct option to mark is (b).*

- *A higher value of σ means that the plot is more spread about its mean. Based on this, the correct option is (d).*

As you learnt, a normal distribution is the most commonly occurring distribution. Thus, it is very important to learn how to use the properties of the normal distribution to solve a few basic problems surrounding a normally distributed random variable as you will encounter these time and again.

**VIDEO**

You saw how you can easily find the probabilities in a normal distribution if you know the mean and standard deviation. Answer the following questions based on your learnings.

#### Commute Time - Normal Distribution

Qn: Let’s go back to the commute time example. Recall that you’d opened a new branch of your office in the outskirts of the city and you needed to provide some extra compensation to the employees having a higher commute time. Now, suppose that the commute time of the employees of the new office follows a normal distribution, with a mean of 40 minutes and a standard deviation of 10 minutes. What is the probability that the commute time of an employee will be between 20 and 60 minutes?

- 0.680

- 0.900

- 0.950

- 0.997

Ans: C. *You need to find out the value of P(20≤X≤60). Since the mean is 40 and the standard deviation is 10, this can be rewritten as -*

$P(μ−2σ≤X≤μ+2σ)$

*And from the 1-2-3 rule, you know that this value is equal to 0.95 for a normal distribution.*

Qn: In the same example, you’re willing to provide compensation to people having a commute time of more than 50 minutes, find out what percentage of employees will get the extra compensation. Recall that the mean was 40 minutes, and the standard deviation was 10 minutes.

- 32%

- 18.5%

- 16%

- 5%

Ans: C. *Basically, you need to find P(X≥50). And since the sum of all the probabilities is 1, you can rewrite it as -*

$1−P(X≤50)=1−P(X≤μ+σ)=1−(0.5+0.34)=0.16$

*Hence, 16% of the employees will get compensation for their longer commute hours.*

Qn: You are concerned that some people might request for a relocation due to the long commute times. But you are okay with providing relocation to employees whose commute time is more than 70 minutes to another office. If there are 2000 employees in this office, can you find out how many people you can expect to relocate so that you can budget your funds accordingly? Recall that the mean was 40 minutes, and the standard deviation was 10 minutes.

- 3

- 5

- 10

- 16

Ans: A. *You need to find out the probability that the commute time is greater than 70 minutes, i.e. P(X≥70). This can be rewritten and computed as -*

$1−P(X≤70)=1−P(X≤μ+3σ)=1−(0.5+0.9972)=0.0015$

*Hence, the probability turned out to be 0.0015, i.e., 0.15% of the total employees.*

*Now, since the total employees are 2000, the number of employees you can expect to relocate = $0.0015* 2000 = 3$*.

You just learnt that in the case of a normal distribution, you just need to know the deviation of a random variable from the mean and you can easily compute its cumulative probability. But right now you can only do so for only one, two, or three standard deviations away from the mean. What if you wanted to find out the cumulative probability for a normally distributed random variable that is, say, 1.5 standard deviations away from the mean? Is there some standard way to do that? Let's find out in the next segment.
