# Feature Selection - RFE

In this segment, let’s understand one of the most widely used approaches for feature selection - Recursive feature elimination. Now, manual feature elimination may work when you have a relatively low number of potential predictor variables, say, ten or even twenty. But it is not a practical approach when you have a large number of features, say 100. In such a case, you automate the feature selection (or elimination) process. Even though the housing dataset doesn’t have many variables and you can easily select the relevant features manually, it is important to learn to use certain automated techniques as well.

Let's talk more about this in the next video.

**VIDEO**

In this video, you understood the functional implementation of RFE. It is a backward stepwise approach where all features are considered for model building and after each iteration, it identifies the least significant feature that can be dropped. 

In the next video let’s perform recursive feature elimination on the boston housing dataset and understand the output generated.

**VIDEO**

#### Recursive Elimination

Qn: Use recursive elimination and find the R2 score with three best columns in the diabetes dataset?

- 0.56

- 0.47

- 0.63

- 0.52

To summarize, you saw different feature selection techniques where you eliminate features one by one manually using the p-values estimates and VIF values. Also, you saw certain complex automated approaches where at each step you build a linear regression model and check for the most insignificant feature to be  eliminated. In practice, You need to combine the manual approach you learned earlier (using p values and VIF) and the automated one: RFE in order to get an optimal model relevant to the business. First, you do an automated elimination (coarse tuning), and when you have a small set of potential variables left to work with, you can use your business domain expertise and the manual elimination techniques to eliminate a few other features (fine tuning).

#### Recursive Feature Elimination

Qn: Read this [document](http://scikit-learn.org/stable/modules/generated/sklearn.feature_selection.RFE.html) and answer the following question. According to you, how does the RFE measure the importance of the variable?

Ans: *Recursive feature elimination is based on the idea of repeatedly constructing a model (for example, an SVM or a regression model) and choosing either the best or the worst performing feature (based on coefficients as coefficients are representative of feature importance), setting the feature aside and then repeating the process with the rest of the features. This process is applied until all the features in the data set are exhausted. Features are then ranked according to when they were eliminated. Hence, you need to scale your features in the dataset before performing RFE as it does elimination on the basis of coefficient values. As such, it is a greedy optimization for finding the best performing subset of features. Read more at this [link](http://blog.datadive.net/selecting-good-features-part-iv-stability-selection-rfe-and-everything-side-by-side/)*

#### Recursive Feature Elimination

Qn: Suppose you have to build five multiple linear regression models for five different data sets. You are planning to use about 10 variables for each of these models. The number of potential variables in each of these data sets is 15, 30, 65, 10 and 100. In which of these cases would you definitely need to use RFE?

- 1st and 4th cases

- 1st, 2nd and 4th cases

- 3rd and 5th cases

- 2nd, 3rd and 5th cases

Ans: D. *You might be thinking that while you would definitely need RFE in the 3rd and 5th cases, feature elimination in the 2nd data set can be performed manually. But please note that while performing a manual elimination, you need to drop features one by one, and bringing down the number from 30 to 10 can be very time-consuming. So, it might be a good idea to perform an RFE to bring the number down to, say, 15, and then perform a manual feature elimination.*
