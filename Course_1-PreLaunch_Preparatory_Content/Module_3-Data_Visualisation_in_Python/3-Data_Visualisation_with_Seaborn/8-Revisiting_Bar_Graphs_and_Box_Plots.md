# Revisiting Bar Graphs and Box Plots

In the earlier sessions, you learnt how bar graphs and box plots can be utilised for analysing the numerical and categorical variables in your data. Now, you’ll learn some additional customisations that Seaborn provides along with certain use cases where those functionalities come in handy. For this demonstration, you’ll be taking a look at the Content Rating column.

**VIDEO**

Since taking just the average did not give us any insight, we decided to use the median metric. Here, you observed that the median value also did not prove to be a good differentiator for the categories being analysed.

![Content_Rating](https://i.ibb.co/rsTBcf8/c210-image11.png)

Now, this is where you utilised Seaborn’s **estimator function** to create bar graphs for different metrics (other than the median and mean) as you did earlier. In this case, you used the value at the 5th percentile to compare the categories and utilised the following estimator function for it:

```python
estimator=lambda x: np.quantile(x,0.05)
```

This yielded the following view:

![Content_Rating](https://i.ibb.co/VqqfYVP/b-image13.png)

Here, you can see some clear differences popping up: “Everyone 10+” has the highest rating at the 5th percentile (3.5), followed by “Teen” (around 3.3) and then “Everyone” & “Mature 17+”(around 3).

Using the estimator function, you can observe the values at different percentiles and compare the different categories.

#### Estimator

Qn: Change the estimator function in the graph above to analyse minimum Rating for each of the different categories of ‘Content Rating’. Which category has the highest minimum rating?  

- Everyone

- Mature 17+

- Teen

- Everyone 10+

Ans: D. *Change the estimator function to np.min and plot using*

```python
sns.barplot(data=inp1, x="Content Rating", y="Rating", estimator = np.min)
```

Now, you must be wondering, rather than observing at specific percentiles, why not visualise the entire spread of ratings for each category using a box plot? Well, if you did , then good job! You’re thinking in the right direction.  Rahim will be discussing that in the next video.

**VIDEO**

The following is the box plot of ratings for all different categories:

![Content-Rating-Box-Plot](https://i.ibb.co/7CthvgW/Content-Rating-Box-Plot.png)

Here, you get a bird’s eye view of the spread of ratings for the different categories: median, 75th percentiles, fences, etc. The immediate insight that you obtained from the above view are:

- That “Everyone” category has the highest number of ratings in the lower percentiles as compared to the other categories.
- The median values are all comparable, which was discovered in the previous views as well.
- The upper fences for all the categories get capped at 5.0, whereas there are some observable differences in the lower fences.

#### Capping

Qn: Plot a boxplot for the Rating column. The lower fence gets capped between

- 2.0 - 2.5

- 2.5- 3.0

- 3.0 - 3.5

- 4.0 -4.5

Ans: C. *Plot a box plot with sns.boxplot(inp1.Rating). You’ll observe that the lower fence is between 3.0 -3.5*

#### Lower Fence

Qn: For the 4 most popular Genres, plot a box plot and report back the Genre having the highest Rating at the lower fence.  

- Tools

- Medical

- Education

- Entertainment

Ans: C. *First, you need to find the 4 most popular Genres. This can be done by the following code*

```python
inp1['Genres'].value_counts()
```

T*his will yield you the Top 4 Genres- Tools, Entertainment, Medical and Education.*

*Take all the rows having only these as the values of Genres.*

```python
c = ['Tools','Entertainment','Medical','Education']
inp5= inp1[inp1['Genres'].isin(c)]
```

*Finally, plot a box plot*

```python
sns.boxplot(inp5['Genres'],inp1.Rating)
```

You can observe that the highest value at lower fence occurs for ‘Education’ Genre.

**Additional Notes**

- In the first use case of box plots, you observed how they can be used to identify and remove outliers from the data. In this segment, you understood how box plots can enable you to analyse a numerical variable across several categories. These two are the most prominent use cases of box plots that you’ll be encountering from time to time as you proceed in this program.
- As you saw in the video, utilising the **groupby** function, the bar graph can be used to compare the mean, median, sum and several other metrics.
