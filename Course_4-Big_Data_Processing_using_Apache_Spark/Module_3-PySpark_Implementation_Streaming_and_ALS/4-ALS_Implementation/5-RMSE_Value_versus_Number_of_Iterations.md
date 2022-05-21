# RMSE Value versus Number of Iterations

In the previous segment, you built the ALS model with an iteration value of 5. In this segment, you will learn how the RMSE value varies with the number of iterations. After that, you will build the model again with a different value of iterations. Let us watch the next video and learn from our expert.

**VIDEO**

Now, in the next video you will plot the curve between the 'maxIter' and the 'RMSE' value and will see the trend that how many iterations are sufficient to have for the analysis.

**VIDEO**

You have been introduced to a special kind of parameters: hyperparameters. These are those parameters of the model which remain constant during the training of the model. For example, in the case of ALS, the maxIter and regParam are something that you set before starting the training and it remains the same as the model trains. You tune these hyperparameters to find the optimal values of the parameters of the model such that the cost function is minimized.

#### Parameters of the ALS Model

Qn: You have seen a few hyperparameters in the ALS model. What do you think are the parameters of the ALS model?

Ans: *The parameters of the ALS model are the values of the latent features in the user and movie matrix.*

Hyperparameter tuning is one of the key steps in the model evaluation phase. Here, in this demonstration, Sajan has decided to tune one of the hyperparameters, maxIter. Let’s see how he does that:

- To tune a hyperparameter, you observe the variation of the evaluation metric of the model, here RMSE value with the hyperparameter, here the number of iterations. For this, you can take an array of different values of maxIter, which represent the number of iterations and run the model for the different values considered.:
  
  ```python
  iter_array = [1,3,5,7]
  ```

- When you plot the RMSE value against the different values of maxIter, the number of iterations, you will get the following plot:
  
  ![ALS Learning Curve](https://i.ibb.co/gD4JWFX/RMSE-vs-max-Iter.png)  
  So, you can see that there is a very slight variation in the RMSE value when the number of iterations varies from 3 to 7. However, there is a drastic difference between the RMSE values when the number of iterations varies from 1 to 3. Therefore, instead of taking an iteration value of 5, we could also take an iteration value of 3 as this will reduce the amount of resources required for training and also the training time with almost the same RMSE. 

Hence, in the next video, you will again build the model, this time with maxIter value equal to 3.

**VIDEO**

For further analysis, we will take the iteration value as 3. With this, we finish all but one step involved in the modelling process which has been demonstrated using the ALS algorithm. The last step in this process involves deployment which shall be covered in later modules In the next segment, you will learn how to recommend movies based on the model that you obtained here.



### Hyper Parameters

Qn: Can you write some of the hyperparameters that the ALS algorithm uses to tune the model for better accuracy in the results?

Ans: *Most important hyper-params in Alternating Least Square (ALS):*
- *rank: rank of the matrix factorization.*  
- *maxiter: maximum number of iterations.*   
- *regParam: regularization parameter.*    
- *alpha: alpha parameter in the implicit preference formulation.*  
- *numItemBlocks: number of item blocks used to parallelize computation.*   
- *numUserBlocks: number of user blocks used to parallelize computation.*


#### RMSE Vs Number of Iterations

Qn: Choose whether the following statement is true or false: As the number of iterations increase, the RMSE value decreases, and beyond a certain point, it becomes almost constant.

- True

- False

Ans: A. *From the graph of RMSE value versus Number of iterations, you can see that as the number of iterations increases, the RMSE value decreases, and beyond a certain point, it becomes constant.*