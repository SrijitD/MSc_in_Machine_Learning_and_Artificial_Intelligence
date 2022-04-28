# Unsupervised Learning Algorithms: II

Let’s look at another unsupervised learning technique -  **association rule mining.**

**VIDEO**  

Association rule mining is an unsupervised learning technique used to identify interesting relationships between variables in large databases.

One important algorithm under the class of association rule mining algorithms is the  **apriori algorithm**. It was developed to process transactional data and identify associations in the data. This algorithm, when applied to data collected from certain Walmart stores, led to the identification of an interesting revelation, which was later termed **“Walmart's beer diaper parable”**. According to the analysis, there is a strong association between beer and diaper sales, which made no sense initially.

In the video, you also learnt about a few rule generation metrics

1. **Support** denotes the frequency of occurrence of an item
   - Used to form itemsets
2. **Confidence**  denotes the likelihood of occurrence of an event given another event has occurred.
   - Used to determine the validity of a rule

In the next video, let’s understand the working of the apriori algorithm by considering a transaction database.

**VIDEO**  

Let's revisit the steps involved in the algorithm:

- Frequent Itemset Generation

- Rule Generation

**Frequent Itemset Generation**  involves generating all possible k-order itemsets and calculating the support of each itemset. Here, the itemsets having support values greater than the minimum Support are termed as frequent itemsets and are used to generate higher-order itemsets. The next step would be  **rule generation**  where you consider all the frequent itemsets to generate rules which have a confidence value more than the defined threshold value. You will learn more about these steps in the future sessions, where you will be building the apriori algorithm from scratch.

Although this algorithm is easy to understand and implement, it has its drawbacks. It is a very computationally expensive algorithm. To compute the support for each itemset, you have to go through the entire database of transactions and check whether the itemset is a part of the transaction or not. Applying such an algorithm on a smaller dataset involving 20 items and a hundred purchases wouldn't be a challenging task, but let's say you are dealing with the sales happening on Amazon or Flipkart, You can no longer handle such jobs with regular infrastructure. You need the cloud to store the massive amount of data and have multiple instances in the cloud to run the algorithm.

We need to create the required number of instances in the cloud and use distributed filesystem frameworks such as Hadoop File System (HDFS) to store the billion transaction inputs to the algorithm in multiple nodes. We use frameworks such as MapReduce to write our distributed programs to run on these datasets, determine frequently occurring itemsets in the database and use this to discover the association rules present.

**Apriori Algorithm: Comprehension**

Consider the following database to identify association rules:

![Database-Association-Rules](https://i.ibb.co/dcm9X5r/Database-Association-Rules.png)

Assume that the threshold values are defined as follows:

- Support = 0.5
- Confidence = 0.8

Based on this information, answer the following question:

#### Apriori Algorithm

Qn: What is the support value for oranges?  
Ans: Support denotes the frequency of occurrence of an item. It is calculated as the ratio of the number of transactions in which the item has appeared divided by the total number of transactions.

Support(orange) = 8/10 = 0.8  

Qn: What is the final set of one-item sets which qualify against the minimum threshold?

- `{ {apple}, {orange}, {banana}, {kiwi} }`
- `{ {apple, orange, banana} }`
- `{ {apple, orange}, {kiwi} }`
- `{ {apple}, {orange}, {banana} }`

Ans: Calculate the support values of all the items involved, and items with support values greater than 0.5 will be part of the one-item set.  

- support(apple) = 0.8
- support(orange)= 0.8
- support(kiwi)= 0.4
- support(banana)= 0.7
- support(kiwi) = 0.4

Since support values of apple, orange and banana are greater than 0.5 they will be part of the final set of 1 itemset.

Qn: What is the final set of 3-item sets which qualify against the minimum threshold?  

- `{ {apple}, {orange}, {banana}, {kiwi} }`
- `{ {apple, orange, banana} }`
- No such set exists
- `{ {apple}, {orange}, {banana} }`

Ans: In the previous question, you found that only the items apple, orange and banana qualify against the minimum threshold value. So any three-item sets containing items other than these three wouldn’t qualify against the minimum threshold. If you check the support value for the itemset {orange, apple, banana}, it comes out to be 0.4. This means that there is no three-item set which qualifies against the minimum support criteria.  

Qn: What is the confidence of the rule {apple} => {banana}? [round up to one decimal value]?  
Ans: Confidence denotes the likelihood of occurrence of an event. The confidence of the rule {apple} => {banana} is  

`support({apple, banana})/support({apple}) = 0.5/0.8 = 0.6  `

Qn: Identify the set of final rules generated.  

- `{apple} => {orange}, {apple} => {banana}, {orange} => {apple}, {banana} => {apple}`
- `{orange} => {apple}, {apple} => {orange}`
- `{orange} => {banana}, {apple} => {banana}`
- `{apple} => {orange}, {orange} => {banana}, {orange} => {apple}, {banana} => {orange}  `

Ans: Confidence of a rule {A} => {B} is support(A, B)/support(A).  
The support values are as follows:  
`{apple} = 0.8, {orange} = 0.8, {banana} = 0.7  `
`{apple, orange} = 0.7  `
`{orange, banana} = 0.5  `
`{apple, banana} = 0.5`

If you calculate the confidence values of all the possible rules, only the confidence values of the rules `{orange} => {apple}` and  `{apple} => {orange}` are above the threshold 0.8.
