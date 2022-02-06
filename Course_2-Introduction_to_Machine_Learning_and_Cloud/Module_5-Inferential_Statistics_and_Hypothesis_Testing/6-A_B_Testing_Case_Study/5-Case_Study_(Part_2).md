# Case Study (Part 2)

Let us continue the case study from the previous segment.

**VIDEO**

## Problem Statement (Part 2)

- In order to solve this issue, the company has come up with a solution.

- They decide to build an intelligent system that predicts the delivery date by taking a lot of factors into account. (Note: details about the algorithm or factors are not important)

- Once the algorithm is built, it is rolled out for 10% of the customers to check whether it is successful.

**Approach**

- Compare the late delivery complaint percentage before and after the algorithm was rolled out.

Please find the datasets after the A/B testing was performed.

[A/B Testing orders dataset](ab_testing_orders.csv)

[A/B Testing reviews dataset](ab_testing_reviews.csv)

With this new algorithm, the company intends to test it out on a certain segment of the population. You are requested to view the columns of this new dataset. You will find a new column called ‘group’. Each order_id belongs to either a **Treatment group or a Control group**.

The **control group** refers to the population that have not been exposed to the new algorithm

The **treatment group** refers to the segmented population that have been exposed to the new  algorithm.

Once both the groups would have been exposed to this algorithm, we will test if there is any significant improvement or deterioration in the proportion of late delivery reviews with the use of this new algorithm.

**Note**: Ideally the treatment group is around 5% of the total population. However that proportion is not maintained in this dataset.

**VIDEO**

#### Hypothesis Testing

Qn: Which test would be ideal to compare the proportions of the Control and the Treatment group?

- Independent sample t test

- Two sample proportion test

- One sample proportion test

- Matched samples test

Ans: B. *This is the ideal test since we are comparing the proportion of two independent populations. (Proportion of late delivery reviews in the Treatment and Control group)*

#### Python Library

Qn: Which python library would be ideal for this use case?

- scipy.stats.ttest_ind

- statsmodels.stats.proportion.proportions_ztest

- statsmodels.stats.weightstats.ztest

Ans: B. *This [library](https://www.statsmodels.org/stable/generated/statsmodels.stats.proportion.proportions_ztest.html) can be used for both one sample as well as a two-sample proportion tests.*

In this video, a two sample proportion test was conducted to prove that there exists a significant difference between the Treatment and Control group. The test proved that with the help of the algorithm, there is a significant decrease in the proportion of late delivery reviews.

The two sample proportion test was used to prove that there exists a significant difference between the two groups. In the next video we will explore the Treatment group and check if using this new algorithm, a significant difference exists between the actual delivery time and estimated delivery time.

**VIDEO**

With this, we conclude the A/B Testing for this organisation. Hope this case study has given you an essence of how statistics is applied in real-life scenarios. In the next segment, we will summarise your learnings from this session.
