# Box Plot

**Box plots** are quite effective in summarising the spread of a large data set into a visual representation. They use percentiles to divide the data range. 

The percentile value gives the proportion of the data range that falls below a chosen data point when all the data points are arranged in the descending order. For example, if a data point with a value of 700 has a percentile value of 99% in a data set, then it means that 99% of the values in the data set are less than 700.

Let’s watch the next video to learn more about box plots.

**VIDEO**

You can use the following command to create a box plot in Python using Matplotlib:

`plt.boxplot([ list_1, list_2])`

The figure below shows a typical box plot with explanations for each element in its construction.

<img src="https://i.ibb.co/JdHx86L/Box-Plot-Explanation.png" title="" alt="Box Plot" data-align="center">

Box Plot

Box plots divide the data range into three important categories, which are as follows:

- **Median value:** This is the value that divides the data range into two equal halves, i.e., the 50th percentile.
- **Interquartile range (IQR):** These data points range between the 25th and 75th percentile values.
- **Outliers:** These are data points that differ significantly from other observations and lie beyond the whiskers.

The box plot given below was constructed in the video.

<img title="" src="https://i.ibb.co/Fm94zVY/Box-Plot-2.png" alt="Box Plot" data-align="left">

Box Plot

As you can see, there are quite few outliers in the given data set.

Attempt the quiz given below to test your understanding of the box plots. 

#### Box Plot

Qn: Find the interquartile range for the box plot created over the following list:  
list_1 = [48.49, 67.54, 57.47, 68.17, 51.18, 68.31, 50.33, 66.7, 45.62, 43.59, 53.64, 70.08, 47.69, 61.27, 44.14, 51.62, 48.72, 65.11]  
[Hint: use `np.percentile` to find the percentile values]  

- 48.55-66.30

- 48.55-52.63

- 37.68-66.30

- 37.68-52.63 

Ans: A. *This is the correct answer. The IQR can be calculated by finding the 25th and 75th percentile values.*

#### Types of Plots

Qn: Which of the following plots can be used to show the relationship between two quantitative variables?

1. Box plot  

2. Line plot  

3. Scatter plot  

4. Histogram
- 1 and 2

- 2 and 3

- 2 and 4

- 1 and 4

Ans: B. *Correct Answer! A line plot and a scatterplot essentially plot the x-y relationship between two quantitative variables. They show how one variable changes with respect to another quantitative variable. To find a relationship using a line plot, one additional step that you have to complete is to first sort the elements of x-axis.*

#### Deciding the Type of Plot to Use

Qn: You have some data of credit card transactions. In this data, you're trying to find transaction values that are way outside the usual data range, in order to investigate some fraud.  
Which type of plot will you use in this case?  

- Line Chart

- Scatter Plot

- Histogram

- Box Plot

Ans: D. *A box plot will be helpful here as it easily segregates the values as outliers. A histogram displays frequency. In this case, you are looking to detect an outlier.*

In the next segment, you will learn about some additional Matplotlib features that can help make your visualisations more effective.*
