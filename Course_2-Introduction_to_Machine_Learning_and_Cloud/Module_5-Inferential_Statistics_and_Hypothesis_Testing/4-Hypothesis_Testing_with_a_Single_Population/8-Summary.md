# Summary

So what did you learn in this session?

1. **Hypothesis** — a claim or an assumption that you make about one or more population parameters that you need to validate.
2. Types of Hypothesis:
    - **Null Hypothesis:**
        - Makes an assumption about the status quo
        - Always contains the symbols ‘=’, ‘≤’ or ‘≥’
    - **Alternate Hypothesis:**
        - Challenges and complements the null hypothesis
        - Always contains the symbols ‘≠’, ‘<’ or ‘>’
3. After formulating the null and alternate hypotheses, the steps to follow in order to **make a decision** using the**p-value method** are as follows:

    1. Calculate the value of Z-score for the sample mean point on the distribution

    2. Calculate the p-value from the cumulative probability for the given Z-score using the Z-table
    3. Make a decision on the basis of the p-value (multiply it by 2 for a two-tailed test) with respect to the given value of α(significance value).

To find the correct p-value from the z-score, first find the **cumulative probability** by simply looking at the z-table, which gives you the area under the curve till that point.

**Situation 1:** The sample mean is on the right side of the distribution mean, i.e., the Z-score is positive (Right-tailed test).

**Example:** z-score for sample point = + 3.02

![Z-Score_Example](https://i.ibb.co/bJMksLW/Z-Score-Example.png)

Hence, the cumulative probability of sample point = 0.9987

For one-tailed test → p-value = 1 - 0.9987 = 0.0013

For two-tailed test → p-value = 2 (1 - 0.9987) = 2 * 0.0013 = 0.0026

**Situation 2:** The sample mean is on the left side of the distribution mean, i.e., the Z-score is negative (Left-tailed test).

**Example:**Z-score for sample point = -3.02

![Z-Score_Example_2](https://i.ibb.co/5GF7rf3/Z-Score-Example-2.png)

Hence, the cumulative probability of sample point = 0.0013

For one-tailed test → p = 0.0013

For two-tailed test → p = 2 * 0.0013 = 0.0026

You can download the z-table from the attachment below.

[Z-table](Z-Table.pdf)

Finally, you understood what a T-distribution is which is nothing but a shorter and flatter normal distribution.

![T-Distribution](https://i.ibb.co/YhZMSLW/T-Distribution.png)

T-Distribution

You also learnt about a new term called **degrees of freedom** associated with the T-distribution. Degress of freedom is nothing but the sample size minus 1. For example, **if your sample size is n, the degress of freedom will be n-1**. You also saw that as you keep increasing the sample size, the T-distribution becomes narrower and steeper. In fact, for a large sample size (>30), it can be closely approximated to a normal distribution.

![T-Distribution for Different Sample Sizes](https://i.ibb.co/q7Mnnt5/T-Distribution-Different-Sample-Sizes.png)

T-Distribution for Different Sample Sizes

Finally, you learnt when you should use a Z-test andwhen you should use a T-test. Basically, if your sample size is small (<30) and the population standard deviation is not known, you employ a T-test. In all other cases, you can simply go ahead and use a Z-test. You can use the following flowchart to decide whether you should employ a T-test or a Z-test.

![Z-Test vs T-Test Flowchart](https://i.ibb.co/s1Bp7J7/Z-Test-vs-T-Test.png)

Z-Test vs T-Test Flowchart

Then you learned how to test proportions in a population. The standard deviation for the sampling distribution is given by

$\sqrt{\dfrac{p_0(1-p_0)}{n}}$

Hence, the final z-score is given by

$z = \dfrac{\bar{p}-p_0}{\sigma_{\bar{p}}} = \dfrac{\bar{p}-p_0}{\sqrt{\dfrac{p_0(1-p_0)}{n}}}$

In the next session, we will continue our discussion on Hypothesis testing. However, this time you will need to solve problems involving two populations instead of one.
