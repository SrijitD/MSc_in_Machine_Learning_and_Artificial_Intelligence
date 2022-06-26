# Model Building - II

Let's now look at the next steps in model building.

**VIDEO**

Upon the introduction of more variables, the model starts becoming complex. Some of the variables, which were significant earlier, now become insignificant. Variables that have better alternatives are replaced.

You brought back variables that were previously removed to test whether they fit the business requirement better. For example, you brought back Visitors as a predictor against Views to the platform because Visitors could be impacted through marketing actions.

#### Finding Correlation

Qn: What is the correlation between Views_platform and Visitors?

- 43

- 94

- 78

- 62

Ans: B. *Since there is such a high correlation between Visitors and Views on the platform, replacing Views_platform with Visitors made no significant difference.*

In the latest version of the model (Model 6), Ujjyaini spotted two major problems:

1.  The variable ‘Visitors’ has become insignificant with a large p-value, and
2.  The variable ‘character A’ has changed its sign.

Before proceeding any further, answer the following questions:

#### Visitors

Qn: According to you, why does the significance of the Visitor variable drop upon the introduction of the ad impressions variable? Write your answer in the text box below.

Ans: *There is a significant correlation between the ad impressions and Visitors variables. Thus, after the introduction of ad impressions, Visitors became an insignificant variable.*

#### Character\_A

Qn: Think of some possible reasons why the variable ‘character_A’ has changed its sign. Write your answer in the text box below.

Ans: *CharacterA has a high correlation with ad impressions. A change of sign upon the introduction of new variables suggests multicollinearity.*