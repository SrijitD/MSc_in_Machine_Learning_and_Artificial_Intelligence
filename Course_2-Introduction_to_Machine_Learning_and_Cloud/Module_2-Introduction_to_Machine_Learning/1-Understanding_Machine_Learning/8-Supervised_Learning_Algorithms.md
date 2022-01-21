# Supervised Learning Algorithms

In this segment, you will look at specific machine learning algorithms under the class of supervised learning algorithms.

**VIDEO**

Supervised learning can be of two types:

1. Regression
2. Classification

**Regression**  is a supervised learning technique where machine learning happens based on labelled data, and you try to predict a continuous value; in other words, a numerical value.

For example, when you book a cab, you are given an estimated time of arrival or  **ETA**. You would not be provided with a random number by merely observing the distance between two locations. Multiple factors, such as  **geographic location, the time of day, driver information and traffic information**  are involved in the actual calculation. From past data, you find the relationship between these features and the ETA, and then based on the learned relationship, the model tries to predict the ETA in the current scenario. In other words, by analysing past data and considering the features of the current set of data, a value is predicted. This is exactly what regression is.

In the next video, we will look at another supervised learning technique - **classification**.

**VIDEO**

**Classification**  is also a supervised learning technique where, as the name suggests, you try to classify your observations. The main difference from regression is that in linear regression, the output is a continuous value whereas, in classification, the output is a discrete value.  

You can explore more about the  [Google Teachable Machine](https://teachablemachine.withgoogle.com/train) by trying out the Pose Project.

#### Regression

Qn: In which of the following cases can linear regression be applied?  

* Flipkart is trying to analyse user-profiles and past purchases to identify segments where users can be targeted for advertisements.
* A researcher wishes to estimate the amount of rainfall on a given day, given the humidity, pressure, temperature and wind direction.  

Ans: Here, the researcher is predicting a real value, i.e., the amount of rainfall based on past data. This makes it an example of linear regression.  

#### Classification

Qn: The  [Netflix Prize](https://en.wikipedia.org/wiki/Netflix_Prize)  was an open competition held by Netflix to find the best way to predict (real-valued) user ratings for films based on their previous ratings for other films. The attributes used for building the model are <user, movie, date of grade, grade>. Is this a classification problem?  
Ans: No; Classification involves predicting a categorical attribute based on previous data. This is a regression problem, where you predict user ratings, which is a continuous attribute.  
