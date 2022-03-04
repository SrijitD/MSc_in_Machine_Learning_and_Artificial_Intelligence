# Graded Questions

## Quiz 1: Theory

#### Types of hypotheses

Qn: The null and alternative hypotheses are statements about:

- Population parameters

- Sample parameters

- Population parameters or sample parameters

Ans: A. _The hypothesis is always made about the population parameters. The sample parameters are only used as evidence to test the hypothesis._

#### Null and Alternate Hypotheses

Qn: A house owner claims that the current market value of his house is at least Rs.40,00,000/-. 60 real estate agents are asked independently to estimate the house's value. The hypothesis test that is conducted ends with the decision of "reject $H_0$". Which of the following statements accurately states the conclusion?

- The house owner is right, the house is worth Rs. 40,00,000/-

- The house owner is right, the house is worth less than Rs. 40,00,000/-

- The house owner is wrong, the house is worth less than Rs. 40,00,000/-

- The house owner is wrong, the house is worth more than Rs. 40,00,000/-

Ans: C. _Rejection of the null hypothesis means rejection of the status quo or the earlier assumption of the house owner that his house is worth at least Rs. 40,00,000. As the null hypothesis is H₀: House market value ≥ 40,00,000, the alternate hypothesis would be opposite of that._

Qn: Which of the following options hold true for null hypothesis? More than one option may be correct.

- The claim with only the “less than” sign

- The claim with the “less than or equal to” sign

- The claim with the “equal to” sign

- The claim with the “not equal to” sign

Ans: B & C. _The null hypothesis is always written with the “equal to” or “less than or equal to” or “more than or equal to” sign._

## Quiz 2: Comprehension

Cadbury states that the average weight of one of its chocolate products ‘Dairy Milk Silk’ is 60 g. As an analyst on the internal Quality Assurance team, you would like to test whether, at the 2% significance level, the average weight is **greater than 60 g** **or not**. A sample of 100 chocolates is collected and the sample mean size is calculated to be 62.6 g. The sample standard deviation, as calculated from the sample, is 10.7 g.

The null and alternative hypothesis have been provided below:

$H_0:\mu\le60\ and\ H_a:\mu>60$

Answer the following questions in order to draw a conclusion from the test.

#### p-value Method

Qn: What will the approximate Z-score for the sample in this case be?

**Note**: Will the answer be different if you use the T distribution in place of the Z-distribution?

- 1.28

- 2.43

- 2.96

- 3.10

Ans: B. _Recall that the Z-score is calculated using the formula_ $\frac{\bar{X} - \mu}{\sigma/\sqrt{n}}$.

Here,$\bar{X}=62.6,\ \mu=60,\ \sigma\approx S=10.7,\ n=100$.

Hence, you get

Z=$\dfrac{62.6 - 60}{10.7/\sqrt{100}} = 2.43$.

_**Note**: You can also use the T-dstribution. Since the sample size is larger than 30, both the Z and T distributions will give you the same conclusion._

Qn: Find out the p-value and conclude whether you should accept or reject the null hypothesis at the given significance level, i.e., 2%.

- p-value = 0.9925, Fail to reject the null hypothesis

- p-value = 0.9925, Reject the null hypothesis

- p-value = 0.0075, Fail to reject the null hypothesis

- p-value = 0.0075, Reject the null hypothesis

Ans: D. _From the Z-table, the value at 2.43 comes out to be 0.9925. In order to get the p-value, you subtract it from 1. Hence, the final p-value becomes 0.0075. Since, 0.0075 is less than the significance level defined, i.e., 0.02, you reject the null hypothesis._

## Quiz 3: Comprehension

Suppose that you're working for Hotstar. In the pastmonth, the subscription for their product 'Hotstar Premium' has increased a lot. The analysts in the company claim that the subscription increased mainly due to the premiere of Game of Thrones which is going to happen soon. However, some of them believe that this might not be the sole reason because then people would buy it just 1 or 2 days before the premiere. So there might also be some other reason for the spiked membership. The lead business analyst in your company then claims that at least 60% of the past month subscriptions are due to the premiere of 'Game of Thrones'.

