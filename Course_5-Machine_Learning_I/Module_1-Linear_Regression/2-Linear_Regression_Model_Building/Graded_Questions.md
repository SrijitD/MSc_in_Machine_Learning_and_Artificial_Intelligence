# Graded Questions

All the best!

#### Redundant Variables

Qn: After performing inferences on a linear model built with several variables, you concluded that the variable ‘r’ was almost described by other feature variables. This meant that the variable ‘r’ \_\_\_\_\_.

- Had a high p-value

- Had a low p-value

- Had a high VIF

- Had a low VIF

Ans: C. *If the variable is being described well by the rest of the feature variables, it means that it has a high VIF, meaning it is redundant in the presence of the other variables.*

#### VIF

Qn: VIF is a measure of \_\_\_\_\_.

- How well a predictor variable is correlated with all the other variables, including the target variable

- How well a predictor variable is correlated with all the other variables, excluding the target variable

- How well a target variable is correlated with all the other predictor variables

Ans: B. *VIF measures how well a predictor variable can be predicted using all the other predictor variables.*

#### R-Squared Values

Qn: Suppose you built a model with some features. Now, you add another variable to the model. Which of the following statements are true? (More than one option may be correct.)

- The R-squared value may decrease or increase.

- The R-squared value will either increase or remain the same.

- The adjusted R-squared value may increase or decrease

- The adjusted R-squared value will either increase or remain the same.

Ans: B & C.

- *The R-squared value always increases or remains the same with the addition of variables. It can never happen that an additional variable, no matter how insignificant, will decrease the value of R-squared.*
- *The key idea behind adjusted R-squared is that it penalises models for having a higher number of variables. Thus, if the value increases on the addition of a variable, we may conclude that that variable is significant, and vice-versa.*

## Comprehension:

You are given a multiple linear regression model: $Y+\beta_0 + \beta_1x_1 + \beta_2x_2 + \beta_3x_3$.

Recall that the null hypothesis states that the variable is insignificant. Thus, if we fail to reject the null hypothesis, you can say that the predictor is insignificant.

For example, if you fail to reject the null hypothesis for x1, you can say that x1 is insignificant. 

In other words, the null hypothesis tests if the predictor's coefficient, i.e., $\beta_i=0$. If the null hypothesis is rejected, then $\beta_i \ne 0$.

#### Comprehension Questions

Qn: If β1=β2=0 holds and β3 = 0 **fails** to hold, then what can you conclude?

- There is a high correlation between $x_1$ and $x_2$.

- There is a linear relationship between the outcome variable(Y) and $x_3$.

- There is a linear relationship between the outcome variable and $x_1$, $x_2$.

Ans: B. *Since $\beta_3=0$ fails to hold, it means that $x_3$ is a significant variable in this linear regression model. Thus, we can say that there is a linear relationship between the outcome variable (Y) and $x_3$.*

Qn: If $\beta_1=\beta_2=\beta_3=0$ holds true, what can you conclude?

- There is no linear relationship between y and any of the three independent variables.

- There is a linear relationship between y and all of the three independent variables.

- There is linear relationship between x1, x2 and x3.

Ans: A. *If all the coefficients are found insignificant, there cannot be a linear relationship between Y and any of the variables.*

