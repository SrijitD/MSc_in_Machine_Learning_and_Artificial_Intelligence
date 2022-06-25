# The Classification Function

As Jaidev explained in the introduction, classification essentially involves splitting the given data set into different classes depending on its features. For instance, suppose a telecom company collects all types of data from a customer, such as their monthly data usage, minutes of calling and demographic information, and it can predict the customer’s monthly bill using this information. A monthly bill is a continuous variable and can have numerous values. On the other hand, if the company tries to investigate whether a customer is likely to migrate from its network or not (this is called churn), then the output will have only two values, either true or false. This is the classification problem. 

Classification is a common problem faced across industries, such as predicting whether or not a person is likely to leave a company, contract a certain disease, buy a product, default on their loan payments, etc. One of the most fundamental algorithms to solve such classification problems is logistic regression.

To begin with, consider a simple situation in which only one feature decides the class of a point. This class includes red dots and green crosses. How will you separate them? The video given below outlines the thought process behind separating the classes. 

**VIDEO**

The example demonstrated by Jaidev was an idealistic version of the classification problem. To solve this problem, a function with a clear threshold, such as the step function, will suffice. In the example, the class of a datapoint was dependent on only one feature, and so, a single line was enough to represent the data, and that made it easy for you to visualise and identify the threshold. 

Real data sets will never be easy to visualise or separate. As the number of features continues to increase, the dimensions of the problem will also continue to increase. In this case, when eyeballing the data no longer works, a mathematical function is needed to determine the threshold. What type of function will help you separate real data sets? To find out, let’s begin by analysing the shortcomings of the step function and build on them.

Using the step function to separate the data also has its own set of problems, which are mentioned below:   
 

1.  The step function can have only two outputs: **0** or **1**. Although this seems like an ideal property, it is not. The data used in the example was quite idealistic; however, in real data sets, some datapoints will be mixed as shown in the image given below, and the labels for this data set are true and false. 

