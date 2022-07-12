# Hyperparameter Tuning using GridSearchCV

In the previous segment, you learned about the K-fold Cross-Validation technique. In this segment, you will learn how to use the GridSearchCV method for finding the optimal hyperparameters for our model. 

Before implementing the GridSearchCV method, you need to understand how the decision tree functions. This will enable you to understand the significance of the hyperparameters while tuning the model.

In the next video, you will gain a basic understanding of the decision tree model with the help of simple visualisation.

**VIDEO**

In the video, you saw what the decision tree looks like. Please note that you will be learning about decision trees in much detail, later in the course. For now, it is sufficient for you to understand the basic visualisation structure of the decision tree, as shown below.

![Hyperparametertuning using GridSearchCV](https://i.ibb.co/b67Tvn3/Hyperparametertuning-using-Grid-Search-CV.png)

The decision tree model above appears as a quite complex model, and you know that complex models often overfit. Many parameters, such as 'max_depth' decide the model's structure, and you can find those optimal parameters by using grid-search.

In the next video, you will learn to couple K-fold cross-validation with grid-search to find the optimal hyperparameters.

**VIDEO**

As of now, you know that merely splitting data randomly (even a stratified one), does not help us in improving this model. Now, the only option you are left with is to modify the model itself. Every model has its own design, which has many parameters that can completely change the model's behaviour. These parameters are known as hyperparameters.

### What is a hyperparameter?

Hyperparameters are the parameters that you pass on to the learning algorithm to control the final model's complexity. Hyperparameters are choices that the algorithm designer makes to 'tune' the behaviour of the learning algorithm. Therefore, the choice of hyperparameters has a lot of bearing on the final model that is produced by the learning algorithm.  

With this, the concept of hyperparameters can be summarised in the following manner:

1.  Hyperparameters are used to 'fine-tune' or regularise the model to keep it optimally complex.
    
2.  The learning algorithm is given in the hyperparameters as an 'input' and returns the model parameters as the output.
    
3.  Hyperparameters are not a part of the final model output. 
    

Some of the important hyperparameters that you must consider in this demonstration are as follows:

-   Criterion
-   Splitter
-   max-depth
-   max-features
-   min-samples-split
-   class-weight

You can learn more about these hyperparameters by clicking on this [link](https://scikit-learn.org/stable/modules/generated/sklearn.tree.DecisionTreeClassifier.html).

The objective of the GridSearch method is to find the correct combination of certain parameters that will result in the effective performance of your model. The grid is a matrix that is populated on each iteration, as shown in the image below.

![Range](https://i.ibb.co/Vp5mbJP/Range-of-Hyperparameters-to-Tune.png)

You are to train the model by using a different value of the hyperparameter each time. The estimated score is then populated in the grid.

There are broadly three steps to perform while tuning the hyperparameter(s) in Python. They are as follows:

1.  Create a cross-validation scheme: How many splits do you want to set, etc.
    
2.  Specify the range of hyperparameters to tune.
    
3.  Perform a grid search on the set range.
    

From this grid, you will then use the cross-validation approach to find the best score and choose the corresponding set of hyperparameters for your model.

After applying grid-search, you found the optimal parameters for your decision tree model and used that for your final model. You can also find the plot of the train and test the accuracy of the best estimator that you get from the grid search.

![Hyperparameter Tuning Graph  1](https://i.ibb.co/bWLYGhL/Hyperparameter-Tuning-Graph1.png)

On observing the plot above, you can see that there is a clear difference between the initial plot and the plot that you got by using the best parameters. Although the model has a low AUC-roc score, it prevents overfitting.

You can also verify this by visualising the following decision tree that you get from the new set of hyperparameters, as suggested by GridSearchCV. As you can see below, the model is relatively simpler than the previous model that was created earlier.

![Hyperparameter Tuning Graph 2](https://i.ibb.co/crppM1W/Hyperparameter-Tuning-Graph2.png)

This brings us to the end of this session. In the next segment, you will fund a short case study that involves Regularization and K-fold Cross-Validation.