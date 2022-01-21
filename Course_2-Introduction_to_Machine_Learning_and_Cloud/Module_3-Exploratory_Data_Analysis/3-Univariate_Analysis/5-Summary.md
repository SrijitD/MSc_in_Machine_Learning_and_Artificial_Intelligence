# Summary

Univariate analysis involves analysing a single variable at a time. This variable can be ordered or unordered, or it may be a numerical variable. So, based on the types of variables, the whole understanding of univariate analysis is divided into these parts:

- **Categorical unordered univariate analysis:**  Unordered variables are those variables that do not have any notion of ordering, for example, increasing or decreasing order. These are just various types of any category. Examples of such variables can include job types, marital status, blood groups, etc.

- **Categorical ordered univariate analysis:**  Ordered variables are those variables that have some form of ordering, for example, high–low, failure–success, yes–no. Examples of such variables can include education level, salary group – for instance, high or low – gradings in any exam, and so on.

- **Numerical variable univariate analysis:**  Numerical variables can be classified into continuous and discrete types. To analyse numerical variables, you need to have an understanding of statistical metrics such as mean, median, mode, quantiles, box plots, etc. It is important to understand that numerical variable univariate analysis is nothing but what you have done earlier, that is, treating missing values and handling outliers. The crux of univariate analysis lies in the single variable analysis, which is covered in the process of cleaning a data set.  

- **Transition of a numerical variable into a categorical variable:** This is a critical aspect that you need to think about before performing univariate analysis. Sometimes, it is essential to just convert numerical variables into categorical variables, through a process called ‘binning’.

Let us summarize the univariate analysis on the Bank Marketing Campaign dataset:

- You saw that there is a variable named ‘**marital**’ in the Bank Marketing dataset. This is a **categorical unordered variable**. You saw that the bank has contacted mostly married people, as can be seen in this image.

![Bank_Data_Marital](https://i.ibb.co/0K7fYk9/Bank-Data-Marital.png)

- There is a variable named ‘**education**’ in the Bank Marketing dataset. This is a **categorical ordered variable** since there is ordering of education levels, for example, primary, secondary and tertiary education. You saw that the bank has mostly contacted people who have completed secondary education, as can be seen in this image.

![Bank-Dataset-poutcome-1](https://i.ibb.co/p23WxBD/Bank-Dataset-poutcome-1.png)

- You already performed univariate analysis on numerical variables while treating missing values and handling outliers. You saw that the variable ‘**age**’ has no outliers, since age values like 80 or 90 are also genuine values. However, there are higher values in the ‘balance’ and ‘salary’ variables, which can be treated as outliers. Hence, it can be avoided while performing the analysis.

Therefore, univariate analysis is nothing but the analysis of one variable at a time. It is important to look at each and every variable and perform analysis on it.
