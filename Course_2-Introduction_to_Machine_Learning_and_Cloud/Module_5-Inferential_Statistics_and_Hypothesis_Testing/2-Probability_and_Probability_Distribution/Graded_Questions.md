# Graded Questions

The following questions are graded. All the best!

## Comprehension

As you may already know, roulette is a popular casino game. Let’s understand how the roulette wheel's design ensures that in the long run, the player always loses and the house always wins.

This is a European roulette wheel.

![European-Roulette-Wheel](https://i.ibb.co/pQL7hhK/European-Roulette-Wheel.jpg)

It has the numbers 0 to 36 written in an irregular sequence. The players can bet on any number from 0 to 36. For example, let’s say that Kriti bets £100 on number 5. Now, a ball will be dropped into the wheel, which is then given a spin. If the ball lands on the pocket marked 5, Kriti will win (£100) * 36 = £3,600, resulting in net winnings of £3,600 - £100 = £3,500. However, if the ball lands on any other pocket, Kriti will not win anything, and net winnings will be equal to £0 - £100 = - £100.

Let’s see what the expected value is for Kriti’s net winnings if she plays this game and bets £100 on the number 5.

#### European Roulette Wheel

Qn: What is the probability of Kriti winning the game if she bets on the number 5?

- $^1/_{36}$

- $^1/_{37}$

- $^5/_{36}$

- $^5/_{37}$

Ans: B. *There are a total of 37 equally likely possibilities (0 to 36). However, there is only one possibility in which Kriti will win, i.e. the one in which the ball would land on the pocket marked 5. Hence, the probability of her winning the game is $^1/_{37}$.*

Qn: Now, let’s say that we define the random variable X as Kriti’s net winnings if she plays this game and bets £100 on the number 5. What is the expected value of X?

- £97.30

- -£2.70

- £98.15

- -£1.85

Ans: B. *There are two possible values of X, 3,500 and -100. The probability of Kriti’s net winnings being 3,500 is basically the probability of her winning the game, which, as we saw in a previous question, is 1/37. The probability of her net winnings being equal to -100 is basically the probability of her losing the game, which is 36/37. So, the expected value of* $X = P(X=-100)*(-100) + P(X=3500)3500 = (36/37)(-100)+(1/37)*(3500) = -2.70$

![Uniform_Distribution](https://i.ibb.co/rsvL7Wz/Graphic-7.png)

The graph above represents the PDF of a uniformly distributed random variable X (p = 0.1). As you can see, the probability density is equal for all the possible values of X (-5 to +5).

#### Uniform Distribution

Qn: What is the probability of the random variable X lying between -1.5 and +2.5, i.e. P(-1.5<X<2.5)?

- 0.1

- 0.4

- 0.6

- 0.7

Ans: B. *The probability of the variable lying between -1.5 and 2.5 would be equal to the area under the PDF, between X = -1.5 and X = 2.5. This would be equal to the area of a rectangle, with breadth 0.1 and length 2.5 - (-1.5) = 4. Multiplying the two, you get the area of the rectangle, which is equal to $0.1*4$ = 0.4.*

## Comprehension

In the light of the heavy rains and the consequent floods in Kerala, the state government decided to find out how probable these types of rainfalls are during the month of August so that they can redesign the current state infrastructure and prepare themselves for such future events.

From historical data, it was found that the average rainfall received by Kerala in the month of August was 1600 mm with a standard deviation of 400 mm. Assuming that the rainfall data follows a normal distribution, answer the following questions.

#### Normal Distribution

Qn: It was calculated that the floods were caused by a rainfall of 2200 mm. From the given information, what would be the probability that the state receives more than 2200 mm of rainfall in this period?

- 3.5%

- 4.8%

- 1.2%

- 6.7%

Ans: D. *Let X be defined as the rainfall (measured in mm) with μ = 1600 and σ = 400. Now for the given question, we need to calculate  P(X>2200). Converting it to Z we have to find P(Z> (2200-1600)/400) or P(Z>1.5). Now we have P(Z>1.5)= 1 - P(Z<=1.5).From the Z-table we have  $P(X<=1.5) = 0.9332.\ Thus,\ P(X>1.5) = 1 - 0.9332= 0.0668$= 6.7%*

#### Normal Data

Qn: At what cutoff rainfall value should the current infrastructure be redesigned so that there is only a 3% chance that either similar or heavier rains are observed in the future?

- 2433 mm

- 2352 mm

- 2295 mm

- 2330 mm

Ans: B. *Let X be defined as the rainfall and the cutoff rainfall be denoted by x. Given that μ= 1600 and σ= 400. Thus the Z-value corresponding to x would be (x-1600)/400. Let it be denoted by z. Now as per the question P(Z>=z)= 0.03. This can be written as 1-P(Z<z) =0.03 or P(Z<z)= 0.97. Then from the tables, you get the value of z that satisfies the previous equation as 1.88. Thus you have* $(x-1600)/400 =1.88\ or\ x =1600+1.88*400 = 2352$

## Comprehension

Let’s say you **work as a business analyst** at a **pharma company** which manufactures an antipyretic drug (tablet form) with **paracetamol** as the active ingredient. The amount of paracetamol specified by the drug regulatory authorities is **500 mg** with a **permissible error** of **10%**. Anything below 450 mg would be a quality issue for your company since the drug will be ineffective, while above 550 mg would be a serious regulatory issue.

#### Cumulative Probability Distributions

Qn: The regulatory authority selects a random tablet from Batch Z2. Based on previous knowledge, you know that Batch Z2 has a mean paracetamol level of 510 mg, and its standard deviation is 20 mg.

What is the probability that the tablet that has been selected by the authority has a paracetamol level below 550 mg?

- 48%

- 95%

- 98%

- 93%

Ans: C. *Let’s define X as the amount of paracetamol in the selected tablet. Now, X is a normally distributed random variable, with mean μ = 510 mg and standard deviation σ = 20 mg. Now, you have to find the probability of X being less than 550, i.e. P(X<550). Converting this to Z, you get $P(X<550) = P(Z<{550-510}/20) = P(Z<2) = 0.977,\ or\ 97.7\%$*

Qn: Now, the company’s QC (Quality Control) department comes and selects a tablet at random from Batch Z2. It is interested in finding if the paracetamol level is above 450 mg or not. What is the probability that the tablet selected by QC has a paracetamol level above 450 mg?

- 99.87%

- 99.74%

- 49.87%

- 99.61%

Ans: A. *Let’s define X as the amount of paracetamol in the selected tablet. Now, X is a normally distributed random variable, with mean μ = 510 mg and standard deviation σ = 20 mg. Now, you have to find the probability of X being more than 450, i.e. P(X>450). Converting this to Z, you get $P(X>450) = P(Z>{450-510}/20) = P(Z>-3) = 1 - P(Z<-3) = 0.9987,\ or\ 99.87\%$*

Qn: Now, let’s say that QC decides to sample one more tablet. This time, it selects a tablet from Batch Y4. Based on previous knowledge, you know that Batch Y4 has a mean paracetamol level of 505 mg, and its standard deviation is 25 mg. This time, QC wants to check both the upper limit and the lower limit for the paracetamol level.

What is the probability that the tablet selected by QC has a paracetamol level between 450 mg and 550 mg?

- 91%

- 93%

- 95%

- 97%

Ans: C. Let’s define X as the amount of paracetamol in the selected tablet. Now, X is a normally distributed random variable, with mean μ = 505 mg and standard deviation σ = 25 mg. Now, you have to find the probability of X being more than 450 and less than 550, i.e. P(450 < X < 550). Converting this to Z, you get $P(450 < X < 550) = P({450-505}/25 < Z < {550-505}/25) = P(-2.2 < Z < 1.8) $

$= P(Z < 1.8) - P(Z  < -2.2) = 0.9641 - 0.0139 = 0.9502,\ or\ 95\%$.
