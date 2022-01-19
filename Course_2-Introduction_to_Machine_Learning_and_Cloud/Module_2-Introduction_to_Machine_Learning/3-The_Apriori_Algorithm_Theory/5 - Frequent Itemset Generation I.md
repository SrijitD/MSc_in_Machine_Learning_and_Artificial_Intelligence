# Frequent Itemset Generation - I

In this segment, we will implement the first part of the algorithm, i.e., frequent set generation. We have divided this portion into four components. Each component has been coded within a Python function and demonstrated in the video. The portion is divided as follows:

- **Extracting unique items**  (the createItem function)

- **Computing the support value for individual itemsets**  (the scanData function)

- **Generating higher-order itemsets**  (the itemSetGenerator function)

- Combining the functions above to  **generate all the frequent itemsets**  (the frquentItemsetGeneration function)

You can download the data, [Market Basket Data](), set below:

The first step would be to load the data set into a suitable format. In the video below, you will learn how to load the data and convert the transactions into a list of lists.

**VIDEO**

    # Importing the libraries and the data set
    
    import numpy as np 
    import pandas as pd
    from IPython.display import Image
    
        Market_Data = pd.read_csv('Market_Basket_Optimisation.csv',index_col=None, header = None ) # Use your local path here
    
    # Converting the market data set into a nested list
    
        Dataset = []
    
        for index, transaction in Market_Data.iterrows():
            cleaned_transaction = transaction[~transaction.isnull()].tolist()
            Dataset.append(cleaned_transaction)

Now that the data set has been successfully loaded, we can start defining the functions for each part.

**VIDEO**

Using the createItem function, we can get the list of distinct items in the data set. In Python, we have utilised the frozenset property. This will preserve the order of items when higher-order item sets are generated.

    def createItem(dataSet):
    
        itemlist = []
    
        for transaction in dataSet:
            for item in transaction:
                if not [item] in itemlist:
                    itemlist.append([item])
    
        itemlist.sort()
    
        return list(map(frozenset, itemlist))

**VIDEO**

In this video, you learnt how to write a function that takes a list of k-itemsets to create a list of frequent itemsets and also create a dictionary containing the support value of each item set.

    def scanData(data, itemsetk, minSupport):    
        tempDict = {}
        for transaction in data:
            for item in itemsetk:
                if item.issubset(transaction):
                    if not item in tempDict:
                        tempDict[item] = 1
                    else:
                        tempDict[item] = tempDict[item] + 1
    
        numitems = float(len(data))
        freqItemset = []
        supportDict = {}
    
        for key in tempDict:
            support = tempDict[key]/numitems
            if support >= minSupport:
                freqItemset.insert(0,key)
                supportDict[key] = support
    
    
        return freqItemset, supportDict

We will continue this in the next segment.

Use the market data list given below and answer the following questions:  

Dataset: [['Milk', 'Cheese', 'Eggs'], ['Apples', 'Milk'], ['Milk'], ['Apples', 'Bananas', 'Eggs'], ['Apples', 'Milk', 'Cheese', 'Bananas']]  

Qn: Which of the following will be the output for the given code?

    print(createItem(Dataset))

- ['Apples', 'Bananas', 'Cheese', 'Eggs', 'Milk']
- frozenset({'Apples'}, {'Bananas'}, {'Cheese'}, {'Eggs'}, {'Milk'})
- [[frozenset({'Apples'})], [frozenset({'Bananas'})], [frozenset({'Cheese'})], [frozenset({'Eggs'})], [frozenset({'Milk'})]]
- [frozenset({'Apples'}), frozenset({'Bananas'}), frozenset({'Cheese'}), frozenset({'Eggs'}), frozenset({'Milk'})]

Ans: The last option is the correct option. The createItem function returns a single list containing all the distinct items in the data set, all the distinct items stored as a frozenset.  

Qn: Suppose we remove the line itemList.sort() from the createItem function. In which of the following orders will the items be stored?

- [frozenset({'Milk'}), frozenset({'Bananas'}), frozenset({'Cheese'}), frozenset({'Apples'}), frozenset({'Eggs'})]
- [frozenset({Apples'}), frozenset({'Bananas'}), frozenset({'Cheese'}), frozenset({'Eggs'}), frozenset({'Milk'})]
- [frozenset({'Bananas'}), frozenset({'Cheese'}), frozenset({'Apples'}), frozenset({'Eggs'}), frozenset({'Milk'})]
- [frozenset({'Milk'}), frozenset({'Cheese'}), frozenset({'Eggs'}), frozenset({'Apples'}), frozenset({'Bananas'})]  

Ans: The last option is the correct option. The createItem function will keep adding items from the data set if the item is not already present in the list. Hence, you will find the same order as the one displayed in the data set.  

Qn: Which of the following will be the output on printing freqItemset2?

    itemset2 = [frozenset({'Apples', 'Bananas'}), frozenset({'Cheese' , 'Milk'}), frozenset({'Eggs', 'Milk'})]
    
    freqItemset2, supportDict = scanData(Dataset, itemset2, minSupport = 0.3)

- [frozenset({'Apples', 'Bananas'})]
- [frozenset({'Apples', 'Bananas'}), frozenset({'Cheese', 'Milk'}), frozenset({'Eggs', 'Milk'})]
- [frozenset({'Apples', 'Bananas'}), frozenset({'Cheese', 'Milk'})]
- [frozenset({'Apples'}), frozenset({'Bananas'}), frozenset({'Cheese'}), frozenset({'Eggs'}), frozenset({'Milk'})]  

Ans: The third option is correct, since the correct frequent item sets have been returned. The scanData function checks the support value for each item set and returns only the ones that have a greater support value than the minimum support as frequents sets. As the support value of the item set {Eggs, Milk} is 1, it will not be added to freqItemset2.
