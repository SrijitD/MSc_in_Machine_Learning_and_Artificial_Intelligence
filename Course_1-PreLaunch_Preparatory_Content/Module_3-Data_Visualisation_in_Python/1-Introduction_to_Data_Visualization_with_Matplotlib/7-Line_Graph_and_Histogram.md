# Line Graph and Histogram

In this segment, you will learn about two new visualisation charts, which are as follows:

- Line graph

- Histogram

A **line graph** is used to present continuous time-dependent data. It accurately depicts the trend of a variable over a specified time period. Let’s watch the next video to learn how to plot a line chart using the Matplotlib library.

**VIDEO**

You can use the following command to plot a line graph:

`plt.plot(x_axis, y_axis)`

Remember to be careful while using the `plt.plot` function. This function also helps you create a scatter plot when you tweak the syntax and specify the markers. Try to run the following code to understand the difference between the outputs of the function:

`y = np.random.randint(1,100, 50)
plt.plot(y, 'ro') # ‘ro’ represents color (r) and marker (o)`

(if you are getting an error, check the quotation marks.)

If you specify the colour and marker separately, then you will get a line plot with the points marked. Try to run the following the code for this:

`plt.plot(y, 'red', marker = 'o')`

A line graph can be helpful when you want to identify the trend of a particular variable. Some key industries and services that rely on line graphs include financial markets and weather forecast. Although you successfully created a line chart in the previous video, you can make certain visual improvements to create a chart that is more easily understandable. Let’s watch the next video to learn about these visual modifications.

**VIDEO**

In the video above, you learnt how to rotate the tick labels on the axes using the following command:

`plt.yticks(rotation = number)  #could do for xticks as well`

After running the command, the chart will look like the one given below.

![Line Graph](https://images.upgrad.com/44cbd218-c85d-4ce6-a5a7-9ee1669cfa33-3.png)

Line Graph

As you can see in the diagram, the x-ticks and y-ticks are much more readable.

To further improve the readability of the chart, you can add markers to the data points. Let’s watch the next video to learn how to make modifications to add data labels.

**VIDEO**

In the video above, you learnt how to use the annotate method to add data labels to the plot. The code given below was used in the previous video.

```python
plt.plot(months, sales)

# Adding and formatting title

plt.title("Sales across 2015\n", fontdict={'fontsize': 20, 'fontweight' : 5, 'color' : 'Green'})

# Labeling Axes

plt.xlabel("Months", fontdict={'fontsize': 12, 'fontweight' : 5, 'color' : 'Brown'})
plt.ylabel("Sales", fontdict={'fontsize': 12, 'fontweight' : 5, 'color' : 'Brown'} )
ticks = np.arange(0, 600000, 50000)
labels = ["{}K".format(i//1000) for i in ticks]
plt.yticks(ticks, labels)
plt.xticks(rotation=90)

for xy in zip(months, sales):
    plt.annotate(s = "{}K".format(xy[1]//1000), xy = xy, textcoords='data')
plt.show()
```

After running this code, your plot will look like the one given below.

![1-2](https://i.ibb.co/c2Nm25K/1-2.png)

In the earlier segment on scatter plot, you used the annotate method to add data labels to a scatter plot. Similarly, the annotate method can be used to add data labels to graphs as well. Now that you know the basics of line graphs, attempt the following questions.

#### Specifying Line Style

Qn: Let's say 'x' and 'y' are two lists that you want to plot. You have initialised matplotlib.pyplot as plt. Now, you want to plot a blue line with cross (x) as markers for your points. What is the function call for this?  
For your reference, here is the [official documentation](https://matplotlib.org/api/_as_gen/matplotlib.pyplot.plot.html#matplotlib.pyplot.plot) of the Pyplot API.

- plt.plot(x, y, 'bo') plt.show()

- plt.plot(x, y, 'bO') plt.show()

- plt.plot(x, y, 'b', marker = 'x') plt.show()

- plt.plot(x, y, 'b', marker = 'cross') plt.show()

Ans: C. *The syntax for plotting a line graph is `plt.plot(x_component, y-component, 'graph_features')`. You have to specify the marker as a separate attribute to plot a line graph.*

## Histograms

A **histogram** is a frequency chart that records the number of occurrences of an entry or an element in a data set. It can be useful when you want to understand the distribution of a given series. Let’s watch the next video to learn how to plot a histogram.

**VIDEO**

As shown in the video above, you can use the following command to plot a histogram:

`plt.hist(profit, bins = 100,edgecolor='Orange',color='cyan')
plt.show()`

After running this code, your histogram will look like the one given below.

![2-4.png](https://i.ibb.co/JvssKHg/2-4.png)

The x-ticks in the histogram above are not very informative. Let's try to add more detailed x-ticks so that the data is more readable. In the next video, you will learn how to add more information to classes and x-ticks.  

**VIDEO**

In the video above, you learnt how to use the `hist()` function to add more information to classes and x-ticks. Now that we have covered the basics of histograms, attempt the following questions.  

#### Histogram

Qn: You are provided with a list of weights of individuals stored as float:  
list_1 = [48.49, 67.54, 57.47, 68.17, 51.18, 68.31, 50.33, 66.7, 45.62, 43.59, 53.64, 70.08, 47.69, 61.27, 44.14, 51.62, 48.72, 65.11]

You want to check which bucket has maximum entries when divided into the following four groups:

- [40-50)
- [50-60)
- [60-70)
- [70-80)

Which code will help you find the correct answer? For your reference, here is the [official documentation](https://matplotlib.org/3.1.1/api/_as_gen/matplotlib.pyplot.hist.html#matplotlib.pyplot.hist) of the Pyplot API.

- `plt.hist(list_1, edgecolor = 'white')`

- `plt.hist(list_1, bins = 4, edgecolor = 'white')`

- `plt.hist(list_1, bins = 4, range =[40, 80], edgecolor = 'white')`

- `plt.hist( list_1, range =[40, 80])`

Ans: C. *This is the correct answer. You are provided with four bars representing the desired ranges.*

`plt.hist( list_1, range =[40, 80])`

In the next segment, you will learn about another plot, namely, Box Plot.

## Additional Resources

You can also use line graphs to plot and visualize time series data. You can learn more about plotting time series data [here](https://www.youtube.com/watch?v=_LWjaAiKaf8).
