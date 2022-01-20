# Facts and Dimensions

Graphics and visuals, when used intelligently and innovatively, can convey a lot more than what raw data alone can. Matplotlib serves the purpose of providing multiple functions to build graphs from the data stored in your lists, arrays, etc. So, let’s start with the first lecture on Matplotlib.

Before we start discussing different types of plots, you need to learn about the elements that help us create charts and plots effectively. There are two types data, which are as follows:

- Facts

- Dimensions

Facts and dimensions are different types of variables that help you interpret data better. Facts are numerical data, and dimensions are metadata. Metadata explains the additional information associated with the factual variable. Both facts and dimensions are equally important for generating actionable insights from a given data set. For example, in a data set about the height of students in a class, the height of the students would be a fact variable, whereas the gender of the students would be a dimensional variable. You can use dimensions to slice data for easier analysis. In this case, the distribution of height based on the gender of a student can be studied.

Identifying facts and dimensions among variables effectively will help you start the analysis of a given data set.

#### Facts and Dimensions

Qn: Consider a bank having thousands of ATMs across India. In every transaction, the following variables are recorded:

1. Withdrawal amount
2. Account balance after withdrawal
3. Transaction charge amount
4. Customer ID
5. ATM ID
6. Date of withdrawal

Which among the following are fact variables (mark all that apply)?

- Withdrawal amount

- Account balance after a withdrawal

- Transaction fee

- Customer ID

- ATM ID

- Date of withdrawal

Ans: A, B & C. 

- *Fact variable: It is numerical data.* 

- *Dimension variable: It describes the numerical data.*

#### Dimensional Modelling

Qn: What are the benefits of having dimension variables apart from facts?

More than one option may be correct.

- Performing various types of analyses, such as sector-wise, country-wise or funding type-wise analyses.

- Summarising fact variables by calculating their sum, average, range, etc.

- Extracting specific, useful information such as the total investment made in the automobile sector in India between 2014 and 2015.

Ans: A & C. *These activities needs metadata along with the fact data.*

In the next segment, you will start building graphical plots using Python. The first visualisation that you will try to create is a Bar Graph.
