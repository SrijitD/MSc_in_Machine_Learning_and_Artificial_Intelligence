# Graded Questions

## Comprehension

A home renting startup, Ghar ki Baat, is planning to offer 2 BHK fully furnished flats for rent in Powai, Mumbai. In order to ensure that it charges the correct rent, it wants to find the average rent charged by homeowners in Powai.

For that purpose, it has acquired the following data, which has a list of 200 fully furnished 2 BHK flats in Powai, along with the monthly rent charged for them in the year 2016.

Download - [Inferential Statistics - Powai Flats Rent](Inferential_Statistics-Powai_Flats_Rent.csv)

As a data analyst working for Ghar ki Baat, you are tasked with finding the average rent for all 2 BHK fully furnished flats in Powai, Mumbai, using this data.

You can use the first few lines in python to directly calculate the sample statistics and shown below.

```python
import pandas as pd
import statistics

data = pd.read_csv("Inferential Statistics - Powai Flats Rent.csv")
sample = data['Monthly Rent']
μ = statistics.mean(sample) # sample mean
s = statistics.stdev(sample) # sample standard deviation
n = len(sample) # sample size
```

#### 2 BHK Flat Rent in Powai

Qn: What is the 90% confidence interval for the monthly rent in rupees?

- (₹47,999, ₹49,003)

- (₹44,313, ₹46,789)

- (₹44,701, ₹46,441)

- (₹42,781, ₹44,678)

Ans: C. _The confidence interval, as you remember, is given by $(\bar{X}−\frac{Z^∗S}{\sqrt{n}},\ \bar{X}+\frac{Z^∗S}{\sqrt{n}})$. Using Excel, you can calculate that the mean, $\bar{X} = ₹45,571$ and the standard deviation S = 7457. Also, since the sample csv file has 200 entries, sample size, n = 200. $Z^*$ value for 90% confidence level is 1.65. Putting in all the values, you get the confidence interval (₹44,701, ₹46,441)._

Qn: What is the 99% confidence interval for the monthly rent in rupees?

- (₹43,671, ₹47,471)

- (₹44,210, ₹46,932)

- (₹43,111, ₹48,031)

- (₹42,987, ₹48,115)

Ans: B. _The confidence interval, as you remember, is given by $(\bar{X}−\frac{Z^∗S}{\sqrt{n}},\ \bar{X}+\frac{Z^∗S}{\sqrt{n}})$. In the last question, you found that the value of the mean, ¯X = ₹45,571 and the standard deviation, $S$ = 7457. Also, you know that sample size, $n$ = 200 and $Z^*$ value for 99% confidence level is 2.58. Putting in all the values, you will get the confidence interval - (₹44,210, ₹46,932)._

Qn: Your boss decides to fix the monthly rent at ₹46,500 and she asks you if this is close enough to the average. She asks you to decide based on a 95% confidence level.

Does the rent fixed by your boss (₹46,500) lie inside the 95% confidence interval for monthly rent?

- Yes

- No

Ans: A. _The confidence interval, is given by $(\bar{X}−\frac{Z^∗S}{\sqrt{n}},\ \bar{X}+\frac{Z^∗S}{\sqrt{n}})$. Also, because of previous questions, you know that the value of the mean $\bar{X}$ = ₹45,571, standard deviation $S$ = 7457 and sample size $n$ = 200. Now, using Z* value for 95% confidence level, which is 1.96, you will get the confidence interval (₹44,537, ₹46,605). Clearly, ₹46,500 lies inside the interval._

#### Sampling Distribution

A population of tin containers has a mean weight of 200 kg and a standard deviation of 50. A sample of 100 containers are selected and the sample mean is equal to ¯x. Mark the correct options. [More than one option may be correct]

- Expected value of  $\bar{x}$ = 200

- The standard error of  $\bar{x}$ = 5

- This sampling distribution is the probability distribution of all possible sample means randomly selected having sample size as 100

- This distribution can be used to compute the probability of $\bar{x}$ lying in the interval  $(\mu - value,\ \mu + value)$

Ans: All of the above.

- _This is a consequence of the central limit theorem_.

- _As per Central Limit Theorem, Standard deviation of $\bar{x}=\frac{\sigma}{\sqrt{n}}$. Note that the standard deviation of any sampling distribution is known as the standard error._

- _This is a consequence of the central limit theorem._

- _Using the sampling distribution, we can estimate that the sample mean lies in a certain range around the population mean._