![Classification Fucntion Graph 1](https://i.ibb.co/WgfJ6j4/Classification-Fucntion-Graph-1.png)

Image source: https://ml-cheatsheet.readthedocs.io/en/latest/logistic_regression.html  
  
For data sets with **mixed labels**, which is mostly the case with real data sets, binary output functions are not suitable. As there is no clear threshold, which is the only dependent variable of the step function, it can be said that the step function is quite rigid and its application is limited to the cases where a threshold can be easily identified. Ideally, you would want your function to be applicable to all situations; this property of being applied universally is called **generalisability**.  
  
To make the classification generalisable, you can make the function that is used to classify,  estimate the probabilities of a datapoint belonging to a particular class. Also, if you have **probabilities**, then you can then make an informed decision about the threshold. 

2. The step function is not differentiable. Most of the functions used in machine learning algorithms need to be differentiable. The reason behind this is that in some cases, when the analytical solution fails, the solution is usually achieved using an iterative procedure that involves calculating gradients.  
If you recall the module on **linear regression**, a cost function was built using the equation of a **straight line** and the cost function was minimised by equating the gradients to **zero**.  
In logistic regression, similar steps will be performed to arrive at the **best-fit** model. So, the function used to separate the classes needs to be **differentiable**. 

Can a simple straight line be used to classify data? Well, using a straight line as a classification function overcomes the problems discussed earlier in the following ways. 

1.  It can be used to predict probabilities.
2.  It is continuous and differentiable. 
3.  It also gives low probabilities of datapoints being close to 0 and high probabilities of datapoints being close to 1.  
     

Although a straight line has properties that make it a suitable classifier, it also has certain properties that are not ideal for a classification function. In the coming video, you will understand why a straight line cannot be used as a classification function.

2.  The step function is not differentiable. Most of the functions used in machine learning algorithms need to be differentiable. The reason behind this is that in some cases, when the analytical solution fails, the solution is usually achieved using an iterative procedure that involves calculating gradients.  
    If you recall the module on **linear regression**, a cost function was built using the equation of a **straight line** and the cost function was minimised by equating the gradients to **zero**.  
    In logistic regression, similar steps will be performed to arrive at the **best-fit** model. So, the function used to separate the classes needs to be **differentiable**. 

Can a simple straight line be used to classify data? Well, using a straight line as a classification function overcomes the problems discussed earlier in the following ways. 

1.  It can be used to predict probabilities.
2.  It is continuous and differentiable. 
3.  It also gives low probabilities of datapoints being close to 0 and high probabilities of datapoints being close to 1.  
     

Although a straight line has properties that make it a suitable classifier, it also has certain properties that are not ideal for a classification function. In the coming video, you will understand why a straight line cannot be used as a classification function.

**VIDEO**

The major problems with fitting a straight line to the data are as follows: 

1.  A straight line is **not bound** between 0 and 1, unlike probability. It can range from **negative** infinity to **positive** infinity.
2.  Since the function is not bound, there will be no **logical point** at which the threshold can be set. 

You need a function that is a good separator like the **step function** and is continuous and differentiable like a straight line. As mentioned by Jaidev, **sigmoid** is the function that will satisfy the aforementioned criteria, as it is used in logistic regression. Let's hear more about it in the next video.

**VIDEO**

As Jaidev explained in the video, the sigmoid function has all the properties that make it a suitable classification function. 

1.  It is bound between **0** and **1**.  
    Regardless of the value of x, the output of y will be between 1 and 0. This makes it ideal for predicting probabilities.   
     
2.  The function is **asymptotic**, that is, it can never take the value of 0 or 1.   
    The function can be 0 only if the numerator is 0, which will never happen, and it can be 1 only when e^(-x) = 0, which will also never happen. This adheres to the probabilistic approach, which states that no datapoint can be classified with 100% confidence. The chance of a datapoint belonging to a particular class is **high**.   
     
3.  The **sigmoid function** is a good classifier like the step function.   
    The sigmoid function resembles the step function, that is, the slope of the curve close to the ends is low. And the slope in the middle is high. So, the sigmoid function will have good separation for the datapoints that fall in the middle region.   
     
4.  It is easy to set a **threshold** for the sigmoid function.   
    At x = 0, the output of the sigmoid equals 0.5. If 0.5 is set as the threshold and the value of x is positive, then the datapoint is classified as 1, and if it is negative, then the datapoint is classified as 0.

These properties make the sigmoid function suitable to be used as a classification function. Now, let’s say instead of a single dependent variable (x), you have more dependent variables. In this case, you would use a weighted summation of the features of a datapoint.

So, the output of the model would be the sigmoid of **Y = _∑(Weights * Features + Bias),_** which will give the probability of a datapoint belonging to the 'positive class'.

Note that there is a slight change in the definitions from that in linear regression: **Features** are the different independent variables used to build the model, 'weights' are the betas or the coefficients of the model, and bias is the 'intercept'. The _**positive class**_ in a model is the class for which the probability is being calculated.

For example, in the telecom churn problem, the two classes were as follows: (1) A customer leaves the network; (2) They do not leave the network. If the model is built such that it indicates the probability of a customer leaving the network, then the positive class is the customer leaving the network.

Before moving onto the next segment, try solving the following questions. 

#### Classification Function

Qn: Which of the following functions can be used for classification in a machine learning algorithm?

- $y=\dfrac{1}{x}$

- $y=\sqrt{x}$

- $y=x^2$

 - $y=|x|$

Ans: C. *The function is unbounded, continuous and differentiable. It is used in higher-order regression models.*

Qn: Which of the following properties makes the sigmoid function a good classification function?

- It is bound between 0 and 1.

- The value of the function can be 0 or 1.

- It is differentiable.

- It mimics the step function.

Ans: A, C & D.

- *Logistic regression predicts probabilities; so, a function that is to be used as a classifier must be bound between 0 and 1.*

- *The function is bounded, continuous and differentiable.*

- *The step function is the ideal separation function; so, any other function that mimics it is a good classification function.*

#### Sigmoid Function

Qn: The equation given below represents a model used to predict whether a child is likely to choose commerce as their major in high school. The features of the model are x1 =  marks in class 10th (use percentage value directly; e.g., for 60% marks, use 60), x2 = a boolean value denoting whether some family member is a CA.  
$p=\dfrac{1}{1+e^{−(0.005x_1+0.5x_2)}}$

  
For a child who has scored 80% marks in class 10th and has an elder brother who is a CA, find the probability of the child opting for commerce.

- 0.66

- 0.71

- 0.76

- 0.81

Ans: B. *Given $x_1=80$ and $x_2=1$*

$p=\dfrac{1}{1+e^{−(0.005*80+0.5*1)}}=0.71$

The sigmoid function has a lot of properties that make it a good classification function. But the logistic regression becomes less intuitive as compared to linear regression because of the sigmoid function. In the next segment, let’s try to interpret the logistic regression equation.