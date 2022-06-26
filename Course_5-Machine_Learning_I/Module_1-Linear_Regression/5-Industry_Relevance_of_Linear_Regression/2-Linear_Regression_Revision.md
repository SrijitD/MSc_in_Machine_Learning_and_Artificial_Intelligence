# Linear Regression: Revision

You practised linear regression modelling in the previous sessions. Let’s revise some of the concepts you learnt.

Play Video

3221820

Here, Ujjyaini mentioned that regression guarantees interpolation of data and not extrapolation.

Interpolation means using the model to predict the value of a dependent variable on the independent values that lie within the range of data you already have. Extrapolation, on the other hand, means predicting the dependent variable on the independent values that lie outside the range of the data the model was built on.

To understand this better, look at the diagram below. The model is built on the values of x between a and b.

![Interpolation vs Extrapolation](https://i.ibb.co/6r9fYJG/Interpolation-vs-Extrapolation.png)

When you wish to predict the Y for X1, which lies between a and b, it is called interpolation. On the other hand, extrapolation would be extending the line to predict Y for X2, which lies outside the range on which the linear model was trained.

For now, you only need to understand what these terms mean. You will learn more about these in the upcoming lectures.

Ujjyaini also mentioned that linear regression is a parametric model.

Even though a detailed discussion on parametric and non-parametric models is beyond the scope of this module, a simple explanation is given below. You may also refer to the additional resources provided below.

In simple terms, a parametric model can be described using a finite number of parameters. For e.g., a linear regression model built using n independent variables will have exactly n ‘parameters’ (i.e., n coefficients). The entire model can be described using these n parameters.

In the upcoming modules, you will learn about some non-parametric models as well, such as decision trees.

They do not have a finite set of parameters that completely describe the model.

To read more on this topic further, here are some useful links:

-   [Parametric vs non-parametric models in brief](https://stats.stackexchange.com/questions/268638/confusion-about-parametric-and-non-parametric-model)
-   [A detailed explanation of parametric and non-parametric models](http://machinelearningmastery.com/parametric-and-nonparametric-machine-learning-algorithms/)

It is very crucial to understand when to apply linear regression modelling. Let's go through some business cases to understand where you can apply linear regression modelling.

**VIDEO**

You saw various cases and learnt where linear regression modelling can be used and where it cannot. Answer the question below to test your understanding.

#### Using Linear Regression

Qn: In which of the following cases can linear regression be used?

- upGrad is looking to admit new students in its Data Analytics program. Potential students are asked to fill various parameters, such as previous company, grades and experience. They need this data to figure out if an applicant would be a good fit for the program.

- Flipkart is trying to analyse user details and past purchases to identify segments where users can be targeted for advertisements.

- A researcher wishes to find out the amount of rainfall on a given day, given that pressure, temperature and wind conditions are known.

- A start-up is analysing the data of potential customers. They need to figure out which people they should reach out to for a sales pitch.

Ans: C. *Past data could be used to predict what the rainfall will be, based on the given predictors.*

In the next segment, you will learn about the differences between two frequently used terms in linear regression - prediction and projection.