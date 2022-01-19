# Frequent Itemset Generation - II

The next step is to create a function to generate higher-order candidates. You can do this by using the candidate generation principle. So let us understand the concept of candidate generation.

**Candidate Generation:**

- Candidate Generation is the process of merging itemsets of the kth order to create itemsets of order k+1.

- **Two frequent itemsets of order k are merged only if their k-1 itemsets are identical**.

- **Example 1**: If {A, B} and {A, D} are frequent itemsets, then they can be merged to form {A, B, D}. This is because itemset A is the common 1-itemset in both the sets. Note that you must keep the order of the items consistent throughout the code so that we do not create duplicate itemsets such as {A, D, B}, ({A, B, D} and {A, D, B}.

- **Example 2**: If {A, B, C} and {A, B, D} are frequent itemsets, then they can be merged to form {A, B, C, D}. Here, {A, B} is the common 2-itemset; hence, we can proceed with merging {A, B, C} and {A, B, D}.

- To give you more clarity, the following itemsets cannot be merged:
  
  - {A, B, C} and {A, D, E}
  
  - {A, B, C} and {B, C, D}

**Note**: All items within an itemset must be arranged in a particular order, and this order must be maintained while creating higher-order itemsets. If the order is not preserved, then redundant itemsets will be generated, e.g., you may end up generating all the permutations of items within an itemset such as {A, B, C}, {A, C, B}, {B, C, A} and {C, B, A}. These are all the same itemset.

![Generating_High_Order_Itemset](https://i.ibb.co/R7zpYTP/Generating-High-Order-Itemset.png)

**Note**: At 5:45, the k input for the itemSetGenerator will be 4 and not 3. This is because, k represents the order of the itemset you want to generate. Thus, in the example given for {a, b, d} and {a, b, c}, the value of k will be 4 since we want to generate 4-itemsets. Using k = 4, when we apply the merging condition, we pick two itemsets and check if their itemsetk[:k-2] are equal, i.e. the first two elements of these two itemsets should match.

**VIDEO**

# Creating Higher order Itemsets

    def itemSetGenerator(itemsetk, k):
    
        higherOrderitemset = []
        lenitemsetk = len(itemsetk)
    
        for i in range(lenitemsetk):
            for j in range(i+1, lenitemsetk): 
    
                L1 = sorted(list(itemsetk[i]))[:k-2] 
                L2 = sorted(list(itemsetk[j]))[:k-2] 
    
                # Two frequent itemsets of order k are merged only if their k-1 itemsets are identical
                if L1 == L2:
                    higherOrderitemset.append(itemsetk[i] | itemsetk[j]) # Performing set union creates itemset with n+1 items
    
        return higherOrderitemset

Play Video

3221820

In the frquentItemsetGeneration function, Sajan has used the previously created functions to return the support values of all itemsets and frequent itemsets. The flow diagram used for generating the frequent itemsets is given below.

![Frequent_Itemset_Generation](https://i.ibb.co/bQ7Yjh1/Frequent-Itemset-Generation.png)

- The **createItem function**  returns all the  **distinct 1-item sets as a frozen set**  so that the order is preserved while generating higher-item sets.

- Next, we  **extract the frequent 1 itemsets**  and the corresponding support values from the list of 1 item sets.

- To  **generate itemsets of two and more items**, Sajan has used a loop. The value ‘k’ denotes the k-itemset, i.e., the number of items in the itemset. The frequent 1-itemsets are  **merged using candidate generation** using the  **itemSetGenerator function**  to generate all the 2 itemsets. Using the  **scanData function**, we  **extract the frequent 2-item**sets and the corresponding support values, and **append them to the freqItemsets list**  and  **supportDict dictionary**.

- At the end of the first iteration, you will have generated all the frequent 1 and 2 itemsets. The value of k is incremented to 3, and this  **process continues till higher-order itemsets can no longer be generated**.

With this, we have completed the first part of the Apriori implementation, i.e., frequent itemset generation. Now that you have generated all the frequent itemsets, let’s move on to the next step, which is to generate rules from these itemsets. We will continue this in the next segment.

#### Apriori algorithm

Qn: Which of the following will be the output of the given function?

    Itemset3 = [frozenset({ 'a', 'b' , 'c' }), frozenset({'a', 'c' , 'd' }), frozenset({'b', 'c' , 'd' }),  frozenset({'b', 'c' , 'e' })]
    
    itemSetGenerator(Itemset3, 4)

- [frozenset({'a',' b',' c', 'd'}), frozenset({'a',' c', 'd', 'e'}), frozenset({'b', 'c', 'd', 'e'})]
- []
- [frozenset({'b', 'c', 'd', 'e'})]
- None of the above

Ans: In order to merge two item sets, the first two elements must be common. This can only be found in the item sets {b, c, d} and {b, c, e}. Both have the prefix items ‘b’ and ‘c’ as common. Hence, they can be merged to form {b, c, d, e}.
