# Numeric vs Numeric Analysis

In this segment, using the Bank marketing dataset, you will learn how to analyse two numerical variables. There are multiple tools to analyse numerical variables. In the forthcoming video, you will learn about the different tools and plots that are helpful for extracting insights using numerical variables from a data set.   

**VIDEO**   

#### Correlation

Qn: In the correlation matrix, there are multiple values written in boxes that show the relation between the variables. These values are called 'Pearson coefficients'. Based on your understanding of the correlation matrix, choose which of the following statements is correct. Here is an image of the correlation matrix for your reference:  
![IRIS_Dataset_Corelation_Flower_Params](https://i.ibb.co/YhhFZqj/IRIS-Dataset-Corelation-Flower-Params.png)

One very important concept that has been covered in this video is that of the correlation coefficient. The correlation coefficient depicts only a linear relationship between numerical variables. It does not depict any other relationship between variables. Nevertheless, a zero correlation does not imply that there is no relationship between variables. It merely indicates that there will be no linear relationship between them. Also, the correlation between variables can be negative or positive. A negative correlation means that if the value of one variable increases, then the value of another decreases, whereas it is the opposite for a positive correlation.

The higher the coefficient of correlation between numerical variables, the higher is the linear relationship between them.

From the **correlation matrix**  below,  you can observe that petal length has a high correlation with sepal length, with a correlation coefficient of 0.87. Also, there is a very high correlation coefficient of 0.96 between petal width and petal length.

![IRIS_Dataset_Corelation_Flower_Params](https://i.ibb.co/YhhFZqj/IRIS-Dataset-Corelation-Flower-Params.png)

- The correlation matrix quantifies only the linear dependence between the variables; it does not capture the nonlinear relations between them.
- A negative correlation means if one variable increases, the other will decrease.
- The correlation coefficient is sensitive to outliers.  

Ans: All of the above.

- _The correlation matrix depicts only the linear relation among the variables; it does not depict the other relations._
- _Correlation between two variables can be negative or positive. If there is a positive correlation, then if one variable increases, the other will increase; the opposite occurs for a negative correlation._
- _Outliers affect the correlation coefficient. If there are outliers, the linear relation among the variables will be affected._

However, the correlation matrix has its own limitations where you cannot see the exact distribution of a variable with another numerical variable. To solve this problem, we use  **pair plots**. Pair plots are scatter plots of all the numerical variables in a data set. It shows the exact variation of one variable with respect to others. In this image, you can observe how one variable is varying with respect to another.

![IRIS_Dataset_PairPlot_Flower_Params](https://i.ibb.co/HrdymLY/IRIS-Dataset-Pair-Plot-Flower-Params.png)

Now, in the next video, Rahim will explain how to perform a numerical bivariate analysis using the bank marketing dataset.

**VIDEO**   

So, in the video, you saw how a pair plot can help you determine that there is no correlation between the ‘age’, ‘balance’ and ‘salary’ variables. You can refer to this image and observe how there is no correlation between these variables.

![Bank_Dataset_PairPlot](https://i.ibb.co/Lh5wr3B/Bank-Dataset-Pair-Plot.png)

A high correlation coefficient does not imply that there will be a correlation with another numerical variable every time, because there can be no causation between them. There may be cases where you will see a high correlation coefficient between two variables, but there would be no relationship between them. You will understand this in detail in the next segment that how correlation is related to the causation.

**Comprehension: Correlation**

Consider these four scatter plots of two variables A and B.

![Corelation_Plots](https://i.ibb.co/8BfK0kz/Corelation-Plots.png)

Based on your learning from this segment, answer the questions given below.

#### Correlation

Qn: Out of the four plots, which has the least correlation coefficient?

- Plot-1
- Plot-2
- Plot-3

Ans: _Plot-3 does not show any relation between the variables; hence, it has the least correlation coefficient._

Qn: Which of the plots above has very a low correlation coefficient but has some relation between the variables?

- Plot-1
- Plot-2
- Plot-3

Ans: _There is some relation between the variables in Plot-2, but it is not linear._

Qn: Which of the plots above has a negative correlation?

- Plot-1
- Plot-4
- Plot-3

Ans: _In Plot-4, with increase in one variable, the other variable decreases; hence, there is a negative correlation between the variables._
