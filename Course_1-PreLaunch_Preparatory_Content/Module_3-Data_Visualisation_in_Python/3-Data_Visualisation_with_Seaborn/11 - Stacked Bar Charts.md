# Stacked Bar Charts

Earlier, you learnt how to analyse categorical variables using a bar chart. You can also add another categorical variable to the mix and analyse it even further with the help of a stacked bar chart. In the following demonstration, you’ll be creating a stacked bar chart by comparing Installs across the different months and different categories of Content Rating.

**VIDEO**

To create a stacked bar chart, you need to follow these steps:

- First, create a pivot table with the updated month and Content Rating as the rows and columns and the “values” parameter set to the number of Installs.
- Now, plot a stacked bar chart by using the plot() function from matplotlib. Also, set the stacked parameter as True.

<img title="" src="https://i.ibb.co/NNpn31D/Stacked-Bar-Updated-Month-Content-Rating.png" alt="" data-align="center">

Here, even though you can say that the months June-Aug has the highest number of installs, it is quite difficult to infer anything about the different Content Rating categories. To overcome this, you set all of the different types( Content Rating)of installs in proportion to their monthly installs:

<img title="" src="https://i.ibb.co/3dxwrKn/Stacked-Bar-Updated-Month-Content-Rating-Normalized.png" alt="" data-align="center">
