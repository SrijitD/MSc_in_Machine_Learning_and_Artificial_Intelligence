# Comparing a Single Proportion

In the previous session, you learned how to solve hypothesis tests wherein you tested the sample proportions against a hypothesized proportion. In this segment, you will learn how to compare two independent single proportions of two populations.

Some examples where you will be using this test are as follows:

- Comparing the proportion of Indian boys and Indian girls in a foreign state
- Comparing the proportion of candidates who responded after watching  Commercial A vs proportion of a separate group of candidates who responded after watching Commercial B

We have selected sample 1 from population 1 and sample 2 from population 2. The two samples were taken separately and independently. Our aim is to compare the proportion of successes in these two samples.  

Let consider the following notations:  
$p_1$ = Proportion of successes in population 1  
$p_2$ = Proportion of successes in population 2

$\bar{p_1}$ = Proportion of successes in sample 1 (selected from population 1)  
$\bar{p_2}$= Proportion of successes in sample 2 (selected from population 2)

With this in mind, let us see how we can solve problems involving two sample proportions.

**VIDEO**

Let’s now revise what you learnt in this video:

- The possible hypotheses for this test are as follows:

    ![Proportions_Possible_Hypotheses](https://i.ibb.co/3pyVFvZ/Proportions-Possible-Hypotheses.png)

- The test statistic is given by the following:  
    $z=\dfrac{\bar{p_1}-\bar{p_2}}{s_{\bar{p_1}-\bar{p_2}}}$

    where,  

 $s_{\bar{p_1}-\bar{p_2}}=\sqrt{\bar{p}(1-\bar{p})(\frac{1}{n_1}+\frac{1}{n_2})}$  
    and  
    $\bar{p}=\dfrac{n_1\bar{p_1}+n_2\bar{p_2}}{n_1+n_2}$
 
    The formulae may seem complex and hence, you are not expected to remember these.

Let us consider the following example to demonstrate this hypothesis test. The proportion of men and women who have selected watching television as their leisure time activity is given in the table provided below.  

![Proportion_Men_Women_TV_Table](https://i.ibb.co/ZL745GQ/Proportion-Men-Women-TV-Table.png)

Use α as 0.05 and test the hypothesis that there is no difference in the proportions between men and women.

**VIDEO**

Let's revisit the steps performed in this video.

- Our objective of this problem is to find if there is any significant difference between the proportions of the two populations. Based on this, Ankit has formulated the null and alternative hypothesis as follows:  
    $H_0:\ p_1−p_2=0$
    $H_a:p_1−p_2\ne0$
- On calculating the z statistic, we found our z-score to be  

 $z=\dfrac{\bar{p_1}-\bar{p_2}}{s_{\bar{p_1}-\bar{p_2}}}=\dfrac{(0.42-0.3)-0}{0.0516}=2.33$
- For the calculated value of 2.33, the p-value corresponds to 0.0198 for a two-tailed test. Since this p-value is less than our significance level, we reject our null hypothesis and conclude that there is a significant difference in the proportion of mean and woman populations who have marked television as their most leisure time.

This concludes our different scenarios regarding hypothesis tests. You can find a detailed diagram of all the one sample and two sample test given below.

![One_Sample_vs_Two_Sample_Tests](https://i.ibb.co/P9y85W4/One-Sample-vs-Two-Sample-Tests.png)

## Comprehension

A test is conducted to identify if the proportion of older candidates who respond to a certain commercial is less than the proportions of younger candidates. The following sample data has been provided to you to show the proportion of individuals in each age group who have responded to this commercial.

![Proportion_Candidates_Age_Table](https://i.ibb.co/93CXLBb/Proportion-Candidates-Age-Table.png)

The null and alternative hypotheses are as follows:  
$H_0:p_1 \ge p_2$  
$H_a:p_1<p_2$

Consider the significant level as 0.05

#### Pooled estimate of p

Qn: You have learned that in order to calculate the standard deviation for this sampling distribution, you need to calculate the pooled estimate also known as $\bar{p}$. Using the sample proportions, calculate $\bar{p}$

- 0.2192

- 0.1127

- 0.3212

- 0.0123

Ans: B. *Using the formula, we get*

$\bar{p}=\dfrac{n_1\bar{p_1}+n_2\bar{p_2}}{n_1+n_2}=\dfrac{250(0.14)+300(0.09)}{250+300}=0.1127$

#### Test statistic

Qn: From the sample statistics, compute the z-score

- 2.32

- 1.29

- 1.34

- 1.85

Ans: C. *The z-score is given as follows:*  
 $z=\dfrac{\bar{p_1}-\bar{p_2}}{s_{\bar{p_1}-\bar{p_2}}}$

 where,

 $s_{\bar{p_1}-\bar{p_2}}=\sqrt{\bar{p}(1-\bar{p})(\frac{1}{n_1}+\frac{1}{n_2})}$

Hence,  

$z=\dfrac{\bar{p_1}-\bar{p_2}}{\sqrt{\bar{p}(1-\bar{p})(\frac{1}{n_1}+\frac{1}{n_2})}}=\dfrac{0.14-0.09}{\sqrt{0.1127(1-0.1127)(\frac{1}{250}+\frac{1}{300})}}=1.85$

#### Decision Making

Qn: Based on the z-score computed in the previous question, how would you conclude this hypothesis test?

Use this [calculator](https://www.socscistatistics.com/pvalues/normaldistribution.aspx) to directly compute the p-value for the test.

- Reject H0

- Cannot reject H0

Ans: A. *The p-value for this one-tailed test is 0.032127. Since this values is less than α, you must reject $H_0$

Since hypothesis testing is performed using a sample, you're bound to make some errors. Let's see what these errors are, in the next segment.
