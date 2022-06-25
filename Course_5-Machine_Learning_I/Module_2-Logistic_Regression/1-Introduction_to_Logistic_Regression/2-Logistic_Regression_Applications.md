# Logistic Regression Applications

Classification is a common problem faced across industries. This includes predicting whether or not a person is likely to leave a company, contract a particular disease, buy a product, and default on their loan payments. You will begin this session by exploring a few use cases that will help you understand the different types of problems that can be solved with the help of classification.

The following video will look at the first use case on loan lending by a financial institution and one use case in the medical domain. Let’s hear from Jaidev as he elaborates on this.

**VIDEO**

As you saw in this video, a financial institution lends home loans to its customers and hence wants to evaluate the debtors’ likelihood to repay the loan amount they borrowed within a stipulated time.

Based on its experience, the institution knows that the mean household annual income (INC) is essential for determining the likelihood of loan repayment. It collects data on six customers. The variable Defaulter contains values 0 and 1 based on whether the person will repay the loan amount on time or not, respectively. In the upcoming sessions, you will learn how to solve this problem using classification.

![Income vs Defaulter](https://i.ibb.co/P4JyKtQ/Income-vs-Defaulter.png)

#### Classification

Qn: Which of the following is not a classification problem?

- Predicting sales for the next quarter

- Predicting whether a transaction is fraudulent or non-fraudulent

- Predicting whether a party would win in an election or not

- Predicting whether it will rain or not the next day

Ans: A. *This is an example of a regression problem where the prediction is a quantitative value.*

The use case can be extended to complex problems, such as image classification or credit card fraud prediction. Let’s understand how in the following video.


Another example will be if a health organisation wants to understand whether an individual's age (AGE) and systolic blood pressure (SBP) are important predictors of COVID-19-related complications and subsequent hospitalisation.

The company records data on six patients and wants to predict whether a COVID-19-positive patient will be hospitalised or not based on their age and SBP. Here, age and SBP can be treated as independent variables for the problem.

![Hospitalisation](https://i.ibb.co/Sr9PYxq/Hospitalisation.png)

Similarly, an online food ordering and delivery company want to understand if the time taken for delivering food affects their customer rating. The company wants to ensure that any delays are communicated well in advance and that the customer sentiments are not impacted. In this manner, the company works on building customer satisfaction and prevents its customers from churning.

Considering the delivery time as the predictor variable, is it possible to predict the rating that a customer might give (poor, average, or good)

![Customer Rating](https://i.ibb.co/vvtS2NF/Customer-Rating.png)

In all three examples, the main objective is to classify the observations into different categories based on certain predictor variables. Can you apply regression models to solve such types of problems? If not, what are the possible reasons for the same?

This video explains that handwritten digits can be classified into different classes, such as 0,1, 2, ... 9. Since there can be variability in how people write, we can not use a hardcoded solution for this, where machine learning comes into the picture.

Although this problem can be solved using advanced classification models, a good starting point can be a logistic regression model.

Here is a visualisation for the same.

![Handwriting Classification](https://i.ibb.co/NWN4XgJ/Handwriting-Classification.png)

Let’s look at another example that is commonly used in the industry, known as credit card fraud detection, to check if a transaction was legitimate or not.

**VIDEO**

As explained in the video, this example would be of credit card fraud detection. Based on the date of transaction, amount, and type of purchase, a credit card company can predict if the transaction was fraudulent or legitimate.

![Credit Card Fraud](https://i.ibb.co/C2pvy3z/Credit-Card-Fraud.png)

The whole process looks like the one shown above. The predictive model gives out the fraud score, that is, the probability of a fraudulent transaction helps the investigators save time and effort and get better. The number of transactions a credit card company like American Express deals daily is in millions, which is manually impossible to scrutinise, and hence, it is imperative to use technology.

#### Use cases Question

Qn: What other classification applications and use cases can you imagine in your industry?

Ans: Recognition and tracking on real time. 

In the next segment, you will learn the details about the classification algorithm and its various use cases.