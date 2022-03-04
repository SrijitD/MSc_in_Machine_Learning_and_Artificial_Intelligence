# Summary

In this segment, Sajan will summarize the entire implementation of the algorithm with the help of a simple flow diagram.

**VIDEO**

Let’s quickly summarize your learnings from this session.

The entire algorithm was divided into the following two parts:

- Frequent Item Set Generation

- Rule Generation

![Apriori_Alogorithm_Flow](https://i.ibb.co/wsJBF1x/Apriori-Alogorithm-Flow.png)  

In the frequent itemset generation part, Sajan created the following four functions:

- **createItem**: This function extracts the distinct items from the data set.

- **scanData**: This takes a list of k-item sets and returns the frequent itemsets and their corresponding support values.

- **itemSetGeneration**: This function takes a list of k-item sets and generates k+1-item sets using the candidate generation principle.

- **frequentItemsetGeneration**: This calls the previously created functions and extracts all the frequent itemsets from the data set.

In the rule generation part, Sajan demonstrated the following three functions:

- **calcConf**: This function takes an input rule, computes the confidence and stores the rule in the bigRuleList if the confidence is above the minimum confidence level.

- **rulesFromConseq**: This generates consequents having two or more items and calls the calcConf function to compute and store these rules for the same.

- **generateRules**: This function iterates through all the frequent itemsets and calls the calcConf and rulesFromConseq functions to generate all the rules satisfying the confidence threshold.

Based on our implementation, we have summarized the code into the following flow diagrams for the two parts for your reference.

1. **Frequent Itemset Generation:**

   ![Frequent_Itemset_Generation](https://i.ibb.co/1QrtD2v/Frequent-Itemset-Generation.png)  

2. **Rule Generation:**

   ![Rule_Generation](https://i.ibb.co/Yc0xQcL/Rule-Generation.png)
