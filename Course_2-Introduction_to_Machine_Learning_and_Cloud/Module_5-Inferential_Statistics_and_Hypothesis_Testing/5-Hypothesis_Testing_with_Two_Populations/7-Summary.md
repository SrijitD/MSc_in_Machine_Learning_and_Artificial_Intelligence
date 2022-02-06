# Summary

Whew! That was an intense session. Let's just quickly summarise what all you learnt in this session.

You learnt how to make statistical inferences using interval estimates and solve hypothesis testing problems involving two populations. The following problems were considered for solving two-sample tests:

- Comparing means with known variance
- Comparing means with unknown variance
- Comparing matched samples
- Comparing a single proportion

![Paired-T-Tests](https://i.ibb.co/zfZp7mN/Paired-T-Tests.png)

## **Comparing means with known variance**

Here you learned how to conduct hypothesis tests on the means of two **independent** samples where the **standard deviations of both its populations were assumed to be known**. The z-score is calculated using:  
$z = \dfrac{(\bar{x_1}-\bar{x_2})-(\mu_1-\mu_2)}{\sqrt{\dfrac{\sigma^2_1}{n_1}+\dfrac{\sigma^2_1}{n_2}}}$

## **Comparing means with unknown variance**

You learned to solve Hypothesis tests involving comparing sample means where the population means were unknown. The test statistic for this test is given by:

$t = \dfrac{(\bar{x_1}-\bar{x_2})-(\mu_1-\mu_2)}{\sqrt{\dfrac{s^2_1}{n_1}+\dfrac{s^2_1}{n_2}}}$

The degrees of freedom for this test are given by the following formula:

$df = \dfrac{(\dfrac{s_1^2}{n_1} + \dfrac{s_2^2}{n_2})^2}{\dfrac{1}{n_1-1}(\dfrac{s_1^2}{n_1})^2 + \dfrac{1}{n_2-1}(\dfrac{s_2^2}{n_2})^2}$

## **Comparing Matched Samples**

In the case of matched samples, both samples are paired. A matched sample test will usually have the following scenarios:

- From a single sample of players, each player is measured twice, i.e., before and after a certain intervention.
- Given a single sample of players, each player is measured twice under two different experimental conditions.

Given two samples, you begin by create a column calculating the difference between the two samples, and solve the test assuming the test is a one-sample test. For a hypothesized value, d0you must identify the test as a right-tailed test, a left-tailed test, or a two-tailed test. SInce you are considering the difference column as your new sample for this test, you need to recalculate the sample mean and sample standard deviation for this test as follows:

      $\bar{d}=\dfrac{\sum_{i=1}^{n}d_i}{n}$
    
    $s_d=\sqrt{\dfrac{\sum(d_i-\bar{d})^2}{n-1}}$

The final test statistic for this test is given by t=¯d−d0sd√n with n-1 degrees of freedom.

## **Comparing a Single Proportion**

This test is used when comparing the sample proportions of two independent samples. The test statistic is given by the following:

$z=\dfrac{\bar{p_1}-\bar{p_2}}{s_{\bar{p_1}-\bar{p_2}}}$

where,  

$s_{\bar{p_1}-\bar{p_2}}=\sqrt{\bar{p}(1-\bar{p})(\frac{1}{n_1}+\frac{1}{n_2})}$  

and

$\bar{p}=\dfrac{n_1\bar{p_1}+n_2\bar{p_2}}{n_1+n_2}$

Then you learnt about the **types of errors** you can make when evaluating a hypothesis. 

![Errors-in-Hypothesis-Testing](https://i.ibb.co/nLVHrFv/Errors-in-Hypothesis-Testing.png)

Basically, the two types of errors are:

1. **Type-I Error:** α is the acceptable probability of making a Type I error (also called the significance level). Alternatively, (1 – α) is called the confidence level (Recall that you had learnt about confidence level in your inferential statistics module.). This occurs when your null hypothesis is actually true but you reject it.
2. **Type-II Error:** β is the probability of making a Type II error. Alternatively, (1 – β) is called the power of the test. This occurs when your alternate hypothesis is true but you still fail to reject your null hypothesis.

You learnt that since rejecting the null hypothesis requires you to take an action and this action requires time, money, and other resources, you cannot afford to make a mistake here very often which is why **managers are more concerned with the type-I error**.

Now that you are well equipped with the concepts of hypothesis testing, let's attempt a few graded questions in the next segment.