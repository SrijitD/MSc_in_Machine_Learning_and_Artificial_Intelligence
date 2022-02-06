# Sampling Distribution

Recall that to estimate the average lead content of 30,000 Maggi packets, we took a small sample of 100 packets. From this sample, you found out that the mean lead content was 2.2 ppm and the standard deviation was 0.7 ppm. However, at this stage, you’re not sure whether these parameters truly represent the whole population. Let's find out in the following video how sure we can be.

**VIDEO**

So it seems that we can estimate the population parameters from a sample with some error - the process for which we will learn in the later part of this session.

*Right now we are not sure if a sample is a true representation of the population. But suppose we have a population the parameters for which is already known to us. Now if we take samples from this population and check the sample mean, we can validate whether the sample is a true representation of the population.*

So let's go back to the commute time examples that you frequently saw in the last session. Let's say there are 300 employees in an organisation with a mean commute time of 35 minutes and a standard deviation of 5 minutes. Now if we take samples of small sizes (maybe 5 or 10) from these 300 people and find out their means and standard deviations, we will be able to see if the samples are representing the population or not. Since in this case we already know the population parameters (i.e., mean = 35 and standard deviation = 5), we can validate if the samples are indeed a representation of the entire population.

Let's briefly hear again from Akshay on this.

**VIDEO**

So when you took around 40 samples of size 5 and plotted the means of each of these samples on a graph, you found out that the graph looks somewhat like a normal distribution. Can this be useful for us? We will discuss this in the segments ahead.

For now, let's see a few definitions. The sampling distribution, specifically the sampling distribution of the sample means, is a probability distribution function for the sample means of a population.

This distribution has a few interesting properties, which will later help you estimate the sampling error. Let's take a look at these properties.

The sampling distribution’s mean is denoted by ($\mu_{\bar{X}}$), as it is the mean of the sampling means. We saw that this mean was approximately equal to 37 minutes which is evidently quite close to the population mean which is 35. It seems that we are definitely getting closer estimating the population mean.

But before we move ahead, answer a few questions based on your learnings till now.

#### Sampling Distribution Mean

Qn: What is $\mu_{\bar{X}}$, i.e., the sampling distribution mean for our sampling distribution? (The data for the 100 sample means is given in the CSV file upGrad_samples.csv below).

- 35.78

- 36.60

- 37.28

- 37.91

Ans: C. *The sampling distribution’s mean would be equal to the sum of all the sample means, divided by 100, i.e., you just need to use the 'AVERAGE' command in Excel for the given column. This comes out to be 37.28.*

#### Sampling Distribution Standard Deviation

Qn: What is the standard deviation of our sampling distribution? (The data for the 100 sample means is given in the CSV file upGrad_samples.csv below).

- 3.86

- 4.44

- 5.03

- 5.73

Ans: B. *Using the mean from the previous question, you can find the standard deviation using the formula $(StandardDeviation)^2=$ $\dfrac{\sum_{i=1}^{n} X_i}{n}$, i.e., you can simply use the formula **STDEV()** in the Excel file for the given column. Now, using the formula, you get that the value of the standard deviation of the distribution is 4.44*

_***Note:** Also, please don't confuse between STDEV.P (population standard deviation, hence division by n) and STDEV.S (sample standard deviation, hence division by n - 1) in this case. Since the provided is not a sample, but the sampling distribution means, you need to use STDEV.P() or simply. STDEV()._

From the distribution we plotted, you saw that the sampling distribution’s mean was about 37, which is actually quite close to the population mean.  Let's go ahead and learn more about sampling distribution and its properties and how it can help us to estimate the population parameters, in the next segment.
