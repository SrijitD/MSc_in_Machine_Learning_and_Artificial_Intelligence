# Histograms

In the previous segment, you learnt about one way of analysing a numeric variable. There is another way in which you can gauge the spread of quantitative value, and that is through the method of histograms, which you would have learnt already in the previous module in the session on Matplotlib.

**VIDEO**

Now, as you saw in the video, histograms generally work by bucketing the entire range of values that a particular variable takes to specific **bins**. After that, it uses vertical bars to denote the total number of records in a specific bin, which is also known as its frequency.

<img title="" src="https://i.ibb.co/89NtFkK/Histogram-Explanation.png" alt="Histogram" data-align="center">

You can manipulate the number of bins to increase or reduce the granularity of your analysis:

<img src="https://i.ibb.co/wrW6GYL/Histograms-with-Different-Bins.png" title="" alt="Histograms with different number of bins" data-align="center">

Histograms with different number of bins

As you can observe, increasing the bins to 20 gives a more in-depth analysis than the one with only 5 bins. You can keep on increasing the number of bins as per your requirement and make sure that there are enough bins to predict the trends in the data correctly. For example, the final image with 50 bins is too granular and even has gaps in-between; this indicates that no records occur in such a fine-tuned bin range, and therefore it is of not much use to us.

Now that you've understood about binning in general, let's go ahead and plot histograms for the Reviews column. Here, you’ll also use a box plot in conjunction with the histogram to obtain insights.

[Please refer to the official matplotlib [documentation](https://matplotlib.org/3.1.1/api/_as_gen/matplotlib.pyplot.hist.html) for a refresher.]

**VIDEO**

Here you utilised both a histogram and a box plot to solve the problem.[ In general, when you're analysing a single numeric variable, both box plots and histograms come in handy]. The key results that you obtained were as follows:

<img title="" src="https://i.ibb.co/HhPK1Mn/Histogram-Reviews.png" alt="Histogram for Reviews" data-align="center">

<img title="" src="https://i.ibb.co/nD8dcZX/Boxplot-Reviews.png" alt="Box Plot for Reviews" data-align="center">

This revealed that lots of pre-installed and superstar apps are present in the data. These apps won’t be useful for our analysis since they already have skewed statistics (an extremely high number of installs and reviews), which is not common for a majority of the rest of the apps. Hence, you took a qualifier of 1 million reviews and removed all the apps having more reviews.

Now, go ahead and analyse the Installs and the Size columns as well in the following questions

#### Histograms

Qn: Plot a histogram for the Reviews column again and choose the correct option:

- The peak  is now towards the end of the histograms

- The peak is still at the beginning of the histogram

- There are two peaks now.

- None of the above

Ans: B. *Use the following command and you can observe that the peak is still at the beginning.*

`plt.hist(inp1.Reviews)`

#### Analysing the Installs Column

Calculate the IQR of the Installs column.

- 9.9∗105

- 9.9∗103

- 9.9∗104

- None of the above.

Ans: A. *Utilise either a boxplot or the describe() function to solve this. The code would be*

`inp1.Installs.describe()`

*After that, calculate the IQR by subtracting 25th percentile value from the 75th percentile and you'll get the answer.*

Qn: Now, remove all the apps which have the number of installs greater than 100 million. After that, evaluate the shape of the data and choose the correct option.

- The resulting dataframe has 7345 records remaining.

- The resulting dataframe has 8645 records remaining.

- The resulting dataframe has 8624 records remaining.

- The resulting dataframe has 7324 records remaining.

Ans: A. *Utilise a qualifier and then the shape function. Use the following code:*

`inp1 = inp1[inp1.Installs <= 100000000] inp1.shape`

*The final shape comes out to (8624,13)*

Qn: Now, remove all the apps which have the number of installs greater than 100 million. After that, evaluate the shape of the data and choose the correct option.

- The resulting dataframe has 7345 records remaining.

- The resulting dataframe has 8645 records remaining.

- The resulting dataframe has 8624 records remaining.

- The resulting dataframe has 7324 records remaining. 

Ans: C. *Utilise a qualifier and then the shape function. Use the following code:*

`inp1 = inp1[inp1.Installs <= 100000000] inp1.shape`

*The final shape comes out to (8624,13)*

#### Analysing the Size Column

Qn: Plot a histogram for the Size column and then choose the correct option.

- A majority of apps have a size less than 30,000.

- A majority of apps have a size more than 30,000.

- A majority of apps have a size more than 40,000.

Ans: A. *Plot a histogram using either matplotlib or the pandas functionality.*

`plt.hist(inp1.Size)`

*Once you create the histogram, it is clearly visible that the first three peaks outweigh the rest of the bars, and hence you can say that a majority of apps have a size less than 30,000.*

Qn: Analyse the size column using a boxplot and report back the approximate median value.

- 12,000

- 26,000

- 14,000

- 18,000

Ans: D. *Create a box plot using either the matplotlib or the pandas functionality. Use the following code.*

`plt.boxplot(inp1.Size)
plt.show()`

*Once it is done, you can see that the median value lies at around 18,000.*

*Also, **check the video solution** for understanding a bit more about why **you should keep the outliers here and not remove them*.**

#### Histograms vs Bar Plots

Qn: You have already studied bar plots in the previous module. Now it is a **common misconception to confuse them with histograms**. To understand the difference try analysing the following two situations and then choose the correct option:

Situation A - You want to visualise the total number of runs scored by MS Dhoni in a single year against all the teams he has played against.

Situation B - You want to visualise the spread of the runs scored by MS Dhoni in a single year.

- Both situations require a histogram.

- Both situations require a bar plot.

- Situation A requires a bar plot whereas Situation B requires a histogram.

- Situation A requires a histogram whereas Situation B requires a bar plot.

Ans: C. *A Histogram plots the frequency of a numeric variable, whereas the Bar plot shows the aggregation of a certain numerical entity for some categorical variable. In Situation A, you are analysing the total sum of runs, which is a numeric variable for all the teams, which is a categorical variable. Hence it will need a bar plot. For Situation B, you're understanding the spread of a numeric variable by checking the frequency. Hence a histogram will be used here.*
