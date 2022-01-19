# Revisiting Association Rule Mining

The Apriori algorithm is a popular learning algorithm used for rule generation that falls in the section of association rule mining. So, before deep-diving into the algorithm, let’s briefly understand how rule mining works in simple terms.

**VIDEO**

As explained in the video,  **association rule mining**  is an unsupervised learning technique used for identifying interesting patterns between variables of independent data repositories. One of the most common use cases of this technique can be seen in grocery stores such as Big Basket or Amazon. Every time you purchase an item on their website, you receive recommendations for your next order. These recommendations often match the customers’ requirements, encouraging them to purchase more items from the store. The recommendations are based on the purchasing patterns derived from the purchase history of the customers.

Some examples of association rules are:

**{Bread, Egg} ----> {Milk}**

**{illness symptom 1, illness symptom 2} → {illness symptom 3}**

Every rule consists of the following two components:

**a) an antecedent (if)**

**b) a consequent (then)**

Consider an association rule (set A ---> set B) representing the relation between two sets, here set A is called the antecedent and set B is called the consequent.

Take a look at the below example of the association rule:

“If a customer buys bread, he is 70% likely to buy milk.”

In this case, bread is the antecedent and milk is the consequent.

In the next segment, you will learn about the key metrics that are used for generating association rules.  

#### Association Rule Mining

Qn: In a particular electronics store, the manager notices that customers buying keyboards also tend to buy a mouse. Which of the following statements is correct?

- The keyboard is the antecedent
- The keyboard is the consequent
- The mouse is the antecedent
- The mouse is the consequent

Ans: The pattern can be represented in the form of a rule, {keyboard} ---> {mouse}. If you observe this rule, the keyboard is the antecedent and mouse is the consequent. 
