# Permutations

Before we turn our focus to probability, it is important to understand some basic tools that are essential building blocks for it. This session will require you to do a fair bit of calculations, so be prepared!

One of the key things that you need to master is the idea of the 2 major counting principles - permutations and combinations. Knowing these two concepts will enable you to calculate the probability for a given scenario or for events that you're interested in.

A permutation is a way of arranging a selected group of objects in such a way that the order is of significance. As shown in the example, when you're arranging the top-order batsmen of a cricket team, you use permutation to find all the possible orders in which they can be arranged. The list below shows some other examples where permutation is used to count the number of ways in which a particular sequence of events can occur:

 - Finding all possible four-letter words that can be formed using the alphabets R, E, A and D.
 - Finding all possible ways in which the final league standings of the eight teams can be in an IPL tournament.
 - Finding all possible ways that a group of 10 people can be seated in a row in a cinema hall.
 - And so on.

Generally speaking, if there are n 'objects' that are to be arranged among r available 'spaces', then the number of ways in which this task can be completed is n!/ (n-r)!. If there are n 'spaces' as well, then the number of ways would be just n!.  Here n! (pronounced as n factorial) is simply the product of all the numbers from n till 1 and is given by the formula 

    n! = n*(n-1)*(n-2)....*3*2*1

For now, we will skip the proof of the permutation formula. It is advised to verify them for scenarios where n is small and get acquainted with it.

# Combinations

The second important counting principle that you need to be aware of is the method of using  **combinations**. In the case of counting using the method of permutations, you had considered the 'order' to be an essential factor. Now, in the case of combinations, you need not take that into account while finding the number of ways to arrange a group of objects.  

hen you just have to choose some objects from a larger set and the  **order is of no significance**, then the rule of counting that you use is called **combination**. In the example mentioned in the video, you had to choose three bowlers from a set of four bowlers and obviously, you didn't need to order them here. Some other examples of combinations are as follows:

-   The number of ways in which you can pick three letters from the word 'UPGRAD',
-   The number of ways a team can win three matches in a league of five matches,
-   The number of ways in which you can select 13 cards from a deck of 52 cards,
-   And so on.

The formula for counting the number of ways to choose r objects out of a set of n objects is

    nCr=n!r!(n−r)!

Now you might be wondering when to use permutations and when to use combinations. As mentioned in the video, one way to look at it is to see if the order matters or not. If it does, then use the permutations formula, and if doesn't, then use the one for combinations.

**Note**: A helpful hint here would be to look for a  **keyword**  in the given scenario to know which method is needed. If the problem requires you to **order/arrange**  a group of objects, then you would most probably use the method of permutations. Else, if you are told to  **pick/choose**  a group of objects, then more often than not you would be using the formula for combinations.

There are some other rules of counting as well. For example, recall that in the permutation case, we had assumed that no repetition was allowed in the order and, hence, we proceeded with the given formula. Now, what to do if repetition is allowed in the process of counting the number of ways?

You'll get to know those types of examples in future sessions, and will also learn how to find the answer in such cases. For the time being, you need to know only these two methods, i.e., permutation and combination.  

# Probability : Definition and Properties
Now that you've understood the two fundamental rules of counting, we'll go ahead and finally establish the formal definition of probability.  
As explained in the video, the formula for calculating the probability is:

    Probability = (No  of  desired  outcomes)/(Total  no  of  possible  outcomes)

Now there are some additional concepts and properties of probability that you need to know in order to understand it better.
Probability values have the following two major properties:

-   **Probability values always lie in the range of 0-1**. The value is 0 in the case of an impossible event (like the probability of you being in Delhi and Mumbai at the same time) and 1 in the case of a sure event (like the probability of the sun rising in the east tomorrow).
-   **The probabilities of all outcomes for an experiment always sum up to 1**. For example, in a coin toss, there can be two outcomes, heads or tails. The probability of both of the outcomes is 0.5 each. Hence, the sum of the probabilities turns out to be 0.5 + 0.5 = 1.

Next, you learned a couple of definitions that are crucial in understanding probability. They are as follows:

-   **Experiment:**  Essentially, any scenario for which you want to compute the probabilities for that scenario to be considered an experiment. It is of two types:
    -   Deterministic: Outcome is the same every time.
    -   Random: Outcome can take many possible values. Throughout the majority of our business analytics course, we'll be discussing the random experiment only.
