# Testing means with known population variance

Similar to the previous problem, you will learn to perform tests on the population mean. Since you are testing the population mean, this problem is a **testing means problem**. Now, suppose prior to sampling, you were able to obtain a good estimate of the population variance or standard deviation. In such a case, the population standard deviation (σ) can be considered as **known**. Hence, the type of problem becomes ‘**Testing means with known variance**’. Let us understand the test statistic in this test from Ankit.

**VIDEO**

#### Upper-tailed test

Qn: The upper-tailed test is also known as the right-tailed tailed test which you have seen in the previous segment. So for an upper tailed test, which of the following regions marks the p-value?

- ![One-Tailed_Test_Left](https://i.ibb.co/7rm1kGD/One-Tailed-Test-Left.png)

- ![One-Tailed_Test_Right](https://i.ibb.co/VC9VqFz/One-Tailed-Test-Right.png)

- ![Two_Tailed_Test](https://i.ibb.co/QQHSRwV/Two-Tailed-Test.png)

Ans: B. *For an upper tailed or a right-tailed test, the p-value is marked on the right tail of the distribution. You will see examples of other tests as you progress along with this module.*

In this video, you learned how to test a given Hypothesis based on a sample mean when the variance is known to us. In order to test this hypothesis, we will follow the steps as shown in the previous segment.

You begin any problem by **stating the null and alternative hypothesis**. Now, depending on the hypothesis, you must choose whether it is a lower-tail (left-tail), an upper-tail (right-tail), or a two-tailed test.

![Hypothesis_Tests](https://i.ibb.co/0K5BJ5r/Hypothesis-Tests.png)

**Step 1:**

Identify the test statistic. The test statistic is the z-score that you have learned in the previous segment. Calculate the Z-score using the formula: $\dfrac{\bar{X}-\mu}{\sigma/\sqrt{n}}$, where $\bar{X}$ is the sample mean, $\mu$ is the population mean, $\sigma$ is the population standard deviation and n is the sample size.

**Step 2:**  
From the Z-score, calculate the Z-value using the Z-table.

**Step 3:**

Calculate the p-value from the problem.

Depending on whether the problem is a lower-tail (left-tail), an upper-tail (right-tail), or a two-tailed test, you need to calculate the p-value based on the z-score. In the upcoming example, we will demonstrate the calculation of the p-value for each case.

The formulation of the null and alternate hypotheses determines the type of the test and the position of the p-value in the normal distribution.

You can tell the type of the test and the position of the p-value on the basis of the ‘**sign’ in the alternate hypothesis.**

| Hypotheesis   |     | Name                                |     | P-Value                                   |
| ------------- | --- |:-----------------------------------:| --- |:-----------------------------------------:|
| $\ne in\ H_1$ | →   | Two-tailed Test                     | →   | P-value on both sides of the distribution |
| $< in\ H_1$   | →   | Lower-tailed (or Left-tailed) Test  | →   | P-value on left side of the distribution  |
| $> in\ H_1$   | →   | Upper-tailed (or Right-tailed) Test | →   | P-value on right side of the distribution |

#### p-value Method

Qn: Match the following

| 1   | **Left-tailed test**  | a   | ![P_Value_Question_1](https://i.ibb.co/641g0rC/P-Value-Question-1.png) |
| --- | --------------------- | --- | ---------------------------------------------------------------------- |
| 2   | **Right-tailed test** | b   | ![P_Value_Question_2](https://i.ibb.co/zS9g3W6/P-Value-Question-2.png) |
| 3   | **Two-tailed test**   | c   | ![P_Value_Question_3](https://i.ibb.co/6rgYqn6/P-Value-Question-3.png) |

- 1-a, 2-b, 3-c

- 1-b, 2-a, 3-c

- 1-c, 2-b, 3-b

- 1-c, 2-b, 3-a

Ans: B. *The below image shows you the p-value which needs to be calculated depending on the null and alternative hypothesis.*

![Tailed_Hypothesis_Testing](https://i.ibb.co/7NSZ07z/Tailed-Hypothesis-Testing.png)

*Note that*

1. _The right-tailed test is also known as **Upper-tailed test** ._

2. _The left-tailed test is also known as **Lower tailed test** ._

#### Null and Alternate Hypotheses

Qn: The average commute time for an UpGrad employee to and from office is at least 35 minutes. If this hypothesis has to be tested, select the type of the test and the location of the p-value.

- Lower-tailed test, with the p-value on the right side

- Upper-tailed test, with the p-value on the right side

- Lower-tailed test, with the p-value on the left side

- Upper-tailed test, with the p-value on the left side

Ans: C. *For this situation, the hypotheses would be formulated as $H_0: \mu \ge 35\ minutes$ and $H_1: \mu < 35\ minutes$. As < sign is used in the alternate hypothesis, it would be a lower-tailed test and the p-value would be on the left side of the distribution.*

Qn: A courier claims that the average delivery time of goods is 3 days. Choose the correct formulation of hypothesis along with the correct test.

- $H_0:\mu\ne3;\ H_a:\mu=3;\ Test:\ Two−tailed\ test$

- $H_0:\mu=3;\ H_a:\mu\ne3;\ Test:\ Lower−tailed\ test$

- $H_0:\mu=3;\ H_a:\mu\ne3;\ Test:\ Upper−tailed\ test$

- $H_0:\mu=3;\ H_a:\mu\ne3;\ Test:\ Two−tailed\ test$

Ans: D. *$H_0$ always has an equal sign. And since H$H_a$a has an unequal sign, hence this test is a two-tailed test*

You are already familiar with the right-tailed hypothesis test. In this example, we solve a problem having a two-tailed hypothesis test.

**VIDEO**

#### Two-Tailed Test

Qn: For a two-tailed test, which of the following regions correctly shows the position of the p-value?

- ![One-Tailed-Test-Left](https://i.ibb.co/7rm1kGD/One-Tailed-Test-Left.png)

- ![One-Tailed-Test-Right](https://i.ibb.co/VC9VqFz/One-Tailed-Test-Right.png)

- ![Two-Tailed-Test](https://i.ibb.co/QQHSRwV/Two-Tailed-Test.png)

Ans: C. *For a two-tailed test, the p-value is calculated on both the tails of the distribution*

[**Note** - The values taken for computing the p-value in the video above are approximated incorrectly. The correct p-value would be 0.16]

So a two-tailed hypothesis test is also almost similar to a right-tailed hypothesis test. The only difference, in this case, is that instead of restricting the sample mean to only one side of the population mean, you want to restrict it on both the ends as you want to evaluate if the sample mean is neither too high nor too low.

In the example that Amit mentioned in the video, the sample mean came out to be 4.6. Hence, to perform the two-tailed test in this case, you need to:

1. Evaluate a Z-score which, in this case, came out to be $\frac{4.6-4}{3/\sqrt{50}}$.

2. Calculate the p-value using the Z-score you calculated above from the Z-table. In this case, it came out to be 0.08.

3. Since this is a two-tailed test, you need to multiply this Z-value by 2 as you want to check if your number of calls are neither getting too high or too low. Multiplying it by 2 yields 0.16. Since this p-value is greater than 0.05, you don't have enough evidence to reject the null hypothesis. Hence, the process at your call centre will remain unchanged. Refer to the image below:

   ![Overall_P_Value_for_Corresponding_Value_of_Z](https://i.ibb.co/st7Wz1N/Overall-P-Value-for-Corresponding-Value-of-Z.png)

   The area in red gives the overall p-value for a corresponding value of Z.

**Note:** Amit mentioned in the video that the p-value if 0.07 and hence, you cannot reject the null hypothesis. Although it was required to multiply this p-value by 2, he didn't do so as the p-value for one side itself if greater than 0.05, so you can safely go ahead and reject it. But **always make sure that you first multiply the p-value by 2 in case of a two-tailed test** before arriving at a conclusion because if the p-value on one side had been, say, 0.03, you could have rejected it in a one-tailed test. But in the case of a two-tailed test, you need to multiply it by 2 yielding 0.06 which is greater than 0.05. Hence, in this case, you cannot reject the null hypothesis.

## Comprehension

The average growth of a certain variety of bamboo trees is less than or equal to 10.1 inches with a standard deviation of 2.1 inches in three years. A biologist claims that due to climate change, the average growth of bamboo is more than 10.1 inches over a period of three years. To prove this point, the biologist planted 35 bamboo trees and recorded that they had an average three-year growth of 10.8 inches.

Use this information to solve the following questions:  

#### Types of Hypothesis

Qn: Select the appropriate null and alternative hypotheses to test the biologist’s claim:

- $H_0: \mu \le 10.1\ against\ H_a: \mu > 10.1$

- $H_0: \mu = 10.1\ against\ H_a: \mu \ne 10.1$

- $H_0: \mu < 10.1\ against\ H_a: \mu > 10.1$

- $H_0: \mu = 10.1\ against\ H_a: \mu < 10.1$

Ans: A. *The null hypothesis is a premise that has been existing traditionally, so here, traditionally, the average growth of the bamboo trees is less than or equal to 10.1 inches. Thus, the null hypothesis is $H_0: \mu \le 10.1$, and the alternative hypothesis is that the growth was caused by a trigger factor. Thus, based on the biologist’s claim, the alternative hypothesis is $H_1: \mu > 10.1$.*

#### Z-Statistic

Qn: What is the Z-statistic in this case?

- 1.97

- 2.77

- 0.34

- 1.68

Ans: A. The formula for Z-statistic is $Z=\frac{(\bar{x}-\mu)}{\sigma/\sqrt{n}}$.

*So here,*

$Z=\dfrac{(\bar{x}-\mu)}{\sigma/\sqrt{n}}=\dfrac{(10.8-10.1)}{2.1/\sqrt{35}}=1.97$

#### Hypothesis Testing

Qn: Test the hypothesis above at a 5% significance level and state the final result.

- Fail to reject the null hypothesis

- Reject the null hypothesis.

ANs: B. *At a 5% significance level, $\alpha$ is equal to .05. Since this is a right-tailed test, the p-value appears to be 0 .024. Since this p-value is  less than $\alpha (0.05)$, we reject the null hypothesis.*

In the next segment, you will learn how to solve a similar problem when the population standard deviation is unknown.
