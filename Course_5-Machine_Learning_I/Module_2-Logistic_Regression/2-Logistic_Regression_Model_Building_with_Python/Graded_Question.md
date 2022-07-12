# Graded Questions

#### Logistic Regression in Python

Qn: Which of these methods is used for fitting a logistic regression model using **statsmodels**?

- OLS()

- GLM()

- RFE()

- LogisiticRegression()

Ans: B. *The GLM() method is used to fit a logistic regression model using statsmodels.*

#### Confusion Matrix

Qn: Given the following confusion matrix, calculate the accuracy of the model.

| **Actual/Predicted** | **Nos** | **Yeses** |
| -------------------- | ------- | --------- |
| Nos                  | 1000    | 50        |
| Yeses                | 250     | 1200      |

- 96%

- 88%

- 83.33%

- 60%

Ans: B. *Recall that the formula for accuracy is given as:* 

$Accuracy=\dfrac{Correctly\ Predicted\ Labels}{Total\ Number\ of\ Labels}$ 

Here, the number of correctly predicted labels is $= 1000 + 1200 = 2200$. And the total number of labels is $= 1000 + 250 + 50 + 1200 = 2500$. Hence, you have: $Accuracy=\dfrac{2200}{2500}=0.88=88\%$*

#### Diabetic Based on Threshold

Qn: Suppose you are building a logistic regression model to determine whether a person has diabetes or not. Following are the values of predicted probabilities of 10 patients.

| **Patient** | **Probability(Diabetes)** |
| ----------- | ------------------------- |
| A           | 0.82                      |
| B           | 0.37                      |
| C           | 0.04                      |
| D           | 0.41                      |
| E           | 0.55                      |
| F           | 0.62                      |
| G           | 0.20                      |
| H           | 0.91                      |
| I           | 0.74                      |
| J           | 0.33                      |

Assuming that you arbitrarily chose a cut-off of 0.4, wherein if the probability is greater than 0.4, you would conclude that the patient has diabetes, and if it is less than or equal to 0.4, you would conclude that the patient does not have diabetes, how many of these patients would be classified as diabetic based on the table given above?

- 4

- 5

- 6

- 7

Ans: C. *The cut-off is given as 0.4. Hence, for a patient to be classified as diabetic, Probability(Diabetes) needs to be greater than 0.4. As you can see in the table given above, there are six patients who have Probability(Diabetes) > 0.4. These are: A: 0.82, D: 0.41, E: 0.55, F: 0.62, H: 0.91, I: 0.74*

#### Log Odds

Qn: Suppose you are working for a media services company such as Netflix. They are launching a new show called 'Sacred Games', and you are building a logistic regression model that will predict whether a person will like it or not based on whether consumers have liked/disliked some previous shows. You have the data of five of the previous shows, and you are just using the dummy variables for these five shows to build the model. If the variable is 1, it means that the consumer liked the show, and if the variable is zero, it means that the consumer did not like the show. The following table shows the values of the coefficients for these five shows that you got after building the logistic regression model.

| **Variable Name**   | **Coefficient Value** |
| ------------------- | --------------------- |
| TrueDetective_Liked | 0.47                  |
| ModernFamily_Liked  | -0.45                 |
| Mindhunter_Liked    | 0.39                  |
| Friends_Liked       | -0.23                 |
| Narcos_Liked        | 0.55                  |

Now, you have the data of three consumers, Reetesh, Kshitij and Shruti, for these five shows indicating whether or not they liked these shows. This data is given in the table provided below.

| **Consumer** | **TrueDetective_Liked** | **ModernFamily_Liked** | **Mindhunter_Liked** | **Friends_Liked** | **Narcos_Liked** |
| ------------ | ----------------------- | ---------------------- | -------------------- | ----------------- | ---------------- |
| Reetesh      | 1                       | 0                      | 0                    | 0                 | 1                |
| Kshitij      | 1                       | 1                      | 1                    | 0                 | 1                |
| Shruti       | 0                       | 1                      | 0                    | 1                 | 1                |

Based on this data, which of these three consumers is most likely to like the new show 'Sacred Games'?

- Reetesh

- Kshitij

- Shruti

Ans: A. *To find the person who is most likely to like the show, you can use log odds. Recall that the log odds is given by:*

ln(P1−P)=β0+β1X1+β2X2+β3X3+...+βnXn

Here, there are five variables for which the coefficients are given. Hence, the log odds become:
$$ln\left(\dfrac{P}{1−P}\right)=\beta_0+\beta_1X_1+\beta_2X_2+\beta_3X_3+...+\beta_nX_n$$
As you can see, we have ignored the β0, as it will be the same for all three consumers. Now, using the values of the five variables given, you get: 

$(Log\ Odds)_{Reetesh}=(0.47*1)−(0.45*0)+(0.39*0)−(0.23*0)+(0.55*1)=1.02$

$(Log\ Odds)_{Kshitij}=(0.47*1)−(0.45*1)+(0.39*1)−(0.23*0)+(0.55*1)=0.96$

$(Log\ Odds)_{Shruti}=(0.47*0)−(0.45*1)+(0.39*0)−(0.23*1)+(0.55*1)=−0.13$

As you can clearly see, the log odds for Reetesh are the highest. Therefore, the odds of Reetesh liking the show are the highest, which means that he is the most likely to like the new show, Sacred Games.

## Coming up

In the next session, **'Model Evaluation'**, you will learn about some more metrics beyond accuracy that are essential for evaluating the performance of a logistic regression model.