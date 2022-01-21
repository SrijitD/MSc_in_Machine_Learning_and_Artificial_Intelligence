# Pie Chart and Bar Chart

In the earlier visualisations, you’re dealing only with numeric variables. Now you’ll step into analysing the categorical variables and see how the Ratings vary across each of them. Note that in the case of categorical variables, you need to use aggregates or measures like sum, average and median to plot the visualisations. And then use plots like a bar chart or pie chart to portray those relationships. They are as follows:

![Campaign-Response-Bar](https://i.ibb.co/q1fBVj2/Campaign-Response-Bar.png)

![Campaign-Response-Pie](https://i.ibb.co/3kBXrzT/Campaign-Response-Pie.png)

You’re already familiar with how to create bar plots in matplotlib. Here, you’ll see how you can create bar plots and pie charts directly from the pandas series as well. Go through the documentation for both [pie charts](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.plot.pie.html) and [bar plots](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.plot.bar.html). You’ll also be doing a couple of data handling tasks here. So let’s dive in.

Play Video

3221820

So after the data handling tasks, you went ahead and plotted the total number of records in each category of **Content Rating** using the pie chart and the bar graph in matplotlib. 

You understood the reasons why a pie chart is not very much preferred in cases where there are 3 more categories to be plotted. Essentially, it is very difficult to assess the difference between the different categories when their proportions are pretty similar as seen in the following pie chart:

![Content-Pie](https://i.ibb.co/tPtLSPq/Content-Pie.png)

However, this problem is easily overcome with the bar graph, where there are clear visual cues with the length of the bars that portray the difference between the categories succinctly. In fact, you can draw a horizontal bar graph as well to make the difference much more apparent. Both the views are shown in the images below

![Categories-Bar](https://i.ibb.co/K0yNXGw/Categories-Bar.png)

![Categories-Bar-Horizontal](https://i.ibb.co/QJLZgxw/Categories-Bar-Horizontal.png)

You can clearly see that ‘Everyone’ category has the highest number of apps followed by Teen and Mature 17+.

#### Barplot

Qn: Plot a bar plot for apps belonging to different types of ‘Android Ver’ and report back the category at the 4th highest peak.  

- 4.1  and up

- 4.0 and up

- Varies with device

- 4.0.3 and up

Ans: C. *Plot a bar plot with the following code:* inp1['Android Ver'].value_counts().plot.bar() *. You can see that at the 4th highest peak you have the ‘Varies with device’ category.*

**Additional Notes:**

Here’s a [blogpost](https://paragraft.wordpress.com/2008/06/03/the-chart-junk-of-steve-jobs/) describing how Steve Jobs used pie charts and other visualisations cunningly to show a “different picture” than the real one.
