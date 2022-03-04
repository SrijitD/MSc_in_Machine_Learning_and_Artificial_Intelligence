# Graded Questions

## Comprehension

In order to investigate the relationship between mean job tenure in years among workers who have a bachelor’s degree or higher and those who do not, random samples of each type of worker were taken, with the following results.

|                             | $n$ | $\bar{x}$ | $\sigma$ |
| --------------------------- | --- | --------- | -------- |
| Bachelor's degree or higher | 155 | 5.2       | 1.3      |
| No degree                   | 210 | 5         | 1.5      |

where,

$n$ = sample size  
$\bar{x}$ = sample mean

$\sigma$ = population standard deviation

#### Hypothesis Testing

Qn: Which distribution will be used to compute the test statistic? What is the value of the test statistic?

- T distribution,
  
  $\dfrac{(5.2-5.0)-(0)}{\sqrt{\dfrac{1.3^2}{155}+\dfrac{1.5^2}{210}}}$

- T-distribution
  
  $\dfrac{(5.2-5.0)-(0)}{\sqrt{\dfrac{1.3^2}{155}-\dfrac{1.5^2}{210}}}$

- Standard normal distribution,
  
  $\dfrac{(5.2-5.0)-(0)}{\sqrt{\dfrac{1.3^2}{155}+\dfrac{1.5^2}{210}}}$

- Standard normal distribution,
  
  $\dfrac{(5.2+5.0)-(0)}{\sqrt{\dfrac{1.3^2}{155}+\dfrac{1.5^2}{210}}}$

Ans: D. *This is a test for comparing means when the population standard deviation is known. Hence we will use the Z-distribution and the  z-score is calculated as*

$z = \dfrac{(\bar{x_1}-\bar{x_2})-(\mu_1-\mu_2)}{\sqrt{\dfrac{\sigma^2_1}{n_1}+\dfrac{\sigma^2_1}{n_2}}}$

## Comprehension

A market research firm used a sample of individuals to rate the purchase potential of a  
particular product before and after the individuals saw a new television commercial about  
the product. The purchase potential ratings were based on a 0 to 10 scale, with higher values  
indicating a higher purchase potential.

Use α = 0.05 and the following data to test the following hypothesis

$μ_d=\mu_{After}−\mu_{Before}$

![Television-Ad-Purchase-Table](https://i.ibb.co/C050q1H/Television-Ad-Purchase-Table.png)

The hypothesis for this test is as follows:

$H_0:\mu_d≤0$

$H_a:\mu_d>0$

#### Type of test

Qn: What kind of test is this?

- Independent sample test with known population variance

- Matched Sample test

- Proportions test

- Independent sample test with unknown population variance

Ans:B. *Since each rating in both samples is given by the same individual, this is a matched sample test.*

#### Test statistic

Qn: Compute the value of the test statistic using the given information.

- 2.25

- 2.54

- 1.35

- 1.717

Ans: B. *Since this is a matched sample test, the first step is to calculate the difference column as shown below.*

![Purchase_Ratings_Difference](https://i.ibb.co/85Y2fGQ/Purchase-Ratings-Difference.png)

From here, you can compute ¯d and sd as follows:

$\bar{d}=\dfrac{\sum{d_i}}{n}=\dfrac{14}{7}=2$

$s_d=\sqrt{\dfrac{\sum{(d_i-\bar{d})^2}}{n-1}}=\sqrt{\dfrac{26}{7-1}}=2.082$

Hence, $t=\dfrac{\bar{d}-0}{s_d/\sqrt{n}}=\dfrac{2-0}{2.082/\sqrt{7}}\approx2.54$

#### P-value

Qn: Use the [p-value calculator](https://www.socscistatistics.com/pvalues/tdistribution.aspx) to compute the p-value for this test.

- 0.022

- 0.062

- 0.131

- 0.118

Ans: A. *Use the t statistics from the previous question to get the p-value. The degrees of freedom for this test will be $7-1=6$. Using this, the final p-value for a one-tailed test comes out to be 0.022*

#### Types of errors

Qn: Consider the null hypothesis that a process produces no more than the maximum permissible rate of defective items. In this situation, a type-II error would be:

- To conclude that the process does not produce more than the maximum permissible rate of defective items, when it actually does not

- To conclude that the process produces more than the maximum permissible rate of defective items, when it actually does

- To conclude that the process produces more than the maximum permissible rate of defective items, when it actually does not

- To conclude that the process does not produce more than the maximum permissible rate of defective items, when it actually does

Ans: D. *Type-II error means not rejecting the incorrect null hypothesis. So, a type-II error would signify that the null hypothesis is actually incorrect, i.e. the process actually produces more than the maximum permissible rate of defective items, but you fail to reject it, i.e. you think it does not produce more than the maximum permissible rate of defective items.*

Qn: A test to screen for a serious but curable disease is similar to hypothesis testing. In this instance, the null hypothesis would be that the person does not have the disease, and the alternate hypothesis would be that the person has the disease. If the null hypothesis is rejected, it means that the disease is detected and treatment will be provided to the particular patient. Otherwise, it will not. Assuming the treatment does not have serious side effects, in this scenario, it is better to increase the probability of:

- Making a type-I error, i.e. not providing treatment when it is needed

- Making a type-I error, i.e. providing treatment when it is not needed

- Making a type-II error, i.e. not providing treatment when it is needed

- Making a type-II error, i.e. providing treatment when it is not needed

Ans: B. *Here, type-I error would be providing treatment upon detecting the disease, when the person does not actually have the disease. And type-II error would be not providing treatment upon failing to detect the disease, when the person actually has the disease. Since the treatment has no serious side effects, type-I error poses a lower health risk than type-II error, as not providing treatment to a person who actually has the disease would increase his/her health risk.*
