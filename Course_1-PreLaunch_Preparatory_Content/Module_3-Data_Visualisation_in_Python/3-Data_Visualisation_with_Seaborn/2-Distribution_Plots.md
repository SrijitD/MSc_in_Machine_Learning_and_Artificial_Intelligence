# Distribution Plots

In the previous session, you learnt about the basic data-handling and data-cleaning tasks that were essential to be performed. In this session, you will begin the journey with Seaborn library and start extracting insights. Recall that the **target variable for this case study is the Rating column**. The main task is to analyse this column and compare it with other variables to observe how the ratings change through different categories.

First, you’ll learn how to build a **distribution plot** for the **'Rating'** column, which is pretty similar to the histograms that you saw earlier in matplotlib.

**VIDEO**

So, you have plotted a distribution plot to check the distribution of ratings using both the Matplotlib function and the Seaborn functions. In the latter case, you must have noticed that instead of the hist command, you are now using a **distplot** or a **distribution plot**.The corresponding Seaborn command is ***sns.distplot(inp1.Rating)***. 

You can go through distplot’s documentation [here](https://seaborn.pydata.org/generated/seaborn.distplot.html) to learn more about the various parameters that can be used. Notice that this view is quite different from the histogram plot that we had obtained earlier in Matplotlib.

![Frequency-Histogram](https://i.ibb.co/rwp7wSv/Frequency-Histogram.png)

![Rating-Distribution-Plot](https://i.ibb.co/8KSgz4g/Rating-Distribution-Plot.png)

The difference arises due to the fact that instead of calculating the ‘**frequency**’, the **distplot** in Seaborn directly computes the **probability density** for that rating bucket. And the curve (or the **KDE** as noted in the documentation for Seaborn) that gets drawn over the distribution is the approximate **probability density curve**. *

Coming back to the visualisation, the bars that get plotted in both the cases are proportional. For example, the maximum frequency occurs around the 4-4.5 bucket in the histogram plotted by matplotlib. Similarly, the maximum density also lies in the 4-4.5 bucket in the distplot.

The advantage of the distplot view is that it adds a layer of probability distribution without any additional inputs and preserves the same inter-bin relationship as in the Matplotlib version. This statistical view of things is also far more informative and aesthetic than the earlier one.

You are expected to go through the Seaborn documentation from the link given above and answer the following questions.

#### Distplot

Qn: If you want a view like the one shown below for the Rating column, the corresponding code that you would need to add would be?

![Rating-Dist-Plot](https://i.ibb.co/28qfY46/Rating-Dist-Plot.png)

- `sns.distplot(inp1.Rating,rug = False)`

- `sns.distplot(inp1.Rating,kde = True)`

- `sns.distplot(inp1.Rating,rug = True, fit = norm)`

- `sns.distplot(inp1.Rating,kde = False)`

Ans: D. *The KDE parameter in the distplot checks whether a Gaussian Density Estimate is required or not. By default, it is set as True. Hence, setting the KDE as False would produce only the distribution plot shown above.*

#### Distplot bins

Qn: Observe that there are certain gaps in the distplot view that we have shown above. This is because the number of bins created is quite high and hence some bins/buckets have no density at all. Now, you wish to set the number of bins to 15 to remove those gaps. Which of the following distplots shows the number of bins set to 15?

The options below are links to screenshots. 

- [Option 1 link](https://drive.google.com/file/d/1VU2h6RC_jDiDAx3tFH1vLkhpH8rNqP82/view?usp=sharing) 

- [Option 2 link](https://drive.google.com/file/d/1LKSDX8lbdE39lYx1FAOeerTICGKmOIEG/view?usp=sharing)

- [Option 3 link](https://drive.google.com/file/d/118pWukpi_mRRz6Adf4HNkZtzzfoHLLeT/view?usp=sharing)

- [Option 4 link](https://drive.google.com/file/d/1nMpereMwGVxuT2JjjMw5SX17H-k_w7W8/view?usp=sharing)

Ans: B. *Set the bins parameter to 15 in sns.distplot() and verify the images. The code would be* `sns.distplot(inp1.Rating, bins=15)`

#### Customise

Qn: To get the following view, which parameter needs to be set correctly?

![Ratings-Horizontal-Dist-Hist-Plot](https://i.ibb.co/PzqMMxX/Ratings-Horizontal-Dist-Hist-Plot.png)

- vertical = True

- vertical = False 

- horizontal = True 

- horizontal = False

Ans: A. *Check the seaborn documentation, here the vertical parameter needs to set to True.*

**VIDEO**

So, after changing the number of bins to 20, you were able to observe that most of the ratings lie in the 4-5 range. This is quite a useful insight, which highlights the peculiarities of this domain, as mentioned by Rahim. If people dislike an app, they don’t generally wait to give it bad ratings; rather, they go ahead and remove it immediately. Therefore, the average ratings of the apps are pretty high.

Also, you learnt about some more customisations that can be done on the same view. You can change the colour of the view and even use Matplotlib functionalities on top of Seaborn to make your graphs more informative. 

**Additional Notes:**

1. *The terms “Probability Density” and “Probability Density Curve” may seem a bit alien to you right now if you do not have the necessary statistical background. But don’t worry, you will learn about them in a future module on Inferential Statistics. However, if you’re still curious, you can take a look at this [link](https://www.khanacademy.org/math/statistics-probability/random-variables-stats-library/random-variables-continuous/v/probability-density-functions) for further understanding.
2. Another chart analogous to the histogram is the **countplot**. It essentially plots the frequency of values for a categorical variable. Basically, the values are the same as when you take a value_counts() for that variable. Take a look at its [documentation](https://seaborn.pydata.org/generated/seaborn.countplot.html) to understand how it is implemented.

Now that you are fairly proficient in creating a distplot and performing some basic customisations, you will next apply this knowledge on the Rating data and gather some insights.
