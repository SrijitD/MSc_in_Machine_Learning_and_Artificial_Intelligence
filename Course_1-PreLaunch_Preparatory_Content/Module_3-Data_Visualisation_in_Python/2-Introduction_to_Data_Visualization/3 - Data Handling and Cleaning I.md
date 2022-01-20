# Data Handling and Cleaning: I

Now that you have an overall understanding of our objectives for this case study, it’s time to go ahead and begin the hands-on demonstration in Python. As mentioned earlier, you’re advised to code along with the SME in the following videos to get the optimum learning experience out of them.

[**Note**: The dataset and the instructions corresponding to the code that the SME is writing on the notebook is already present in the stub file shared with you earlier in the [Case Study: Mind Map](https://learn.upgrad.com/v/course/1426/session/160107/segment/855943) page]

**VIDEO**

The dataset contains a total of 10,841 apps and 13 features or columns. The **df.info()** function showed us that some of the columns (like Rating) have missing values and some have incorrect data types associated with them. Let’s discuss both of them briefly here:

- **Missing values**: You would almost always encounter data which have rows where no observation is recorded for a certain variable. These can affect the analysis process and the generated insights significantly. Some common techniques to treat this issue are
  
  - **Imputation**, where you replace the missing value with another estimated value
  - **Dropping** the rows containing the missing values altogether
  - or depending on the case, you can also go ahead and keep the missing values as long as they don’t affect the analysis.

- **Incorrect data types**: This discrepancy mostly occurs due to some incorrect entry in the column which is stored in a format other than the desired one due to which the entire column gets misclassified. Or in some other cases, the format of the entire column is different from what we need for our analysis purposes. You either have to fix certain values or clean the entire column only to bring it to the correct format.

Missing values will affect our statistics drastically, for starters our inbuilt functions of mean, sum, var etc will give incorrect results which clearly is quite dangerous. Also, you need the values to be in the numeric format of int or float to perform these operations, you cannot find the mean or median of a collection of strings, can we? Now, before you proceed to the data analysis and visualisation part, it is essential for you to remove the above discrepancies.

**VIDEO**

As explained by Rahim, you can easily use the **isnull()** and **isnull().sum()** functions to determine the missing values in a dataset. This will give you the number of missing values corresponding to each column.

 Now, there are a number of ways in which you can handle missing values. In some cases, you delete the records containing the null values. For example, the **Rating** column is our target variable, which would influence our analysis greatly as we keep progressing. Therefore, imputing values may skew our results significantly and hence we should drop them. 

Now let’s go ahead and check the other columns and see what actions are required for them.

**VIDEO**

In the case of the Android Ver column, you imputed, or you replaced the missing value with the mode for that column. Computing the mode can be done either using the **value_counts()** function or using the mode function directly.

Imputations are generally done when keeping the missing values disbars you from doing further analysis and eliminating the rows containing those values leads to some bias. The estimation is based on the mean, mode, median, etc. of the data.

In cases where there are numerical columns involved, both mean and median offer up as a good imputed value. In the case of the categorical column, mode turns out to be a decent enough imputation to carry out.

#### Frequency of Mode

Qn: Once you impute the missing values for Current Ver. as mentioned towards the end of the above video, answer the following question. If you’re having some difficulties in doing the same, check the feedback

After the imputation step, how many values in Current Ver. are of the type “Varies with Device”?   

- 1415

- 1418

- 1422

- 1419

Ans: D. *Use the following code to replace the null values*

```python
inp1['Current Ver'] = inp1['Current Ver'].fillna(inp1['Current Ver'].mode()[0])
inp1['Current Ver'].isnull().sum()

#After that do a value_counts()
inp1.['Current Ver'].value_counts().
```

*You’ll see that a total of 1419 values are 'Varies with Device'.*