-   **Sample Space:**  A sample space is nothing but the list of all possible outcomes of a random experiment. It is denoted by S = {all the possible outcomes}. For example, in the coin toss example, the sample space S = {H, T}, where H = heads and T = tails.
-   **Event**: It is a subset, i.e., a part of the sample space that you want to be true for your probability experiment. For example, if in a coin toss you want heads to be the desired outcome, then the event becomes {H}. As you can see clearly, {H} is a part of {H, T}.

Now, if you observe the definitions carefully, you'll see that the probability formula can be modified as follows:

    Probability = (Total  no  of  outcomes  in  event)/(Total  no  of  outcomes  in  sample  space)

Now, the counting principles that you learned earlier will help you compute the total number of outcomes in both the sample space and the event that you're interested in. 

# Types of Events

In the previous segment, you understood how probability is defined formally and also learned some of its properties. You were also introduced to the concept of 'events', situations or scenarios for which we compute the probabilities. In this segment, we'll take a look at the different types of 'events' that can be defined. Note that earlier you considered a single event for which you computed the probabilities. Now you'll look at two or more events and understand how they are related to each other.

The two main categories of events that you need to know right now are  **independent**  events and  **disjoint** or **mutually exclusive** events. Let's learn their formal definitions:

-   **Independent Events:**  If you have two or more events and the occurrence of one event has no bearing whatsoever on the occurrence/s of the other event/s, then all the events are said to be independent of each other. For example, the chances of rain in Bengaluru on a particular day has no effect on the chances of rain in Mumbai 10 days later. Hence, these two events are independent of each other.
-   **Disjoint or Mutually Exclusive Events:**  Now two or more events are mutually exclusive when they do not occur at the same time; i.e., when one event occurs, the rest of the events do not occur. For example, if a student has been assigned grade C for a particular subject in an exam, he or she cannot be awarded grade B for the same subject in the same exam. So the events that a student gets a grade of B or C in the same subject are mutually exclusive or disjoint.

Now, what about events that are both independent and mutually exclusive? Do such events exist?

Two or more events cannot be independent and disjoint simultaneously. Two events can be either exclusively independent or exclusively disjoint. Here are some examples to drive home this point

-   The events 'Customer A buys the product' and 'Customer B buys the product' are independent whereas the events 'Customer A buys the product' and 'Customer A doesn't buy the product' are disjoint.
-   The events 'You'll win Lottery A' and 'You'll win Lottery B' are independent whereas 'You'll win Lottery A' and 'You won't win Lottery A' are disjoint events.

## **Complement Rule for Probability**

Now disjoint events have one special property that is pretty intuitive and easy to understand. For example, if A and B are 2 disjoint events, let's say A = 'Event that it rains today' and B =' Event that it doesn't rain today' and you know the P(A) = 0.3. Can you guess what P(B) might be?

You must have guessed the answer here. It is nothing but 1 - P(A) = 1 -0.3 =0.7. This is something known as the **complement rule for probability**. It states that if A and A' are two events which are mutually exclusive/ disjoint and are complementary/negation of each other (you can read  **A'**  as  **'not A'**), then

