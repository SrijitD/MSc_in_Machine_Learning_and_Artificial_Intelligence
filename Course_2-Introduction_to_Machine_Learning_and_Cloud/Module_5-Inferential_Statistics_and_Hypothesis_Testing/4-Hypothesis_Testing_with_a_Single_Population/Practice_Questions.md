# Practice Questions

## **Comprehension 1**

You are working as a data analyst at an auditing firm. A manufacturer claims that the average life of its product is 36 months. An auditor selects a sample of 49 units of the product, and calculates the average life to be 34.5 months. The population standard deviation is 4 months. Test the manufacturer’s claim at 3% significance level using the p-value method.

First, **formulate the hypotheses** for this **two-tailed test**, which would be:

$H_0: \mu = 36\ months\ and\ H_1: \mu \ne 36\ months$

Now, you need to follow the three steps to **find the p-value and make a decision**.

The Z-table has been provided below.

[Z-Table](Z-Table.pdf)

Try out the three-step process by answering the following questions.

#### p-value Method

Qn: **Step 1:** Calculate the value of z-score for the sample mean point on the distribution. Calculate z-score for sample mean $\bar{x}$ = 34.5 months.

- 0.86

- -0.86

- 2.62

- -2.62

Ans:  D. *You can calculate the z-score for sample mean 34.5 months using the formula:* $\dfrac{(\bar{x}-\mu)}{(\sigma/\sqrt{n})}$. *This gives you* $\dfrac{(34.5 - 36)}{(4/\sqrt{49})} = (-1.5) * 7/4 = -2.62$. *Notice that, since the sample mean lies on the left side of the hypothesised mean of 36 months, the z-score comes out to be negative.*

Qn: **Step 2:** Calculate the p-value from the cumulative probability for the given z-score using the z-table.

Find out the p-value for the z-score of -2.62 (corresponding to the sample mean of 34.5 months). 

Hint: The sample mean is on the left side of the distribution and it is a two-tailed test.

- 0.0044

- 0.9956

- 0.0088

- 1.9912

Ans: C. _The value in the z-table corresponding to -2.6 on the vertical axis and 0.02 on the horizontal axis is 0.0044. Since the sample mean is on the left side of the distribution and this is a two-tailed test, the p-value would be 2 * 0.0044 = 0.0088._

Qn: **Step 3:** Make the decision on the basis of the p-value with respect to the given value of α (significance value).

What would be the result of this hypothesis test?

- Fail to reject the null hypothesis

- Reject the null hypothesis

Ans: B. *Here, the p-value comes out to be 2 * 0.0044 = 0.0088. Since the p-value is less than the significance level (0.0088 < 0.03), you reject the null hypothesis that the average lifespan of the manufacturer's product is 36 months.*

## **Comprehension 2**

Let’s revisit an example we looked at earlier.

Let’s say you work at a pharmaceutical company that manufactures an antipyretic drug in tablet form, with paracetamol as the active ingredient. An antipyretic drug reduces fever. The amount of paracetamol deemed safe by the drug regulatory authorities is 500 mg. If the value of paracetamol is too low, it will make the drug ineffective and become a quality issue for your company. On the other hand, a value that is too high would become a serious regulatory issue.

There are 10 identical manufacturing lines in the pharma plant, each of which produces approximately 10,000 tablets per hour.

Your task is to take a few samples, measure the amount of paracetamol in them, and test the hypothesis that the manufacturing process is running successfully, i.e., the paracetamol content is within regulation. You have the time and resources to take about 900 sample tablets and measure the paracetamol content in each.

Upon sampling 900 tablets, you get an average content of 510 mg with a standard deviation of 110. What does the test suggest if you set the significance level at 5%? Should you be happy with the manufacturing process, or should you ask the production team to alter the process? Is it a regulatory alarm or a quality issue?

**Solve the following questions** in order to find the answers to the questions stated above.

One thing you can notice here is that the standard deviation of the sample of 900 is given as 110 instead of the population standard deviation. In such a case, you can **assume the population standard deviation to be the same as the sample standard deviation, which is 110** **in this case**.

#### The p-Value Method

Calculate the Z-score for the sample mean ($\bar{x}$) = 510 mg.

- 36.67

- -36.67

- -2.73

- 2.73

Ans: D. *You can calculate the Z-score for the sample mean of 510 mg using the formula: $(\bar{x} - \mu)/(\sigma/\sqrt{n})$. This gives you $(510 - 500)/(110/\sqrt{900}) = (10)/(110/30) = 2.73$. Notice that since the sample mean lies on the right side of the hypothesised mean of 500 mg, the Z-score comes out to be positive.*

Qn: Find out the p-value for the Z-score of 2.73 (corresponding to the sample mean of 510 mg).

- 0.0032

- 0.0064

- 0.9968

- 1.9936

Ans: B. *The value in the Z-table corresponding to 2.7 on the vertical axis and 0.03 on the horizontal axis is 0.9968. Since the sample mean is on the right side of the distribution and this is a two-tailed test (because we want to test whether the value of the paracetamol is too low or too high), the p-value would be 2 * (1 - 0.9968) = 2 * 0.0032 = 0.0064.*

