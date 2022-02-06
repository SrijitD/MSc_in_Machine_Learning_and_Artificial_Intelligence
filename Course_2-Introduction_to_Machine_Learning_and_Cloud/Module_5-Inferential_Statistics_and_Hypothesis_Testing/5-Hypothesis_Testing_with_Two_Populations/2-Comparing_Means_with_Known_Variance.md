# Comparing means with known variance

In this segment, you will learn how to conduct hypothesis tests on the means of two independent populations where the **standard deviations of both populations are assumed to be known**.

Instead of making an inference on a single population mean, you will be focusing on the difference between the two population means.

Since we have two populations, let us define the sample for each population.

$\bar{x_1}$ = Sample mean of sample 1 (selected from population 1)

$n_1$ = Sample size of sample 1

$\bar{x_2}$ = Sample mean of sample 2 (selected from population 2)

$n_2$ = Sample size of sample 2

With this in mind, let us see how to solve problems involving two populations with known standard deviations.

**VIDEO**

As you have seen, there is only difference between one sample tests and two samples tests in the z score formula.

Let d0 denote the hypothesized difference between the two populations. Hence, the possible hypotheses are as follows:

**![Possible_Null_Alternate_Hypothesis_Two_Populations](https://i.ibb.co/tH8DWmk/Possible-Null-Alternate-Hypothesis-Two-Populations.png)

From the below image, you can see that the formula for the z-score in the case of a one-sample and the two-sample test is very similar.  
![z-score_two](https://i.ibb.co/8NF2W09/z-score-two-sample.png)

In the case of a two-tailed test, the z-score is calculated as  

$z = \dfrac{(\bar{x_1}-\bar{x_2})-(\mu_1-\mu_2)}{\sqrt{\dfrac{\sigma^2_1}{n_1}+\dfrac{\sigma^2_1}{n_2}}}$

Let us look at the steps that were used to solve this problem

1. We begin by formulating the null and alternative hypothesis:  
    $H_0:\mu_1−\mu_2=0$  
    $H_a:\mu_1−\mu_2\ne0$  
    From the null and alternative hypothesis, we can clearly infer that the test is a **two-tailed test**.
2. Evaluating the Z-score using the formula for the 2 sample test, we get.  
    $z = \dfrac{(\bar{x_1}-\bar{x_2})-(\mu_1-\mu_2)}{\sqrt{\dfrac{\sigma^2_1}{n_1}+\dfrac{\sigma^2_1}{n_1}}} = \dfrac{(22.5-20.1)-(0)}{\sqrt{\dfrac{5.2^2}{40}+\dfrac{6^2}{50}}} = 2.03127$
 
3. Since this is a two-tailed test, you need to calculate the p-value at one tail and multiply it by 2. Then you can compare the p-value with α and reject the null hypothesis if **p-value < α.
    Note:** In this video, instead of multiplying the p-value by 2, Ankit has directly compared the p-value at a single tail with $\alpha/2$. Both the approaches are the same and will yield the same result.

In the next segment, you will learn to solve a similar problem when the population standard deviation of both the populations is unknown.
