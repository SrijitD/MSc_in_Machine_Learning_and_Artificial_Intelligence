# Summary

Here's a summary of what you've learnt in this session.

First, you're were introduced to two main counting principles through which you can calculate the probability for the outcomes that you're interested in. These counting principles are

- **Permutations**:  A permutation is a way of arranging a selected group of objects in such a way that **the order is of significance**. For example,  arranging some letters to form different words, arranging the top order batsmen of a team, or finding all the ways in which a group of friends can be seated in a cinema hall - all these methods use permutations. When there are 'n' objects to be arranged among 'r' spaces the permutation value is  given by the formula

n!(n−r)!

- **Combinations**: When you just have to choose some objects from a larger set and the **order is of no significance**, then the rule of counting that you use is called **combination**. For example, if you need to find the number of ways you can choose 3 vowels from the given list of 5, or choose 4 bowlers from the given roster of 7 - all these methods use combinations. If you want to choose 'r' objects from a larger set of 'n' objects, then the number of ways in which you can do that is given by the formula

nCr=n!r!(n−r)!

Next, you were formally introduced to the definition of probability, which is given as,

Probability=No of desired outcomesTotal no of possible outcomes

Then you learnt about some specific terms related to probability - events, sample space and experiments. You also learnt some basic rules of probability

- Probability values always lie between [0-1]
- Probability values for all outcomes of an experiment always add up to 1.

Then you learnt about specific types of events that can be encountered while computing probabilities of more than two events. They are:

- **Independent Events:** If you have two or more events and the occurrence of one event has no bearing whatsoever on the occurrence/s of the other event/s, then all the events are said to be independent of each other.
- **Disjoint or Mutually Exclusive Events:** Now two or more events are mutually exclusive when they do not occur at the same time; i.e., when one event occurs, the rest of the events do not occur.

You also learnt about the idea of complement **A'** for any event A and the probability rule for them, i.e. **P(A) + P(A') =1**.

After that, you were introduced to 2 main rules of probability that help you in finding the probabilities of 2 or more events. They are:

- **Addition Rule**:  When you have the individual probabilities of two events A and B, denoted by **P(A)** and **P(B)**, the addition rule states that the probability of the event that either A or B will occur is given by
  
  **P(A∪B)** = **P(A) + P(B) - P(A∩B)**,
  
  where **P(A∪B)** denotes the probability that either the event A or B occurs. 
  
              **P(A)** denotes the probability that only the event A occurs
  
              **P(B)** denotes the probability that only the event B occurs
  
              **P(A∩B)** denotes the probability that both the events A and B occur simultaneously.

- **Multiplication Rule**: When an event A is not dependent on event B and vice versa, they are known as independent events. And the multiplication rule allows us to compute the probabilities of both of them occurring simultaneously, which is given as
  
  **P(A and B)** = **P(A)*P(B)**.
  
  Now, this rule can be extended to multiple independent events where all you need to do is multiply the respective probabilities of all the events to get the final probability of all them occurring simultaneously. For example, if you have four independent events A, B, C and D, then
  
  **P(A and B and C and D) = P(A)*P(B)*P(C)*P(D)**.

Finally, you also saw a comparison between addition rule and multiplication rule that would help you to decide which formula to use in a given scenario. If the question mentions an **'OR'** to denote the relationship between the events, then the rule that you need to apply is the addition rule. That is, either of the given events can occur at that time, **P(Event A or Event B)**. Else, if an **'AND'** is used to denote the relationship between the events, then the multiplication rule is used. Here, the events need to happen simultaneously and must be independent, **P(Event A and Event B)**.

We can use three approaches for generating the likelihood of an event

- Equal Likelihood Approach

- Relative Frequency Approach

- Judgemental Approach

Following are the important types of probability: 

- **Marginal Probability**: It is the probability of an event independent of another event happening simultaneously.

- **Joint Probability**: It is the probability of two or more events happening simultaneously.

- **Conditional Probability**: It is the probability that an event occurs as a result of some other event that has already occurred.

The general multiplication rule links all three types of probability:

![](https://i.ibb.co/wQgsWph/Conditional-Probability-B-given-A.png)


