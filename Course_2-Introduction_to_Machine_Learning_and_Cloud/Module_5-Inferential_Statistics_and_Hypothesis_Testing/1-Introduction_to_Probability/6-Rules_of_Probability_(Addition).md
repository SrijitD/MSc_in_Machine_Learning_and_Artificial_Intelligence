# Rules of Probability - Addition

In the previous examples that you saw, we were always involved in finding the probability of a single event. For example,

- The probability of getting an ace card from a deck of 52 cards
- Or the probability of selecting three bowlers from a list of four
- and so on...

Now, what about two events occurring simultaneously? For example, what would be the **probability of selecting an ace card or a heart card** from the deck? How would this specific probability relate to the individual probabilities, i.e., the probability of getting a heart card separately and the probability of getting an ace card separately? This is something that you'll get to learn using the two important rules related to probability, the addition rule and the multiplication rule. First, we'll discuss the **addition rule** in the following lecture.

**VIDEO**

So, to summarise the learnings from the above video, when you have the individual probabilities of two events A and B, denoted by **P(A)** and **P(B)**, the addition rule states that the probability of the event that either A or B will occur is given by

$P(A∪B) = P(A) + P(B) - P(A∩B)$,

where **P(A∪B)** denotes the probability that either the event A or B occurs.

            **P(A)** denotes the probability that only the event A occurs

              **P(B)** denotes the probability that only the event B occurs

              **P(A∩B)** denotes the probability that both the events A and B occur simultaneously.

**Note**: The symbols ∪ and ∩ are obtained from the world of '**set theory**' and are used to denote **union** and **intersection**, respectively. You don't need to learn about them in detail right now. All you need to learn are the meanings of the probability terms mentioned above. Also, we would be skipping the proof of the formula right now. Another important thing to note here is that the formula given above works for all types of events  A and B, irrespective of the fact that they're independent or disjoint, etc.

You can also read **P(A**∪**B)** as **P(either event A or B occurs)** and **P(A**∩**B)**  as **P(both events A and B occur)**.

As mentioned in the video, for disjoint events A and B, $P(A∩B) = 0$ since both cannot occur simultaneously. Hence, the formula can be rewritten as $P(A∪B) = P(A) + P(B)$.

Now answer the following questions.

#### Addition Rule

Qn: A and B are two candidates applying for the job role of an analyst at a leading analytics firm in Delhi. They've cleared all the previous rounds and are now set for the final interview after which only one of them will be selected for the job. Candidate A has a probability of 0.3 of getting the job and Candidate B has a probability of 0.25 of getting the job. Now what is the probability that one of the two gets the job?

- 0.40

- 0.45

- 0.55

- 0.75

Ans: C. _Here P(A) = 0.3 and P(B)= 0.25. You need to find P(A⋃B). Also, observe that P(A) and P(B) are disjoint, i.e., both of them cannot get the job simultaneously._

_Now_ $P(A⋃B) = P(A)+P(B)+P(A⋂B)$.

_Since, the events are disjoint, P(A⋂B) = 0._

_Therefore, the probability that one of them gets the job =_ $P(A⋃B) =  P(A)+P(B) = 0.3 + 0.25 = 0.55$.

In the next segment, you will learn about the multiplication rule of probability.
