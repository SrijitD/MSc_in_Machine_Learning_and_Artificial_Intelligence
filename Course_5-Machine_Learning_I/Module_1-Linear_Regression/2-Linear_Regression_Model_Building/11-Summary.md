# Summary

Let’s quickly summarize what you have learnt so far in this session.

-   Simple Linear Regression using SKLearn
-   Multiple Linear Regression using SKLearn
    -   EDA on the dataset
    -   Building linear Regression Models
    -   Importance of individual features
-   Hypothesis testing in linear regression
    -   To determine the significance of beta coefficients.
    -   $H_0: \beta_1=0; H_A: \beta_1 \ne 0$.
    -   T-test on the beta coefficient.
    -   $t\ score = \dfrac{\hat{\beta_i}}{SE(\hat{\beta_i})}$.
-   Building linear regression models using statsmodels  package
    -   OLS (Ordinary Least Squares) method in statsmodels to fit a line.
    -   Summary statistics
        -   F-statistic, r-squared, coefficients and their p-values.
    -   VIF - Variance Inflation Factor
-   Feature Selection Techniques
    -   Variance Thresholding
    -   SelectKBest
    -   VIF

Submit

So far in the first two sessions of the module, you have learnt the basics of linear regression and saw how to build linear models using the scikit-learn library and the stats library. Using the scikit-learn library and the stats library, you can build models when the size of the data is small.

But what happens when the size of data increases; then you need to resort to Spark to write codes that can be productionized. Spark ML library makes machine learning scalable and easy, and the next session in this module aims at teaching you how to build models using pyspark.