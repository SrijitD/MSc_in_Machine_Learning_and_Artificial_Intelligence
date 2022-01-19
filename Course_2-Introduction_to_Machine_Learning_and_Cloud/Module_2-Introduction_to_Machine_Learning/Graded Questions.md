# Graded Questions

#### Machine Learning

Qn: Imagine that you have to compute a person's BMI (body mass index) using the person's height and weight. Does the given use case require a machine learning solution?  

Ans: No. There is a fixed relationship between a person's height and weight that is used to calculate their BMI. This relationship does not change, and you require a simple computation to find the BMI from height and weight. Thus, it does not require a machine learning solution.  


Qn: Imagine that you have to predict the price of a used car based on information about its history. Does the given situation represent a machine learning task?  

Ans: Yes, the given use case is a machine learning task. It involves creating a model based on various features of the car to predict its value after it has been used. The relationships between the features of the car and its price are not straightforward. Hence, machine learning is required for solving this problem.  

#### Unsupervised Learning

Qn: Which of the following is an instance of unsupervised learning?
- Learning to predict the number of hours it takes to reach a destination, given various traffic details such as time of day, city, source and destination as input
- Learning to decide if a credit card transaction is fraudulent or not
- Learning to predict the price of a used car
- Learning behaviours of various users from their interactions on a website

Ans: Learning about user behaviour involves grouping users whose behaviours are similar and interpreting the characteristics of various groups formed. The nature of behaviours is not predetermined. This is a case of clustering.  

#### Apriori Algorithm

Qn: For a particular set of transaction data, the following are the support values for the two-item sets:  
support (apple, orange) = 0.7  
support (apple, banana) = 0.6  
support (banana, orange) = 0.4  
support (apple, kiwi) = 0.6  
support (Kiwi, orange) = 0.5  
support(kiwi,banana) = 0.6

And the defined threshold support is 0.5.

Based on this information, what would be the support value of (apple, banana, orange) and (apple, banana, kiwi)?

- \>0.5, <0.5
- <0.5, Insufficient Information
- \>0.5, >0.5
- Insufficient Information, <0.5  

Ans: <0.5, Insufficient Information. The support value of the itemset (apple, banana, orange) will be <0.5 since the support value of (banana, orange) is <0.5, so all its higher-order itemsets would have support <0.5.  
The support value of the itemset (apple, banana, kiwi) cannot be determined since here we do not know the exact distribution in the dataset. It might be possible that all the transactions involving apples and bananas may also include a kiwi or only some might. So the value can be >0.5 or <0.5.   

Qn: #### Apriori Algorithm

In the implementation of the apriori algorithm, let’s say you have ‘N’ one-item sets and M transactions. What would be time complexity for computing the support values of these itemsets? You can refresh your concepts of time complexity [here](https://en.wikipedia.org/wiki/Time_complexity).
- O(N)
- O(NM)
- O(M)
- O(MN2)  


Ans: In order to compute the support values of each itemset, you need to go through every transaction in the database and compute the frequency of that itemset. Since there are M transactions, this would take O(M). There are N itemsets so the total complexity for these N itemsets would be O(N*M), or O(NM).

#### Structured and Semi-structured

Qn: Pick the statement that is false.
- Structured data can be stored in RDBMSs
- Structured data does not follow any data model
- Structured data can be stored in NoSQL databases
- Storing and processing structured data is comparatively easier  

Ans: Structured data follow the relational model. In a relational model, the data is organized in a row-column format and has a well-defined schema.  

#### Model Evaluation

Qn: Which metrics can be used to evaluate the accuracy of a classification model?
- Mean squared error (MSE)
- R squared (R²)
- Mean absolute error (MAE)
- Precision  

Ans: Precision measures what proportion of the predictions predicted by the classification model are relevant.  


#### Ensemble Learning

Qn: Random forests are an ensembling learning method for classification. Using the random forest algorithm, you decided to build a model to classify a bank transaction as fraudulent or not.  
In the process, the model generates 10 intermediate outputs (given in the table below) for a particular transaction in our test data.  
![Ensemble_Learning_Question](https://i.ibb.co/19JYJ7J/Ensemble-Learning-Question.png)

What will be the final output of the random forest model if you use voting in the background to determine the ensemble result?
- No
- Yes
- Yes, No
- The model fails!  

Ans: Yes. Since voting is the technique used in the background, to arrive at the final result, the model assigns a score of +1 when an intermediate result is Yes and a score of -1 when an intermediate result is No. Finally, if the total score is positive, it means the outcome is Yes, and it will be No otherwise. In this particular case, since the number of intermediate Yes results is more compared to intermediate No results, the final result of the model will be Yes.

> Written with [StackEdit](https://stackedit.io/).
