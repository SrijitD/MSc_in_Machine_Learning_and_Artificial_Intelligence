# Key Metrics of Association Rule Mining

In this segment, we will revise all the key metrics that are used for generating association rules.  

**VIDEO**

The key metrics for generating association rules are as follows:

- **Support**:
  
  The support denotes the frequency of occurrence of an item.  
  Support = (Number of transaction involving the itemset)/(Number of transactions)  

- **Confidence**:
  
  This denotes the likelihood of occurrence of an event, Y given another event, X has occurred. This is similar to writing, the probability of Y given X or P(Y/X) where P(event) denotes the probability of the event. Using conditional probability, we can expand this expression to  **P(Y/X) = P(X, Y)/ P(X)**. In context of association analysis, this conditional probability is referred to as confidence.  
  
  Suppose we want to find the confidence of the rule given below:
  
  **{A, B} ---> {C}**  
  
  Using probability, it can be expressed as:
  
  **Confidence = P({C}/ {A, B}) = P({A, B, C})/ P({A, B})**  
  
  In the context of association analysis, we can use the formula:
  
  **Confidence = Support(A, B, C)/ Support(A, B)**

In the above rule, A, B and C are all different items in a data set and {A, B} is an itemset., i.e., a set consisting of two items, A and B.

**All association rule mining algorithms can be broken down into two subparts:**

1. **Frequent Itemset Generation**

2. **Rule Generation**

**Frequent Itemset Generation**

- An itemset is considered frequent if it satisfies the following condition:  
  **Support of itemset >= minimum support**  
  A frequent itemset containing n items is called a  **frequent n-itemset**.

- This part of the algorithm returns all possible combinations of the itemsets that have support values greater than the minimum support threshold.

**Rule Generation**

- This part of the algorithm uses the frequent itemsets generated in the Frequent Itemset Generation to check for rules that satisfy the  **minimum confidence threshold**.

- From the frequent itemset, we generate all possible rules and calculate their respective confidence. The rule is printed if it satisfies the condition given below:  
  **Confidence of the rule >= min_confidence**

The  **apriori algorithm**  is one of the popular algorithms used for performing association rule mining. In the next segment, you will learn about this algorithm in detail.

Use your knowledge of the Apriori algorithm to solve the questions given below.

Assume minsup = 0.5 and minconf = 0.7

![Apriori_Algorithm_Example_Transactions](https://i.ibb.co/Pm8kGd9/Apriori-Algorithm-Example-Transactions.png)

#### Apriori algorithm

Qn: Which of the following is a frequent three-itemset?  

- {Milk, Bread, Eggs}
- {Beer, Chips, Eggs}
- {Milk, Eggs}
- {Beer, Chips}  

Ans: There are three out of six transactions involving {Milk, Bread, Eggs}, hence the support is 0.5 which is equal to the minimum support. Hence, this item set is frequent.  

Qn: Which of the following is a valid association rule? (More than one option may be correct)  

- {Beer} ---> {Chips, Eggs}
- {Milk} ---> {Eggs, Bread}
- {Eggs} ---> {Beer, Chips}
- {Beer} ---> {Chips}  

Ans:

- The item set {Milk, Bread, Eggs} is frequent. Thus we can check the rules for this item set. The confidence of this rule is 0.75 which is above the confidence threshold. Hence this is a valid rule.
- We can see that the item set {Beer, Chips} is frequent since the support is 0.5 which is equal to minimum support. The confidence for the above rule is 1 which is above the confidence threshold. Hence, this rule is valid.  

Qn: Which of the following statements is true about the support and confidence metrics?  

- The value of confidence ranges from 0 to infinite.
- Support is always larger than or equal to confidence.
- Support and confidence do not have any necessary relationship.
- Support depends on confidence, not the other way around.
- Confidence depends on support, not the other way around.  

Ans: Confidence is the ratio of the support of the item set by the support of the rule antecedent.  

Qn: Given a rule, {A} ---> {B} whose confidence is above the confidence threshold, which of the following statements are true? (More than one option might be correct)  

- {B} ---> {A} will also be a valid rule.
- {A, B} must be a frequent item set
- {A} and {B} must be frequent items
- {A} is frequent, but {B} may or may not be frequent.  

Ans:

- Such a rule can valid only if {A, B} is frequent
- Since {A, B} is frequent, it’s immediate subsets, {A} and {B} must also be frequent.
