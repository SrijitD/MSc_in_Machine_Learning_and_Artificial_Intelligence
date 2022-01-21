# Introduction

Welcome to the next step in the process of EDA: ‘Data Cleaning’.

In the previous session, you learnt about data sourcing techniques. Once you have sourced the data, it is essential to get rid of the irregularities in the data and fix it to improve its quality.

You can encounter different types of issues in a data set. Irregularities may appear in the form of  **missing values**,  **anomalies/outliers**,  **incorrect format**,  **inconsistent**  **spelling**, etc. These irregularities may propagate further and affect the assumptions and analysis based on a data set. They may hamper the further process of building the machine learning model. Data cleaning is, therefore, a very important step in EDA.

**VIDEO**

## In this session

You will learn the process of data cleaning using a case study on the **‘Bank Marketing Campaign Dataset’**. Although data cleaning is often done in a somewhat haphazard manner, and it is difficult to define a ‘single structured process’, you will learn about data cleaning through these steps:

1. Identifying data types

2. Fixing rows and columns

3. Imputing/removing missing values

4. Handling outliers

5. Standardizing values

6. Fixing invalid values

7. Filtering data

Before you go any further, it is essential that you familiarize yourself with the problem statement that you are going to solve in this module in order to get a practical understanding of EDA.

**Problem Statement**

A bank provides financial services/products, such as savings accounts, current accounts and debit cards, to its customers. In order to increase its overall revenue, the bank conducts various marketing campaigns for its financial products, such as credit cards, term deposits and loans. These campaigns are intended for the  **bank’s existing customers.**  However, the marketing campaigns need to be cost-efficient so that the bank can not only increase its overall revenues but also its total profit. You need to apply your knowledge of EDA on the given data set to analyse patterns and provide inferences/solutions for future marketing campaigns.

The CSV file of the bank marketing data set can be downloaded here.

**VIDEO**

#### Data Cleaning

To answer this question, you are expected to go through the bank marketing campaign data set and observe the data provided under each column.  

Qn: Which of the following columns should be corrected or removed completely from the data set?  

- customerid, salary, marital status
- marital status, housing, month
- customerid, jobedu, duration
- jobedu, duration, pdays  

Ans: "customerid, jobedu, duration". _The variable 'customerid' has no use in the analysis, and 'jobedu' can be separated into job and education categories to gain better insights. The duration variable has data into two formats: seconds and minutes. It is better to correct it in one format: either in minutes or seconds._

A bank conducted a telemarketing campaign for one of its financial products, ‘term deposits’, to help foster long-term relationships with the existing customers. The data set contains information on all the customers who were contacted during a particular year to open term deposit accounts with the bank.

**What is a Term Deposit?**

Term deposits, which are also called fixed deposits, are the cash investments made for a specific time period – ranging from 1 month to 5 years – at predetermined fixed interest rates. The fixed interest rates offered for term deposits are higher than the regular interest rates for savings accounts. Customers receive the total amount (the investment plus the interest) at the end of the maturity period. Also, the money can be withdrawn only at the end of the maturity period. Withdrawing money before this period would result in penalty charges, and the customer would not receive any interest returns.

**Important Note:**

To enhance the learning outcome, you are expected to code along with the instructor as you watch the videos. So, please pace yourself accordingly. To provide you with assistance, you are given a structured and blank Python notebook to code. This is a  **must**-**do** task for you to answer certain in-segment questions, as it serves the purpose of practice. Also, the final notebook will act as a reference for you in the future.

**Please do not expect a complete solution notebook attached at the end of this module.**

## People you will hear from in this module

**Subject Matter Expert**

[Mirza Rahim Baig](https://www.linkedin.com/in/rahim-baig)

Analytics Lead, Flipkart

Flipkart is one of the leading e-commerce companies in India. It started with selling books and has now expanded its business to almost every product category, including consumer electronics, fashion and lifestyle products. Rahim is currently the Analytics Lead at Flipkart. He holds a graduate degree from BITS Pilani, a premier educational institute in India.

**Subject Matter Expert**

[Anand S](https://www.linkedin.com/in/sanand0)

CEO, Gramener

Gramener is one of the most prominent data analytics and visualisation companies in India. Anand, currently the CEO, was previously the Chief Data Scientist at Gramener. He also has extensive experience in management consulting and equity research.
