# Testing means with unknown population variance

So far you performed hypothesis testing using a Z-test, i.e., the normal distribution. But many a time it happens that either your population variance isnot known or your sample size is small (<30). In such cases, you need to evaluatea hypothesis test using a T-distribution instead of a Z-distribution.Let's hear more on this from Amit.

**VIDEO**

#### Degrees of freedom

Qn: For the T values and degrees of freedom in the options below, which of the following distributions can be replaced by a Z distribution?

- t = 1.13, df = 13

- t = 1.13, df = 41

- t = -1.13, df = 21

- t = -1.13, df = 5

Ans: B. *Since the degrees of freedom is greater than 30, this T distribution can be approximated with a Z-distribution.*

So a T-distribution is not very different from a Z-distribution. It's just that the T-curve is shorter and flatter than the Z-curve.

![T-Distribution](https://i.ibb.co/YhZMSLW/T-Distribution.png)

You also learnt about a new term called **degrees of freedom** associated with the T-distribution. Degress of freedom is nothing but the sample size minus 1. For example, **if your sample size is n, the degress of freedom will be n-1**. You also saw that as you keep increasing the sample size, the T-distribution becomes narrower and steeper. In fact, for a large sample size (>30), it can be closely approximated to a normal distribution.

![T-Distribution for Different Sample Sizes](https://i.ibb.co/q7Mnnt5/T-Distribution-Different-Sample-Sizes.png)

T-Distribution for Different Sample Sizes

Finally, you learnt when you should use a Z-test andwhen you should use a T-test. Basically, if your sample size is small (<30) and the population standard deviation is not known, you employ a T-test. In all other cases, you can simply go ahead and use a Z-test. You can use the following flowchart to decide whether you should employ a T-test or a Z-test.

![Z-Test vs T-Test](https://i.ibb.co/s1Bp7J7/Z-Test-vs-T-Test.png)

Z-Test vs T-Test

You can download the t-table from below:

[T-Table](T-Table.pdf)

#### Type of Tests

0
Qn: If the sample size is 10 and the standard deviation of the population is known, which distribution should be used to calculate the critical values and make the decision during hypothesis testing?

- Standard normal distribution (Z distribution)
- T-distribution
Ans: A. *Whenever the standard deviation of the population is known, you have to use Z-distribution, irrespective of the value of the sample size (N).*

#### T-Test

Qn: You are given the standard deviation of a sample of size 25 for a **two-tailed** hypothesis test of a significance level of 5%. **Use the T-table**given above to find the value of the T-statistic.

- 1.708

- 1.711

- 2.027

- 2.064

Ans: D. *For sample size = 25, your degrees of freedom would become 25 - 1 = 24. So, if you look for the value in the t-table corresponding to d.f. = 24 and $\alpha$ = 0.05 for a two-tailed test, you would get the t-value as 2.064.*

Now that you've learnt the process of performing a hypothesis test using the T-distribution, let's now go through a brief example and understand the process and the nuances involved better in the next video.

**VIDEO**

As you saw, the process of performing a hypothesis test using a T-test is not very different from what you did in a T-test. The steps involved here are -

1. Calculate the T-statistic using the same formula asZ-statistic, i.e.,$\dfrac{\bar{X}-\mu}{S/\sqrt{n}}$
2. From the T-score calculated, calculate the probability of obtaining that value using the T-table. Now, the T-table is not as exhaustive as the Z-table so you might not get the exact p-value but you can easily estimate if the p-value will be greater than or lesser than your significance level.
3. Make a decision on the basis of the p-valuewith respect to the given value of α(significance value).

The p-value calculator for a T-test that was used in the video can be accessed [here](http://courses.atlas.illinois.edu/spring2016/STAT/STAT200/pt.html).

## Comprehension

We want to test if the average weight of a food container is more or less than 10 kg. In order to test this, a random sample of 10 containers is chosen and their weights are measured. They are as follows:

$$\{10.2,\ 9.7,\ 10.1,\ 10.3,\ 10.1,\ 9.8,\ 9.9,\ 10.4,\ 10.3,\ 9.8\}$$

Use a 0.05level of significance and assume that the distribution of the contents is normal. The null and alternative hypotheses have been given below.

$H_0:\mu=10$

$H_a:\mu\ne10$

#### Null Hypothesis

Qn: What is the sample standard deviation?

- 0.123

- 0.345

- 0.246

Ans: C.
$s^2= \dfrac{\sum{(x_i-\bar{x})^2}}{n-1}$

*Hence,s = 0.246*

#### T-value

Qn: Now that you know what your null hypothesis is, you want to go ahead and evaluate it. From the data givenabove, can you first compute the approximateT-value and the degrees of freedom?

- 1.02, df = 9

- 0.77, df = 9

- 0.23, df = 10

- 1.42, df = 10

Ans: B. *You first need to calculate the mean and sample standard deviation for this sample.*

$\displaystyle{\bar{x}=\frac{\sum{x_i}}{n}} = 10.06$

$\displaystyle{s^2=\frac{\sum{(x_i-\bar{x}^2)}}{n-1}} = 0.0605$

Hence,$s=0.246$

Now, you can easily calculate the T-value as:

T-value =$\dfrac{\bar{X}-\mu}{S/\sqrt{n}} = \dfrac{10.06-10}{0.246/\sqrt{10}} \approx 0.77$

The degrees of freedom $= n-1=10-1=9$

#### Taking a Decision

Qn: Use this [p-value calculator](https://www.socscistatistics.com/pvalues/tdistribution.aspx) to directly compute the p-value for this test statistic and conclude the hypothesis test.

- Fail to reject the null hypothesis

- Reject the null hypothesis

- Not enough information

Ans: A. *The T-value that you calculated in the last question came out to be 0.77. Also, the sample size here is 10. Hence, the degrees of freedom would be (10 - 1) = 9.*

*If you use the t-value calculator, you will find out that the p-value comes out to be 0.461. Since this p-value is much greater than αwhich is 0.05, you **cannot** reject the null hypothesis.*

In the next segment, you will learn to perform hypothesis test on population proportions.
