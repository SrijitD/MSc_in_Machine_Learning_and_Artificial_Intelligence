# Model Building - I

To arrive at a data-driven solution, you would use a linear regression model with an aim to understand what the predictors / driver KPIs of viewership are. Then, based on the model, you will be able to determine the root cause of the viewership decline.

Let's now dive into model building. Our SME Ujjyaini will illustrate the model building process through the forward selection method, which you learnt about in the variable selection. You would have already downloaded the Python Notebook for the case study. If not, you can download the same from the link below.

Play Video

3221820

Media Company Notebook

Download

Our subject matter expert first began the model with variables that seemed to be the most important at first instance. The model was updated with changes in the variables and the addition of new variables that help explain the outcome better.

The first question you tried to answer was whether the decline in the number of visitors to the platform was the main reason for the decline in the show viewership. You started with a weekday variable and then replaced it with a weekend variable to help explain the spikes in the graph better. Then you added the Character A variable, which shows the impact of the character's presence in the show viewership.

Intuitively, it appears that the number of views today must be related to the views yesterday, e.g., if you had viewers watching the show yesterday, a large proportion of them are also expected to watch the show today. 

In the code provided, the lag variable has already been created. Run the model including the lag variable along with the Weekend, Visitor and Character A variables and answer the following question.

#### Lag Views

Qn: Is Lag_views a significant predictor of Show_views when modelled along the Weekend, Visitors and Character_A variables?

- Yes

- No

Ans: A. *For Lag_views, p < 0.05. Thus, Lag_views is a significant predictor of the viewership of the show.*

#### Correlation

Qn: What is the correlation between Lag_views and Views_show?

- 0.74

- 0.89

- 0.42

- 0.2

Ans: C. *The correlation between Lag_views and Views_show is 0.42.*