To test this claim you send a survey to some of the users who have purchased the membership in the past month to which 121 users replied. The data for the same has been provided in the Excel below. A '1' in column two indicates that they bought the subscription because of 'Game of Thrones' and 0 indicates that they bought it for other reasons. Based on the data answer the following questions. (Ignore the second worksheet in the Excel file for now; that will come in the 3rd question.)

[Hotstar Data](Hotstar_Data.xslsx)

#### Z-Score

Qn: Suppose that the null and alternate hypothesis that you framed in this case are:

$H_0$: Percentage of users who bought the subscription for Game of Thrones≥60%

$H_A$:Percentage of users who bought the subscription for Game of Thrones <60%

Calculate the approximate value of Z-score usingthe data as thefirst step to evaluate your hypothesis.

- 1.89

- -1.89

- 1.74

- -1.79

Ans: D. _You first need to calculate the mean and SD of the relevant column 'Is helpful?' in Excel. If you notice, the mean gives the percentage of users who purchased it because of Game of Thrones. The mean and standard deviation come out to be 0.52 and 0.501 respectively. This means that 52% of the userspurchased it because of Game of Throneswith a standard deviation of 49.2%.Now, you can easily calculate the Z-value as:_

$\text{Z-value} = \dfrac{\bar{p}-p_0}{\sqrt{\frac{p_0(1-p_0)}{n}}}=\dfrac{0.52−0.6}{\sqrt{\frac{0.6(1−0.6)}{121}}}\approx−1.79$

#### Making a Decision

Qn: From the Z-value you calculated in the last case, what will the p-value be? On the basis of this p-value, what decision will you take for a significance level of 5%? (You can access the Z-table [here](http://www.z-table.com/).)

- p-value = 0.0367, Reject the null hypothesis

- p-value = 0.0367, Fail to reject the null hypothesis

- p-value = 0.2296, Reject the null hypothesis

- p-value = 0.2296, Fail to reject the null hypothesis

Ans: A. _From the Z-table, the value at -1.79comes out to be 0.0367. Since this is a left-tailed hypothesis test, this value itself is the p-value. Since, 0.0367is less than the significance level defined, i.e., 0.05, you reject the null hypothesis._

#### Testing Proportions

Qn: Since you rejected the null hypothesis in the last case, you can say that less than 60% of the users bought the subscription for Game of Thrones. So now your companystartedto look at other reasons due to which the subscriptions might have increased and now the analyst at the company claims that since it was IPL season, around 30% of the users might have subscribed to watch IPL. To test this claim you propose the following null and alternate hypothesis:

$H_0$: Percentage of users who subscribed because of IPL=30%

$H_A$: Percentage of users who subscribed because of IPL$\ne$30%

Now, you again float a survey but this time 49 people responded. The data for this is given in the second worksheet in the Excel provided. Based on this data, what is the p-value and what decision should you take for a significance level of 1%? (You can use this [link](https://www.socscistatistics.com/pvalues/normaldistribution.aspx) to calculate the exact p-value.)

- p-value = 0.049, Fail to reject null hypothesis

- p-value = 0.049, Reject null hypothesis

- p-value = 0.0098, Fail to reject null hypothesis

- p-value = 0.0098, Reject null hypothesis

Ans: D. On computing the z score, you will get,

$Z = \dfrac{\bar{p}-p_0}{\sqrt{\frac{p_0(1-p_0)}{n}}}=\dfrac{0.469−0.3}{\sqrt{\frac{0.3(1−0.3)}{49}}}\approx2.58$

From the calculator, the p-value comes out to be 0.0098 for a two-tailed test. Since the significance level is 1% which is more than 0.0098, you can reject the null hypothesis.
