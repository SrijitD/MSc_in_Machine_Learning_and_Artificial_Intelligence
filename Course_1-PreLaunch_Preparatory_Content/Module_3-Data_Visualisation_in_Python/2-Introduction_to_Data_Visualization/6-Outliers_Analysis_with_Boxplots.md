# Outliers Analysis with Boxplots

Now that you have performed the sanity checks, it’s time to finally turn our attention to identifying and removing extreme values or **outliers** from the dataset. These values can tilt our analysis and often provide us with a biased perspective of the data available. This is where you’ll start utilising visualisation to achieve your tasks. And the visualisation best suited for this is the **box plot**. You’ve already learnt about box plots in the previous module. Here’s a brief refresher that recalls the basic concepts as well as explains the workings of the same in identifying outliers.

**VIDEO**

As you saw in the video, a box plot can be described as a representation of the spread of the numerical data for a particular variable. As a matter of fact, it is perhaps the best way to explain the spread of a variable that is numeric in nature. The following diagram shows the various attributes of a box plot:

![Box-Plot-Explanation-1](https://i.ibb.co/Dfc0zTZ/Box-Plot-Explanation-1.png)

As you might have learnt earlier, the ‘maximum’ and ‘minimum’ values, which are represented by the fences of the box plot, are given by the formula **Q3 + 1.5*IQR** and **Q1-1.5*IQR**, respectively. Any value lying outside this range would be treated as an outlier.

[Here **IQR** or the interquartile range denotes the values that lie between the 25th and 75th percentiles.]

![Inter-Quartile-Range-Explaination](https://i.ibb.co/3mwsRJ9/Inter-Quartile-Range-Explaination.png)

Here are some questions to test your understanding of boxplots before we get into the analysis part for our case study

#### Box Plots

Qn: For the given dataset, calculate the IQR of the Price column.

- 0

- 10

- 14

- 400

Ans: A. *You can either draw a box plot or use the describe function here. If you do `inp1['Price'].describe()`. You shall see that the values obtained at both 25th and 75th percentile are 0. Hence the IQR is also 0.*

In the next lecture, you'll be analysing the Price column once again to observe any outliers.

**VIDEO**

When you created a box plot for the prices of all the apps using the Matplotlib library (check the [official documentation](https://matplotlib.org/3.1.1/api/_as_gen/matplotlib.pyplot.boxplot.html)), you observed some really stark outliers.

![Box-Plot-Result-1](https://i.ibb.co/gD43Rc6/Box-Plot-Result-1.png)

On further inspection, you observed that a lot of junk apps with 'I am rich' string having those outlier values. Removing them and then inspecting only the paid apps using the pandas boxplot tool (check the official documentation [here](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.boxplot.html)) gave us the following view:

![Box-Plot-Result-2](https://i.ibb.co/Y7b4gvD/Box-Plot-Result-2.png)

After inspecting the entries having Price greater than 30, you went ahead and removed them as well. Finally, you were left with 9338 records.

So, the two major takeaways from outlier analysis are as follows:

- Outliers in data can arise due to genuine reasons or because of dubious entries. In the latter case, you should go ahead and remove such entries immediately. Use a boxplot to observe, analyse and remove them.
- In the former case, you should determine whether or not removing them would add value to your analysis procedure*.

**Additional Notes:**

- Several definitions exist for outliers for different contexts so that the correct procedure is followed for removing them. You can go through this [link](https://www.anodot.com/blog/quick-guide-different-types-outliers/) for more information.
- *You must be wondering what are the cases where you actually ‘**keep the outliers**’. Consider this problem: Let’s say you’re analysing the development levels of all the countries in the world to identify those that need the most help from the United Nations. In this scenario, the most underdeveloped countries would have quite low scores for their socio-economic and health factors like GDP, income, life expectancy, etc., and hence these values would be considered outliers. Now, in this case, you do not remove them from the data, but keep them as they are tightly linked to the end results. As you progress on the program and keep solving various case studies, you’ll get a deep understanding of when to keep the outliers and when to remove them.
- Box plots are utilised not just for outlier analysis, but can also be used to compare a certain numeric variable across different categories. You’ll learn about this method in the next session where we start analysing the data for insights using Seaborn.
