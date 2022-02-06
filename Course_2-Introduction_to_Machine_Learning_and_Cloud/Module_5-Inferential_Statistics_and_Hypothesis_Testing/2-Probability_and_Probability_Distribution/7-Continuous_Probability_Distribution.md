# Continuous Probability Distribution

Let's move to continuous distributions. Let's understand this using a continuous variable, say, the weight of a person. You know that the weight of a person is a continuous variable, i.e., it need not take specific discrete values. For example, the weight of a person can be 60 kg, or 60.1 kg, or 60.2 kg and so on.

But if we have such variables where the values can be continuous, does our old way of measuring probability work? For instance, if, say I want to find out the probability of a person's weight being exactly 60 kg, the probability is very less because the person might have a weight of 60.01 kg or 59.99 kg. The probability of a person's weight thus, being exactly 60 kgs is very less; we might even say that this probability is practically zero. So if the exact probabilities are zero, then how do we represent these numbers. The answer is simple - using cumulative probabilities. Let's learn to do that in the following video.

**VIDEO**

Now, using cumulative probability notation might not seem relevant in the upGrad ball game, which is a discrete probability distribution. But when you move to continuous probability distributions, cumulative probability becomes quite significant.

Recall the last example that Amit gave in the video above. You were provided with the following probability table:  

| Random Variable(X) | F(X)=P(X≤x) |
| ------------------ | ----------- |
| 50                 | 0.167       |
| 55                 | 0.250       |
| 60                 | 0.367       |
| 65                 | 0.467       |
| 70                 | 0.550       |
| 75                 | 0.650       |
| 80                 | 0.733       |
| 85                 | 0.833       |
| 90                 | 0.933       |
| 95                 | 0.967       |
| 100                | 1           |

Notice that the data provided in the probability table is given in terms of cumulative probability because **in this case, the random variable X (which is the weight in this case) is a continuous variable.** X can take any value, like 60.01 or 59.99 and so on. Therefore, in this case, we cannot assign probabilities to each number, as the number of possibilities is infinite.

For instance, if somebody asks what is the probability of an employee’s weight being exactly 60 kg, i.e., P(X = 60), **it will be zero**. This is because the random variable X could be 59.99 or 60.01 or any other number which is close to 60 but not exactly 60, and **the chances of an employee’s weight being exactly 60 kg out of infinite possibilities are actually zero**. However, if someone asks you what is the probability of an employee’s weight being between 60 kg and 65 kg, you can still give a relevant probability number, because a lot of people will fall in that range.

Thus, in the cases where the random variable is continuous, it makes more sense to represent the probabilities either in a cumulative form or in the form of ranges.

#### Cumulative Probability

Qn: You’ve recently opened a new branch of your company’s office in the outskirts of the city and the newly hired people are being moved there. The table below shows the commute time of employees in the new office along with the cumulative probabilities.

| X (Commute time in minutes) | Probability |
| --------------------------- | ----------- |
| 20 - 30                     | 0.15        |
| 30 - 40                     | 0.20        |
| 40 - 50                     | 0.25        |
| 50 - 60                     | 0.20        |
| 60 - 70                     | 0.10        |
| 70 - 80                     | 0.05        |

The employees have lately been raising concerns regarding the amount of time required to commute to the new office. Since the employees having longer commute times generally work during the commute as well, they have requested for extra compensation for the work hours during the commute. As the CEO, you’re willing to pay extra compensation for the employees having a commute time of greater than 50 minutes.

From the given table, construct the cumulative probability table and find out what percentage of employees will not be getting the extra compensation (assuming that the commute time of any employee is at least 20 minutes, i.e., none of the employees commute for less than 20 minutes)?

- 20%

- 35%

- 60%

- 80%

Ans: C. *The employees who have a commute time of lesser than 50 minutes won't be getting compensation. This probability can be calculated as -*

*$P(X≤50) = 0.15 + 0.2 + 0.25 = 0.6$*

Qn: Based on the table provided in the previous question, what is the probability of the commute time of an employee being higher than 80 minutes given that every employee takes a minimum of 20 minutes to travel?

- 0

- 0.05

- 0.10

- 0.15

Ans: B. *The sum of all the probabilities in the table = 0.95, i.e. the probability of the commute time of an employee being between 20 and 80 is equal to 0.95. Now since every employee takes at least 20 minutes to travel, you can safely say that P(X≤20)=0. Hence, $P(X>80)=1−P(X≤80)=1−0.95=0.05.$*

Qn: Let’s define X as the number of wickets Ishant Sharma would take in the next T20 match he plays. Also, the following is an incomplete table for cumulative probability based on previous experience:

| **x(Number of wickets taken by Ishant Sharma in a T20 Match)** | **F(x)** |
| -------------------------------------------------------------- | -------- |
| 0                                                              | 0.35     |
| 1                                                              | 0.55     |
| 2                                                              | 0.75     |

What is the probability that he would take more than 2 wickets in the next  T20 match he plays?

- 0.75

- 0.25

- 0.5

- 1

Ans: B. *You know that F(2) i.e. P(X<=2) is 0.75. Now, you have to find the probability of X being higher than 2, i.e. P(X>2). Notice that the sum of P(X<=2) and P(X>2) would be equal to 1, because their sum will cover all possible outcomes. Hence, P(X<=2) + P(X>2) = 1, which gives 0.75 + P(X>2) = 1. Hence, P(X>2) = 0.25.*

Let's learn about a special type of continuous distributions which is the normal distribution, in the next segment.
