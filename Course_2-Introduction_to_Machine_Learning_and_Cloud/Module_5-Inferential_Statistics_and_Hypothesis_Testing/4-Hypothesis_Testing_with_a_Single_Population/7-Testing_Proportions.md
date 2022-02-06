# Testing proportions

In the previous segments, you learnt how to perform hypothesis tests on population mean. So far, you were dealing with numerical data. But suppose you wish to test whether or not the proportion of students who passed an exam is more than a hypothesisedproportion by chance or not. Let’s say this hypothesised proportion is$p_0$.  

In order to solve this problem, you will collect the exam data of a certain sample of say 10 students. Your data might be of the form:

Pass, Pass, Fail, Pass, Pass, Fail, Pass, Pass, Pass, Fail.

Note that in this event, each element of the data can take only one of two values, ‘Pass’ or ‘Fail’, or, in short, the outcome could be a success or a failure. Therefore, this type of problem is called the ‘Testing means with a single proportion’.

This is opposed to data that can have multiple values, for example, {‘Pass’, ‘Fail’, ‘Distinction’}. This type of problem is not part of your syllabus.

Now, in order to test the proportion, you collect a sample and find the sample proportion, $\bar{p}$. Using this information, in the upcoming video, you will learn how to perform the hypothesis tests.

**VIDEO**

**Note**: Please note that at 0:45,σhere is not the population standard deviation but the standard deviation for the sampling distribution. Please ignore this mistake.

So in this video, you learned the test statistic, when solving a problem involving population proportions.We begin any test by collecting asample and finding out the sample proportion(¯p) in order to test against thehypothesized population proportion(p0).

In order to use the z-table, the following assumptions must be met.

- $np\ge5$
- $n(1−p)\ge5$
- This indicates that the number of successes and the number of failures in the sample must be atleast 10.

The standard deviation for the sampling distribution is given by

$\sqrt{\dfrac{p_0(1-p_0)}{n}}$

Hence, the final z-score is given by

$z = \dfrac{\bar{p}-p_0}{\sigma_{\bar{p}}} = \dfrac{\bar{p}-p_0}{\sqrt{\dfrac{p_0(1-p_0)}{n}}}$

#### Standard deviation for population proportions

Qn: Can you guess why is thestandard deviation for the samplingdistribution for population proportions is calculated as

$\sqrt{\dfrac{p_0(1-p_0)}{n}}$

**Hint 1**: An important property of variance is that

$Var(aX)=a^2Var(X)$

where 'a' is a constant and X is a random variable.

**Hint 2**: In the context of testing proportions, the random variable, p is defined by the **proportion** of successes in n trials, while in the case of the binomial distribution, the random variable X was defined asthe **number** of successes in n trials. See if you can link the two.

Ans: *Since the random variable is quite similar to the binomial experiment (each trial is a Success or Failure), we can derive the standard error for the proportion test.*  
  
*In the binomial distribution, the random variable, X, was estimated by the number of successes in an event. From there, we learnt that*
*$Var(X) = npq$, where p is the proportion of success.*
  
*In the case of the proportions test, we define the random variable as the proportion of successes in an event. Therefore, we can write the random variable as p.*  
  
*We can write $p = X/n$, where X is the number of successes. Therefore,*

$Var(p)=Var(\dfrac{X}{n})=\dfrac{1}{n^2}VarX=\dfrac{1}{n^2}npq=\dfrac{pq}{n}$

*Thus,$\sigma_p=\sqrt{pqn}$*  
  
Since the assumption is that the null hypothesis is true, we take p=p0. Hence, the standard error or the standard deviation for the sample is given by:  
$\sigma_p=\sqrt{\dfrac{p_0(1-p_0)}{n}}$

In the next video, you will learn to test a proportionhavinga **left-tailed hypothesis** through an industry example and see how its evaluation is different from a right-tailed and two-tailed hypothesis tests.

**VIDEO**

So performing a left-tailed hypothesis test is not very different from performing a right-tailedor two-tailed hypothesis test.

- In this case, the sample mean lies to the left of the population mean contrary to a right-tailed hypothesis test where it lies to the right.

    ![Left_Tailed_Test_Example](https://i.ibb.co/pXdwLRJ/Left-Tailed-Test-Example.png)

- The probability obtained from the Z-table from the Z statisticis the final p-value in this case. Recall that in the case of a right-tailed hypothesis test, you subtracted the probability obtained from the Z statistics by 1 in order to find the p-value. That was done because in that case, you were calculating a “greater than” probability. But since in this case, you need to calculate the “lesser than” probability, you don’t need to subtract the probability obtained from the Z-tableby 1. Refer to the image below:

    ![Left_Tailed_Test_Example_2](https://i.ibb.co/2gSfHzD/Left-Tailed-Test-Example-2.png)

 In this case, the table entry for a particular Z-score is the same as p-value (region marked in red). Recall how this was different in the case of a right-tailed test.

In the next segment, you will summarise all your learnings in this session.
