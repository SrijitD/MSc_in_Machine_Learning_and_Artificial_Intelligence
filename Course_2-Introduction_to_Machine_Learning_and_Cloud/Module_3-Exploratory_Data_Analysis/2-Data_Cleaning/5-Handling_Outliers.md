# Handling Outliers

You have learnt what missing values are and how to treat them. Now, in this segment, we will discuss the next concept of data cleaning: Outliers.

Here is the definition of outliers:

**Outliers are values that are much beyond or far from the next nearest data points.**

In the forthcoming video, Rahim will help you understand the concept of outliers.  

**VIDEO**  

So, you learnt that there are two types of outliers: Univariate outliers and multivariate outliers. Let’s take a look at them individually:

- **Univariate outliers:** Univariate outliers are those data points in a variable whose values lie beyond the range of expected values. You can get a better understanding of univariate outliers from the image given below. In the image, almost all the points lie between 0 and 5.0, and one point is extremely far (at 20.0) from the normal norms of this data set.

![Outliers_and_Anomalies](https://i.ibb.co/rtC67xQ/Outliers-and-Anomalies.png)

- **Multivariate outliers:** While plotting data, some values of one variable may not lie beyond the expected range, but when you plot the data with some other variable, these values may lie far from the expected value. These are called multivariate outliers. You can refer to this image to understand multivariate outliers better.

![Multivariate_Outliers](https://i.ibb.co/0mcQDM4/Multivariate-Outliers.png)

Moving on, in the next video, you will learn about the reasons behind the appearance of outliers in data and how to treat them.  

**VIDEO**  

From the video, you must have understood that outliers should be treated before investigating data and drawing insights from a data set.

The major approaches to treating outliers can include:

- Imputation,

- Deletion of outliers,

- Binning of values and

- Capping of outliers.

In the process of handling the missing values and outliers of different columns, you are already performing univariate analysis. You will learn more about it in further sessions. Now, in the next video, you will learn how to apply all of your learning to the bank marketing dataset.

**VIDEO**  

So, in the video, you saw that the age variable has outliers, although they can be treated as normal values of age, because a person can be over 70 or 80 years of age. Also, the age group of 70–90 is sparsely populated and participates in opening term deposit accounts, which is why this set of people fall out of the box plot, although they are not outliers and can be considered normal values.

![Age_Outlier_Example](https://i.ibb.co/bQHXy3N/Age-Outlier-Example.png)

Now, in the next video, you will hear from Rahim as he explains the variable ‘balance’.

Play Video

3221820

An important aspect that has been covered in this video is that of **quantiles**. Sometimes it is beneficial if you look into quantiles instead of the box plot, mean or median. Quantiles may give you a fair idea about outliers. If there is a huge difference between the maximum value and the 95th or 99th quantile, then there are outliers in the data set.

Moving on, in the next segment, you will learn about the standardization process in EDA.

#### Outliers

Qn: Consider the following two statements:

1. The difference between the maximum value of the balance variable and the 99th percentile is too high.

2. The difference between the 99th percentile value and the 95th percentile value of the balance variable is in the normal range, meaning it is not too high.

Based on the above two statements, choose the correct option which concludes that the balance variable has outliers in it.

- Statement 1 is alone sufficient to conclude that balance variables have outliers.
- Both the statements are insufficient to conclude that the balance variable has outliers.
- Both the statement are together sufficient to conclude that it has outliers.
- Any of the statement is alone sufficient to conclude that the balance variable has outliers.

Ans: C, _Both the statements are simultaneously required for you to infer from statement 1 that if the maximum value of the variable is far from the 99th percentile, it gives a clear idea that there are outliers in the data set. In addition, from the 2nd statement, you can see that there is no huge difference between the quantile of 95th and 99th._  

Qn: Which of the following methods can be used to identify the outliers (univariate/multivariate) in the dataset?

- Box plot can be used to plot the single variable and find its interquartile range and quantiles.
- The difference of each point from the mean/median value in the dataset is alone sufficient to identify whether a point is an outlier or not.
- Scatter plot can not be used to identify the multivariate outliers.  

Ans: _Box plot gives a clear picture of all the points and visualizes the quantiles to infer knowledge about the outliers._  

Qn: What is the mean and 75th percentile of the salary variable in bank marketing data set, respectively?

- 57004, 60000
- 57005.97 and 70000.
- 70000, 57004
- 60000, 57004

Ans: B, _Just write the following code to describe the salary variable. You will find the mean and 75th percentile._

    inp1.salary.describe()

Qn: After plotting the boxplot, can you write your opinion about the outliers in the salary variable? Are there any outliers in salary?  
Ans: _Once you plot the boxplot, you see that the salary variable does not have any outliers. It is quite clear that the boxplot has all values within the range of 100th percentile._
