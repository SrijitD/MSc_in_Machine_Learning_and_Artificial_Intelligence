# Introduction to the Problem

Congratulations on completing the learning elements of the course on Apache Spark. In this course, you have come across a new and faster processing framework for processing big data, Apache Spark. You learnt about the basic theory and architecture associated with the framework and understood how to write Spark queries using both **RDDs (Resilient Distributed Datasets) (unstructured API)** and **DataFrames** (structured API). The course also covered the two practical case studies based on **Spark Streaming** (Twitter hashtag analysis) and **Recommendation Systems** (ALS algorithm) to enrich your knowledge.

Now, it is time to put your understanding to test. This assignment brings together the concepts of Spark and the Apriori algorithm for you. The two main skills that will be tested here are **debugging skills** (since a fixed approach is provided in the code file) and the **business acumen** that you apply to solve a problem. You must ensure that you follow all the instructions mentioned in the assignment as it will save time and prevent any blockers in the assignment.

## Understanding the problem

In the previous assignment, you worked over a case associated with e-commerce companies. You got an understanding of how e-commerce companies leverage data in order to understand customer behaviour. They use the obtained results to perform better in the market. One such method to understand customer behaviour is **Market Basket Analysis**.

Let’s try to understand it in the video below:

**VIDEO**

Market Basket Analysis is a **data mining** technique that helps to understand the relationship between the items sold by the company. As the name suggests, the method tries to analyse the customer basket or the transaction data to identify any association between items. The results from this analysis help the companies to develop marketing strategies to increase their revenue by gaining insight into which items are frequently purchased together by customers.

Let's look at some examples of strategies as follows:

- Providing recommendations for the most popular items
- Recommending items based on the items already present in the cart of the customer
- Discounting items to push the sales of certain items
- Changing the layout of the website or an offline store to display items based on the results

As a part of the previous modules, you came across the **Apriori algorithm** that helps you find association rules between different items. You are already aware that the Apriori algorithm serves as a perfect tool for this purpose. The algorithm involves two steps as you have learnt before:

- **Frequent itemset generation:** This step in the process can help you provide general recommendations to the customers based on the frequency of purchase. The items which are popular will end up in frequent items and can be then suggested to the customer.
- **Rule generation:** The association rules help to identify patterns between the items present in the transactions. This association can be used in multiple ways to increase the sales of the company. It can be used to generate suggestions based on the items present in the cart of the customer, or provide discounts on associated items, etc.

Let’s try to understand both these strategies in the video below:

**VIDEO**

The above video summarises the two strategies that can be devised using the Apriori algorithm under Market Basket Analysis. For this assignment, you are expected to use the algorithm to implement them for a fictional e-grocery store, **Home groceries**. The goal is to check the expected sales of the company if all the insights from the analysis are implemented as directed.

![MBA Home Groceries](https://i.ibb.co/pjZHmq8/MBA-Home-Groceries.jpg)

Let’s now try to understand the elements provided as a part of the assignment.

**VIDEO**

The above video helped you understand the resources available to solve the assignment. You are provided with the following elements to execute all the tasks as a part of the assignment:

- Transaction history: **Jan 2020** to **Mar 2020** (transactions.csv - same as Market_Basket_Optimisation.csv)
  - This file stores the daily transactions that happened between the period January 2020 and March 2020.
  - This will be helpful in understanding customer behaviour. This means that you are expected to use the file to generate the association rules from this data set.

- Transaction history: **Apr 2020** (transactions_apr.csv)
  - The purpose of this data set is that the company wants to test the devised strategies on sample transactions from the month of April 2020 before implementing them. Therefore, you must use this data set to calculate the expected increase in sales over similar transactions if they appear in future months.
  - The calculation associated with each strategy has been discussed in the next segment.

- Item details (item_details.csv)
  - This file stores the details associated with the products present in the sample transactions of April.
  - You will require the following details to perform calculations for obtaining the expected sales under different strategies:
    - Selling price
    - Cost price
    - Share of revenue in the quarter: January 2020 to March 2020

- Jupyter notebook
  - This file has an incomplete implementation of the Apriori Algorithm using PySpark over the provided data set. Based on your current understanding of Spark, it will be difficult for you to write the code from scratch. Therefore, you are expected to understand the complete flow of code and fill the gaps in the provided notebook to obtain the association rules.
  - The association rules and the confidence scores obtained in the results should be leveraged to execute the required strategies. However, you must use business logic wherever required to decide whether the strategy will be applicable or not.

All the elements have been provided in the following zip file:

Download [MLC_C3_Assignment](MLC_C3_Assignment.zip)

Apart from the files mentioned above, the ZIP file also contains an Excel workbook where you are expected to provide all the results of the assignment.

**Important:** As you can see, the assignment will also provide hands-on experience with MS Excel. This is done purposefully to acquaint you with one of the popular tools used for handling small data sets.

Now, you must have a basic understanding of the aim of the assignment. The next segment will help you understand the flow of the expected tasks in the assignment. You will also see how to implement the strategies discussed in the videos above.
