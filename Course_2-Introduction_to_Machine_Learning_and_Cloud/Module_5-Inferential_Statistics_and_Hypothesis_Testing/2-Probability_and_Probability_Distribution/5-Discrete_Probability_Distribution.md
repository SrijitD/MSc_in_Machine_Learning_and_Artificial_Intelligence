# Discrete Probability Distribution

Recall the upGrad ball game that you played and analysed in the last session. If you remember, to quantify the problem, you initially defined the random variable X as the number of red balls obtained, and the values that X could take were 0, 1, 2, and 3. Now, you might have noticed that these values are discrete, i.e., **in this case, the random variable X can only take discrete values and never take continuous values in between, such as, say 0.99 or 1.01**. Such events where the random variable can only take discrete values are represented using discrete probability distributions.

Let’s hear more about this from our industry expert, Amit.

**VIDEO**

Now, let’s move on to a specific type of discrete probability distribution known as **uniform distribution**. A **uniform distribution** is a discrete probability distribution, where **the** **probability of each outcome is exactly the same**. The most basic example, in this case, is rolling a die. When you roll an unbiased die, the chances of getting any of the numbers are equally probable. Let’s hear more on this from Amit.

****VIDEO****

So, a discrete uniform distribution is a probability distribution that has **‘n’ discrete outcomes**, and **the probability of each of these outcomes is the same, i.e., 1/n**.

#### Discrete Uniform Distribution

Qn: Suppose there is a bag containing balls numbered from 1 to 100. What is the probability of picking a ball from the bag that is a multiple of 12?

- 1/100

- 8/100

- 10/100

- 12/100

Ans: B. *As is very intuitive, this game follows the discrete uniform distribution. Hence, the probability of picking any ball would be equal to 1/(total outcomes), which, in this case, is equal to 1/100. Furthermore, between 1 and 100, there are 8 multiples of twelve and thus, the final probability becomes 8/100.*

#### Expected Value

Qn: When you roll an unbiased die once, what is the expected value of the number that will show up?

- 3

- 3.5

- 4

- 4.5

Ans: B. *Correct! Recall that the formula for expected value is given as:*

$EV = x_1*P(X=x_1) + x_2*P(X=x_2) +x_3*P(X=x_3) + ...... + x_n*P(X=x_n)$

Using this formula, the EV in this case is calculated as:

$EV = 1*\ ^1/_6 + 2*\ ^1/_6 + 3*\ ^1/_6 + 4*\ ^1/_6 + 5*\ ^1/_6 +6*\ ^1/_6 =\ ^1/_6\ * (1 + 2 + 3 + 4 + 5 + 6) = 3.5 $

*You can also experiment with this in the simulation provided below. When you roll the die for a large number of times, you will see that the expected value will, in fact, converge to 3.5.*

So you found out the expected value of the number that shows up when you roll an unbiased die. You might be thinking how is the expected value 3.5 which is not even a whole number. Obviously, when you roll a die, you'll never get 3.5 as the outcome. What this number simply indicates is the average number you'll get when you've rolled the die a large number of times. You can even try it out in the simulation below and you'll see that the expected value will, in fact, converge to 3.5.  

## Cumulative Probability Distribution

So far you’ve looked at probability in one way, i.e., finding out the probability of a particular outcome during an experiment. But many a time, you might be interested in finding the cumulative probabilities. Let’s take the upGrad ball game for example. The casinos will make money for any output of X except 4. So, in this case, they might be interested in finding the probability that X≤3, i.e., P(X≤3) because these are the cases where the casinos are making money.

Similarly, suppose you’re working for a credit card company and are looking to predict which customers will default on their credit card payment. In this case, you might be interested in finding the probability of their monthly spend being less than, say, ₹2 lakh. So, it makes more sense to compute P(X≤2 lakh), rather than to calculate the probability of a particular value. This is where cumulative probability is useful. Let’s hear more on this from Amit.

**VIDEO**

So, you learnt a new way to represent probabilities, known as cumulative probability distributions. The cumulative probability is represented as:

$F(X)=P(X≤x)$

E.g. $F(2)=P(X≤2)=P(X=0)+P(X=1)+P(X=2)$

#### Probability for Continuous Variables

Qn: Generally, when a user visits a website, they are offered a lead form. The form is meant to acquire visitor details in order to keep them engaged through notifications. Once the visitor fills and submits this form, they become a lead. Given below is the entire data for an upcoming e-commerce firm regarding the website visit time of its users.

| **Time of the Day** | **Cumulative Number of Leads for that Day** |
| ------------------- | ------------------------------------------- |
| 1100 hours          | 3                                           |
| 1200 hours          | 15                                          |
| 1300 hours          | 26                                          |
| 1400 hours          | 51                                          |
| 1500 hours          | 61                                          |
| 1600 hours          | 78                                          |
| 1700 hours          | 95                                          |
| 1800 hours          | 105                                         |
| 1900 hours          | 115                                         |
| 2000 hours          | 124                                         |

What is the approximate probability that the lead had visited the platform between 1500 hours and 1600 hours?

**Note:** The table gives the **cumulative leads** and not the leads for 1 hour.

- 0.14

- 0.17

- 0.20

- 0.40

Ans: A. The total number of leads between 1500 hours and 1600 hours can be given as:

*= Cumulative Number of Leads at 1600 hours - Cumulative Number of Leads at 1500 hours = 78 - 61 = 17*

*Now, the total number of leads that visited the platform was 124. Hence, the probability that a lead visited the platform between 1500 hours and 1600 hours $=\ ^{17}/_{124} = 0.137 ≈ 0.14$.*

Qn: Based on the data provided in the previous question, what is the approximate probability that the lead had visited the platform before 1600 hours?

- 0.14

- 0.49

- 0.63

- 0.77

Ans: C. *The cumulative number of leads that visited the page before 1600 hours is 78 according to the table. Also, the total number of leads for the day is 124. Hence, the probability that a lead visited the platform before 1600 hours $=\ ^{78}/_{124} = 0.629 \approx 0.63$*

#### Cumulative Probability

Qn: Let’s define X as the number of wickets Ishant Sharma would take in the next T20 match he plays. Also, given below is an incomplete table for cumulative probability based on previous experience:

| X (Number of wickets taken by Ishant Sharma in a T20 match) | Cumulative Probability F(X) |
| ----------------------------------------------------------- | --------------------------- |
| 0                                                           | 0.35                        |
| 1                                                           | 0.55                        |
| 2                                                           | 0.75                        |

What is the probability that he would take more than 2 wickets in the next T20 match he plays?

- 0.25

- 0.55

- 0.75

- 1

Ans: A. *Recall that in the end, the cumulative probability should be 1 because the sum of probabilities of all events is equal to 1. Now, the cumulative probability at X = 2 is 0.75.*

*Hence, the probability that Ishant Sharma will take more than 2 wickets can be given as:*

$= 1 - P(X≤2) = 1 - 0.75 = 0.25$

The uniform distribution that you just studied is the most basic example of a discrete probability distribution. In the next segment, you will learn about an important discrete distribution known as the Binomial Distribution.
