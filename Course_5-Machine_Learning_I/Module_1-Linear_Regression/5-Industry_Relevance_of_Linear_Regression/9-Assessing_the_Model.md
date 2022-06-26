# Assessing the Model

In the last lecture, you arrived at a model that has a fairly high adjusted R-squared. This means that the model was able to explain the viewership pattern to a large extent.

Before we finalise the model, let's run some checks to assess whether the model we built was right.

**VIDEO**

You finally have a model that seems good enough to predict why the show viewership fell. You saw that the actual and predicted views overlapped, thus indicating that the model is able to explain the change in viewership very well.

Then, you saw that the errors (the differences between the actual views and the views predicted by the model) were randomly distributed. What this essentially confirms is that there are no variables that could have helped explain the model better. 

A non-random error pattern, on the other hand, would mean that the errors are capturing some patterns, thus indicating that the model could have been better. A non-random error pattern indicates that there are certain systematic unexplained aspects in the outcomes that are being captured in the error. This pattern in the errors could probably have been explained by some explanatory variable, which is missing in the model. So, the idea is that a model should explain everything that is possible such that only the random errors are left.

So, in total, you built eight models before you arrived at the final model. Let's check whether the previous models would have passed the checks.

**VIDEO**

You saw that the plot results for model 5 were clearly not as good as model 9. The views predicted by model 5 were not able to capture the highs and lows that the actual show views had. There was a seasonality pattern in the error plot. This pattern in the errors could probably have been explained by some explanatory variable, which is missing in model 5.

A good model tells a good story. It is not important for you to base your story entirely on a single model. Drawing insights from the current model (model 9) and previous models, Ujjyaini identified **Ad Impressions** and **Character A** as the driver variables that could be used to increase the viewership of the show. **Ad impressions are directly proportional to the marketing budget**. Thus, by increasing the marketing budget, better viewership could be achieved. Similarly, Character A’s absence and presence create a significant change in show viewership. Character A’s presence brings viewers to the show. Thus, these two variables can be acted upon to improve the show viewership.

Let's now interpret the results that we have obtained so far in the next segment.

## Additional reading

Read more about the bootstrap method [here](http://rstudio-pubs-static.s3.amazonaws.com/24365_2803ab8299934e888a60e7b16113f619.html).

Report an error