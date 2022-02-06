# Probability : Definition and Properties

Now that you've understood the two fundamental rules of counting, we'll go ahead and finally establish theformal definition of probability. Let's hear from Amit as he explains the same with the help of an example.

**VIDEO**

As explained in the video, the formula for calculating the probability is:

Probability=No of desired outcomesTotal no of possible outcomes.

Now there are some additional concepts and properties of probability that you need to know in order to understandit better. Let's hear from Amit as he discusses the same.

**VIDEO**

As explained in the video, probability values have the following two major properties:

- **Probability values always lie in the range of 0-1**. The value is 0 in the case of an impossible event (like the probability of you being in Delhi and Mumbai at the same time) and 1 in the case of a sure event (like the probability of the sun rising in the east tomorrow).
- **The probabilities of all outcomes for an experiment always sum up to 1**. For example, in a coin toss, there can be two outcomes, heads or tails. The probability of both of the outcomes is 0.5 each. Hence, the sum of the probabilities turns out to be 0.5 + 0.5 = 1.

Next, you learnt a couple of definitions thatare crucial in understanding probability. They are as follows:

- **Experiment:**Essentially, any scenario for which you want to compute the probabilities for that scenario to be considered an experiment. It is of two types:
  - Deterministic: Outcome is the same every time.
  - Random: Outcome can take many possible values. Throughout the majority of our business analytics course, we'll be discussing the random experiment only.
- **Sample Space:** A sample space is nothing but the list of all possible outcomes of a random experiment. It is denoted by S = {all the possible outcomes}. For example, in the coin toss example, the sample space S = {H, T}, where H = heads and T = tails.
- **Event**: It is a subset, i.e., a part of the sample space that you want to be true for your probability experiment. For example, if in a coin toss you want heads to be the desired outcome, then the event becomes {H}. As you can see clearly, {H} is a part of {H, T}.

Now if you observe the definitions carefully, you'll seethat the probability formula can be modified as follows:

$Probability =\ ^{Total\ no\ of\ outcomes\ in\ event}/_{Total\ no\ of\ outcomes\ in\ sample\ space}$.

Now the counting principles that you learnt earlier will help youcompute the total number of outcomes in both the sample space and the event that you're interested in. Solve the following questions in order to drive home these concepts.

#### Concepts of Probability

Qn: Let's say you have a box containing five cards with the letters 'B', 'R', 'E', 'A' and 'D' written on them.Now you're asked to pick a card randomly from the box, and each time you pick a card, you note down the letter written onit and keep the card outside the box. You continued this process five times until no cards are left in the box.What is the probability that you picked the letters in the same sequence as the word 'BREAD'?

- $^1/_{240}$

- $^1/_{36}$

- $^1/_{120}$

- $^1/_{24}$

Ans: C. *For calculating the probability, first, you need to find the number of outcomes in the sample space, i.e., the number of ways in which you can pick five letters from the box. This is a case of permutation since the order is of importance for forminga word. Therefore, the total number of outcomes in the sample space is 5! =120. The event here would be the outcome where you pick the cards in the exact sequence 'BREAD'. Hence, the total number of outcomes in the event would be 1. Since probability = (Total number of outcomes in the event)/(Total number of outcomes in sample space), this value comes out to be $^1/_{120}$.*

#### Properties of Probability

Qn: Which of the following options cannot be the probability of a particular event in any scenario?

- 0.1

- -0.2

- 1.4

- Both -0.2 and 1.4

Ans: D. *Recall the rules of probability. It states that the probability of any event must lie between [0,1]. Both -0.2 and 1.4 do not lie in this range. Hence, this is the correct option.*

Qn: Assume that for a particular experiment there are five possible outcomes. Now the probabilities of the first three outcomes aregiven as 0.1, 0.2 and 0.3, respectively. You don't know the exact probabilities of the last two outcomes, but you do know that the probability of the fifth outcome is three times the probability of the fourth outcome. Can you use the rules of probability to find the probabilities of the fourth and fifth outcomes?

- 0.1 and 0.3

- 0.2 and 0.6

- 0.3and 0.9

- 0.4 and 1.2

Ans: B. *Take the probability of the fourth outcome as x. Thus, as per the question,the probability of the fifth outcome would be 3x. Now, the total probability of all the outcomes = 0.1+ 0.2 +0.3 + x +3x = 0.6 + 4x. Now from the rules of probability, we have that the sum of all the probabilities for a particular experiment turns out to be 1. Thus, we can write, 0.6 + 4x = 1, solving which we get x = 0.1. Thus, the probability of the fourth outcome is 0.1 and that of the fifth outcome is 0.3.*

You've learnt the basic definition of Probability and its associated properties. Next, we'll discuss more on the types of events that you generally encounter while computing probabilities
