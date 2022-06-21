# Classification using Spark MLlib

In the last segment, you saw how to perform regression using spark ML library. In this segment, you will learn how to perform classification using the spark ML library. Remember from our earlier discussion on supervised learning algorithms, you saw that classification involves predicting discrete values(or labels) and regression involves predicting continuous values. For classification, there are many algorithms available such as logistic regression and naive Bayes classifiers. In our next video let’s build a simple logistic regression model.

**VIDEO**

For building a simple logistic regression model the steps include first loading the necessary datasets into a new dataframe. Then using a vector assembler to create a feature column out of all the features excluding the species column. The species column is the predictor variable in our dataset. Then unlike in regression simply defining the input features and output features wouldn’t work in case of classification. You need to convert the output column ‘species’ which is categorical into numerical features. You can do this using the string indexer feature transformer available with spark ml library. 

**StringIndexer Transformer**

You can convert a column of string values in our dataframe to numeric values using the [StringIndexer](https://spark.apache.org/docs/2.1.0/ml-features.html#stringindexer) transformer. It assigns index values based on their corresponding string frequencies.  
 

For Example, if our input data has

| String |
| ------ |
| High   |
| Low    |
| High   |
| High   |
| Low    |
| Medium |

Now StringIndexer to convert these into indices.

| **String** | **Frequency** | **IndexedString** |
| ---------- | ------------- | ----------------- |
| High       | 3             | 0                 |
| Low        | 2             | 1                 |
| High       | 3             | 0                 |
| High       | 3             | 0                 |
| Low        | 2             | 1                 |
| Medium     | 1             | 2                 |

Here as an intermediary step, the frequency of each string value is calculated and the highest frequency is given an index value of 0. This way the string value is converted to a numerical value.     
 

Then finally by using the .transform(), you transform the input data frame with a new indexed column.   
 

Now once you are applying a string indexer transformer to the output column. You can now build a logistic model on top of it by specifying the input featurecol and output labelcol. An important point to note here is we are performing the train and test split of the dataset to check the performance of the model on an unseen dataset. This is something we haven't explored till now while building linear regression models and you will do this as you move further in the session.  
 

Finally using .evaluate() method on the test dataset you can print summary statistics of the model. At this point, you may not understand what is accuracy and what is its significance in model building. You will learn about it in detail in the upcoming module.  
 

Now based on your understanding of classification model building try to build a naive Bayes classifier on the iris dataset before watching the next video.

**VIDEO**

The implementation of naive Bayes classifier is same as compared to the logistic regression classifier, the major difference being the use of multiclassClassification Evaluator.  You will more about classification and different classifiers in the upcoming modules, so we will now focus on linear regression and discuss it in more detail in the next segment.
