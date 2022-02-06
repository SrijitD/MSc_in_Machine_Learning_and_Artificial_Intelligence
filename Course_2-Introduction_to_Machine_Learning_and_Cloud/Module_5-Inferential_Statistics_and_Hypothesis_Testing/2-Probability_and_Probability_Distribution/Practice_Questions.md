# Practice Questions

## Comprehension 1

Suppose that you work for an e-commerce company and you have a particular product that isn't selling well. So you decided to give some discounts on that product. Now, you aren't sure what discount you should give, so you choose a small number of your users, say 1000, and decided to give random discounts to each one of them from 10% - 50%. **Obviously, if you use a random number generator to give out discounts, the discount that an individual gets will be uniformly distributed between 10 and 50 because the chances of any number getting picked are equal**. But note that this is a discrete uniform distribution since you won't be giving a discount like 15.23% to the customers because it will seem odd to them. **You can only give discounts as whole numbers like 15, 16, etc.**

But there is a catch. If your random number generator generates the smaller numbers more, it might happen that a major stock of the product still remains unsold. On the other hand, if it generates larger numbers more, you might incur a more loss (as it might be possible that the product would have been sold at a lower discount). So for the 1000 users you selected, you decided to break it down in the following manner:

1. 200 users: Each user gets a random discount between 10% - 19%.
2. 640 users: Each user gets a random discount between 20% - 39%.
3. 160 users: Each user gets a random discount between 40% - 50%.

Based on all the information above, answer the following questions:

#### Discrete Uniform Distribution

Qn: You want to check if the product is selling well on lower discounts. So first, can you find out approximately how many users would have gotten a discount of 15% or less?

- 100

- 120

- 125

- 150

Ans: B. *When you are generating random numbers within a range, the probability of obtaining any number is equal. Hence, you're dealing with a uniform distribution here and since, the discounts that you are offering can only be whole numbers, this is a discrete uniform distribution between 10 and 50.*

*Now, since the discounts are not evenly distributed among customers, you have three discrete uniform distributions:*

1. *Between 10% and 19%: The probability of any discount in this range will be 1/10 since there are 10 numbers between 10 and 19, both included.*
2. *Between 20 % and 39%: The probability of any discount in this range is 1/20.*
3. *Between 40% and 50%: The probability of any discount in this range is 1/11.*

*Now, you want to find out the number of people who have received a discount of lesser than 15%, so you're dealing with the first uniform distribution, i.e., the one between 10% and 19%. Recall that there were 200 users in this range. Hence, the number of users who will receive a discount of 15% or less will be equal to 6×110×200 (6 has been used as for 15% or less, there are 6 possible values, i.e., 10, 11, 12, 13, 14, and 15). Hence, calculating the above expression, you get 120.*

Qn: This time you want to check how the product is selling between 15% and 30% since you believe that this is the optimal range of the discount. For this, you first need to know how many users out of 1000 have received a discount in this range. Can you find that out, i.e., the approximate number of users who have received a discount between 15% and 30% (both included)?

- 320

- 376

- 524

- 452

Ans: D. *This time you're dealing with 2 of the discrete uniform distributions, one between 10% and 19% and the other between 20% and 39%. The number of users who got a discount from the first range was 200 and the second range was 640. So the probability of having a discount between 15% - 35% should be broken down into 2 parts - one between 15% and 19% and the other between 20% and 25%. Hence, the total number of users would be:*

$(5×110×200)+(11×120×640)=100+352=452$

_**Note:**  5 and 11 have been used because there are 5 possible values of discounts between 15 and 19, and there are 11 possible values of discounts between 20 and 30, respectively._

## Comprehension 2

The **normal distribution**, aka the **Gaussian distribution**, was discovered by **Carl Friedrich Gauss** in 1809. Gauss was trying to create a probability distribution for **astronomical errors**. Astronomical errors are the errors that were made by astronomers while observing phenomena such as distances in space.

For example, Gauss found that an astronomer trying to estimate the distance between Earth and Uranus always makes an error. This **error** is **normally distributed**, with **µ = 0 km** and **σ = 1,000 km**.

#### Astronomical Error

Qn: Based on the information above, what is the probability of the astronomer overestimating the distance by 2,330 km or more?

(You can use the Z table [here](http://www.z-table.com/).)

- 1%

- 2%

- 1.5%

- 0.5%

Ans: A. *Let’s define X as the astronomical error, which is normally distributed with mean 0 km and standard deviation 1,000 km. Now, you have to find the probability that X > 2330, i.e. P(X>2330). Converting this to Z, it becomes P(Z>2.33). Since $P(Z<=2.33) + P(Z>2.33) = 1$, $P(Z>2.33) = 1 - P(Z<2.33) = 1 - 0.9901 = 0.0099$ or 0.99%, which is approximately 1%.*

Qn: Hence, what is the probability that the astronomer under- or over-estimates the distance by less than 500 km?

(You can use the Z table [here](http://www.z-table.com/).)

- 30.85%

- 69.15%

- 38.30%

- 48.25%

Ans: C. *Let’s define X as the astronomical error, which is normally distributed with mean 0 km and standard deviation 1,000 km. Now, you have to find the probability that -500 < X < 500, i.e. P(-500 < X < 500). Converting this to Z, it becomes $P(-0.5 < Z < 0.5) = P(Z < 0.5) - P(Z < -0.5) = 0.6915 - 0.3085 = 0.3830$, or 38.30%.*
