# Rule Generation - II

In this segment, Sajan will continue the implementation of rule generation and use the calcConf function defined in the previous segments to compute the confidence for the rules.

**VIDEO**

    def generateRules(freqItemsets, supportDict, minConf):  # supportDict is a dictionary coming from scanData
    
        bigRuleList = []
    
        for i in range(1, len(freqItemsets)):
            for freqset in freqItemsets[i]:
                H1 = [frozenset([item]) for item in freqset]
    
                if i>1:
                    rulesFromConseq(freqset, H1, supportDict, bigRuleList, minConf)
                else:
                    calcConf(freqset, H1, supportDict, bigRuleList, minConf)
    
        return bigRuleList

To summarize, the steps involved in the function are as follows:

- Using the frequent item sets, Sajan wanted to generate all the possible rules.
- To do this, he first extracted all the rule consequents that had a single item and then generated the rule that had the corresponding rule consequent.
- If the confidence of the rule is above the confidence threshold, it is returned as a valid rule.
- For  **frequent 2 item sets, we can directly use the calcConf function**  and generate the rules. However, for higher-order item sets, Sajan will have to create and use the  **rulesfromConseq function to receive all the permutations for rule generation**.

**VIDEO**

        def rulesFromConseq(freqSet, H, supportDict, bigRuleList, minConf):
            k= len(H[0])
            H = calcConf(freqSet, H, supportDict, bigRuleList, minConf)
    
            if len(H)>1:
                H1 = itemSetGenerator(H, k+1)
    
                if H1==[]:
                    return 0
    
                if (len(H1[0]) < len(freqSet)):
                    rulesFromConseq(freqSet, H1, supportDict, bigRuleList, minConf)

In order to implement the rule generation process for  **frequent item sets that have three or more items**, Sajan has defined a  **recursive function called rulesFromConseq**. We will take the example of the frequent item set {a, b, c} to explain the process.

- First, the frequent item set is passed to the  **calcConf function**  to generate rules that have rule consequents of 1 item set. Since this is the first iteration, H will contain a list of possible 1-item consequent, [{a}, {b}, {c}]. Hence, it will generate the following rules:
  
  {a, b} → {c}, {b, c} → {a}, {a, c} → {b}

- If any rule does cross the threshold level, then its consequent will be removed from the list of consequents stored in H. Suppose the rule {a, c} → {b} does not satisfy the minimum threshold, {b} will be removed from H. Thus, the prunedH value in the calcConf function will only return [{a}, {c}].

- In order to  **generate rules that have consequents of higher-order items**, we use the  **itemSetGenerator function**  as demonstrated in the code. As we have applied confidence-based pruning, we will only consider consequents containing ‘a’ and ‘c’.

- The itemSetGenerator function will take the input as ‘a’ and ’c’ and return {a, c}. This item set is stored in H1.

- Now, we will pass this consequent into the calcConf function to generate rules that have consequents of 2-item sets. As there is only one consequent, it will generate one rule, i.e., {b} → {a, c}. If the rule satisfies the confidence threshold, then it will be stored in the bigRuleList and the corresponding consequent will be returned. As there is only one item set and we cannot generate any higher-order item sets, H1 will become an empty list and the recursion process will be terminated.

- On the other hand, if the rule {b} → {a, c} does not satisfy the confidence threshold, then the calcConf function will return an empty list and the recursion process will be terminated.

Finally, when Sajan executes the generateRules function, you will see that it returns all the rules and their respective confidence values.  

#### Fill in the blanks

Qn: The number of iterations in the apriori algorithm will ______.

- increases with the size of the data
- decreases with the increase in the size of the data
- increases with the size of the maximum frequent set
- decreases with increase in the size of the maximum frequent set  

Ans: As the size of the maximum frequent set increases, the number of possibilities of rules also increases, thereby increasing the number of iterations.

#### Rule Generation

Qn: Assuming that supportDict contains the support values of all the possible item sets, which of the following rules will be checked when the function given below is executed? (More than one option might be correct)

    H = [frozenset({'bread', 'eggs'}), frozenset({'cheese', 'milk'}), frozenset({'bread', 'milk'})]
    
    rulesFromConseq(freqSet = frozenset ({bread, eggs, milk, cheese}), H, supportDict, bigRuleList = [], minConf = 0)

- {‘milk‘, ‘cheese‘} ---> {‘bread‘, ‘eggs‘}
- {‘cheese‘} ----> {bread‘, ‘milk‘, ‘eggs‘}
- {‘bread‘, ‘eggs‘} ----> {‘milk‘, ‘cheese‘}
- {‘bread, ‘milk‘, ‘eggs‘} ----> {‘cheese‘}
- {'bread', ‘milk‘} -----> {‘cheese‘, ‘eggs‘}  

Ans: 1, 2, 3

- {‘milk‘, ‘cheese‘} ---> {‘bread‘, ‘eggs‘} : This rule will be created when the consequent takes the value frozenset({‘bread’, ‘eggs’}).
- {‘cheese‘} ----> {bread‘, ‘milk‘, ‘eggs‘} : Once all the consequents of 2 item sets are checked, the function will call the itemSetGenerator and create a list of 3-item sets that will be used as consequents for rule generation. With the current value of H, the itemSetGenerator will return only {bread‘, ‘milk‘, ‘eggs‘}. When the function is called again, it will use this item set as a consequent and create the rule {‘cheese‘} ----> {bread‘, ‘milk‘, ‘eggs‘}.
- {‘bread‘, ‘eggs‘} ----> {‘milk‘, ‘cheese‘} : This rule will be created when the consequent takes the value frozenset({‘cheese’, milk}).  
