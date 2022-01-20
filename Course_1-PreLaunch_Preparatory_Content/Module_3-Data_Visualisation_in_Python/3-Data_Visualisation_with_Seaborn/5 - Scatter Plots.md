# Scatter Plots

Previously, you had dealt with only a single numeric column and therefore used either a box-plot or a histogram to portray the insights visually. What about two numeric columns, say Rating and Size? If you want to plot the relationship between two numeric variables, you will be using something known as a **scatterplot**. 

**VIDEO**

Scatterplots are perhaps one of the most commonly used as well one of the most powerful visualisations you can use in the field of machine learning. They are pretty crucial in revealing relationships between the data points and you can generally deduce some sort of trends in the data with the help of a scatter plot. 

The “Sales and Discount” example that you had seen earlier at the beginning of the module is an example of a scatterplot ( technically these are 4 different scatterplots, each of them showing a different city)

<img title="" src="https://i.ibb.co/ZT3s57t/State-Month-Sales-Discount-Visualization.png" alt="" data-align="center">

**Some Applications of scatterplots in machine learning:**

Even though you’ll be learning about them in greater detail in future modules, it is good to know certain use cases where a scatterplot is immensely productive in the field of machine learning.

- **Observing trends in linear regression**: Because scatterplots can reveal patterns in the data, they’re a necessity in linear regression problems where you want to determine whether making a linear model, i.e. using a straight line to predict something makes sense or not. Check out the diagram given below:
  
  <img title="" src="https://i.ibb.co/wWCS0Xt/Linear-Non-Linear-Scatter.png" alt="" data-align="center">  
  Making a linear model between x and y makes complete sense in the first case rather than the second one.

- **Observing natural clusters in the data:** In simple terms, clustering is the act of grouping similar entities to clusters. For example, let’s say you have a group of students who have recently taken a test in Maths and Biology. Plotting a scatterplot of their marks in the two subjects reveals the following view:<img title="" src="https://i.ibb.co/DWg5fcx/Scatter-Plot-Clusters.png" alt="" data-align="center">You can clearly group the students to 4 clusters now. Cluster 1 are students who score very well in Biology but very poorly in Maths, Cluster 2 are students who score equally well in both the subjects and so on. 

Now coming back to our problem, we’re discussing plotting the scatterplot between Rating and Size. You already know how to do this in matplotlib using **pyplot.scatter()** function. In seaborn, we have the **sns.scatterplot()** which is pretty intuitive and similar to its matplotlib counterpart. You are advised to go through its [official documentation](https://seaborn.pydata.org/generated/seaborn.scatterplot.html) to get an understanding of how the various parameters work.

However, in this case, you’ll be using something called a JointPlot which combines the functionality of a scatterplot and also adds additional statistical information to it. Let’s watch the next video to understand this further.

**VIDEO**

You utilised the jointpoint() functionality of seaborn to plot it and observed the following results:

<img title="" src="https://i.ibb.co/rFGcqRW/Seaborn-Joint-Plot.png" alt="" data-align="center">

In addition to the normal scatter plot, the jointplot also adds the histogram of the respective columns to the mix as well. In this way, you can get an idea of the spread of the variables being discussed and therefore, make more succinct conclusions and gather insights from the data. 

[Also, if you notice, there is the “**Pearson r**” and “**p value**” statistics information available to you as well. You’ll be learning more about them in an upcoming module.*]

The syntax of jointplot is pretty similar to both the scatterplot syntaxes from seaborn and matplotlib. Take a look at the [official documentation](https://seaborn.pydata.org/generated/seaborn.jointplot.html) to learn more about the parameters. 

The major insight that you got from the scatterplot is that there is a very weak trend between size and ratings, i.e. you cannot strongly say that higher size means better ratings. 

Check the documentation of [Jointplots](https://seaborn.pydata.org/generated/seaborn.jointplot.html) answer the following question:

#### Jointplot

Qn: In case you want to remove the histogram/distribution plot appearing on the jointplot’s axes, the command that you need to use is?  

- hist = False 

- dist = False 

- kde = False 

- None of the above.

Ans: D. *You cannot remove the distribution plot from the Jointplot. In case you don’t want it, you can always use pyplot.scatter() or sns.scatterplot() to plot the same variables.*

#### Customisation

Qn: What is the command to get the following view for the Size vs Rating joinplot that you have already analysed above?  
 

<img title="" src="https://i.ibb.co/JrH5M4D/Rating-Size-Joint-Plot-Customization.png" alt="" data-align="center">

- `sns.jointplot(inp1.Size, inp1.Rating, kind = 'kde',color = 'g')`

- `sns.jointplot(inp1.Size, inp1.Rating, kind = 'kde',color = 'G')` 

- `sns.jointplot(inp1.Size, inp1.Rating, kind = 'kde')`

- Both (a) and (b)

Ans: D. *Try out the code on your notebook and check the results.*

*Additional Notes**

- * In case you’re curious, Pearson’s r value is a metric to measure the correlation between 2 numerical entities. You can read more about it in the following [link](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient). Its value ranges from -1 to 1. A higher positive correlation would indicate a positive influence of the variables on each other. For example, if you find that the correlation between the sales of  Product A and Product B is 0.7, then you can say that they sell well together. The reverse is true for negative values. As visible in the scatterplot you obtained, the Pearson’s coefficient is 0.059, thereby denoting a weak positive relationship which is also the insight that we got as well from the scatterplot.
- Scatterplots can show the trends for only 2 numeric variables. For understanding the relationships between 3 or more, you need to use other visualisations.
