# Probability Distribution

This will be a very interactive session, with a lot of questions that will compel you to think about a concept, helping you explore it more actively.

We will initially use the example of a ball game to understand probability and its concepts better, and later on, we will move on to more business-relevant examples.

So, let’s get started.

**VIDEO**

**Note:** At 1:50, the PPT shows "You're required to pick a bag from a ball". It should be "You're required to pick a ball from a bag". Please ignore this mistake.

Recall that in our upGrad game example, we need to find out if the game will be profitable for the players or for us (i.e., the house) in the long run. The three-step process for this is:

1. Find all the possible combinations.
2. Find the probability of each combination.
3. Use the probabilities to estimate the profit/loss per player.

So far, you have completed step 1, and are on step 2, i.e., finding the probability of each combination. For this purpose, let us define a random variable X, which will help us convert the outcomes of our experiment to something measurable.

Let us define the random variable X where

**X = Number of red balls**

Now, let’s find the probability of each of these combinations.

**VIDEO**

You saw that the random variable X can take a total of 5 values, i.e., 0, 1, 2, 3, and 4, and the probabilities of X taking each of these values came out to be:

- $P(X = 0) = 1 *(^1/_2)* (^1/_2) * (^1/_2) * (^1/_2) =\ ^1/_{16}$ (0 red balls and 4 blue balls)
- $P(X = 1) = 4 *(^1/_2)* (^1/_2) * (^1/_2) * (^1/_2) =\ ^4/_{16}$  (1 red ball and 3 blue balls)
- $P(X = 2) = 6 *(^1/_2)* (^1/_2) * (^1/_2) * (^1/_2) =\ ^6/_{16}$  (2 red balls and 2 blue balls)
- $P(X = 3) = 4 *(^1/_2)* (^1/_2) * (^1/_2) * (^1/_2) =\ ^4/_{16}$ (3 red balls and 1 blue ball)
- $P(X = 4) = 4 *(^1/_2)* (^1/_2) * (^1/_2) * (^1/_2) =\ ^4/_{16}$ (4 red balls and 0 blue balls)

The number multiplied at the beginning of each equation indicates the total number of permutations possible for that particular outcome.

Furthermore, you plotted each of these probabilities to get a visual idea of what the probability of each outcome looks like:

![Probability-Distribution-of-the-up-Grad-Ball-Game](https://i.ibb.co/0p77mQL/Probability-Distribution-of-the-up-Grad-Ball-Game.png)

#### Probability

Qn: Now, suppose you’re playing the upGrad ball game with the same rules as before, only this time, you have 1 red ball and 2 blue balls in the bag. What will be the probability of obtaining red balls in all the 4 picks?

- $^1/_3$

- $^1/_{16}$

- $^1/_{27}$

- $^1/_{81}$

Ans: D. The probability of drawing a red ball in one chance is equal to ⅓, as in this case, there are 1 red and 2 blue balls. So, using the multiplicative rule of probability, the probability of drawing a red ball on all four occasions will be $^1/_3 * ^1/_3 *\ ^1/_3* \ ^1/_3 =\ ^1/_{81}$.

Qn: What will the probability of obtaining all the other combinations (i.e., except the combination of 4 red balls) be?

- 80/81

- 26/27

- 15/16

- 16/81

Ans: A. The probabilities of the other combinations are:  

$P(X = 0) = 1 *(^2/_3)* (^2/_3) * (^2/_3) *(^2/_3) =\ ^{16}/_{81}$
$P(X = 1) = 4* (^1/*3)* (^2/_3) * (^2/_3) *(^2/_3) =\ ^{32}/*{81}$

$P(X = 2) = 6 *(^1/*3) *(^1/_3)* (^2/_3) * (^2/_3) =\ ^{24}/*{81}$

$P(X = 3) = 4 *(^1/*3) *(^1/_3)* (^1/_3) * (^2/_3) =\ ^{8}/*{81}$

*When you add all of these up, you get $^{80}/_{81}$.*

*Alternatively, since the sum of all the probabilities should be 1, you could also have computed the probabilities of the remaining combinations as $(1 -\ ^1/_{81}) =\ ^{80}/_{81}$.*

Now that you've computed the probabilities, it's time to analyse whether the house will make or lose money in the long run. Let's move on to that in the next segment.