Qn: Based on this hypothesis test, what decision would you make about the manufacturing process?

- The manufacturing process is completely fine and need not be changed.

- The manufacturing process is not fine, and changes need to be made.

Ans: B. *Here, the p-value comes out to be 0.0064. Here, the p-value is less than the significance level (0.0064 < 0.05) and a smaller p-value gives you greater evidence against the null hypothesis. So, you reject the null hypothesis that the average amount of paracetamol in medicines is 500 mg. So, this is a regulatory alarm for the company, and the manufacturing process needs to change.*

## **Comprehension 3**

A nationwide survey claimed that the unemployment rate of a country is at least 8%. However, the government claimed that the survey was wrong and the unemployment rate is less than that. The government asked about 36 people, and the unemployment rate came out to be 7%. The population standard deviation is 3%.

**Note:** Since this is a test on the population proportion, if the standard deviation was not given, you would have to calculate the z-score using the following formula

$z=\dfrac{\bar{p}-p_0}{\sigma_{\bar{p}}}=\dfrac{\bar{p}-p_0}{\sqrt{\dfrac{p_0(1-p_0)}{n}}}$

where,

$\bar{p}$ = sample proportion

$p_0$ = hypothesized population proportion

n = sample size

#### Null and Alternative Hypotheses

Qn: What are the null and alternative hypotheses in this case?

- $H_0:\mu\ge8\%\ and\ H_1:\mu<8\%$

- $H_0:\mu\le8\%\ and\ H_1:\mu>8\%$

- $H_0:\mu>8\%\ and\ H_1:\mu\le8\%$

- None of the above

Ans: A

#### Z-Score of the Sample Mean

Qn: Based on the information above, conduct a hypothesis test at a 5% significance level using the p-value method. What is the Z-score of the sample mean point $\bar{x}$= 7%?

- -0.2

- 2.0

- -2.0

- 0.2

Ans: C. $\mu=8\%;\sigma=3\%;n=36;\bar{x}=7\%;S.E.=\frac{3}{\sqrt{36}}=0.5.\ Now, Z_{\bar{x}}=\frac{7−8}{0.5}=−2$

#### p-Value of the Z-Score

Qn: Calculate the p-value from the cumulative probability for the given Z-score using the Z-table. In other words, find out the p-value for the Z-score of -2.0 (corresponding to the sample mean of 7%).

- 0.9772

- 0.0228

- 0.5199

- 0.4801

Ans: B. *The p-value corresponding to a Z-score of -2.0 is 0.0228.*

#### Making a Decision

Qn: Make the decision on the basis of the p-value with respect to the given value of α (significance value).

- You reject the null hypothesis because the p-value is less than 0.05.

- You fail to reject the null hypothesis because the p-value is less than 0.05.

- You reject the null hypothesis because the p-value is more than 0.05.

- You fail to reject the null hypothesis because the p-value is more than 0.05.

Ans: A. *Since the p-value of the Z-score of the sample mean is less than the given p-value of 0.05, we reject the null hypothesis $H_0:\ \mu≥8\%$.*

## **Comprehension 4**

According to a study, the daily average time spent by a user on a social media website is atleast 50 minutes. To test the claim of this study, Ramesh, a researcher, takes a sample of 25 website users and finds out that the mean time spent by the sample users is 60 minutes, and the sample standard deviation is 30 minutes.

Question 1/2

Mandatory

#### Null and Alternate Hypothesis

Based on the information above, what will the null hypothesis and the alternate hypothesis be?  

- $H_0$ = The average time spent by the users ≥ 50 minutes; $H_A$= The average time spent by the users is < 50 minutes

- $H_0$ = The average time spent by the users ≤ 50 minutes ; $H_A$= The average time spent by the users > 50 minutes

- $H_0$ = The average time spent by the users > 50 minutes; $H_A$= The average time spent by the users ≤  50 minutes

- $H_0$ = The average time spent by the users > 50 minutes; $H_A$= The average time spent by the users <  50 minutes

Ans: A. *Recall that the null hypothesis is the status quo. Since in this case, the study claims that the average time is greater than 50 minutes, you need to keep this as your null hypothesis.*

#### P-value Calculation

Qn: You already framed the null and alternate hypothesis in the previous question. Can you now take a decision based on the hypothesis that you had framed assuming a 5% significance level?

Use this [p-value calculator](https://www.socscistatistics.com/pvalues/tdistribution.aspx) to directly calculate the p-value

- Fail to reject the null hypothesis

- Reject the null hypothesis

Ans: A. *Let's first evaluate the t-score.*  
$t=\dfrac{\bar{X}-\mu}{S/\sqrt{n}}=\dfrac{60-50}{30/\sqrt{25}} = 1.66$

*Since the sample mean is 60 which is greater than 50, it is a right-tailed hypothesis test. The degrees of freedom is equal to (n-1) = (25-1) = 24.*

*The p-value for this test comes out to be 0.054 which is greater than α which is 0.05, which means that based on this sample, you cannot reject the null hypothesis.*
