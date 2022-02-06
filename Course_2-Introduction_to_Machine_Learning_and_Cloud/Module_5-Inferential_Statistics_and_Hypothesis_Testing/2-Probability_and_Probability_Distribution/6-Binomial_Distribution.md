# Binomial Distribution

The uniform distribution that you studied in the previous segment is the most basic example of a discrete probability distribution. In this segment, you will learn about one of the most important discrete distributions: the Binomial Distribution.

Note that any distribution cannot be applied for every experiment. So, before understanding the binomial distribution, you need to first learn about the nature of the experiment where it must be used. After understanding the binomial experiment, you will learn how to calculate the binomial probability for a certain experiment.

**Note**: In the next video, we will be using the binomial table to find the values corresponding to binomial distribution. It is recommended that you take a good look at the table and briefly view the contents.

![Binomial_Probability_Table](https://i.ibb.co/Lxr2yfR/Capture36.png)

Source: [Binomial Probability Table](https://www.sjsu.edu/people/saul.cohn/courses/stats/s0/BinomialProbabTable.pdf)

**VIDEO**

In this video, you learnt about the binomial distribution. In order to know when the binomial distribution can be applied, it is important that you learn the nature of the binomial experiment.

Let’s understand the binomial experiment with the help of an example. **Suppose you want to find the probability of getting Heads twice when tossing a coin five times**. Considering this example, the properties of a binomial experiment are as follows:  

**Note**: You must understand the **difference between an event and an experiment**. Each coin toss is defined as a single event or a trial. Tossing this coin five times is the experiment. An experiment consists of various events. As you learned in the video, the probability of each event (success of failure) will be known to us.  

- The experiment consists of a sequence of **n identical and independent trials**. Therefore, none of the trials affects the probability of the subsequent trial. In the coin-tossing experiment, each trial is a single coin toss, and each coin toss is independent of the other coin tosses.  

- Essentially, each trial has two possible outcomes: **‘Success’ and ‘Failure’**. In the coin-tossing experiment, there are two possible outcomes: ‘Heads’ and ‘Tails’. Getting a ‘Heads’ will be counted as a success.  

- **The probability of a success that is equal to p** is the same for each trial. Consequently, the **probability of a failure that is equal to (1 - p)** is constant for each trial. In the coin-tossing example, the probability of getting ‘Heads’ is p = 0.5, and probability of ‘Tails’ is (1 - p) = 0.5.

**Calculating the binomial probability**

The objective of this experiment is to find the **probability of getting exactly x successes in n trials**.

Let x be the random variable for this distribution, and it is defined as the number of successes in n trials. So, the values are as follows:

**P(x) = Probability of x successes in n trials**

Note that x being a random variable can take **discrete values between 0 and n**.

Using the example explained in the video, let’s find the probability of getting two successes in five trials through the following steps:  

- The first step is to find the different combinations of getting two successes and three failures. The 10 combinations that can be found are as follows:
  
  {SSFFF, SFSFF, SFFSF, SFFFS, FSSFF, FSFSF, FSFFS, FFSSF, FFSFS, FFFSS}  

- We can directly calculate the number of combinations using the combinations formula as follows:  
  $(^n_x) =\ ^{n!}/_{k!\ (n-k)!}$
  Where n = number of trails, k = number of successes.  
  On substituting n = 5 and k = 2 from our example, we get the value 10.  

- Now, let S = Success and F = Failure.  
  As getting each combination is equally likely, we can directly calculate the probability using 10 multiplied by the probability of a single combination. So, the **probability of two successes in five trials will be equal to:  
      = 10 x P(SSFFF)**  

- As you learnt previously, for independent trials, the probability can be obtained by multiplying the probability at each trial. So, the equation will be as follows:
  
  **10 x P(SSFFF) = 10 x P(S) x P(S) x P(F) x P(F) x P(F) = 10 x P(S)² x (1 - P(S))³**  
  
  Knowing that the value of **P(S) = 0.4**, we can substitute this value and calculate the **probability of getting two success in five trials is = 10 x 0.4² x 0.6³ = 0.3456**  
  
  Hence the probability of getting two heads in five coin tosses = 0.3456  

- You can match your values with those given in the table below.
  
  ![Capture37](https://i.ibb.co/RBTcVwF/Capture37.png)

So, the formula for finding **binomial probability** is given by:

$P(X=r) =\ ^nC_r(p)^r(1-p)^{n-r}$

Where **n** is **the number of trials**, **p** is the **probability of success**, and **r** is the **number of successes after n trials**.

The below code snippet shows how you can directly calculate the probability with the help of python.

```python
from scipy.stats import binom
n, p = 5, 0.4 # Define the n and p parameters

# For a value k, find the corresponding binomial probability

k = 2

binom.pmf(k, n, p) #Probability of 2 successes in 5 trials
```

The mean (expected value), the variance and the standard deviation for this distribution are as follows:

Mean (μ) = E(X) = np

Var = σ2 = npq

Standard deviation (σ) = √npq=√np(1−p)

**Note**: You are requested to remember these formulae since they may be asked in future interviews

The plot of the binomial distribution for different values of n and p is depicted in the graphs given below. As it is a discrete distribution, the probability is only defined for the whole numbers of x between 0 and n.

![Capture39](https://i.ibb.co/chtKwyK/Capture39.png)

An interesting point to note is that the binomial distribution peaks at the expected value. For example, in the first graph, = np = 10x0.4 = 4. You can notice how the distribution peaks at x = 4.

Now, let’s consider a use case of the binomial distribution with the help of this solved example.

## Solved Example

Suppose a team of medical researchers found that a certain drug did not have any effect on 20% of the patients. Assuming that the drug was tested on 20 patients, perform the following calculations:

a.   Compute the probability that two or fewer patients will be unaffected by the drug.

b.   Compute the probability that exactly four patients will be unaffected.

c.   Compute the probability that more than three patients will be unaffected.

d.   Find the expected number of patients who did not respond to the drug.

e.   Find the standard deviation for this binomial distribution.

Try to perform the calculations on your own before referring to the solution.

**VIDEO**

#### Binomial Distribution

Qn: If the probability that the bullet hits the target is 60% and if 10 bullets are fired, find the expected number of targets hit and the variance of this distribution.

- 5, 0.24

- 6, 2.4

- 4, 0.16

- 4, 1.6

Ans: B. *Here, p = 60% = 0.6 and q = 1-p = 40% = 0.4 and n = 10, therefore,*

*mean = np = 6*

*Variance = npq = 2.4*

Qn: A student attempts a test with 10 multiple choice questions, where each question has 4 possible options. She does not know the correct answer to any of the questions and just randomly selects one of the 4 options for each of them. The probability that she would still get 3 questions correct is:

- $^{10}C_3(^3/_4)^3(^1/_4)^7$

- $^{10}C_3(^1/_4)^3(^3/_4)^7$

- $^{10}C_3(^1/_4)^{10}$

- Binomial probability cannot be used here

Ans: B.*There are a total of 4 options. Hence, the probability that the student would randomly select the correct option is 1 / 4. Hence, p = 1 / 4. Now, the probability of getting 3 out of 10 questions correct can be found by using the binomial probability for n = 10, r = 3. Hence, the probability =* $^{10}C_3(^1/_4)^3(^3/_4)^7$ *= 0.25.*

Qn: Now, the test is modified by adding 5 true and false questions to the set of 10 MCQs. The student does not know the answer to the new questions either and randomly selects true or false for each of them too.

Now, according to binomial distribution, the probability that she would still get 5 of the 15 questions (5 true/false Qs, and 10 MCQs with 4 options) correct is:

- $^{15}C_5(^1/_4)^5(^3/_4)^{10}$

- $^{15}C_5(^1/_2)^5(^1/_2)^{10}$

- $^{15}C_5(^1/_4)^3(^1/_2)^2(^3/_4)^{10}$

- Binomial probability cannot be used here

Ans: D. *For 10 of the questions (MCQs), the probability of success is p = 1 / 4. However, for the remaining 5 questions (T/F questions), the probability of success is p = 1 / 2. Hence, you cannot use binomial probability here, as the probability of success is not the same in all the trials.*

Qn: Suppose you go to a shoe-shop to buy a pair of shoes. There are 50 pairs of shoes in the shop in-total. Every time you ask the shopkeeper to show you a pair of shoes, he draws 3 pair of shoes randomly from his stock of 50 pairs. If you don’t like any of the pairs, he places all the 3 of them back and then draws 3 pairs again, randomly. Out of all the 50 pairs, 7 pairs of shoes are defected. What is the expected number of defective shoes in a given trial?

Note: Round off your final answer to 2 decimal places

- 0.31

- 0.42

- 0.24

- 0.57

Ans: B.

- $X = \{0,\ 1,\ 2,\ 3\}$
- $P(X) = \{(^3C_0)(^7/_{50})^0(^{43}/_{50})^3,\ (^3C_1)(^7/*{50})^1(^{43}/*{50})^2,\ (^3C_2)(^7/_{50})^0(^{43}/_{50})^3,\,\ (^3C_3)(^7/_{50})^3(^{43}/_{50})^0\}$
- *Put the above terms in the formula $E[X] = \sum X*P(X)$ to get 0.42*

In the next segment, you will learn about the next type of probability distributions called the continuous probability distribution.
