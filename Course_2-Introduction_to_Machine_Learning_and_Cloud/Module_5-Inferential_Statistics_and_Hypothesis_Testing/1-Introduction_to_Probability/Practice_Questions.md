# Practice Questions

#### Permutations and Combinations

Qn: Given the following two statements, choose the correct option:

Statement 1: You need to choose five bowlers from a given roster of seven bowlers for the next cricket match.

Statement 2: You want to find the number of ways in which you can arrange your seven family members on seven seats for a family photograph.

- The first statement uses combination, whereas the second statement uses permutation

- The first statement uses permutation, whereas the second statement uses combination.

- Both the statements use permutation.

- Both the statements use combination.

Ans: A. *The first statement asks you to **choose** something, whereas the second statement asks you to **order** something. Hence, the first statement uses combination, whereas the second statement uses permutation.*

Qn: You have a list of seven letters, of which three are vowels (A, I, E) and four are consonants (B, C, D, F). You need to use these letters to make four-letter words in such a way that they should contain exactly two vowels from the given three and exactly two consonants from the given four.

How many such four-letter words can you form using the given seven letters?

- 576

- 720

- 432

- 288

Ans: C. *You can choose two vowels from the given three vowels in $^{3!}/_{(2!\ 1!)}$ = 3 ways. Similarly, you can choose two consonants from the given four consonants in $^{4!}/_{(2!\ 2!)}$ = 6 ways. Since these two events are independent, you have 3*6 = 18 combinations of four unique letters. Now, you can arrange each of the 18 combinations in 4! ways. Thus, the total number of words that can be formed are $18*4! =18*24 = 432$*

#### Properties of Probability

Qn: In a random experiment, there were a total of three outcomes. Now the probability of the second and third outcomes came out to be twice that of the first outcome. Therefore, the sum of the probabilities of the first and second outcomes comes out to be ____.

- 0.4

- 0.6

- 0.8

- 0.9

Ans: B. *Let the first outcome have a probability of x. Therefore, the second and third outcomes have a probability of 2x each. Using the total sum rule of probability, we have $x + 2x +2x = 1\ or\ 5x = 1 or x =0.2$ . Therefore, the sum of the first and second probabilities comes out to be $0.2 +0.4 = 0.6$.*

#### Rules of Probability

A college has been offering two finance programs, AGFM and BGFM, to its students for the last 5 years. From past historical data, it has been found that the probability of a student joining the AGFM program is 0.4 and the probability of a student joining the BGFM program is 0.475. Now if a student joins one program, they cannot obviously enrol for the next program. So, what is the probability that a student enrols in either of the programs?

- 0.625

- 0.436

- 0.785

- 0.875

Ans: D. *Note that we're calculating P(AGFM or BGFM). Hence, we're going to use the addition rule of probability. Now it is given that $P(AGFM) = 0.4$ and $P(BGFM) = 0.475$. Also, it has been mentioned that both the enrolment events are disjoint. Therefore, P(AGFM and BGFM) = 0. Therefore, by the addition rule, we have $P(AGFM or BGFM) = 0.4 + 0.475 = 0.875$.*

#### Probability

Qn: Let's say that using the six letters of the word BRAISE, you formed all possible four-letter words. You wrote each of these words on a separate piece of paper and put all those papers in a bag. Now, you pick a paper randomly from the bag. What is the probability that the word on that paper would start with the letter B?

- $^2/_3$

- $^1/_6$

- $^1/_3$

- $^5/_6$

Ans: B. *First, you need to find the number of ways in which you can form four-letter words from six letters. This can be computed by using the formula for basic permutation( n!/(n-r)! where n = 6 and r =4 ), and turns out to be 6!/2! = 720/2 =360. Next, you need to fix the first letter as B and then find the number of three-letter words that are possible from the five remaining letters. This comes out to be 5!/2! = 120/2 = 60. Then we use the basic definition of probability to compute the value that is being asked for. Here the number of desirable outcomes = 60 and the total number of possible outcomes = 360. Hence, the probability $= ^{60}/_{360} =\ ^1/_6$.*

#### Concepts of Probability

Qn: Consider the statements given below and then choose the correct option:

**Statement 1**: Event A denotes the situation where Aman scores 100 in Mathematics and Event B denotes the situation where he scores 75 in Science.

**Statement 2**: Event A denotes the situation where Aman scores greater than 90 in Mathematics and Event B denotes the situation where he scores less than 70 in Mathematics.

- In statement 1, both the events are disjoint, whereas in statement 2, both the events are independent.

- In statement 1, both the events are independent, whereas in statement 2, both the events are disjoint.

- Both the statements talk about disjoint events

- Both the statements talk about independent events

Ans: B. *Two events are considered independent when one event has no effect on the other. Two events are considered disjoint if both of them cannot occur simultaneously. As you can see clearly, in statement 1, the events are independent of each other, whereas in statement 2, the events are disjoint.*

#### Rules of Probability

Qn: Let's say that you're the Business Analytics Head at a national bank. From the historical data, you've determined that there is a 0.33 probability that a customer would default on a particular loan. Now, what is the probability that out of the next two customers who apply for the same loan, both would **not default** on the loan?

- 0.11

- 0.55

- 0.45

- 0.89

Ans: __The probability that one person would default/not default on the loan has no bearing on the fact that another person would default/not default on the same loan. Hence, you need to use the multiplication rule of probability for this problem. Also, note that we need to find the probability that both of them would not default on the loan. So first, we find that value for one person, which comes out to be 1 - 0.33 = 0.67. Now the probability that both persons would not default on the loan is given by the multiplication rule; this probability comes out to be $0.67*0.67 = 0.45$._

#### Probability

Qn: Two dice are thrown at the same time. What is the probability of getting a sum of either 10 or 11?

- 0.112

- 0.241

- 0.138

- 0.213

Ans: C. *The sample space in this experiment is 36. In other words, there are 36 possible outcomes. Out of those 36 outcomes, three outcomes result in a sum of 10, and 2 outcomes result in a sum of 11. Now using the addition rule, we can directly calculate the final probability*

**Note**: $P(A⋃B)=P(A)+P(B)−P(A⋂B)$

*Since the events are mutually exclusive, hence $P(A⋃B) = P(A) + P(B)$*

$P(A) =\ ^3/_{36}$ 

$P(B) =\ ^2/_{36}$

*Hence final probability = $^5/_{36} \approx 0.138$*
