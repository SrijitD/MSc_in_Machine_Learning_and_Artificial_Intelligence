# Pair Plots

In the past two segments, you learnt how to create scatter plots and joint points using matplotlib and seaborn. Using the sns.jointplot() you also saw how to create reg plots that provide regression functionality on the top of the scatter plot and histograms that are already available. 

Now, in case there are 4-5 numeric variables that you want to analyse, making a jointplot for every 2 numeric variables is a bit tedious. To overcome this limitation, let’s learn another functionality, the pair **plots**.

**VIDEO**

First, you took a subset of the entire dataframe - [Reviews, Size, Price and Rating] for the pairplot. Then you simply used the sns.pairplot() function to plot it. Check its [official documentation](https://seaborn.pydata.org/generated/seaborn.pairplot.html) for understanding its parameters.

<img title="" src="https://i.ibb.co/4VK6Z89/Reviews-Size-Price-and-Rating-Pair-Plot.png" alt="" data-align="center">

As you can see for every two numeric variables, the pairplot creates a scatter-plot whereas in the case for the diagonal ones, where the same variable is being considered twice, a histogram is shown. 

Here, you’re able to make certain inferences in conjunction with the ones made in earlier segments, like how Reviews and Price have an inverse relationship as the L-shaped scatter plot represents. Now, compared to the previous jointplot, you observe that the statistical information is a bit less( no Pearson coefficient to explain the correlation between the 2 variables) but nevertheless having a bird’s eye view of all the numeric variables at once has its own advantages. 

**Application in Machine Learning**

In linear regression, you have a lot of [predictor variables](https://methods.sagepub.com/reference/encyc-of-research-design/n329.xml) to choose from to build the initial model where pairplots simplify the process and identify the best variables. For example, say you want to predict how your company’s sales are affected by three different factors - TV ads, Newspaper ads and Radio ads. In order to choose, you need to create a pair plot containing profits and the three different factors as the variables. Here are the scatterplots of sales vs the three variables that you obtained from the pair plot:

<img title="" src="https://i.ibb.co/vdjXxL2/TV-Newspaper-and-Radio-Ads-Pair-Plot.png" alt="" data-align="center">

It is clearly visible that the left-most factor is the most prominently related to the profits given how linearly scattered the points are and how randomly scattered the rest two factors are. In a single view, you were able to ascertain the predictor variables of our linear regression model.

**Additional Notes:**

- You might be wondering what all this fuss is about using visualisation to find the correlation between multiple variables. As it turns out, finding correlated variables is an important task throughout the entire machine learning paradigm. The correlation metric has far-reaching implications [in building or not building](https://towardsdatascience.com/data-correlation-can-make-or-break-your-machine-learning-project-82ee11039cc9) certain ML models and many model evaluation and optimisation procedures that are utilised often to check if the number of correlated variables is kept within an acceptable range or not. If you’re interested, you can read about the so-called [multicollinearity problem](https://towardsdatascience.com/multicollinearity-in-data-science-c5f6c0fe6edf) that plagues the stability of a model.
