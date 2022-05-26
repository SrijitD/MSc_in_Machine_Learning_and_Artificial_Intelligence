# Expected Tasks - I

The last segment gave you a broad understanding of the assignment. This segment will provide you a guided approach to solve the assignment.

## Task 1: Association rules

The main agenda of the assignment is to perform Market Basket Analysis over the provided transaction set to boost the sales of the company. The key requirement to devise the strategies to do so is the association rules that reflect the relationship between different items. To determine these relationships, you have been provided with an incomplete Jupyter notebook containing the PySpark code for Apriori algorithm. The first task in the assignment is to fill the blanks with appropriate commands and run them to generate the required association rules.

Avishek will walk you through the entire notebook in the coming videos. Make sure that you copy all the elements on the EC2 instance before starting the videos for more clarity.

**VIDEO**

**Note:** Market_Basket_Optimisation.csv used in the video above is provided as **transactions.csv** as part of the assignment.

As you have already learnt, there are two components of the Apriori algorithm:

- Frequent itemset generation
- Rule generation

The above video starts with the first part of the algorithm. You are expected to load the file ‘transactions.csv’ into a dataFrame. You must make the required changes in the command based on the location of the file. At the end of the above video, you must fill all the blanks to obtain an itemset that stores all the distinct items sold by the e-grocery store. In the next video, Avishek will help you understand another set of functions that will be used to generate frequent itemsets from the distinct itemset.

**VIDEO**

The above video covers different functions that help you reach closer to the frequent itemsets associated with the given transactions. You must fill all the required gaps to move ahead in the assignment. The next video talks about the ‘apriori’ function, which is defined to call all the above functions to provide you with the frequent itemsets of all possible orders.

**VIDEO**

With the above video, the first part of the algorithm is completed. You will obtain the frequent itemsets of all orders in the form of a list after all the gaps are filled with appropriate functions.

Now, let's understand how to use the frequent itemsets and the associated support value to generate the association rules in Spark.

**Note**: The implementation in this part requires you to put more effort as it is difficult. There are no gaps in the code for this section, but you must spend enough time to understand the operations performed.

**VIDEO**

As mentioned in the video, you can generate different combinations of frequent itemsets using the powerset() function. This way, you can check for multiple rules coming from one frequent itemset.

Now, before starting with the rule generation part, you must understand the function `collectAsMap()`. You are already aware that the `collect()`function returns the items of a dataFrame or an RDD as a list to the driver program. However, the elements of the list do not have any mapping like a key-value pair. The `collectAsMap()`function helps to overcome this issue as you may require the output in the driver program to follow the key-value structure for further processing. This command is used during the rule generation part and hence, you must understand the purpose of the command before starting the video.

Let's look at the next steps to generate the association rules.

**VIDEO**

In the video above, you learnt how to use the results from the frequent itemset generated in part 1 to compute the confidence scores. The powerset() function helps to generate different antecedents from the frequent itemset, and the broadcasted support values are used to fetch the confidence score of the respective frequent itemset and antecedent.

Till now, you have seen the function that generates the association rules. Next, let's understand how to do this for order 'k'.

**VIDEO**

So now, you are familiar with all the functions to generate association rules from the given data. In the next segment, you will learn how to use the obtained rules.
