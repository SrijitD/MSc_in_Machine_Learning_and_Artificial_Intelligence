# The Apriori Algorithm

In this segment, you will have a quick walk-through of the steps involved in building the algorithm. Consider a store transaction database that consists of all the transactions made by each customer. Let’s assume that there are only four items in the store {A, B, C, D} and each transaction consists of at least one of the four items. A visual representation of all the possible transaction is as shown below.

![Apriori_Algorithm](https://i.ibb.co/J7QjCDp/Apriori-Algorithm.jpg)

To generate all the frequent itemsets from a list of transactions you use the Apriori principle.

**The Apriori Principle:**

- If an itemset is found to be frequent (support value is greater than the minimum threshold), then all of its lower order itemsets must be frequent.
  
  For example, if the itemset {bread, butter, milk} is found to be frequent, then all of its lower order itemsets will be frequent. Thus, the itemsets {bread}, {butter}, {milk}, {bread, butter}, {bread, milk} and {butter, milk} will be frequent.

- Similarly, if an itemset is found to be infrequent, all of its consequent higher-order itemsets will be infrequent.  
  For example, if the itemset {bread, orange} is found to be infrequent (support value is less than the support threshold), then all itemsets containing three or more items having both bread and orange will automatically become infrequent.
  
  ![Apriori_Algorithm_Explanation](https://i.ibb.co/fNXyC1W/Apriori-Algorithm-Explanation.jpg)

In the next video, let's understand the two major steps involved in building the algorithm.

**VIDEO**

As discussed, we have divided this implementation into the following two parts:

- Frequent Itemset Generation

- Rule Generation  

**Frequent Itemset Generation in Apriori Algorithm:**

- The first step of the algorithm is to  **identify distinct items**  in the given set of transactions. Let’s say these are ({A}, {B}, {C}, {D}).

- Once you have different items, your next step would be to  **calculate the support of each of these items**. Items with support values less than the minimum support are removed from the distinct items list.

- The next step is to  **create higher-order itemsets**  by merging the existing itemsets. This can be done  **using the candidate generation technique**. We will cover this concept in detail while implementing the generation of higher item sets on code.
  
  Using the 1 itemsets ({A}, {B}, {C}, {D}) and assuming that only A, B and C are frequent, we generate itemsets {A, B}, {A, C} and {B, C}. Note that none of the 2-item sets contains the item D. This is because we have applied the  **Apriori principle**. Since D is infrequent, any item set containing D, e.g., {A, D}, {C, D} and {B, C, D} will automatically become infrequent.

- Once you have the  **higher-order itemsets**, you can  **calculate the support**  for these item sets and again  **remove the itemsets that do not qualify the minimum support criteria**.

- This ( n-1 ) -item sets then become inputs for the generation of n-item sets, and once again the item sets that do not satisfy the minimum support criteria are removed. This  **process continues until no new itemsets can be generated**.

**Rule Generation in the Apriori Algorithm:**

- Once you have all the frequent itemsets, we can proceed with the rule generation process. We begin with 2-itemsets and generate all the possible rules.

- For each rule, we check the corresponding confidence value and return the rule only if its  **confidence is above the minimum confidence level**.

- In order to  **avoid generating redundant rules, we utilize confidence-based pruning**. Using this, we  **eliminate the generation of higher-order rules**  if their corresponding lower-order rules are infrequent. This portion will be explained in more detail in the code demonstration of rule generation.

In the next session, we will begin the implementation of the algorithm in Python. A summary of all the components associated with Apriori and the lecture notes have been provided in the next session.  

#### Support and Confidence

Qn: Which of the following is the most interesting association rule?  

- High support and high confidence
- High support and low confidence
- Low support and high confidence
- Low support and low confidence

Ans: Low support and high confidence - Such rules are most interesting since they are usually unexpected. An example of such a rule will be {Apples} ---> {Diapers}.

Note: The support must be lower compared to the support of the other frequent items but must still be above the minimum support threshold so that we can classify the item set as frequent. The objective of this algorithm is not to extract rules with higher support and higher confidence but to extract the interesting rules that suggest some patterns. This question has only been given for your general knowledge. In the code implementation, Sajan has printed all the frequent item sets and the valid rules which satisfy the minimum support and minimum confidence threshold respectively.  

#### Association rules

Qn: Which of the following metrics governs the interestingness for association rules? (More than one option might be correct). Additional Read -  [Lift](https://en.wikipedia.org/wiki/Lift_(data_mining)#:~:text=In%20data%20mining%20and%20association,a%20random%20choice%20targeting%20model.)

- Support
- Lift
- Accuracy
- Confidence

Ans: Lift & Confidence

- Support is a key metric used for governing frequent itemsets, not rules. 
- In the previous question, you already saw that even if both support and confidence are high, the rule may not be very useful. Sometimes, we calculate the lift value since it puts more emphasis on the rules having higher confidence and lower support. In other words, the lift is calculated to judge the quality of a rule.
  For the given rule {A} → {B}, lift is mathematically defined as follows:  
  **Lift = support(A, B)/(support(A)*support(B))**  
  or  
  **Lift = confidence(rule)/ support (rule consequent)**  
  Note that this concept has only been covered for your knowledge and has not been covered in the code demonstration.
- Confidence is one of the most frequently used metrics for extracting the association rules.
