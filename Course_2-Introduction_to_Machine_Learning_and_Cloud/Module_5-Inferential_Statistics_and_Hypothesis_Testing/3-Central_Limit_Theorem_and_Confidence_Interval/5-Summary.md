# Summary

Let’s summarise everything that's been taught so far.

First, you saw how, instead of finding the mean and standard deviation for the entire population, it is sometimes beneficial to find the **mean** and **standard deviation** for only a small representative **sample**. You may have to do this because of time and/or money constraints.

For example, for 30,000 Maggi packets, we wanted to find the average lead content. But, instead of checking the lead content in every single packet, we asked only 100 of them and collected the data. The mean = 2.2 ppm and the standard deviation = 0.7 ppm.

However, it would not be fair to infer that the population mean is exactly equal to the sample mean. This is because the flaws of the sampling process must have led to some error. Hence, the sample mean’s value has to be reported with some **margin of error**.

For example, the mean lead content for 30,000 packets could be equal to 2.2 <u>+</u> 0.1 ppm, 2.2 <u>+</u> 0.2 ppm, or 2.2 <u>+</u> 0.3 ppm, i.e., 2.2 ppm <u>+</u> some margin of error in general.

However, at this point in time, you do not exactly know how to find what this margin of error is.

Then, we moved on to sampling distributions, which have some properties that would help you find this margin of error.

![Creation of Sampling Distribution](https://i.ibb.co/rfDxY2w/Creation-of-Sampling-Distribution.png)

We created a sampling distribution, which was a probability density function for 100 sample means with sample size 5.

The sampling distribution, which is basically the distribution of sample means of a population, has some interesting properties which are collectively called the **central limit theorem**, which states that no matter how the original population is distributed, the sampling distribution will follow these three properties:

1. **Sampling distribution’s mean** $(\mu_{\bar{X}})$ = **Population mean** $(\mu)$

2. Sampling distribution’s standard deviation (**Standard error**) = $\frac{\sigma}{\sqrt{n}}$, where $\sigma$ is the population’s standard deviation and n is the sample size

3. **For n > 30**, the sampling distribution becomes a **normal distribution**

To verify these properties, we took samples from a pool of 300 people, the parameters for which we already knew and hence, could validate it. The values for the sampling distribution thus created ($\mu_{\bar{X}}$ = 37, S.E. = 4.47) were pretty close to the values predicted by theory ($\mu_{\bar{X}}$ = 36.6, **S.E.** = $4.47\ (\frac{10}{\sqrt{5}})$.

To summarise, the notations and formulae for populations, samples and sampling distributions are as follows:

![Notations-and-Formular-Related-to-Populations-and-their-Samples](https://i.ibb.co/D9wqj3Y/Notations-and-Formular-Related-to-Populations-and-their-Samples.png)

Figure 5 - Commonly Used Notations and Formulae

Then you learnt how, using your knowledge of **CLT**, you can **infer the population mean from the sample mean**.

We estimated the mean commute time of 30,000 employees of an office, by taking a sample of 100 employees, finding their mean commute time, and estimating based on that value. Specifically, you were given a sample with sample mean $\bar{X}$ = 36.6 minutes, and sample standard deviation $S$ = 10 minutes.

Using CLT, you concluded that the sampling distribution for mean commute time would have:

1. Mean = $\mu$ {unknown}
2. Standard error = $\frac{\sigma}{\sqrt{n}} \approx \frac{S}{\sqrt{n}}= \frac{10}{\sqrt{100}} = 1$
3. Since n(100) > 30, the sampling distribution is a normal distribution

Using these properties, you were able to claim that the probability that the population mean μ lies between 34.6 (36.6-2) and 38.6 (36.6+2), is 95.4%.

Then, you learnt some terminology related to the claim:

1. The probability associated with the claim is called **confidence level** (here, it is 95.4%)
2. The maximum error made in sample mean is called **margin of error** (here, it is 2 minutes)
3. The final interval of values is called **confidence interval** [here, it is the range (34.6, 38.6)]

Then, you generalised the whole process. Let’s say you have a sample with **sample size n, mean $\bar{X}$ and standard deviation $S$**. You learnt that the **y% confidence interval** (i.e. confidence interval corresponding to y% confidence level) for $\mu$ will be given by the range:

**Confidence interval** = $(\bar{X}−\frac{Z^∗S}{\sqrt{n}},\ \bar{X}+\frac{Z^∗S}{\sqrt{n}})$

Where, $Z^*$ is the $Z$-score associated with a **y% confidence level**.
