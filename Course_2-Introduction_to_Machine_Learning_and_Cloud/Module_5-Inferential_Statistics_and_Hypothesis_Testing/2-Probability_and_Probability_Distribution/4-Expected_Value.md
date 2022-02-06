# Expected Value

Again, let’s go back to the three-step process we followed to find whether the upGrad red ball game was profitable for the players or for the house:

1. Find all the possible combinations.
2. Find the probability of each combination.
3. Use the probabilities to estimate the profit/loss per player.

Now that you have completed steps 1 and 2, let’s move on to step 3, where you will use the probabilities you calculated to estimate the profit/loss per player.

**VIDEO**

So, the expected value of a variable X is the value of X you would ‘expect’ to get after performing the experiment once. It is also called the expectation, average, and mean value. Mathematically speaking, for a random variable X that can take values x1,x2,x3,...,xn, the expected value (EV) can be given as:

$EV = x_1*P(X=x_1) + x_2*P(X=x_2) +x_3*P(X=x_3) + ...... + x_n*P(X=x_n)$

The expected value should be interpreted as **the average value** you get after the experiment has been conducted **an infinite number of times**. For example, the expected value for the number of red balls is 2. This means that if we conduct the experiment (play the game) infinite times, the average number of red balls per game would end up being 2.

As you may recall, for our red ball game, the expected value came out to be 2. What does that mean? How does that even help us with our original question, which was: ‘How much money, on average, is the house expected to make?’ Well, it does not. So, you may want to define the random variable in a different way. What if you define it as the money won after playing the game once? This could help you determine whether the house will make or lose money in the long run.

Let’s explore that in the following video.

**Note:** At 1:53, the expected value is given to be +3.175, but it's actually **+3.125**. Please ignore the small mistake in the PPT.

**VIDEO**

Now, as you saw, if a lot of players play this game, the money lost per game by the house on average would be ₹3.125. This means that if this game is played, say, 1,000 times, the house will lose ₹3125 rupees. This is clearly a disaster for the house. To overcome this, you can try any of the following three options:

- Decrease the prize money.
- Increase the penalty.
- Decrease the player’s chances of winning.

In this segment, you learnt to calculate the expected value. For any question, remember that calculating the expected value is a three-step process:

1. Define the random variable (X).
2. Calculate the probability distribution P(X). You’ll need to calculate it on your own.
3. Plug the above two terms in the following formula:  
   $E[X] = \sum(X*P(X))$

Can you try and solve the questions below to test your understanding of expected value.

#### Expected Value Calculation

Qn: Let's suppose you’re playing the upGrad ball game with the same rules as before, only this time, you have 1 red ball and 2 blue balls in the bag. What will the expected number of red balls in one game be, in this case?

- 1

- 1.33

- 1.74

- 2

Ans: B. Recall that expected value is given as:

$EV = x_1*P(X=x_1) + x_2*P(X=x_2) +x_3*P(X=x_3) + ...... + x_n*P(X=x_n)$

Thus, the expected value can be calculated using the probability of each outcome. These probabilities are:

$P(X = 0) =\ ^{16}/_{81}$

$P(X = 1) =\ ^{32}/_{81}$

$P(X = 2) =\ ^{24}/_{81}$

$P(X = 3) =\ ^{8}/_{81}$

$P(X = 4) =\ ^{1}/_{81}$

*Hence, EV becomes:*

$EV = 0 *\ ^{16}/_{81} + 1*\ ^{32}/_{81} + 2 *\ ^{24}/_{81} + 3 *\ ^{8}/_{81} + 4*\ ^{1}/_{81} =\ ^{108}/_{81} \approx 1.33$

Qn: Consider the following probability distribution for X, where X is the net revenue of the project:

| X (Net Revenue of Project, in ₹ Crore) | P(x) |
| -------------------------------------- | ---- |
| -305                                   | 0.1  |
| +15                                    | 0.7  |
| +95                                    | 0.2  |

Now we are in a position to find the expected value for X, the return of the project. This is called the **expected return.** If it comes out to be negative, we can say that the project is not worth investing in.

Find the expected value of X. (Answer in terms of crores.)

- -₹2 crore.

- -₹1 crore.

- ₹1 crore.

- ₹2 crore.

Ans: B. *The expected value of X, which is also called the expected return, is equal to:*

$(-305) *P(X = -305) + (+15)* P(X = +15) + (+95) * P(X = +95)$

$= (-305) *0.1 + (+15)* 0.7 + (+95) * 0.2$

$= -₹1 crore$.

*So, the expected return of the project is -₹1 crore. Hence, we can conclude that the project is not worth investing in.*

Qn: Suppose you’re conducting an experiment by tossing two coins simultaneously. You then note down the number of tails in each toss. How many tails can you expect on average in each experiment on average?

Note: Round off your answer to 2 decimal places. If your answer if 1.333333, write 1.33 in the box.

- 0

- 2

- 1

- 0.5

Ans: C.

- The random variables X = {0, 1, 2}

- $P(X) = \{^1/_4,\ ^1/_2,\ ^1/_4\}$

- $E[X] = 0*\ ^1/_4 + 1*\ ^1/_2 + 2*\ ^1/_4 = 1$

Qn: Rahul wants to play a poker game. The entry charge for the game is a non-refundable INR 2000 and probability that Rahul wins a poker game is 3%. The prize money is INR 50000. If Rahul wins, he gets the prize money. If he loses, he gets nothing. What's his expected earning/loss per game?

Note: Round off your final answer to 2 decimal places. If your answer if 1.333333, write 1.33 in the box.

- 1000

- -500

- 100

- -200

Ans:  B.

- $X = \{+48000,\ -2000\}$. In case Rahul wins, he'll get 50,000 but since he's spent 2000 as the ticket, the net profit will be 48000.
- $P(X) = \{0.03,\ 0.97\}$
- $E[X] = +48000*0.03 - 2000*0.97 = 1440-1940 = -500$

Qn: This question is a continuation of the previous question. Based on the expected value of the previous question, which of the following is a possibility for Rahul?

Note: Multiple answers might be correct.

- Rahul wins INR 50,000 prize money in the first game.

- Rahul loses all the first 100 games.

- Rahul loses INR 500 rupees in the first game.

Ans: A & B.

- If Rahul wins the quiz, he'll get INR 50,000. So this is possible.

- This is possible. However, the possibility of this happening is really small.
