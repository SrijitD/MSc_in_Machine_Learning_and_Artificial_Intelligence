# Summary

Having completed this session, you must be clear about the various irregularities that can be present in a data set. They can include unfixed rows/columns, missing values and outliers, or may even be in the form of non-standard/unscaled data, and so on.

Let us summarize the steps in data cleaning:

- **Fixing rows and columns:**  You need to remove irrelevant columns and heading lines from the data set. Irrelevant columns or rows are those which are of absolutely no use for the analysis of the data set. For example, in the Bank Marketing Dataset, the headers and customer ID columns are of absolutely no use to the analysis.

- **Removing/imputing missing values:**  There are different types of missing values in a data set. Based on their type and origin, you need to take a decision about whether they can be removed if their percentage is too less or whether they can be considered a separate category. There is an important possibility where you need to impute missing values with some other value. While performing imputation, you should be careful that it does not add any wrong information to the data set. Imputation can be done using the mean, median or mode, or using quantile analysis.

- **Handling outliers:** Outliers are those points which are beyond the normal trend. Outliers are of two types:
  
  1. **Univariate**  and
  
  2. **Multivariate**.

An essential aspect that was covered is that outliers should not always be treated as anomalies in a data set. You can understand this using the Bank Marketing Dataset itself, where age has outliers, although the high values of age are as relevant as the other values.

- **Standardizing values:** Sometimes data sets have many entries that are not in the correct format. For example, in the Bank Marketing dataset itself, you saw that the duration of calls was in seconds as well as minutes. It has to be in the same format. The other standardization involves units and precision standardization.
- **Fixing invalid values:** Sometimes, there are some values in the dataset that are invalid, maybe in the form of their unit, range, data type, format, etc. It is essential to treat such irregularities before processing a data set.
- **Filtering data:** Sometimes filtering out certain details can help you get a clearer picture of a data set.

It is very important to get rid of such irregularities as the ones above to be able to analyse a data set. Otherwise, it may hamper further analysis of the data set, either while building a machine learning model or during EDA itself.

So, now that you have learnt about the process of data cleaning, the next critical step is data analysis. This is covered in the following two sessions:

- Univariate analysis
- Bivariate/multivariate analysis.
