# Standard Normal Distribution

As you learnt in the previous segments, it does not matter what the value of μ and σ is. If you want to find the probability, all you need to know is how far the value of X is from μ, specifically, what multiple of σ is the difference between X and μ.

Let’s see how you can find this.

**VIDEO**

As you just learnt, the standardised random variable is an important parameter. It is calculated as:

$Z=\ ^{X−μ}/_σ$

Basically, it tells you how many standard deviations away from the mean your random variable is. And, you can find the cumulative probability corresponding to a given value of Z using the Z table:

**VIDEO**

(You can access the Z-table using this [link](https://www.ztable.net/).)  

![Z Table](https://i.ibb.co/rtnQryQ/Z-Table.png)

You can use the following python snippet for directly calculating the cumulative probability and vice-versa given below:

```python
from scipy.stats import norm

# Compute P(z < z0) given z score

z0 = - 0.52
print('p value = ', norm.cdf(z0))

# Compute z score given P(z < z0)

p_value = 0.30153
print('z0 = ', norm.ppf(p_value))
```

#### Z Score

Qn: What is the probability of a normally distributed random variable lying within 1.65 standard deviations of the mean? (You can use the Z table from the link given above or you can find it in Excel using one of the formulae provided above.

- 80%

- 85%

- 90%

- 95%

AnsL C. *You basically need to find the value of P(−1.65≤Z≤+1.65). This can be rewritten as -*

$P(Z≤+1.65)−P(Z≤−1.65)$

*If you check the Z table, the Z values for +1.65 and -1.65 are 0.9505 and 0.0495 respectively as can be seen below.*

![Z-Table-Example](https://i.ibb.co/4sggMGj/Z-Table-Example.png)

*Hence, putting these values in the above equation, you get -*

 $P(Z≤+1.65)−P(Z≤−1.65)=0.9505−0.4905=0.901≈0.9$

Now that you know about standard normal distribution, let’s go back to solving the problem at hand, i.e., finding the probability of an employee’s commute time being less than 43.25 minutes.

**VIDEO**

Let’s assume you want to project the z distribution back to its original distribution. Suppose the original population had a mean and standard deviation as μ and σ, respectively.

Given zα, the corresponding value of x on the actual distribution with parameters μ and σ will be $(μ + z_ασ)$.

#### Commute Time - Standard Normal Distribution

Qn: Take the same example of commute time shown in the video. What will be the probability of an employee’s commute time being less 32 minutes?

- 0.16

- 0.27

- 0.34

- 0.84

Ans: B. *You need to calculate P(X≤32). You can rewrite it in the standard normal form as - $P(Z≤32−355)=P(Z≤−0.6)$. You can either look up the Z table or evaluate it in Excel using the command **NORM.S.DIST(-0.6, TRUE).** This value comes out to be 0.27 approximately.*

#### Standard Normal Distribution

Qn: The area between z and -z is 0.9030. Find z (on the positive axis)

- 1.41

- 1.66

- 0.4

- 0.75

Ans: B. *You are given that the area between z and - z is 0.9030. Let us assume one side as z and the other as -z. You can refer to the diagram shown below.*

![Standard-Normalization-Distribution-1](https://i.ibb.co/HYn96Cc/Standard-Normalization-Distribution-1.png)

Now, in order to get the value of z, you need to get the cumulative probability. In other words, if you can find the area of the red portion as shown in the **below diagram**, you can easily get the value of z.

![Standard-Normalization-Distribution-2](https://i.ibb.co/kq2bbF0/Standard-Normalization-Distribution-2.png)

So in order to find the area of this red portion, let us divide it into two parts as shown in the diagram below.

![Standard-Normalization-Distribution-3](https://i.ibb.co/jJGM43Z/Standard-Normalization-Distribution-3.png)

Hence, the cumulative probability is the sum of A and B.

B is half of the area between z and -z. Hence it will be equal to 0.9030/2 = 0.4515

Now let's try to find the value of A. The total area under a normal distribution is equal to 1. Hence A represents half of the area under the normal distribution. Hence A should be 0.5.

Thus, the cumulative probability will be equal to 0.5 + 0.4515 = 0.9515

![Standard-Normalization-Distribution-4](https://i.ibb.co/ZM4pbSx/Standard-Normalization-Distribution-4.png)

Now that you have the cumulative probability, you can refer to the z table or use a code to extract the z value. This value of z will come out to be approximately 1.66

You can use the following code to generate the value z such that the area between them is 0.9030

```python
from scipy.stats import norm
norm.ppf(0.9515)
```

Let's summarise our learnings in this session in the next segment.
