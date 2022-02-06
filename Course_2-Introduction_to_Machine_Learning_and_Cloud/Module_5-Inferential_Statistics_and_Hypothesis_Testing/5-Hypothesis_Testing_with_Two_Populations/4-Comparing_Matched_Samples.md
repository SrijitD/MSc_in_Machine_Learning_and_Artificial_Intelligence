# Comparing Matched Samples

In this segment, you will learn to test Matched Samples. This test is also known as **Dependent T-test** or **Paired T-test**

![Paired_T-Tests](https://i.ibb.co/zfZp7mN/Paired-T-Tests.png)

From the above diagram, you can see that this test is not for testing independent samples. Identifying when to use an independent sample test and a matched sample test can be slightly tricky; hence, it is advised that you pay close attention to this test.

**VIDEO**

Before learning how to perform a matched sample test, it is important for you to know when this test is used and how it is different from an independent sample test. Consider the example below. We are comparing the marks in physics from two different samples of students. Note that there is no relation between sample A and sample B. Even if both the samples of students belonged to the same class, these samples would still be completely unrelated from each other. In other words, both the samples are independently selected from the same or different populations. Hence we use the independent sample test, learned in the starting segments.

![Paired_T-Tests_Students](https://i.ibb.co/SJtCsPK/Paired-T-Tests-Students.png)  

In the example shown below, we chose the marks from two different exams written by the same student. This test is called a matched sample test because each record in a sample of Physics marks can be matched with exactly one record in the sample of Chemistry marks since they would have been written by the same student. Hence this test is also known as a **Dependent sample test**.

![Paired_T-Tests_Students_2](https://i.ibb.co/7xc0XYJ/Paired-T-Tests-Students-2.png)

As the name suggests, an independent sample is used when you wish to compare independent (unrelated) groups such as follows:

- The average height of men vs the average height of women.
- Marks obtained by students of City A vs marks obtained by students of City B.
- Movie ratings of Genre A vs movie ratings of Genre B.
- Patients in Sample A who are given a certain drug vs patients in Sample B who are not given any drug.

In the case of matched samples, both samples are paired. Consider the following scenarios for a matched sample test (also known as a dependent sample test):

- Marks of a certain sample of students before and after joining a coaching class
- The glucose level in a patient before receiving a drug vs after receiving the drug.

If you compare the above scenarios of the independent sample test and a matched sample test, you will notice that a matched sample test will usually have the following scenarios:

- From a single sample of players, each player is measured twice, i.e., before and after a certain intervention.
- Given a single sample of players, each player is measured twice under two different experimental conditions.
- The sample size for both the samples will always be equal.

Once you have identified the test as a matched sample test, let’s understand the next steps. For this purpose, we have taken the example shown in the previous video.

## Comprehension

Classify the following scenarios as a matched sample test or an independent sample test.

**Note**: Independent sample test is nothing but 'comparing means with unknown variance'

#### Matched sample test vs Independent Sample test

Qn: Insulin rate is measured on 30 patients before and after the medical treatment

- Independent sample test

- Matched sample test

Ans: B. *Every patient is associated with two measurements. Hence this is a matched sample test.*

Qn: Insulin rate is measured on 30 patients receiving placebo and 30 **other** patients receiving the medical treatment.

- Independent sample test

- Matched sample test

Ans: A. *Measurements of both the groups are independent of each other. Hence you will use an independent sample test here.*

Let us look at the steps to solve the matched sample test.

- The first step is to find the difference between the marks scored by each student on the two subjects as shown in the table provided below.![Physics_Chemistry_Students_Table](https://i.ibb.co/q9FR7Nb/Physics-Chemistry-Students-Table.png)  

- Next, you can **treat the column ‘Difference’ as a one-sample test** and compare it against the hypothesized value, d0. Based on the hypothesis, you must identify the test as a right-tailed test, a left-tailed test, or a two-tailed test.  

- Since we are considering the difference column as our new sample for this test, we need to recalculate the sample mean and sample standard deviation for this test
   $\bar{d}=\dfrac{\sum_{i=1}^{n}d_i}{n}$

 $s_d=\sqrt{\dfrac{\sum(d_i-\bar{d})^2}{n-1}}$

- As explained by Ankit, this test is similar to a One-Sample T-Test. Hence the test statistic for this test is given by $t=\dfrac{\bar{d}-d_0}{s_d/\sqrt{n}}$ with n-1 degrees of freedom.

Let us consider the following example to demonstrate this test. On two separate occasions, each student was asked to write an exam after:

- 8 hours of sleep, and
- 5 hours of sleep.

![Students_Sleep_Hours](https://i.ibb.co/DRwnfCp/Students-Sleep-Hours.png)

The data given above indicates the number of questions attempted in the exam by each student on both occasions. Using the data, can you prove that students tend to answer more questions after 8 hours of sleep? (α=0.05)

Since we are interested in proving that students answer more questions after 8 hours of sleep, we formulate our null and alternative hypothesis as follows:

![Students_Sleep_Hours_Null_Alternate_Hypothesis](https://i.ibb.co/jZ4Lj90/Students-Sleep-Hours-Null-Alternate-Hypothesis.png)

**VIDEO**

Let us revisit the steps performed by Ankit to solve the matched sample test.

- An experiment was performed wherein 8 students were asked to solve some questions under 8 hours of sleep and 5 hours of sleep on two separate occasions. We have used a hypothesis test to test if there is any significant difference in the number of questions attempted when the student has 8 hours of sleep or 5 hours of sleep. Based on this, we formulate the following hypothesis.  
    ![Students_Sleep_Hours_Null_Alternate_Hypothesis](https://i.ibb.co/jZ4Lj90/Students-Sleep-Hours-Null-Alternate-Hypothesis.png)

- A difference column is created which calculates the difference between the number of questions attempted after 8 hours of sleep and the number of questions attempted after 5 hours of sleep. Using this column, we have calculated the t-statistic given by  
    $t=\dfrac{\bar{d}-d_0}{s_d/\sqrt{n}}=t=\dfrac{0.625-0}{1.3025/\sqrt{8}}=1.36$
    Similarly, the degrees of freedom = n-1 = 8-1 = 7  

- Since the test is a right-tailed test, we have calculated the p-value given by 0.108. Since this value is greater than the significant value of 0.05, we are unable to reject the null hypothesis. Hence our conclusion is that based on the samples, we cannot provide any conclusive evidence that students perform better with 8 hours of sleep compared to 5 hours of sleep.

Question 1/1

Mandatory

#### Matched sample test

Qn: There is a hypothesis that Virat Kohli performs better or as good in the second innings of a test match as the first innings. This would be a **two-sample mean test**, where sample 1 would contain his score from the first innings and sample 2 would contain his score from the second innings. This would be a **paired test** since each row in the data would correspond to the same match. What would be the null hypothesis in this case?

- $H_0: \mu_2 - \mu_1 = 0$

- $H_0: \mu_2 - \mu_1 \ge 0$

- $H_0: \mu_2 - \mu_1 \le 0$

- $H_0: \mu_1 - \mu_2\ne 0$

Ans: B. _Here, the assumption is that Virat Kohli performs better or as good as in the second innings, which means his average in the second innings is assumed to be greater than or equal to his average in the first innings. So, the null hypothesis would be: $\mu_2 ≥ \mu_1\ or\ \mu_2 - \mu_1 ≥ 0$_

In the next segment, you will learn about your final hypothesis test in which we will compare two sample proportions and test if there is any significant difference in the proportions of the two populations.
