# Rule Generation - I

In this segment, you will implement the second part of the algorithm, i.e., rule generation. This part is divided into the following three components:

- **Calculating the confidence for a rule**  (the calcConf function)

- **Generating rules for higher-order item sets**  (the ruleFromConseq function)

- Compiling the previous functions to  **generate all the rules**  (the generateRules function)

In order to explain this implementation, Sajan has demonstrated part 1 (the calcConf function) and part 3 (the generateRules function) first and then part 2(the ruleFromConseq function).

Let us refresh our memory on the properties of rules. Given the rule {A ---> B, C}, A is the antecedent and (B, C) is the consequent. In mathematical terms, confidence is defined as:

**Confidence = support(A, B, C) / support(A)**

Notice that {A, B, C} is the frequent itemset and A is the antecedent. Hence, in the set format, we can write the formula as:

**Confidence = support(Frequent Item Set) / support(Frequent Item Set - Consequent)**

You will get more clarity once you watch the next video.

**VIDEO**

    def calcConf(freqSet, H, supportDict, bigRuleList, minConf):
    
        prunedH = []
    
        for conseq in H:
            conf = supportDict[freqSet]/ supportDict[freqSet-conseq]
            if conf >= minConf:
                bigRuleList.append((freqSet-conseq, conseq, conf))
                print(freqSet-conseq, '->', conseq, 'confidence: ', conf )
                prunedH.append(conseq)
    
        return prunedH

H is the list of possible rule consequents extracted from an item set. If the rule satisfies the confidence threshold, then the consequent is stored within prunedH. This principle follows confidence-based pruning. Let us understand this concept in detail.

**Confidence-based pruning**

- Let’s generate rules for the itemset {a, b, c, d}.

- If the confidence for {b, c, d} ---> {a} is less than the threshold. then we can eliminate all the rules in which the consequent consists of higher-order itemsets containing {a}.

- Hence, we can eliminate {b, d} → {a, c}, {c, d} → {a, b}, {b, c} → {a, d}, {d} → {a, b, c}.

- Let us understand this concept from the mathematical perspective (This part is an optional reading):
  
  - Based on the Apriori principle, we can write the following inequality:  
    **support({a}) ≥ support({a, b}) ≥ support({a, b, c})**  
    
    Hence, the following equation must hold true:
    
    ![Support_Relationship_Between_Different_Order_Itemsets](https://i.ibb.co/tZ2SqXH/Support-Relationship-Between-Different-Order-Itemsets.png)  
    
    If you notice carefully, each term is the confidence of a rule generated from the frequent set {a, b, c, d}. Thus, we have,
    
    ![Confidence_Relationship_Between_Different_Order_Itemsets_1](https://i.ibb.co/zxSYqwk/Confidence-Relationship-Between-Different-Order-Itemsets-1.png)
    
    or
    
    ![Confidence_Relationship_Between_Different_Order_Itemsets_2](https://i.ibb.co/nPFPrmC/Confidence-Relationship-Between-Different-Order-Itemsets-2.png)
    
        From the above inequality, we can infer that if the rule, {a, b, c} ---> {d} is below the confidence threshold, then all the rules obtained from the same frequent item set but having consequents that are a superset of {d} (like {a, d}, {b, c, d}, {c, d}, {a, b, d}) will also be below the confidence threshold.

We will continue this in the next segment.
