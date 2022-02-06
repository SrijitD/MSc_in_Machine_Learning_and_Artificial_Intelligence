# Case Study (Part 1)

This case study has been divided into two parts:

- Problem establishment

- A/B testing

Before an A/B test is conducted, the organisation must establish that a certain problem exists within the organisation. Hence in this segment, we will focus on exploring the data and identifying the problems faced in this organisation.

In this video, let us learn about the problem statement from Ankit.

**VIDEO**

**Problem Statement (Part 1)**

- This e-commerce company is evaluating its customer experience. So, they run a survey among the customers to understand their feedback.

- The feedback shows that late delivery is one of the most frequent problems faced by the customer.

- However, the consumer experience manager says that the late delivery percentage is similar to the industry average.

**Approach**

- Establish the fact that the organization has a poor record in delivery.

- Conduct a hypothesis test to compare the organization’s late delivery complaint percentage with the industry average of 6%.

In this video, we will begin by exploring these datasets and beginning with our exploratory data analysis.

Please find the dataset attached below.

[E-commerce orders dataset](ecommerce_orders.csv)

[E-commerce reviews dataset](ecommerce_reviews.csv)

You can find the codes for this case study in the following Jupyter notebook. The notebook will be in a zip file along with the images used in the case study. Please extract the images as well so that pictures are displayed on the notebook.

[E-Commerce Case Study Jupyter notebook](E-Commerce_Case_Study.ipynb)

**Note:** All the code explanations have been given in the Jupyter Notebook.

In this video, we will begin by exploring these datasets and beginning with our exploratory data analysis.

**VIDEO**

#### Hypothesis Testing

Qn: Which is the ideal test to compare the Actual Delivery time and Estimated Delivery?

- Independent Sample Test

- Matched Sample Test

- Comparing means with known variance

- Comparing means with unknown variances assuming population variances are equal

Ans: B. *This is an example of a matched sample test. Each order id will have a corresponding actual delivery time and an estimated delivery time. Hence they both depend on the order id.*

#### Python Library

Qn: Which is the correct library while using a Matched sample test?

- scipy.stats.ttest_ind

- scipy.stats.ttest_ind_from_stats

- scipy.stats.ttest_rel

Ans: C. *ttest_rel is used for a matched sample test. Please refer the [documentation](https://docs.scipy.org/doc/scipy-0.14.0/reference/generated/scipy.stats.ttest_rel.html) to understand the use of this library.*

In this video, we performed the matched samples hypothesis test to compare the actual delivery time and the estimated delivery time and proved that there exists a significant difference between the two delivery times. In the next video, we will continue our exploration of the order_reviews dataset and prove that most of the bad reviews are leading towards late deliveries.

**VIDEO**

#### Hypothesis Testing

Qn: Which test will we use to test if the proportion of the late delivery reviews is higher or lower than 6%?

- 1 sample proportion test

- 2 sample proportion test

- Goodness of fit test

Ans: A. *This is the correct test. Recall that we use the z distribution to test the proportion against a known value.*

In this video, it was established that most of the reviews were inclined towards having a late delivery. However, as you have seen in the problem statement, the consumer experience manager says that the late delivery percentage is similar to the industry average.

Hence, in the next video, we will conduct a hypothesis test to check if the organisation’s late delivery complaint percentage is within the industry average of 6%.

**VIDEO**

In this video, we used the one-sample proportion test to check if the industry average lies within 6 % or not. With this, we have established the fact that the organisation has a poor delivery record.
