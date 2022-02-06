# Rules of Probability - Multiplication

Now that you've understood the addition rule and how it can be used to compute the probabilities of two events A and B, let us now go ahead and understand the concept of the multiplication rule.  This rule is applicable only on independent events about which you've already learnt before. Let's take a look at how you can compute the probabilities of two events A and B occurring simultaneously.

**VIDEO**

As discussed in the video as well as in the previous segments, when an event A is not dependent on event B and vice versa, they are known as independent events. And the multiplication rule allows us to compute the probabilities of both of them occurring simultaneously, which is given as

$P(A and B) = P(A)*P(B)$.

Now, this rule can be extended to multiple independent events where all you need to do is multiply the respective probabilities of all the events to get the final probability of all them occurring simultaneously. For example, if you have four independent events A, B, C and D, then

$P(A\ and\ B\ and\ C\ and\ D) = P(A)*P(B)*P(C)*P(D)$.

## **Comparison between Addition Rule and Multiplication Rule**

Both addition rule and multiplication rule allow you to compute the probabilities of the occurrence of multiple events. However, there is a key difference between the two, which should help you to decide when to use which rule.

- The addition rule is generally used to find the probability of multiple events when **either of the events can occur at that particular instance**. For example, when you want to compute the probability of picking a face card or a heart card from a deck of 52 cards, a successful outcome occurs when either of the two events is true. This includes either getting a face card, a heart card, or even both a face and a heart card. This rule works for all types of events.
- The multiplication rule is used to find the probability of multiple events when all the events need to occur simultaneously. For example, in a coin toss experiment where you toss the coin three times and you need to find the probability of getting three Heads at the end of the experiment, a successful outcome occurs when you get a Head in the first toss, a Head in the second toss and a Head in the third toss as well. This rule is used for independent events only.
- Also in the addition rule, do you remember the **P(A**⋂**B)** that we used to compute the final value of P(A⋃B)? This value is **exactly the same as the P(A and B)** that we compute in independent evens using the multiplication rule. You can go back and verify it for the same example shown in the video. There we had P(Heart Card) = P(H) = 13/52, P(Face Card) = P(F) = 12/52 and P(Heart Card  and Face Card) = P(H⋂F) = 3/52.  Now as mentioned by the multiplication rule, you can see that P(H and F) = P(H)*P(F) = (13/52)*(12/52) = 3/52, which is the same as the value of P(H⋂F).

**Note:** A helpful hint here to decide when to use the addition rule and when to use the multiplication rule is to observe the language of the question. If the question mentions an '**OR**' to denote the relationship between the events, then the rule that you need to apply is the **addition rule**. That is, either of the given events can occur at that time, **P(Event A or Event B)**. Else, if an '**AND**' is used to denote the relationship between the events, then the **multiplication rule** is used. Here, the events need to happen simultaneously and must be independent, **P(Event A and Event B)**.

Now answer the following questions to strengthen your concepts in the topics taught in the last two segments.

#### Addition vs Multiplication

Qn: Consider the two statements given below and choose the correct option.

1. Statement 1: The probability of Rahul playing in today's match is 0.25, whereas that of Bumrah is 0.35. You need to find the probability that either of them will play in today's match.

2. Statement 2: The probability of Rahul playing in today's match is 0.25, whereas that of Bumrah is 0.35. You need to find the probability that both of them will play in today's match.

- Statement 1 uses the addition rule, whereas Statement 2 uses the multiplication rule to find the probability that is being asked.

- Statement 1 uses the multiplication rule, whereas Statement 2 uses the addition rule to find the probability that is being asked.

- Both of them use the addition rule to find the probability that is being asked.

- Both of them use the multiplication rule to find the probability that is being asked.

Ans: A. *Observe that in the first statement either of the events can occur. So there is an 'OR' involved here. That is, you need to find P('Rahul' OR 'Bumrah'). In the second statement, however, both the events are occurring simultaneously. Hence, there is an 'AND' involved here, i.e., you need to find P('Rahul' AND 'Bumrah'). Therefore, in the first statement, you'll be using the addition rule to find the probability, whereas in the second statement, you will use the multiplication rule.*

#### Addition and Multiplication Rules

Qn: Now, what is the probability that either Rahul or Bumrah will play in today's match, given that their individual probabilities of playing are 0.25 and 0.35, respectively? Also, it is mentioned that both the events are not dependent on each other.

- 0.69

- 0.6

- 0.0875

- 0.51

Ans: D. *Let 'A' denote the event that Rahul plays in the match and 'B' denote the event that Bumrah plays in the match. It is given that P(A) = 0.25 and P(B) = 0.35. Also, it is given that A and B are independent. You need to find P(A⋃B). Now this is given by the formula P(A⋃B) = P(A) + P(B) - P(A⋂B). Now,*

$P(A) = 0.25$

$P(B) = 0.35$

$P(A⋂B) = P(A and B) = P(A)*P(B) = 0.25*0.35 = 0.0875$ (since A and B are independent)

Therefore, the final probability is $0.25 + 0.35 - 0.0875 = 0.5125 \approx 0.51$.

In the next segment, you will learn about the approaches for generating probability.
