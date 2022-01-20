# Regplots

When you are introduced to the seaborn library, it was mentioned that seaborn provides automatic estimation and plotting for regression setups for different kind of variables. So, here you’ll briefly foray into regplots and give an intuitive understanding of what insight they provide us in terms of the concepts you learnt in the scatterplot segment. Here, you'll look into the relationship between Rating and Price.

[**Note**: As mentioned earlier, a detailed treatment of regression would be done in a future module. Therefore, a brief idea of what regression is and what it does would be sufficient for understanding and interpreting reg plots]

**VIDEO**

So as you saw in the video, a regplot is nothing but a regression line added to jointplot (along with a KDE curve over the histogram). This line tries to generalise the relationship between the two numeric variables in the form of a [linear regression equation](http://www.stat.yale.edu/Courses/1997-98/101/linreg.htm), or in more simpler terms, finds a straight line passing through the data that also best describes the data.

The code that you wrote used just an additional parameter **kind**

`sns.jointplot(inp1.Price, inp1.Rating, kind="reg")`

And it gave the following view:

<img title="" src="https://i.ibb.co/XFPhZc2/Rating-Price-Joint-Plot-Pearson-Coeff.png" alt="" data-align="center">

The shape of the line( or in regression terms, the slope) indicates that there is again a weak relationship between the two. Even Pearson’s coefficient which is 0.031 seems to agree with this insight.

Now in the above video, the SME mentioned that due to free apps, the trend is getting a bit skewed. Now, go ahead and write the code for creating a reg plot of the price and rating for all the paid apps only. Once you have created it, answer the following question. Do check the video solution.

#### Pearson’s coefficient

Qn: What is Pearson’s coefficient in this case?

- -0.035

- -0.26

- -0.345

- -0.026

Ans: D. *We first filter the data*

`temp=inp1[inp1['Price']>0]`

*and then make a joint plot*

`sns.jointplot(temp.Price, temp.Rating, kind="reg")`

*There is another way to do this, check the video solution for an alternate and better way.*
