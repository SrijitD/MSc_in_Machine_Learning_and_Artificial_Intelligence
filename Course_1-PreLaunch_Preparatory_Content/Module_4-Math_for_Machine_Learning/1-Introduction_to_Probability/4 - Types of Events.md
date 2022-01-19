# Types of Events

In the previous segment, you understood how probability is defined formally and also learned some of its properties. You were also introduced to the concept of 'events', situations or scenarios for which we compute the probabilities. In this segment, we'll take a look at the different types of 'events' that can be defined. Note that earlier you considered a single event for which you computed the probabilities. Now you'll look at two or more events and understand how they are related to each other.

The two main categories of events that you need to know right now are **independent** events and **disjoint** or **mutually exclusive** events. Let's learn their formal definitions:

- **Independent Events:** If you have two or more events and the occurrence of one event has no bearing whatsoever on the occurrence/s of the other event/s, then all the events are said to be independent of each other. For example, the chances of rain in Bengaluru on a particular day has no effect on the chances of rain in Mumbai 10 days later. Hence, these two events are independent of each other.
- **Disjoint or Mutually Exclusive Events:** Now two or more events are mutually exclusive when they do not occur at the same time; i.e., when one event occurs, the rest of the events do not occur. For example, if a student has been assigned grade C for a particular subject in an exam, he or she cannot be awarded grade B for the same subject in the same exam. So the events that a student gets a grade of B or C in the same subject are mutually exclusive or disjoint.

Now, what about events that are both independent and mutually exclusive? Do such events exist? Let's hear from Amit as he explains the difference between the two.

**VIDEO**



Two or more events cannot be independent and disjoint simultaneously. Two events can be either exclusively independent or exclusively disjoint. Here are some examples to drive home this point

- The events 'Customer A buys the product' and 'Customer B buys the product' are independent whereas the events 'Customer A buys the product' and 'Customer A doesn't buy the product' are disjoint.
- The events 'You'll win Lottery A' and 'You'll win Lottery B' are independent whereas 'You'll win Lottery A' and 'You won't win Lottery A' are disjoint events.

## **Complement Rule for Probability**

Now disjoint events have one special property that is pretty intuitive and easy to understand. For example, if A and B are 2 disjoint events, let's say A = 'Event that it rains today' and B =' Event that it doesn't rain today' and you know the P(A) = 0.3. Can you guess what P(B) might be?

You must have guessed the answer here. It is nothing but 1 - P(A) = 1 -0.3 =0.7. This is something known as the **complement rule for probability**. It states that if A and A' are two events which are mutually exclusive/ disjoint and are complementary/negation of each other (you can read **A'** as **'not A'**), then

**`P(A) + P(A') =1`**

In the above example, B is the complement of A and hence P(B) = 1 - P(A) = 1 - 0.3 = 0.7. Here are some examples, where you can use this rule to find the probability of the complement of an event.

- If the probability that a customer buys a product is 0.4, then the probability that he/she doesn't buy the product is 0.6.
- If the probability that you win the lottery is 33% then the probability that you don't win the lottery is 67%
- and so on...

This rule is basically an extension from the basic rule of probability that you learnt previously - **the sum of probabilities for all events always add up to 1**. You can read more about the complement rule for probability [here](https://www.ck12.org/probability/complement-rule-for-probability/lesson/Complement-Rule-for-Probability-ADV-PST/).

Now answer the following questions to strengthen your conceptual understanding of the aforementioned topics

## Comprehension

[Box8](https://box8.in/) is an online food-ordering app that operates in 4 major cities of India - Mumbai, Bengaluru, Pune and Gurgaon. Next week, it is going to launch a month-long marketing campaign for its membership program - **Box8 Pass**, that gives access to a flat 25% discount on all orders and access to other exclusive discounts and benefits in the city of Mumbai.

Now, the lead business analyst of the company has estimated that there is a high chance that they'll gain around 500 new subscribers at the end of this campaign. She also calculated that they need at least 200 new subscribers to make sure that they recuperate the costs of the campaign and break even.

Now that you've learned 2 of the most common types of events that you generally encounter - **independent** and **disjoint** events, you'll learn some rules to compute the probabilities of those events using the addition rule and the multiplication rule.



#### Types of Events

Qn: Consider the following statements and choose the correct option

Statement 1: Event A denotes the scenario where the marketing campaign leads to more than 500 subscribers whereas Event B denotes the scenario where the marketing campaign leads to less than 200 subscribers.

Statement 2: Event A denotes the scenario where the marketing campaign leads to less than 500 subscribers whereas Event B denotes the scenario where the marketing campaign gets more than 500 subscribers.

- In Statement 1, the events are disjoint, whereas, in Statement 2, the events are independent.

- In Statement 1, the events are independent, whereas, in Statement 2, the events are disjoint.

- Both statements denote events which are disjoint.

- Both statements denote events which are independent.

Ans: C. *Two events are considered independent when one event has no effect on another one. Two events are considered disjoint if both of them can't occur simultaneously. If you go through Statement 1, you can clearly see that the events are disjoint, since the subscribers can't be more than 500 and less than 200 at the same time. Similarly, in the second statement, the events are again disjoint, since the number of subscribers can't be both more than 500 and less than 500 at the same time.*



#### Complement Rule of Probability

Qn: Let A denote the event ' The campaign leads to more than 500 subscribers'. What would be its complementary event?

- The campaign would lead to less than 200 subscribers

- The campaign would lead to more than 200 subscribers

- The campaign would lead to less than or equal to 500 subscribers

- The campaign would lead to more than or equal to 500 subscribers

Ans: C. *The complement of an event A is essentially the negation of the given scenario. A denotes the situation where the number of subscribers is more than 500 and hence A' would denote the situation where the number of subscribers isn't more than 500 - i.e. - it is less than or equal to 500.*



#### Probability Values

Qn: Let's say Box8 has planned another similar marketing campaign next quarter in Bengaluru as well. Now the analyst has found out that the probability of the current marketing campaign to get in more than 500 subscribers is **0.9.** Is it possible to calculate the probability that the marketing campaign in Bengaluru would also get in more than 500 subscribers based on this value of 0.9?

- Yes 

- No

Ans: B. *Observe that both the events in question are independent in nature. Hence, you can't predict one's probability based on the other event. Therefore the answer is No.*



Now that you've learnt 2 of the most common types of events that you generally encounter - **independent** and **disjoint** events, you'll learn some rules to compute the probabilities of those events using the addition rule and the multiplication rule.
