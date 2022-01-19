# Numerical vs Categorical Analysis

Previously, you learnt about the bivariate analysis of numerical variables. Now, in this segment, you will learn about the associations between numerical and categorical variables. You will learn how to apply this analysis on the same bank marketing dataset.   

**VIDEO**   

So, in the video, you saw how the salary variable is varying with respect to the response variable. Their mean and median are the same, as shown in this image.

![Response_vs_Salary_Code](https://i.ibb.co/c3xR5Gb/Response-vs-Salary-Code.png)

Nevertheless, a very different picture emerges when you plot a boxplot. The interquartile range for the customers who gave a positive response is on the higher salary side. This is actually true because people who have higher salaries are more likely to invest in term deposits.

![Response_vs_Salary](https://i.ibb.co/f1D2NcQ/Response-vs-Salary.png)

Moving on, in the next video, we will take a look at a different variable in the bank marketing dataset.

**VIDEO**   

So, in the video, you saw that the balance versus response graph does not make any sense at first glance after it is plotted. Sometimes only a boxplot is not sufficient to draw insights, because of a high concentration of data and/or because of higher values in the data set, for example, the balance variable.

![Response_vs_Balance](https://i.ibb.co/bFvykf2/Response-vs-Balance.png)

In such cases, it is a good practice to analyse the data using the mean, median or quartiles. In the video, you saw that the mean and median values of the balance variable are higher for the customers who gave a positive response, which is again true, because people who have a higher balance in their bank accounts are more likely to invest in term deposits.

Moving ahead, the next segment will help you get an idea about categorical versus categorical variable analysis.

#### Numerical - Categorical Variable Analysis

Qn: Which of the following education levels shows the highest mean and the lowest median value for salary, respectively?

- Primary and secondary
- Tertiary and primary
- Secondary and tertiary
- Tertiary and secondary

Ans: Tertiary and primary.

    bank_df.groupby("response")["balance"].aggregate(["mean", "median"])

#### Numerical - Categorical Variable Analysis

Here we have the bank marketing data set, which contains the job variable. What inferences can you draw by taking a look at the mean values of salary in each job category? Write your answer in the text box provided below.

![Job_Salary_Mean_Bar_Plot](https://i.ibb.co/YjrWQvb/Job-Salary-Mean-Bar-Plot.png)

Ans: When you calculate the mean value of salary for different job categories, the entrepreneur and management job categories emerge as the highest-paying jobs. The management job category is directly related to a higher education level, and hence, a higher salary is expected for such a job category. The lowest salary group is student, which is again true because they are not employed yet.
