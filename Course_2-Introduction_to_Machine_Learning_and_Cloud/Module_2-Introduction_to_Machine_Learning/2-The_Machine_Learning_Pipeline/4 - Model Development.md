# Model Development

Once you are finished with the necessary preprocessing of the data in the data preparation phase, the next step is building the model. This phase is analogous to cooking the dish using all the prepared ingredients.

Let’s look at the internals of this phase of the machine learning pipeline in our next video:

**VIDEO**  

Model development is a process in which models are developed and validated to arrive at the best solution for the problem at hand. The different steps involved here are:

- Data partitioning: This involves the creation of multiple subsets of data, namely:
  1. **Train dataset**: This subset of data is used to explore ways to create relevant features which can be useful for developing a model.
  2. **Test dataset**: This subset of data is used to assess overall model performance and compare the performance across all potential algorithms.
  3. **Validation dataset**: The primary purpose of this data is for parameter tuning. (For now, understand that parameter tuning is a step in the model building phase that helps improve the performance of the model).

Partitioning ensures that the model performs well on unseen data as it is possible that the model predicts extremely well on Train data but not on Test data.

- Model selection is crucial to building good machine learning models. Here you identify the best algorithm from a set of applicable algorithms. In the previous session, you learnt about different types of algorithms such as  **regression, classification and clustering** algorithms. Classification algorithms include algorithms such as logistic regression, decision tree, random forest, and many more. Model selection involves finding the best-performing algorithm for a particular dataset or the problem at hand.

How do you determine which model is the best? For this, you need to evaluate the models. Let’s understand this in our next video:

**VIDEO**

Model evaluation aims to estimate the error in the selected model, i.e., how well the selected model performs on unseen data. Selecting the proper metric is an important aspect of model selection. Depending on the problem at hand, there are a host of metrics that can be used.

- Some metrics for regression are:
  
  - Mean squared error (MSE)
  
  - Root mean squared error (RMSE)
  
  - Mean absolute error (MAE)
  
  - R squared (R²)
  
  - Adjusted R squared (R²)

- Some of the metrics for classification are:
  
  - Confusion or error matrix
  - Accuracy
  - Recall or Sensitivity or TPR (true positive rate)
  - Precision
  - Specificity or TNR (true negative rate)
  - F1-Score
  - Area under the receiver operating characteristic (ROC) curve (AUC)
  - Logarithmic loss

You will learn more about these metrics in subsequent machine-learning modules. For now, you can make a note of them.

Ensemble learning, which is when multiple models are combined, helps in reducing the error in the model.  **The reasoning behind using ensembles is that the sum of individual approaches is better than each approach done alone**. In real-world cases, training models to generalize on a dataset can be a very challenging problem as it could contain many underlying distributions. One model would work well on a particular aspect of the data, while another may work well on other aspects. Ensemble learning can help provide a solution that can work on all aspects of the data. Some ensemble techniques include:

- **Voting**: Involves deciding the prediction based on the class that gets a majority vote.

- **Averaging**: Using the average prediction from all the models to come up with the final prediction

- **Weighted averaging**: It is similar to average, but it provides the flexibility to use different weights while combining the output of different algorithms.

The image below best summarizes the concepts learned in this segment. (Please hover on the image for the zoom-in option)

![Model_Development](https://i.ibb.co/Jk9pFYt/Model-Development.png)

Now answer the following questions:

#### Model Development

Qn: "Any machine learning model that is developed using training data must be evaluated before deploying it to solve the actual problem."  
Which of the following options characterize the above statement?  

- The above statement is always true
- The above statement is always false
- The above statement is sometimes true
- The model is developed using test data and not training data

Ans: Yes, any ML model must always be evaluated using an independent test dataset before deployment in the real world. This step is crucial as it ensures that the model built is accurate.  

#### Model Evaluation

Qn: Which of the following are correct about model evaluation? More than one option may be correct.  

- Model evaluation is done to verify or validate that the model developed is correct and conforms to reality.
- We can build multiple models for a certain phenomenon, but a lot of them may be imperfect. Model evaluation helps us choose and build a perfect model.
- If the model evaluation reveals that the model provides incorrect results for certain data, then the data is likely to be incorrect.
- Modelling and evaluation is an iterative process.

Ans: 

- After the model is built, you need to check if the model works well on actual data (such as new emails that we want to classify as spam or legitimate) and not just the data using which it was built (such as sample data about emails that have already been classified as spam).
- Model evaluation helps us choose the best model among a given set of possible models. You can compare the performance of different models in various situations and then decide the best model class or algorithm to use for the required business problem.
- If model evaluation provides incorrect results for some data, then the model itself may be incorrect. The point of evaluation is to make the model better, rather than deliberately finding data that fits the existing (and potentially incorrect) model.
- This means that a model is built and then evaluated; if the evaluation proves that the model is incorrect, you go back to make the model better and repeat the cycle until evaluation proves the correctness of the model.
