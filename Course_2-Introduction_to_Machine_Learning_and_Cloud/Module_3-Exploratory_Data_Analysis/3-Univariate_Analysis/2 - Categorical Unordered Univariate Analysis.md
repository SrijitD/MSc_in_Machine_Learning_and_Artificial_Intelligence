# Categorical Unordered Univariate Analysis

Univariate analysis involves analysing a single variable at a time. The concept of univariate analysis is divided into the **ordered** and  **unordered** categories of variables. In this segment, you will learn how to conduct univariate analysis on  **categorical unordered variables.**  

Unordered data is the type of data that does not include measurable terms such as high–low, more–less, fail–pass. Here are some examples of unordered data:

- The type of loan taken by an individual (home loan, personal loan, auto loan, etc.) does not have any ordered notion. They are just different types of loans.  

- The departments in an organization – Sales, Marketing, HR – are different departments in an organization, with no measurable attribute attached to any term.  

Unordered variables also called **nominal** variables.  

An unordered variable is primarily a categorical variable that has no defined order. Let us consider the example of the **job** column in the Bank Marketing dataset. Here, ‘**job**’ is divided into many subcategories, such as technician, blue-collar, services and management. There is no weight or measure assigned to any value in the ‘**job**’ column.  

The forthcoming video will help you understand how univariate analysis is performed on unordered variables using the Bank Marketing campaign dataset.  

**VIDEO**   

#### Univariate Analysis

Qn: After analysing the Bank Marketing data set, can you choose which is the unordered categorical variable among all the variables?

- Marital
- Education
- Job

Ans: Marital & Job

- _There is nothing like order in marital status; it can be either single or married, or divorced, perhaps._
- _There is nothing like ordering in the variable job, these are just the types of job in which the people are._

In the video, you can see that married people have been contacted the most by the bank. This can be visualised in Python using this graph.  

![Horizontal_Bar_Plot_Marital_Bank_Dataset](https://i.ibb.co/3pFSfpJ/Horizontal-Bar-Plot-Marital-Bank-Dataset.png)

In bivariate analysis, when you plot variables like marital status, job and education with response variables, you will be in a position to decide which categories in the respective columns have the highest chances of a positive reply.

Moving on, in the next segment, you will learn about categorical ordered univariate analysis.  

#### Unordered Categorical Variables

Qn: Which of the following options are unordered categorical variables? Choose all correct options.

- The blood group of any person, such as A, B, O or AB.
- Gear of a vehicle: 1st, 2nd, 3rd or 4th gear.
- Gender of a person, like male or female.
- Various stages of cancer.  

Ans: A, C

- _Blood group does not have any order in them. they are just typical category of blood group._
- _Gender is an unordered category, as a person can be male or female; there is no hierarchy in genders._

Qn: Which of the two job categories are the least and the most contacted by the bank respectively?

- Student and management professional
- Housemaid and blue-collar employee
- Student and housemaid
- Student and blue-collar employee

Ans: Student and blue-collar employee. _Write a code to find the information about the job variable, and plot the bar graph of the job variable. Once the code is done, then you will get the correct answer._