**P(A) + P(A') =1**

In the above example, B is the complement of A and hence P(B) = 1 - P(A) = 1 - 0.3 = 0.7. Here are some examples, where you can use this rule to find the probability of the complement of an event.

-   If the probability that a customer buys a product is 0.4, then the probability that he/she doesn't buy the product is 0.6.
-   If the probability that you win the lottery is 33% then the probability that you don't win the lottery is 67%
-   and so on...

This rule is basically an extension from the basic rule of probability that you learnt previously -  **the sum of probabilities for all events always add up to 1**. You can read more about the complement rule for probability  [here](https://www.ck12.org/probability/complement-rule-for-probability/lesson/Complement-Rule-for-Probability-ADV-PST/).

Now answer the following questions to strengthen your conceptual understanding of the aforementioned topics

## Comprehension

[Box8](https://box8.in/)  is an online food-ordering app that operates in 4 major cities of India - Mumbai, Bengaluru, Pune and Gurgaon. Next week, it is going to launch a month-long marketing campaign for its membership program -  **Box8 Pass**, that gives access to a flat 25% discount on all orders and access to other exclusive discounts and benefits in the city of Mumbai.

Now, the lead business analyst of the company has estimated that there is a high chance that they'll gain around 500 new subscribers at the end of this campaign. She also calculated that they need at least 200 new subscribers to make sure that they recuperate the costs of the campaign and break even.

Now that you've learned 2 of the most common types of events that you generally encounter - **independent** and **disjoint** events, you'll learn some rules to compute the probabilities of those events using the addition rule and the multiplication rule.

# Rules of Probability - Addition
In the previous examples that you saw, we were always involved in finding the probability of a single event. For example,

-   The probability of getting an ace card from a deck of 52 cards
-   Or the probability of selecting three bowlers from a list of four
-   and so on...

Now, what about two events occurring simultaneously? For example, what would be the  **probability of selecting an ace card or a heart card**  from the deck? How would this specific probability relate to the individual probabilities, i.e., the probability of getting a heart card separately and the probability of getting an ace card separately? This is something that you'll get to learn using the two important rules related to probability, the addition rule and the multiplication rule.

When you have the individual probabilities of two events A and B, denoted by **P(A)** and **P(B)**, the addition rule states that the probability of the event that either A or B will occur is given by

**P(A∪B)** =  **P(A) + P(B) - P(A∩B)**,

where **P(A∪B)**  denotes the probability that either the event A or B occurs.

**P(A)**  denotes the probability that only the event A occurs

**P(B)**  denotes the probability that only the event B occurs

**P(A∩B)**  denotes the probability that both the events A and B occur simultaneously.

**Note**: The symbols ∪ and ∩ are obtained from the world of '**set theory**' and are used to denote  **union** and **intersection**, respectively. You don't need to learn about them in detail right now. All you need to learn are the meanings of the probability terms mentioned above. Also, we would be skipping the proof of the formula right now. Another important thing to note here is that the formula given above works for all types of events A and B, irrespective of the fact that they're independent or disjoint, etc.

You can also read **P(A**∪**B)**  as **P(either event A or B occurs)** and **P(A**∩**B)** as **P(both events A and B occur)**.

As mentioned in the video, for disjoint events A and B, **P(A∩B) =** 0 since both cannot occur simultaneously. Hence, the formula can be rewritten as **P(A∪B)** =  **P(A) + P(B).**

#### Addition Rule

A and B are two candidates applying for the job role of an analyst at a leading analytics firm in Delhi. They've cleared all the previous rounds and are now set for the final interview after which only one of them will be selected for the job. Candidate A has a probability of 0.3 of getting the job and Candidate B has a probability of 0.25 of getting the job. Now what is the probability that one of the two gets the job?
Here P(A) = 0.3 and P(B)= 0.25. You need to find P(A⋃B). Also, observe that P(A) and P(B) are disjoint, i.e., both of them cannot get the job simultaneously.

Now **P(A⋃B) = P(A)+P(B)+P(A⋂B)**. Since, the events are disjoint, **P(A⋂B) = 0**.
Therefore, the probability that one of them gets the job is **P(A⋃B) = P(A)+P(B) = 0.3 + 0.25 = 0.55**

# Rules of Probability - Multiplication

Now that you've understood the addition rule and how it can be used to compute the probabilities of two events A and B, let us now go ahead and understand the concept of the multiplication rule. This rule is applicable only on independent events about which you've already learnt before.
As discussed in the previous segments, when an event A is not dependent on event B and vice versa, they are known as independent events. And the multiplication rule allows us to compute the probabilities of both of them occurring simultaneously, which is given as

**P(A and B)** =  **P(A)*P(B)**.

Now, this rule can be extended to multiple independent events where all you need to do is multiply the respective probabilities of all the events to get the final probability of all them occurring simultaneously. For example, if you have four independent events A, B, C and D, then

**P(A and B and C and D) = P(A)*P(B)*P(C)*P(D)**.

## Comparison between Addition Rule and Multiplication Rule

Both addition rule and multiplication rule allow you to compute the probabilities of the occurrence of multiple events. However, there is a key difference between the two, which should help you to decide when to use which rule.

-   The addition rule is generally used to find the probability of multiple events when  **either of the events can occur at that particular instance**. For example, when you want to compute the probability of picking a face card or a heart card from a deck of 52 cards, a successful outcome occurs when either of the two events is true. This includes either getting a face card, a heart card, or even both a face and a heart card. This rule works for all types of events.
-   The multiplication rule is used to find the probability of multiple events when all the events need to occur simultaneously. For example, in a coin toss experiment where you toss the coin three times and you need to find the probability of getting three Heads at the end of the experiment, a successful outcome occurs when you get a Head in the first toss, a Head in the second toss and a Head in the third toss as well. This rule is used for independent events only.
-   Also in the addition rule, do you remember the  **P(A**⋂**B)** that we used to compute the final value of P(A⋃B)? This value is  **exactly the same as the P(A and B)**  that we compute in independent evens using the multiplication rule. You can go back and verify it for the same example shown in the video. There we had P(Heart Card) = P(H) = 13/52, P(Face Card) = P(F) = 12/52 and P(Heart Card and Face Card) = P(H⋂F) = 3/52. Now as mentioned by the multiplication rule, you can see that P(H and F) = P(H)*P(F) = (13/52)*(12/52) = 3/52, which is the same as the value of P(H⋂F).

**Note:**  A helpful hint here to decide when to use the addition rule and when to use the multiplication rule is to observe the language of the question. If the question mentions an '**OR**' to denote the relationship between the events, then the rule that you need to apply is the  **addition rule**. That is, either of the given events can occur at that time,  **P(Event A or Event B)**. Else, if an '**AND**' is used to denote the relationship between the events, then the **multiplication rule**  is used. Here, the events need to happen simultaneously and must be independent,  **P(Event A and Event B)**.

#### Addition vs Multiplication

Consider the two statements given below and choose the correct option.

Statement 1: The probability of Rahul playing in today's match is 0.25, whereas that of Bumrah is 0.35. You need to find the probability that either of them will play in today's match.

Statement 2: The probability of Rahul playing in today's match is 0.25, whereas that of Bumrah is 0.35. You need to find the probability that both of them will play in today's match.

Observe that in the first statement either of the events can occur. So there is an 'OR' involved here. That is, you need to find P('Rahul' OR 'Bumrah'). In the second statement, however, both the events are occurring simultaneously. Hence, there is an 'AND' involved here, i.e., you need to find P('Rahul' AND 'Bumrah'). Therefore, in the first statement, you'll be using the addition rule to find the probability, whereas in the second statement, you will use the multiplication rule.

Now, what is the probability that either Rahul or Bumrah will play in today's match, given that their individual probabilities of playing are 0.25 and 0.35, respectively? Also, it is mentioned that both the events are not dependent on each other.
Let 'A' denote the event that Rahul plays in the match and 'B' denote the event that Bumrah plays in the match. It is given that P(A) = 0.25 and P(B) = 0.35. Also, it is given that A and B are independent. You need to find P(A⋃B). Now this is given by the formula **P(A⋃B) = P(A) + P(B) - P(A⋂B)**. Now,

P(A) = 0.25

P(B) = 0.35

Since A and B are independent
P(A⋂B) = P(A and B) = P(A)*P(B) = 0.25\*0.35 = 0.0875 

Therefore, the final probability is 
P(A⋃B) = P(A) + P(B) - P(A⋂B) = 0.25 + 0.35 - 0.0875 = 0.5125 ~ 0.51.

# Approaches for generating probability

Now, let’s understand the different approaches that can be used to determine the likelihood of an event. In this segment, you will learn about the following three approaches of probability:

-   **Equal likelihood approach**
	- If an experiment has n simple outcomes, then this method will assign a probability of 1/n to each outcome.
    -   For example, 1/6 is the probability that the upper surface of an ordinary die will display six pips when it is rolled, considering it is equally likely that each of the six surfaces of the die will be displayed. 
    
-   **Relative frequency approach**
	- In this method, probabilities are assigned based on previous experiments or historical trends.
        
    -   For example, life insurance companies will consider providing insurance to a young person over an old person. This is because intuition and numerous studies suggest that the likelihood of the survival of a young person is higher than that of an old person.
    
-   **Judgemental approach**
	- Sometimes, the aforementioned approaches might not necessarily be effective or too many factors might be involved in understanding the likelihood of an event. In such cases, you will have to rely on your own judgement in drawing a conclusion.
        
    -   For example, before launching the world’s first electric vehicle, Tesla had no way of predicting whether it will be a success or a failure. The company had to rely on their intelligent judgements about the market and the product.

The three approaches are not mutually exclusive, i.e., you may have to use any two or all three methods to determine the likelihood of an event.

# Types of Probability

Now that you have a basic understanding of what probability is, in this segment, you will learn about the different types of probability. The three major types of probability are as follows:

-   Marginal probability
    
-   Joint probability
    
-   Conditional probability
    

To understand the different types of probability, Ankit has considered the following sample of people and the fraction of them belonging to ‘Male’, ‘Female’,’Emplòyed’ or Unemployed’ as follows:

![Joint Probability Table](https://images.upgrad.com/c4e54103-ed69-4937-9671-152375cd4e10-Capture4.PNG)

Joint Probability Table

To understand the three types of probability, let’s consider a scenario in which there are two types of events: Event A and Event B.

**Event A: The person is a ‘Man’.**

**Event B: The person is ‘Employed’.**

**Joint probability**

-   This is the probability of two or more events happening simultaneously.
    
-   If A and B are two events, then the joint probability of the two events is written as P(A ∩ B). Essentially, it is the probability of Event A and Event B occurring simultaneously.
    
-   In the below example, the joint probability of these two events is the probability of a person being both a man and employed; hence, it is 0.1.
    

![](https://images.upgrad.com/c9d95a85-4246-4262-ab2d-05c389ef5ca1-Capture5.png)

**Marginal probability**

-   This is the probability of an event happening irrespective of the outcomes of another event also happening simultaneously.
    
-   Considering the same example as above, suppose we want to find the probability of a person being employed, irrespective of whether the person is a man or woman.
    
-   Since this probability is independent of the gender, this probability is a marginal probability
    
-   As shown in the table given below, this marginal probability is 0.55.
    

![](https://images.upgrad.com/01b25675-e99e-4a5a-87d8-1de5a7215975-Capture6.png)

**Conditional probability**

-   This is the probability of an event happening given that another event has already occurred.
    
-   If A and B are two events, then the conditional probability of Event A occurring, given that Event B has occurred, is written as P(A|B).
    
-   The general multiplication rule links the three types of probability in the following manner:
    
    -   ![](https://images.upgrad.com/c0c8d945-5ab3-405b-92b3-7734ac601894-Capture7.png)
        
    -   ![](https://images.upgrad.com/1d5195ba-7dc5-4e8d-9b9a-71c7c995d894-Capture8.png)  
        
-   If A = Person being male and B = Person being Unemployed, then the probability of a person being unemployed given that he is a male = 0.25 / 0.35 = 0.714
    

![](https://images.upgrad.com/133d61f6-ecba-47cc-81ee-5c420e9e4e21-Capture9.png)

Let’s solve a question to test your understanding of the different types of probability. It is recommended that you first try to solve the question by yourself and then watch the video.

## Solved Example

A survey was conducted in a school to understand the sports preferences among boys and girls. The results derived from the survey are given in the image below.

![Example](https://images.upgrad.com/aae58e15-2914-452a-b7e4-84d76d123f48-Capture10.png)

Now, based on the given data:

1.  Create a joint probability table.
2.  Use marginal probability to determine the most preferred sport.
    
3.  Find the probability that the student prefers football, given that the student is a boy.
    
4.  Let A denote the event that the student is a boy and B denote the event that the student prefers football. Find whether A and B are independent or not.
    

## Solution
![Solution](https://i.ibb.co/9Hvb09Z/Types-of-Probability-Solution.png)

# Practice Questions

#### Permutations and Combinations

Q - Given the following two statements, choose the correct option:
- Statement 1: You need to choose five bowlers from a given roster of seven bowlers for the next cricket match.
- Statement 2: You want to find the number of ways in which you can arrange your seven family members on seven seats for a family photograph.

A - The first statement asks you to **choose** something, whereas the second statement asks you to **order** something. Hence, the first statement uses combination, whereas the second statement uses permutation.

Q - You have a list of seven letters, of which three are vowels (A, I, E) and four are consonants (B, C, D, F). You need to use these letters to make four-letter words in such a way that they should contain exactly two vowels from the given three and exactly two consonants from the given four. How many such four-letter words can you form using the given seven letters?

A - You can choose two vowels from the given three vowels in **3!/(2!\*1!) = 3** ways. Similarly, you can choose two consonants from the given four consonants in **4!/(2!\*2!) = 6** ways. Since these two events are independent, you have **3*6 = 18** combinations of four unique letters. Now, you can arrange each of the 18 combinations in 4! ways. Thus, the total number of words that can be formed are **18*4! =18\*24 = 432**

#### Properties of Probability

Q - In a random experiment, there were a total of three outcomes. Now the probability of the second and third outcomes came out to be twice that of the first outcome. Therefore, the sum of the probabilities of the first and second outcomes comes out to be ____.

A - Let the first outcome have a probability of **x**. Therefore, the second and third outcomes have a probability of **2x** each. Using the total sum rule of probability, we have **x + 2x +2x = 1 or 5x = 1 or x =0.2** . Therefore, the sum of the first and second probabilities comes out to be **0.2 +0.4 = 0.6**.

#### Rules of Probability

Q - A college has been offering two finance programs, AGFM and BGFM, to its students for the last 5 years. From past historical data, it has been found that the probability of a student joining the AGFM program is 0.4 and the probability of a student joining the BGFM program is 0.475. Now if a student joins one program, they cannot obviously enrol for the next program. So, what is the probability that a student enrols in either of the programs?

A - Note that we're calculating **P(AGFM or BGFM)**. Hence, we're going to use the addition rule of probability. Now it is given that **P(AGFM) = 0.4** and **P(BGFM) = 0.475**. Also, it has been mentioned that both the enrolment events are disjoint. Therefore, **P(AGFM and BGFM) = 0**. Therefore, by the addition rule, we have **P(AGFM or BGFM) = 0.4 + 0.475 = 0.875**.

#### Probability  

Q - Let's say that using the six letters of the word BRAISE, you formed all possible four-letter words. You wrote each of these words on a separate piece of paper and put all those papers in a bag. Now, you pick a paper randomly from the bag. What is the probability that the word on that paper would start with the letter B?

A - First, you need to find the number of ways in which you can form four-letter words from six letters. This can be computed by using the formula for basic permutation (**n!/(n-r)!** where n = 6 and r =4 ), and turns out to be **6!/2! = 720/2 =360**. Next, you need to fix the first letter as B and then find the number of three-letter words that are possible from the five remaining letters. This comes out to be **5!/2! = 120/2 = 60**. Then we use the basic definition of probability to compute the value that is being asked for. Here the number of desirable outcomes = 60 and the total number of possible outcomes = 360. Hence, the probability = **60/360 =1/6**.

#### Concepts of Probability

Q - Consider the statements given below and then choose the correct option:

**Statement 1**: Event A denotes the situation where Aman scores 100 in Mathematics and Event B denotes the situation where he scores 75 in Science.

**Statement 2**: Event A denotes the situation where Aman scores greater than 90 in Mathematics and Event B denotes the situation where he scores less than 70 in Mathematics.

A - Two events are considered independent when one event has no effect on the other. Two events are considered disjoint if both of them cannot occur simultaneously. As you can see clearly, in statement 1, the events are independent of each other, whereas in statement 2, the events are disjoint.

#### Rules of Probability

Q - Let's say that you're the Business Analytics Head at a national bank. From the historical data, you've determined that there is a 0.33 probability that a customer would default on a particular loan. Now, what is the probability that out of the next two customers who apply for the same loan, both would  **not default** on the loan?

A - The probability that one person would default/not default on the loan has no bearing on the fact that another person would default/not default on the same loan. Hence, you need to use the multiplication rule of probability for this problem. Also, note that we need to find the probability that both of them would not default on the loan. So first, we find that value for one person, which comes out to be **1 - 0.33 = 0.67**. Now the probability that both persons would not default on the loan is given by the multiplication rule; this probability comes out to be **0.67*0.67 = 0.45**.

#### Probability

Q - Two dice are thrown at the same time. What is the probability of getting a sum of either 10 or 11?

A - The sample space in this experiment is 36. In other words, there are 36 possible outcomes. Out of those 36 outcomes, three outcomes result in a sum of 10, and 2 outcomes result in a sum of 11. Now using the addition rule, we can directly calculate the final probability

Note:  **P(A⋃B)=P(A)+P(B)−P(A⋂B)**

Since the events are mutually exclusive, hence **P(A⋃B)=P(A)+P(B)**

P(A) = 3/36  
P(B) = 2/36  
  
Hence final probability = 5/36

# Summary

Here's a summary of what you've learnt in this session.

First, you're were introduced to two main counting principles through which you can calculate the probability for the outcomes that you're interested in. These counting principles are

-   **Permutations**: A permutation is a way of arranging a selected group of objects in such a way that  **the order is of significance**. For example, arranging some letters to form different words, arranging the top order batsmen of a team, or finding all the ways in which a group of friends can be seated in a cinema hall - all these methods use permutations. When there are 'n' objects to be arranged among 'r' spaces the permutation value is given by the formula **n!(n−r)!**

-   **Combinations**: When you just have to choose some objects from a larger set and the  **order is of no significance**, then the rule of counting that you use is called **combination**. For example, if you need to find the number of ways you can choose 3 vowels from the given list of 5, or choose 4 bowlers from the given roster of 7 - all these methods use combinations. If you want to choose 'r' objects from a larger set of 'n' objects, then the number of ways in which you can do that is given by the formula **nCr=n!r!(n−r)!**

Next, you were formally introduced to the definition of probability, which is given as,

Probability=No  of  desired  outcomesTotal  no  of  possible  outcomes

Then you learnt about some specific terms related to probability - events, sample space and experiments. You also learnt some basic rules of probability

-   Probability values always lie between [0-1]
-   Probability values for all outcomes of an experiment always add up to 1.

Then you learnt about specific types of events that can be encountered while computing probabilities of more than two events. They are:

-   **Independent Events:**  If you have two or more events and the occurrence of one event has no bearing whatsoever on the occurrence/s of the other event/s, then all the events are said to be independent of each other.
-   **Disjoint or Mutually Exclusive Events:**  Now two or more events are mutually exclusive when they do not occur at the same time; i.e., when one event occurs, the rest of the events do not occur.

You also learnt about the idea of complement  **A'**  for any event A and the probability rule for them, i.e.  **P(A) + P(A') = 1**.

After that, you were introduced to 2 main rules of probability that help you in finding the probabilities of 2 or more events. They are:

-   **Addition Rule**: When you have the individual probabilities of two events A and B, denoted by **P(A)** and **P(B)**, the addition rule states that the probability of the event that either A or B will occur is given by
    
    **P(A∪B)** =  **P(A) + P(B) - P(A∩B)**,
    
    where **P(A∪B)**  denotes the probability that either the event A or B occurs.
    
    **P(A)**  denotes the probability that only the event A occurs
    
    **P(B)**  denotes the probability that only the event B occurs
    
    **P(A∩B)**  denotes the probability that both the events A and B occur simultaneously.
    

-   **Multiplication Rule**: When an event A is not dependent on event B and vice versa, they are known as independent events. And the multiplication rule allows us to compute the probabilities of both of them occurring simultaneously, which is given as
    
    **P(A and B)** =  **P(A)*P(B)**.
    
    Now, this rule can be extended to multiple independent events where all you need to do is multiply the respective probabilities of all the events to get the final probability of all them occurring simultaneously. For example, if you have four independent events A, B, C and D, then
    
    **P(A and B and C and D) = P(A)*P(B)*P\(C\)*P(D)**.
    

Finally, you also saw a comparison between addition rule and multiplication rule that would help you to decide which formula to use in a given scenario. If the question mentions an **'OR'** to denote the relationship between the events, then the rule that you need to apply is the addition rule. That is, either of the given events can occur at that time, **P(Event A or Event B)**. Else, if an  **'AND'**  is used to denote the relationship between the events, then the multiplication rule is used. Here, the events need to happen simultaneously and must be independent,  **P(Event A and Event B)**.

We can use three approaches for generating the likelihood of an event

-   Equal Likelihood Approach
    
-   Relative Frequency Approach
    
-   Judgemental Approach
    

Following are the important types of probability:

-   **Marginal Probability**: It is the probability of an event independent of another event happening simultaneously.
    
-   **Joint Probability**: It is the probability of two or more events happening simultaneously.
    
-   **Conditional Probability**: It is the probability that an event occurs as a result of some other event that has already occurred.
    

The general multiplication rule links all three types of probability:

![](https://lh5.googleusercontent.com/fmC16eBrnsWQFfbX7Fj3n4sA4-RHkAtLaL3Ob8EqwOszkdOgs_O297UWA_qgVQ1GEw2PHQmzqC8XzL8ry-huYzwFZIBmzraSXjDBZeg9Kl1H7Xn_3o0dgu4HLRfp3e6qTFw-ACnF)