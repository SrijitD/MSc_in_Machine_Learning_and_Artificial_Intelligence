# Hypothesis Testing and p-value

Now that you have learnt how to frame a hypothesis and have become aware of a few terminologies used, let's move on to the process that you should follow to test your hypothesis.

In the following video, Amit will walk you through a short example wherein a supermarket is looking to launch a loyalty card to make customers spend more. But however, they will only launch the loyalty card if the average spending per shopper becomes more than ₹120 per week.

Now, before you even begin with the hypothesis testing process, the very first step in this problem would be estimating the average spend per shopper. How can you estimate this? Recall from your inferential statistics module that you can estimate the parameters of the entire population using sampling. So in this case, the supermarket has launched a pilot program of the loyalty card for a **random sample of 80 shoppers**. Now, we can easily evaluate the parameters of this sample and move forward with the next steps. But what are these next steps? Let's find out!

#### Inferential Statistics Recall

If the population's standard deviation is σ, what will the sampling distribution's standard deviation (Standard Error) be?

- $\sigma$

- $\frac{\sigma}{n-1}$

- $\frac{\sigma}{\sqrt{n}}$

Ans: C. *The sampling distribution's standard deviation is given by $\frac{\sigma}{\sqrt{n}}$.*

**VIDEO**

#### Hypothesis Testing

Qn: What parameter are we testing through this example?

- population mean

- population standard deviation

- sample mean

- sample size

Ans: A. *We are testing the average spend per shopper. Hence this is the population mean.*

In the next video, you will learn to use the Z-table. Please download the z table from below.

[Z-Table](Z-Table.pdf)

The first three steps involved in hypothesis testing were:

1. Begin by assuming that $H_0$, i.e. the status quo is true. In our case, the status quo is that the average spending is less than 120 since this does not require any action.
2. Put the onus on the data to contradict $H_0$ beyond a **reasonable doubt**. In our case, the sample mean that we got was ₹130. So we need to prove that this mean is significantly different from ₹120. This means that using this sample mean of ₹130, we need to prove that the chances of the population mean being less than ₹120 is **very low**.
3. Thirdly, we also need to quantify what 'reasonable doubt' or 'very low' highlighted above are. For that, we use something known as a p-value which you'll learn about in the subsequent videos.

Next, as Amit mentioned, you need to calculate the p-value using a Z-test (or a T-test which you'll learn about soon). Your Z-value from the example you've been working on came out to be 2.236, for which you got a Z score of 0.9871. Now in order **to calculate the p-value, you need to subtract the Z score you've obtained from 1**. The reason that you subtract one is that the Z-score that you calculate for a particular value, let's say 2, gives you the probability of Z being less than 2, i.e., P(Z < 2) but you want the probability of P(Z > 2) in this case. See the image below:

![Right_Tailed_Hypothesis_Test](https://i.ibb.co/dG88Cg5/Right-Tailed-Hypothesis-Test.png)

The Z-score that you get from the table gives you the probability that is indicated by the grey area in the image above. But since you want P(Z > 2), i.e., the area in red, you can simply rewrite P(Z > 2) as 1 - P(Z < 2). This is the reason we subtract the Z-score that we get from 1 in the case of a right-tailed hypothesis test.

So after subtracting 0.9871 from 1, the final p-value that you get is (1 - 0.9871) which is equal to 0.0129 (~0.01). Now, recall that we set a significance value right at the beginning which was 0.05. And if the p-value is less than 0.05, we can reject our null hypothesis otherwise, we'll fail to reject the null hypothesis. Since in this case, **the p-value that we got was 0.01 which is less than 0.05, we reject our null hypothesis that the average spend is less than equal to 120 and launch the loyalty card.**

**Note**: For any hypothesis test, the following rule will always hold true

**Reject H0 if the p-value is less than** **α**

So the steps involved in calculating the p-value for a right-tailed hypothesis test are:

1. Calculate the Z-score using the formula - $\dfrac{\bar{X}-\mu}{\sigma/\sqrt{n}}$, where $\bar{X}$ is the sample mean, $\mu$ is the population mean, $\sigma$ is the population standard deviation (which can be approximated to S, the sample standard deviation like you learnt during inferential statistics), and n is the sample size.
2. From the Z-score, calculate the Z-value using the Z-table.
3. To get the final p-value, subtract the Z-value that you get from 1. (Note that this point holds true only when it is a **right-tailed hypothesis test**)

So to summarise, the steps involved in the hypothesis testing process are:

![Hypothesis Testing Process](https://i.ibb.co/0c3zBdd/Hypothesis-Testing-Process.png)

In this segment, you learned the steps to perform a hypothesis test. In the forthcoming segments, you will be introduced to different types of problems. Each problem will involve a different test statistic. However, the methodology in solving a hypothesis test problem would be the same for all of them. Once you understand the problem statement and formulate the null and alternative hypotheses, it is your job to identify which test statistic to be used and then calculate the p-value for the problem. Let us look at the different problems we will be looking at.

**VIDEO**

In the forthcoming segments, you will learn to solve the following types of problems

- Testing means with known population variance

- Testing means with unknown population variance

- Testing a single proportion

Do not worry if these terminologies are not completely clear now. You will have an in-depth understanding of these concepts in the upcoming segments.

![Types-of-Testing](https://i.ibb.co/YXcp5z5/Types-of-Testing.png)

In the next segment, we will take up our first hypothesis test, known as **testing means with known variance.**
