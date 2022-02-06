# Comparing Means with Unknown Variance

In this segment, we will continue our discussion on comparing means; however, this time, we will assume that the variances of the two populations are unknown. You would have realised by now that since the population is usually very large and hence, knowing the population variance is not possible.

Note that this test is also known as the **independent sample test**.

Recall that in the case of one sample test, we had replaced the Z-distribution with the T-distribution. We will follow the same procedure over here.

**VIDEO**

The possible hypothesis will remain the same as before:

![Possible-Null-Alternate-Hypothesis-Two-Populations](hhttps://i.ibb.co/tH8DWmk/Possible-Null-Alternate-Hypothesis-Two-Populations.png)

Let’s go through all the points discussed in this video:

- The standard deviations for both populations are estimated by the **sample standard deviations** for the two populations. Let us consider these standard deviations as s1 and s2
- The test statistic for this test is given by:  
    $t = \dfrac{(\bar{x_1}-\bar{x_2})-(\mu_1-\mu_2)}{\sqrt{\dfrac{s^2_1}{n_1}+\dfrac{s^2_1}{n_2}}}$
- The degrees of freedom for this test are given by the following formula:  
    **Note**: Degrees of freedom are computed with the help of statistical softwares; hence, do not try to remember the following formula.  

    $df = \dfrac{(\dfrac{s_1^2}{n_1} + \dfrac{s_2^2}{n_2})^2}{\dfrac{1}{n_1-1}(\dfrac{s_1^2}{n_1})^2 + \dfrac{1}{n_2-1}(\dfrac{s_2^2}{n_2})^2}$

Using what you learnt until now, can you solve the following questions?

## Comprehension

The following results are from independent samples taken from two populations.

**Sample 1:**

$\bar{x_1}=39.3,\ s_1=16.8,\ n_1=150$

**Sample 2:**

$\bar{x_2}=35.4,\ s_2=15.2,\ n_2=175$

Using these samples, test the following hypothesis

$H_0:\mu_1−\mu_2=0$

$H_a:\mu_1−\mu_2\ne0$

#### Comparing means with unknown variances

Qn: What is the value of the standard deviation of the sampling distribution?

- 1.24

- 1.79

- 3.42

- 2.79

Ans: B. The formula for sample standard deviation is given by

$S_{x_1-x_2}=\sqrt{\dfrac{s^2_1}{n_1}+\dfrac{s^2_1}{n_2}}=\sqrt{\dfrac{16.8^2}{150}+\dfrac{15.2^2}{175}}=1.79$

#### Test statistic

Qn: What is the value of the test statistic?

- 1.79

- 1.28

- 2.79

- 2.18

Ans: D. *The test statistic is equal to*

$t=\dfrac{(\bar{x_1}-\bar{x_2})-0}{S_{x_1-x_2}}=\dfrac{(39.3-35.4)-0}{1.79}=2.18$

#### P-value

Qn: The degrees of freedom have been calculated beforehand given by  
**degrees of freedom=303.498**. Using the test statistic, what is the p-value and what conclusion will you draw for the given hypothesis test? Use this [p-value calculator](https://www.socscistatistics.com/pvalues/tdistribution.aspx) to get the answer directly.

- P-value = 0.030026, Hence reject H0

- P-value = 0.030026, Hence cannot reject H0

- P-value = 0.040026, Hence cannot reject H0

- P-value = 0.040026, Hence reject H0

Ans: A. *Using the calculator, the p-value comes out to be 0.030026. Since this value is less than the significance level of 0.05, we reject the null hypothesis.*

To demonstrate this test, we have performed a simple python example of this test. Suppose you are provided with the data of the two samples. In that case, you can directly use the  **[ttest_ind](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.ttest_ind.html)** built-in function of the scipy.stats library. Let's take a look at the example covered in the next video.

**VIDEO**

The code has been shown below.

```python
from scipy import stats

sample1 = [10.2, 9.7, 10.1, 10.3, 10.1, 9.8, 9.9, 10.4, 10.3, 9.8]
sample2 = [10.1, 9.2, 10.3, 11, 10.2, 9.1, 9.2, 10.3, 10.7, 9.3]

t_statistic, p_value = stats.ttest_ind(sample1, sample2)
```

In the next segment, you will learn about a new kind of test known as the matched sample test.
