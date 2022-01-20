# Line Charts

Are you a fan of cricket? Then you must have observed those worm graphs depicting the pace at which the two teams were playing in a match at a particular instance of time. Here’s an example of a worm graph, depicting the iconic World Cup 2011 final. (Image source: [espncricinfo](https://www.espncricinfo.com/series/8039/statistics/433606/india-vs-sri-lanka-final-icc-cricket-world-cup-2010-11))

<img title="" src="https://i.ibb.co/f0kv3vZ/India-Sri-Lanka-World-Cup.png" alt="" data-align="center">

This graph is an example of a line graph (when drawn at such a scale it resembles a “crawling worm”). In the earlier session on matplotlib, you learnt what is a line graph and its main uses. Its main feature is that it utilises continuous time-dependent data to accurately depict the trend of a variable. In the next video, let’s see how you can build a line chart for the case study.

[Note: Earlier you used the parse_time parameter to index the date-time fields. In this demo, you’ll be using another pandas function pd.to_datetime. You’re advised to check its [documentation](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.to_datetime.html) before watching this video.]

**VIDEO**

Here are the steps you followed to create the line chart:

- You converted the date column to a date_time object using **pd.to_datetime**.
- After that, you found the average rating for each month using a pivot table.
- Then, you used the plot function of matplotlib to create a line chart.

The following is the line chart obtained:

<img title="" src="https://i.ibb.co/JB6J832/Line-Chart-Updated-Month.png" alt="" data-align="center">

Though not quite significant, there is indeed some improvement in the ratings during the months of July-August. Note that, here, **we have assumed the Last Updated month to be the one in which all the reviews and ratings are coming from the users**.

**Additional Notes:**

- Line charts are more or less utilised only for time-series data. Therefore, you’ll be using them predominantly while working on forecasting and other time series models.
