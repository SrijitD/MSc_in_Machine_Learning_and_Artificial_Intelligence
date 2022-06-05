# Why do we need Linear Regression?

Linear regression is one of the most popularly used machine learning models. The applications span multiple industries, and it's the simplest model one can try out on the data. If you hunch that the data follows a straight-line trend, linear regression can give you quick and reasonably accurate results. 

  
In this segment, you will learn the various applications and practical use cases related to linear regression and regression in general.

In the following video, Jaidev will discuss an example of predicting a child's weight in a particular age group to illustrate an example of linear regression. 

**VIDEO**

#### Predictor Variables

Qn: What factors can we use to predict the bodyweight of the child in the age group of 2-3 years?

Ans: *Age, gender, birth order, size of parents, nutrition*

As explained in the video, a child's body weight can be predicted from the given data.

![Bodyweight table](https://i.ibb.co/vkjvSxg/Bodyweight-Table.png)


The most simplistic way to predict would be to take the average of this data and use that number for any new child. Although the average acts as a reasonable model to predict, it may not be the best.

![Average bodyweight](https://i.ibb.co/6wpfpkY/Average-Body-Weight.png)

**What can we do to make this prediction better?**

Well, we can add another variable or data such as the age of the child in months.

![Bivariate age bodyweight](https://i.ibb.co/LQVfk7g/Bivariate-age-bodyweight.png)

Bivariate age bodyweight

Using this new information, you can build a better predictive model that considers age to predict body weight. Various models can be used here, but let’s start with using a linear model that follows a straight line. This is a regression task since the bodyweight i.e. output variable is numerical. 

The model can be given as:

                                                            $y=mx+c$

Here, 'm' is the slope, and 'c' is the intercept of the line. 'x' and 'y' are input and output of the model, respectively.

![Bodyweight vs age graph](https://i.ibb.co/ySZ7dSs/Bodyweight-vs-age-graph.png)

You will use the training examples to calculate the optimum values of 'm' and 'c' to minimise the error between the actual and the predicted values of 'y'.

  
If you want to understand more about straight lines, please refer [here](https://www.khanacademy.org/math/in-in-grade-11-ncert/x79978c5cf3a8f108:straight-lines). 

#### Linear Regression use case

Qn: Can you think of any use case of linear regression in your domain of work ?

Ans: *Linear regression can also be used **to analyze the marketing effectiveness, pricing and promotions on sales of a product**. For instance, if company XYZ, wants to know if the funds that they have invested in marketing a particular brand has given them substantial return on investment, they can use linear regression.*

 Let's learn a few more regression examples and where you can apply them in the real world in the following video. 

**VIDEO**

As explained in the video, regression problems can be found everywhere.

 A good example would be predicting the revenue based on advertising spending. As you know, increasing the marketing expense should ideally drive sales and, therefore, revenue growth, but we are interested in understanding by how much exactly. Can we build a simple model for that

![Advertising example](https://i.ibb.co/z5RfbCp/Advertising-example.png)

You can fit a straight line to approximate the trend in the data using a linear model. Here, the model's parameter would be the slope and intercept of the line. Adding more factors or variables other than Youtube spending can improve the model.

 A company can use this model to track the effectiveness of its marketing campaign and can even compare different marketing modes such as email marketing and billboards. 

 Similarly, a model predicting the salary of an individual can be built on years of experience. Although the salary depends on other factors, such as education, skills, location, etc., years of experience are a good starting point.

 A model like this can be used by recruiting agencies to estimate salaries while hiring employees.

![Years vs Salary](https://i.ibb.co/9GvQPn7/Years-vs-Salary.png)

Another example of a regression problem with a downward trend could be predicting the price of a vehicle based on its age. As you know, the price of a vehicle depreciates as it is used over time. Age is a good starting variable to make this prediction; although miles-driven, the type of vehicle and maintenance would also play a role. Used car dealerships can use a model like this to estimate and quote a reasonable number to the customers.

![Price vs Age](https://i.ibb.co/McjDCNS/Price-vs-Age.png)

In this segment, you learned different regression examples in the real world. In the next segment, let’s explore more about linear models and how to build them.