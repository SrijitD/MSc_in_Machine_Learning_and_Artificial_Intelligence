# Click-Through Rate Prediction

Most of the web pages that you visit display ads. The online advertising industry is huge, and players such as Google, Amazon and Facebook generate billions of dollars by targeting the advertisements to the correct audience. Most of the decisions around the ads are data-driven solutions such as the following: 

1.  How does one decide which ad is to be shown to whom?
2.  Of the multiple companies that apply for their ads of products falling in the same category, how does one decide whose ad is to be shown?
3.  Which ad should be placed in which section of the page?
4.  Should a particular ad be pushed on a mobile device or a desktop/laptop?

These decisions depend on numerous factors, such as the time of the ad, the site on which the ad is shown, the characteristics of the user looking at the ad and its demographics, among many others.

An important exercise that marketing companies need to do before making any kind of decision is the click-through rate prediction exercise. The objective of this exercise is to predict whether the audience will click on an ad or not. This prediction will help the marketing teams to answer all ad placement-related questions.

In the next video, Jaidev will introduce the problem statement and briefly talk about the data set available for making predictions.

**VIDEO**

You can visit the **Kaggle** page mentioned in the video [here](https://www.kaggle.com/c/avazu-ctr-prediction). As you saw in the video, a cell in any Notebook takes time to execute on the EMR cluster. This is shown as a progress bar below the cell. During the course of this session, we will skip the execution progress to save time.

Let’s start with a preliminary data analysis to understand the features given in the data set and perform univariate analysis to get a sense of the data.

**VIDEO**

Jaidev demonstrated how you can explore the data, but the exploration carried out in the video is not exhaustive and was performed only to build the thought process. The Notebook used by Jaidev in this demonstration has been linked below for your reference. In all the output cells in the Notebook, you will see the following text. This is the text representation of the progress bar in EMR. 

```python
VBox()
FloatProgress(value=0.0, bar_style='info', description='Progress:', layout=Layout(height='25px', width='50%'),…
```

Download [Exploration Notebook](CTR_01_Exploration.ipynb)

Some observations made on the data are as follows:

1.  The data types of most of the columns in the data set are **string** and **integer** except the label column, which is Boolean. 
2.  The data set is **imbalanced**; the percentage of data points with the label ‘0’ is **87%** and that with the label ‘1’ is **13%**. 
3.  C1–C20 are **anonymised categorical** columns in the string form. 
4.  Certain columns such as the **banner positions** clearly show that one position is clicked on more often than the others. 
5.  **True clicks** are present in all the levels of certain columns like C1. Some levels such as 1002, 1005 and 1012 have a high value of click-through rate.

Before building any machine learning model, it is a good practice to draw similar insights from the data. From these insights, an informed initial guess can be made regarding the columns on which you want to build the model, which helps in deciding the next steps. 

Next, Jaidev will perform various preprocessing steps on the data. But before that, try to answer the questions given below. 

Use the data set linked below to solve the following questions. Solve these questions on an EMR cluster with **1 master m4.large** and **1 node with m4.large**. The data set given to you is a very small sample. So, this cluster will be more than enough. Please do not use any other high configuration cluster. 

Download [DATA for the quiz below](Data_for_Quiz_Segment.csv)

#### EDA in PySpark

Qn: What is the percentage of data points with the label ‘1’? 

- 22%

- 19%

- 13%

- 15%

Ans: D. *Count the number of data points with the label ‘1’ and the total number of observations, and then find the percentage in question.*

```python
df = df.withColumn("y", df["click"].cast(IntegerType()))
percent = (df.filter("y==1").count()/df.count())*100
```

Qn: Which of the following is an anonymised column that has positive classes in all its categories?  (Note: More than one option may be correct.)

- C16

- C1

- C14

- C15

Ans: A & D. *All categories in this column have data points with positive class labels.

```python
df = df.withColumn("y", df["click"].cast(IntegerType()))
df.groupby('C15').agg({'y': 'mean'}).show()

df = df.withColumn("y", df["click"].cast(IntegerType()))
df.groupby('C16').agg({'y': 'mean'}).show()
```

Now, let’s start processing the data.