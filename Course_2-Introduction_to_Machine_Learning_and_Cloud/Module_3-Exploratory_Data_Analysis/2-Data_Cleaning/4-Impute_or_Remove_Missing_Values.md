# Impute/Remove Missing Values

You learnt how to fix columns and rows and applied that learning to the bank marketing dataset. Now, in this segment, you will learn what missing values are and how they should be treated. But before working on the data set, let us watch the forthcoming video and listen to Anand as he explains the different methods to fix the missing values in a data set.  

**VIDEO**  

#### Missing Values

Qn: What is correct in regards to missing values?  

- It is always safe to replace the missing values with the mean or median values in numerical data type and then continue with the analysis
- Missing values are always due to human error in the data gathering and recording process
- None of the above
- Both A and B.

Ans: _Values may be missing for multiple reasons such as non-response due to sensitivity of the information, data entry error, censoring, etc. Without understanding the reason, replacing missing values might lead to faulty analysis._

The most important takeaway from this lecture is that good methods add information, whereas bad methods exaggerate information. If you can add information from reliable external sources, then you should use it to replace missing values. But often, it is better to let the missing values be and continue with the analysis, rather than extrapolate the available information.

Now, let us summarize the takeaways from the video:

- **Set values as missing values:**  Identify the values that indicate missing data; for example, treat the blank strings “NA”, “XX”, “999”, etc. as missing.

- **Adding is good, exaggerating is bad:**  You should try to obtain information from reliable external sources as much as possible; but if you can’t, then it is better to retain the missing values, rather than exaggerating the existing rows/columns.

- **Delete rows and columns:**  Rows can be deleted if the number of missing values is insignificant, as this would not impact the overall analysis results. Columns can be removed if the missing values are significant in number.

- **Fill partial missing values using business judgement:**  Such values include missing time zones, century, etc. These values can be identified easily.

In the next video, Rahim will explain the different types of missing values and how to delete or impute them.

**VIDEO**  

#### Missing Values

Qn: In the bank marketing campaign data set, there are some missing values in the response column. Can you identify the type of missing values?

- MCAR
- MAR
- MNAR

Ans: MCAR. _The response column has no associations with any other features in the data set. This may be because there is some entry-level error in the data set or there can be some other reasons where the bank does not come to any conclusion regarding whether this particular customer is agreeing or not to invest in term deposits, which obviously has no relation with any other variables in the data set._  

Qn: You have seen the missing value in the revenue column in the e-commerce retail data set. What can you say for such missing values?

- Maybe there has been no such transaction with that customer till date.
- You can impute 0 at missing values in the revenue column, which means this particular customer has not transacted yet.
- You can impute missing values with the mean of all values.
- You can impute the missing values by the exact same value of revenue in another row of the same age.  

Ans: A, B. _If there is no transaction of a particular customer, it is shown as missing._ _If a particular customer did not perform any transaction, then it is safe to keep missing values as 0._

Here is a list of the major takeaways from this video. Types of missing values:

- **MCAR:**  It stands for Missing completely at random. The reason for the missing value does not depend on any other features.
- **MAR:**  It stands for Missing at random. The reason for the missing value may be associated with some other features.
- **MNAR:**  It stands for Missing not at random. There is a specific reason behind the missing value.

Now, in the next video, we will apply all of these concepts on the bank marketing campaign data set to tackle the issue of missing values in the Age and Month columns.

**VIDEO**  

There are different ways to deal with missing values. You can either drop the entries that are missing if you find that the percentage of missing values in a column is very less, or you can impute the missing values with some other values. We will now discuss the different ways to impute missing values.

**Imputation on Categorical/Numerical Columns**

1. **Categorical columns**

- Impute the most popular category.
- Imputation can be done using logistic regression techniques.

2. **Numerical columns**

- Impute the missing value with mean/median/mode.
- Other methods to impute missing values include the use of interpolation and linear regression. These methods are useful for continuous numerical variables.

Moving on, in the upcoming video, you see the analysis of the ‘pdays variable to treat its missing values.

**VIDEO**  

The major takeaway from this video is that missing values do not always have to be null. So, you now must have a clear understanding of how to treat the missing values in a data set:

- Sometimes it is good to just drop the missing values because they are missing completely at random.
- Sometimes it is good to impute them with another value, maybe mean/median/mode, because they are not missing at random and have to be incorporated for further analysis.

You have gone through with the bank telemarketing data set. There is a ‘response’ variable, which is basically the target variable of the data set. You have learnt about missing values and the ways to treat them. Based on your understanding of codes and process on missing values, answer the questions given below.

In the next segment, you will learn how to deal with outliers.

#### Missing Values

Qn: Implement the code in your blank Jupyter notebook and find the exact number of missing values in the response column. Choose the correct option from the below.

- 30
- 40
- 50
- 60

Ans: 30, _The code in Python to find the missing values of the response column is as follows:_

    inp1.response.isnull().sum()

Qn: Implement the code in your blank Jupyter notebook and find the percentage of missing values in the response column. Select the correct option from the below.

- 1%
- 0.1%
- 0.06%
- 0.006%

Ans: 0.06%  

Qn: What do you think about the treatment of missing values in the response column?

- They should not be dropped, as that may affect the data set.
- They can be removed because they are very small in number as compared to entries in the dataset.
- Create a separate category named 'missing' to deal with such values.

Ans: _You can drop it as it is very less in percentage._
