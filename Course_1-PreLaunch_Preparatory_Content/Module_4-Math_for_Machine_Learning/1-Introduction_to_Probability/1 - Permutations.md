# Permutations

Before we turn our focus to probability, it is important to understand some basic tools that are essential building blocks for it. This session will require you to do a fair bit of calculations, so be prepared!

One of the key things that you need to master is the idea of the 2 major counting principles - permutations and combinations. Knowing these two concepts will enable you to calculate the probability for a given scenario or for events that you're interested in the video below.

**VIDEO**

A permutation is a way of arranging a selected group of objects in such a way that the order is of significance. As shown in the example, when you're arranging the top-order batsmen of a cricket team, you use permutation to find all the possible orders in which they can be arranged. The list below shows some other examples where permutation is used to count the number of ways in which a particular sequence of events can occur:

- Finding all possible four-letter words that can be formed using the alphabets R, E, A and D.
- Finding all possible ways in which the final league standings of the eight teams can be in an IPL tournament.
- Finding all possible ways that a group of 10 people can be seated in a row in a cinema hall.
- And so on.

Generally speaking, if there are n 'objects' that are to be arranged among r available 'spaces', then the number of ways in which this task can be completed is n!/ (n-r)!. If there are n 'spaces' as well, then the number of ways would be just n!.  Here n! (pronounced as n factorial) is simply the product of all the numbers from n till 1 and is given by the formula 

    n! = n*(n-1)*(n-2)....*3*2*1

For now, we will skip the proof of the permutation formula. It is advised to verify them for scenarios where n is small and get acquainted with it.

Now answer the following questions.

#### Permutations

Qn: Find the number of ways in which the letters of the word MOSAIC can be rearranged to form different six-letter words.

- 30

- 540

- 360

- 720

Ans: D. *The word 'MOSAIC' contains six letters with which we need to form six-letter words. Therefore, the formula that you'd be using is n!. Since n = 6 here, from the permutation formula, we have* `n! = 65432 * 1 = 720.`

Qn: Again using the letters of the word MOSAIC, can you find out how many three-letter words can be formed?

- 720

- 360

- 120

- 108

Ans: C. *The word 'MOSAIC' contains six letters with which we need to form three-letter words. Therefore, the formula that you'd be using is `n!/(n-r)!`. Since n = 6 and r =3 here, from the permutation formula, we have `n!/(n-r)! = 6!/3! = 720/6 =120`.*

You've learnt to find the number of ways in which you can order items using Permutation. In the next segment on Combinations, you'll learn how to find the number of ways in which choose a particular set of items.  