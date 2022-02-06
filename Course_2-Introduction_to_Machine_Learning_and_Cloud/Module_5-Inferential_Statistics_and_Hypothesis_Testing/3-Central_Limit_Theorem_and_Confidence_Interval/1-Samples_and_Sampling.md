# Samples & Sampling

Recall the commute time example that you had seen in the last session. Now, if your company had a lesser number of employees, then it would be easy to collect the data and make inferences from it. But what if you wanted to analyse the data for a company that has a large number of employees, say 30,000 people or more? Or what if you need to perform an analysis for, say, the entire population of a country?

Let’s say that, for a business application, you want to find out the average number of times people in urban India visited malls last year. That’s 400 million (40 crore) people! You can't possibly go and ask every single person how many times they visited the mall. That’s a costly and time-consuming process. How can you reduce the time and money spent on finding this number?

The answer is simple: You perform sampling. If you could take a small sample of people from the large population and check if the metrics obtained from this sample can somehow be extrapolated to the whole population (maybe with a small margin of error), then it might solve our problem.

Let’s hear more about samples and sampling using a real-world example you all might have heard of.

**VIDEO**

Before moving ahead with the problem, let's take a look at some notations and formulae related to samples and sampling.

**VIDEO**

To reiterate, these are the notations and formulae related to populations and their samples:

![Notations_and_Formular_Related_to_Populations_and_their_Samples](https://i.ibb.co/D9wqj3Y/Notations-and-Formular-Related-to-Populations-and-their-Samples.png)

The formulae of the population parameters are something you already know.  The sample formulae are also the same but with a small twist. The sample mean is given by $\dfrac{\sum_{i=1}^{n} X_i}{n}$ . If you notice, this is the same as calculating the mean for a population, i.e., you simply add all the values of X and divide the total value by the sample size, i.e., n. However, in the case of sample variance, you divide the sum of all $(X_i - \bar{X_i})^2$ by (n-1) instead of n. This is done in order to obtain an unbiased estimate of the variance. The mathematics for this is quite complex and out of the scope of your syllabus. If you are still curious to know more about the intricacies involved, please refer to this [link](https://www.ma.utexas.edu/users/mks/M358KInstr/SampleSDPf.pdf).

## **Quiz**

For an upcoming government project, you want to find the average height of the students in Class VIII of a given school. Instead of asking each student, suppose you took a few students as your sample and wrote the data down:

| Roll Number | Height (in cm) |
| ----------- | -------------- |
| 8012        | 121.92         |
| 8045        | 133.21         |
| 8053        | 141.34         |
| 8099        | 126.23         |
| 8125        | 175.74         |

#### School Kids Sample

Qn: What is the sample size for this sample?

- 5

- 40334

- 698.44

- 10

Ans: A. *In this sample, you have data on 5 students. Hence, the sample size is equal to 5.*

Qn: What is the sample mean ($\bar{X}$)?

- 133.21

- 139.69

- 146.76

- 141.34

Ans: B. *The sample mean $(\bar{X}) = (121.92 + 133.21 + 141.34 + 126.23 + 175.74)/5 = 139.69$.*

Qn: What will be the sample's standard deviation (S)?

- 22.84

- 23.67

- 19.19

- 21.45

Ans: D. We found in the previous question that the sample mean (¯X) = 139.69. Now, we can find $\sum(X_i - \bar{X}^2)$, which turns out to be 1841.26. Dividing this by n-1, i.e, 4, we get the value of $S^2$ as 460.315. The value of S, thus, will be equal to $\sqrt{(460.315)} = 21.45$

Let's go through another example of sampling.

In order to counter fake news, let’s say Facebook is planning to include a new feature in its timeline. Below each post, a fact-checking warning will be provided, like this:

![Facebook Fact Checking Tool Demo](https://i.ibb.co/VDQ1tqB/Facebook-Fact-Checking-Tool-Demo.jpg)

Figure 2 - Facebook Fact Checking Tool Demo

In case you want to read more about this feature, you can go through this [link](http://fortune.com/2017/03/22/facebook-fact-checking-tool/).

Before changing the timelines of all Facebook users to include this feature, Facebook wants to evaluate how its users would react to this new feature.

So, it selects a small sample (~10,000 users) to try out the new feature. Then, it asks the 10,000 users whether they prefer the old timeline (Feature A) or the new timeline (Feature B).

Let’s say that one such survey shows that 50.5% of the people prefer feature B over feature A. Based on this, Facebook can say that feature B is preferred by more people than feature A, and hence it should replace it.

Hence, by sampling, Facebook found that more people prefer feature B over feature A. By conducting the exercise on a sample and not the entire population, Facebook saved time, money and avoided risks associated with rolling out a completely untested feature.

But hold on! How can you be sure that the insights inferred for the sample hold true for the population as well? In other words, just because 50.5% of the people in the sample preferred feature B, is it fair to infer that 50.5% of the people in the population (1.86 billion Facebook users) will also prefer feature B over A?

You cannot answer this question with the information you have right now. However, after the next few videos, which will cover sampling distributions, central limit theorem and confidence intervals, you will be in a position to answer this question.

Now that you've learnt about samples, let's learn about a very interesting topic called sampling distributions that will lay the foundation stone for central limit theorem.
