# Train-Test Split

So far we built many models but these models are never truly tested. In other words, the model is training on the dataset and evaluating itself on the same dataset. It may happen that the unseen data that is used for prediction may have a different underlying structure than the dataset it is trained on. In such cases, the model that you have built will not perform well. Let's understand this better in our next video.

Download [Cross-Validation](Cross_Validation.ipynb)

**VIDEO**

In this video, you started by splitting the input dataset into training and testing datasets. You do this to understand the model performance on an unseen dataset. The heuristic is that you do **70-30%** split or **80-20%** of the input data as training and test datasets. Then once you have the training datasets, you build models of the training datasets and check it's performance on both training dataset and testing dataset. This method of evaluating your model is known as the train-test split.

Train-test split helps you in identifying the issues that are present with your model or the dataset like overfitting, which you'll learn in the next segment. In the demonstration, you saw that the model result on the train and test dataset changes each time we run and is never consistent. Well, it is no puzzle that the dataset used for training and testing is changing. This is a common problem in machine learning whenever you are making use of a randomsplit method. To avoid this, you set **seed** which ensures that data that is part of training and testing dataset would always be the same every time you re-run the model.

Even though setting the seed will reduce the random behaviour, it is not expected that the dataset has so much variability that upon splitting sometimes the training $R^2$ is greater than the testing $R^2$ and vice versa. This states that there is a change in the structure of the training dataset with different randomsplits that is causing this variability. This is because the dataset is ill-conditioned, meaning it has no underlying pattern to it which can be modelled. Moreover, the dataset is so small, 442 data points, that when you do a 50 - 50 split, the pattern in the train (with 221 data points) changes with every iteration of randomsplit. This usually does not happen when the dataset is large.

The dataset is so ill-conditioned that it causes a linear regression model to have high variability in the predictions which is usually not the case with linear regression. A linear regression model is expected to have a low variance, which essentially means that the model, defined by its coefficients do not vary a lot with the change in the training dataset. This can be better understood by understanding the terms bias and variance. Let's understand these in detail in the upcoming session.

As mentioned by Jaidev, regularization will help in solving the problem of the ill-conditioned dataset to a certain extent by reducing the sensitivity of the model to the changing training dataset. You'll learn more about regularization in the next session.