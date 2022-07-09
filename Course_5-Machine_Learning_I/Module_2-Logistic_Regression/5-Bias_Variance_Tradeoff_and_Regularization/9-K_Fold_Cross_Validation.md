# K-Fold Cross-Validation

In the previous segment, you understood the concept of regularisation and the way in which it prevents overfitting. In this segment, you will learn about another method known as K-fold cross-validation, which can be used to detect overfitting. 

Therefore, you will learn about two new concepts in this segment, and they are the K-fold cross-validation and GridSearchCV. You will also be given a demonstration of these methods.

For this case study, you will be using a dataset based on the information on loan applications and their outcomes. The objective of this problem is to predict how capable each applicant is of repaying a loan.

Download the following notebooks and dataset that are required for the demonstration. 

Download [Dataset](Data.zip)

Download [K-fold Cross-Validation and GridSearchCV](K-Fold_Cross_Validation_and_GridSearchCV.ipynb)


In this video, your subject matter expert, Jaidev will introduce you to the problem statement and the basic data preparation steps before building the model.

**VIDEO**

In this video, Jaidev has explained the problem statement and the corresponding dataset. 

An important point to note here is that the dataset is imbalanced, since the 'TARGET' column has an unequal distribution of class labels. 

In such cases, metrics such as accuracy fail to give the exact results. Hence,Jaidev used the roc_auc metric to evaluate this model.

In the next video, you will take a look at how a decision tree model will fit on the above data and also analyse its accuracy. You will also learn about the decision trees in-detail in the upcoming modules.

**VIDEO**

In the video, you saw that the training accuracy is close to 92%, while our test accuracy is slightly lesser than 50%. Hence, this is a clear indication of overfitting. 

However, it is possible that the model could have been biased towards the train and test data, resulting in such an error. To test this hypothesis, Jaidev randomly split the data ten times and checked the values for the train and test accuracy in the following manner.

![K-fold crossValidation graph 1](https://i.ibb.co/6RHFxcg/K-Fold-Cross-Validation-Graph1.png)

You then observed that the model was executed with ten different train and test sets, and yet, the test accuracy and train accuracy remain almost the same. Thus, the reason for a bad score is not the random split of data; but the model's bad performance.

This entire step can be simplified by using just a few codes of the K-fold cross-validation approach. In the next video, you will learn to perform K-fold cross-validation and understand that this method can directly ensure that our model is neither underfitting nor overfitting, as a function of random splits of data.

**VIDEO**

In the video, you explored the K-fold cross-validation approach. Let’s revise this concept again.

Suppose K = 4, then the given data will be split into four groups. For each iteration, one group is set out as validation data or test data and the remaining is set as train data. Next, you must fit a model on the train data and evaluate it on the test data. This step is repeated for all the K groups.

In other words, divide the training data into K-groups of samples and use K-1 folds to build the model iteratively, and test the model on the Kth fold. 

Once you calculate the train and test the accuracy for all the groups, you are required to calculate the average accuracy on the training data and testing data, and consider that as the model's accuracy.

The code for implementing the K-fold cross-validation is as follows:

```python
from sklearn.model_selection import StratifiedKFold

skf = StratifiedKFold(n_splits=4)
train_scores = []
test_scores = []
for train_ix, test_ix in skf.split(X, y):
    xtrain, xtest, ytrain, ytest = X[train_ix], X[test_ix], y.iloc[train_ix], y.iloc[test_ix]
    dt.fit(xtrain, ytrain)
    train_scores.append(roc_auc_score(ytrain, dt.predict(xtrain)))
    test_scores.append(roc_auc_score(ytest, dt.predict(xtest)))
plt.plot(train_scores, '-bo', label='Train ROC')
plt.plot(test_scores, '-go', label='Test ROC')
plt.legend()
```

In this demonstration, Jaidev considered K as four and plotted out the train and test accuracy for each group. Following are the results after implementing K-fold cross-validation:

![K-fold crossValidation graph 2](https://i.ibb.co/zHq5Dzd/K-Fold-Cross-Validation-Graph2.png)

Therefore, no matter how you split the data, the decision tree model overfits this data. Until now, you only used data splitting strategies. With a closer look, you may observe that many parameters are considered while building a model. Here, K and others are such parameters and they are known as hyperparameters. Further, you should choose certain parameters wisely so that your model is a good fit for any given data. This is known as hyperparameter tuning, and a way to achieve this is by using GridSearchCV. You will learn about GridSearchCV in the next segment.