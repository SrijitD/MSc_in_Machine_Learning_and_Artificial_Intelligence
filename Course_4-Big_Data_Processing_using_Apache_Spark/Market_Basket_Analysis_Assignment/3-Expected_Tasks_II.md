# Expected Tasks - II

Once you have the association rules, you can use them to implement different strategies to boost the sales of the grocery store. You are provided with the Excel sheet to submit your findings. You must understand that the implementation of tasks in Excel is provided purposefully as the companies may expect you to work with this tool as well. Kindly take the learning positively as you proceed ahead. Also, the segment covers some aspects of business logic at the end of the segment. Refer to them as well before you start filling the Excel sheet.

## Task 2: Strategy 1 - Recommendation

As mentioned in the previous segment, you are provided with a sample transaction set from April. You must use this dataset along with the association rules to recommend items as a part of the first strategy. Let’s hear about it in the following video.

**VIDEO**

**Note 1**: The last row of the table provided at [02:24] is incorrect. The range should be from 0.9 to 1.0.

As part of this task, you are expected to use the association rules to recommend items for each transaction in the sample dataset provided. You are expected to choose the rule with the highest confidence value for every transaction to calculate the increase in the revenue of the company. Let’s try to understand this using an example.

Suppose you have a sample transaction that has the following items: **{apple, milk, meat}**

You obtain the following association rules from the Apriori algorithm:

![MBA Assignment ](https://i.ibb.co/PG1T38x/MBA-Assignment-1.jpg)

You must check the association rules associated with each item present in the sample transaction. In the above example, you can see that milk and meat are present in both (the sample transaction and the association rules).

![MBA Assignment 2](https://i.ibb.co/Dppj3RT/MBA-Assignment-2.jpg)

From the above options, you must suggest that the customer buys eggs as it is not present in the transaction and the rule associated with it has the maximum confidence score (highlighted). You must map the confidence score with the appropriate option in the metric to obtain the expected increase in sales as shown below:

![MBA Assignment 3](https://i.ibb.co/xSKQQPv/MBA-Assignment-3.jpg)

If the recommendation strategy is implemented in the example, there will be an 8% increase in the sales of eggs. Therefore, the expected revenue for the sample transaction will be as follows:

**Selling price (apple) + Selling price (meat) + Selling price (milk) + 0.08*Selling price (egg)**

This is how you must obtain the increment in revenue for all the sample transactions individually. You must use the Excel sheet provided at the end of the segment to submit the results from this strategy. Now, let’s try to understand the second strategy.

## Task 3: Strategy 2 - Discounting

Another strategy that was discussed was discounting the associated items to boost the sales of less purchased items. The company may provide discounts to lure the customers into buying the items which they would not have bought otherwise. Let’s try to understand it from the video below.

**VIDEO**

**Note 1**: The last row of the table provided at [02:53] is incorrect. The range should be from 0.9 to 1.0.

As mentioned in the video, it is always advised that you offer discounts on an item that the customers do not frequently buy. This set of items would have a lower confidence score in the association rules. To select an item to provide a discount, you must choose the rule with the lowest confidence value. Let’s try to understand this using the same example discussed above.

You had the sample transaction with the following items: **{apple, milk, meat}**

The image below shows the association rules obtained using the Apriori algorithm:

![MBA Assignment 1](https://i.ibb.co/PG1T38x/MBA-Assignment-1.jpg)

Here, you will select the first association rule for the strategy as it has the lowest confidence score corresponding to the items present in the sample transaction. Therefore, you can offer a discount on both bread and butter, as both of them are absent from the sample transaction.

![MBA Assignment 4](https://i.ibb.co/LpjQBRb/MBA-Assignment-4.jpg)

Next, you must find the percentage of discount that must be offered on each item. As mentioned in the video, you will have to obtain it using the information provided.

![MBA Assignment 5](https://i.ibb.co/ZKLmfSc/MBA-Assignment-5.jpg)

You will find all the information to calculate the discount percentage in the ‘product_details.csv’ file. Once you have obtained the discount percentage, you will need the table below to measure the discounting strategy's impact.

![MBA Assignment 6](https://i.ibb.co/sCFz3Ts/MBA-Assignment-6.jpg)

Since the confidence score associated with the association rule is 0.24, the company can expect an increase of 8% in the sale of bread and butter if the discount is offered. Therefore, the expected revenue from the sample transaction will be:

**Selling price (apple) + Selling price (meat) + Selling price (milk) +   
[0.08*Selling price (bread) * (1 - Discount_1 %)] +  
[0.08*Selling price (butter)] * (1 - Discount_2%)]**

Both tasks 1 and 2 must be executed for all the sample transactions present in the ‘transactions_apr.csv’ file. You must also provide the difference between the company's expected sales after implementing the strategy and the company's actual sales on the sample transaction set from April.

**Expected sales (after MBA) - (Actual sales)**

The steps can be summarised as follows:

-   Setting the environment:
    -   You can use the already created instance or create a new one. In case you are creating a new instance, make sure all the installation steps are performed correctly and the previous instance is terminated.
    -   Copy all the files to the instance for analysis.
-   Completing the Jupyter Notebook:
    -   You must complete the gaps in the Jupyter notebook to obtain the association rules using the Apriori algorithm.
-   Market strategies
    -   Implement strategy 1, 2 and try to calculate the expected revenue of the company.
    -   Final output should be provided as the difference between the expected and the actual revenue.
    -   Comment whether the company should implement the strategy or not.

**Remember**: You must terminate the EC2 instance at the end of the assignment.

## Important Pointers

While implementing the strategies, the following pointers will help you decide whether the strategy should be implemented or not:

1.  All the combinations associated with the transaction items should be checked in the frequent itemsets. For example, there can be an association rule with both apple and milk, which has a higher confidence score.

{apple, milk} --> {bread}

2.  Ideally, you should check if the company is incurring a loss while implementing the strategy. For example, if the discount offered is greater than 100%, the strategy should not be applied as no company wants to sell the products for free. There can be other scenarios as well, where the strategy may not be applicable. However, to keep things simple, you can ignore all the other cases (for example, discounted selling price may fall below the product's cost price).
3.  In case there are multiple rules with the same score for a transaction, you would choose the option that offers higher profits.

In the next segment, you will learn about different evaluation metrics in details.