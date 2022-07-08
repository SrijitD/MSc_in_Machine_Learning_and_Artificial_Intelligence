# Model Improvement II

In the last segment, the attempt to improve the logistic regression model did not result in significant improvement. But, do you think there is scope for improvement? 'No' is never an answer. Since logistic is the base model for classification, there is always scope for improvement to fit your business objective.

For example, you can improve the model to improve precision or recall or just accuracy. As you saw in the Telecom Churn case study, doing feature engineering and selecting the right set of features is one of the key steps in improving the model performance. Hence, this segment is an assignment presented to you, wherein you will be guided to generate some features, and towards the end, you need to submit the Jupyter Notebook with the final model that you develop.

Note that you can create more features based on your understanding and improve the model. Also, this is an **ungraded assignment**. You can download the Notebook attached below; it will help you execute the steps discussed in this segment. The link for the data to be used can be found in the Notebook. You can also download the data from [here on S3](https://logistic-model-ml.s3.amazonaws.com/1l.csv) or [here locally](Model_Improvement_Dataset.csv). You can use **M4.xlarge cluster** for this assignment, but be cautious of your credit usage. You can try coding on an **EC2 instance** first until you figure out the preprocessing and then run the code on **EMR**. That way, you will save a bit of EMR run time. 

Download [Model Improvement Notebook](CTR_05_Feature_Engineering_and_Threshold_Selection)

This is a real-world data set. So, to maintain privacy, the data set has been encoded or masked. The values that you see in each column represent something in the real world. For instance, the banner position has eight categories, each of which represents a position on the screen. Similarly, columns C1 and C14 through C21 are encoded columns. Hence, you should realise that the null values in these columns are also encoded. 

Selecting the right features for model training has a twofold benefit: improving the model predictability and saving computational resources. Let's start by analysing the features of the data set. The screenshot given below shows all the features in the data set.

![Model Imporovement Case Study 1](https://i.ibb.co/St3ZGD8/Model-Imporovement-Case-Study-1.png)

If you look at the schema carefully, you will notice some redundancies; for example, the site_id, site_domain and site_category columns give the information about the site on which the ad was published, and the app_id, app_domain and app_category columns represent similar information about the app on which the ad was published. By analysing these columns, you will find that the information, although encoded, is actually mutually exclusive. In other words, when the site_id is '85f751fd', the app information has different values. And when the app_id is 'ecad2386', only then the site information changes. Interesting, isn’t it?

![Model Imporovement Case Study 2](https://i.ibb.co/MRXrqxm/Model-Imporovement-Case-Study-2.png)

Why do you think this is? Each row in the data set represents one ad, be it on an app or a site. So then an ad is shown on an app the website data will be empty and vice versa. Hence, you can conclude that ‘ecad2386’ and ‘85f751fd’ these categories represent null values. You can do a groupBy() and see the counts of the different values in the columns site_id and app_id to check that ‘85f751fd’ and ‘ecad2386’ are the codes for null values. To fix this, you can define three new columns: pub_id, pub_domain, and pub_category, and combine the site and the app information.  Effectively, you have reduced three extra features. 

Now, think about this: each data point represents one ad displayed, be it on a website or an app. Usually, only one user will see this ad on their laptop/phone. 

What attributes of the data can help you identify a unique user? The attributes device_id, device_ip and device_model might have the answer. Let’s explore them and see how this information can be used. The device_id column has one value 'a99f214a' that repeats '82579' times the total data set of 1,00,000 observations. 

![Model Imporovement Case Study 3](https://i.ibb.co/7yL5cq5/Model-Imporovement-Case-Study-3.png)

It is impossible for 82k ads to be shown on one single device in 10 days. Therefore, the device_id 'a99f214a'  obviously represents null values. If the column has 82% missing values, it is better to drop it. The combination of device_ip and device_model should be enough to identify a user, right?  So, whenever the device_id is missing, use a combination of device_ip and device_model to get an identifier for users. It is also important to know whether specific users are more likely to click on ads. So, add another column for the number of times a specific user appears in the data set. 

Another peculiarity about user behaviour is the time. Most of us tend to use our phones and laptops at specific times in the day. Adding the hour identifier to the analysis should prove to be useful. You can do that by combining the user identifier and the hour columns, and like before, it is important to have the frequency of each user and hour combination.

Once you have calculated the count of a particular user occurrence and the occurrence of each user hour combination, do you think it is necessary to have the unique identifiers for both these columns? Well, since the user IDs are unique, the unique identifiers will not actually carry any information.  So, after getting the frequency of each user and the user-hour combination, these columns can be dropped.   
 

Let’s summarise all the feature creation and selection steps discussed. 

1.  Combine (site_id, site_domain, site_category) and (app_id, app_domain, app_category) into (pub_id, pub_domain, pub_category). 
2.  Find unique users and the frequency at which they are shown the ads.
3.  Combine users and hours to create a new column that will hold information about the time at which the user is shown the ads. Then, find the frequency of each user-hour combination. 
4.  Drop all the columns from which the information has been captured already, the ones that are not important in the study and those that have so many categories that using them will load the system. 

Once you have created the final data frame after the feature engineering explained above, do all the preprocessing and run a logistic regression model on this. The notebook attached at the top of this page is a Notebook with the pseudo code written to help you. Please try this exercise on your own. The data set and a Notebook to guide you are linked below. It is a data set with 10,000 rows sampled from the original data set. A simple m4.large cluster with one master and one node should suffice. 

Error during training process. 

```python
An error was encountered: Invalid status code '400' 
from https://xxx.xx.x.xxx:18888/sessions/0/statements/20 
with error payload: "requirement failed: Session isn't active."
```

This error is thrown when no new command is submitted to the cluster for more than a specific time. By default, this time is 1 hour. The cluster feels that the session is not active, and hence it times out.   
To fix it, follow these steps: 

1.  While creating a new cluster make sure you select the livy application to be installed on the cluster. 
2.  In the configuration cell add this line of code:
    
    `[{'classification': 'livy-conf','Properties': {'livy.server.session.timeout':'3h'}}]`
    
    ![Model Imporovement Case Study 4](https://i.ibb.co/kmp0H4z/Model-Imporovement-Case-Study-4.png)
    
    This will set the timeout countdown timer to 3 hours. 
    

After all the feature engineering, what change did you find in the model predictability? Did it improve, stay the same or worsen? Whichever be the case, you can further work on model predictability by adjusting the threshold. 

Usually, changing the threshold changes the model performance a lot. If you recall the telecom churn study, threshold selection was done there as well. Now, before actually writing the code, let’s first decide which metrics to consider while changing the threshold. In the telecom churn case study, you used the ROC curve, which is a plot between true positive rate (true positives / total positives) and the false positive rate (false positives / total negatives). Although TPR is an important metric, FPR is not that relevant.

In this case study, you want to identify as many positives as possible; having a few negatives classified as positives is okay. Think about it, what is the worst that can happen if an ad is shown to a person who is not likely to click on it? A little money will be wasted on the ad, and there is still a possibility that the user accidentally clicks on the ad.  So, it will be better to concentrate on precision (true positives / predicted positives) and recall (true positives / total positives). Let’s use them to set a threshold. Now that we have fixed the evaluation metric that will help us in deciding the threshold, let’s move onto the next step, that is, writing the code.    
   
You already have a model that has been trained on the data and a test dataset, which you can use to predict the class labels. The transform() used here will add a column named probability. It is a dense vector with two values, as the problem being solved right now is binomial. These probabilities represent the probability of a negative and a positive class, and their sum in each row is 1. By default, the probability shown first is for the negative class and the second is for the positive class. Using the actual label and the probability column, you should be able to try out different thresholds. Test the model performance with a few different thresholds and then finalise one. The Notebook provided below, in addition to the one provided earlier, will help you. You need to perform all the steps mentioned in the earlier Notebook before moving onto this Notebook.

You must have seen that changing the threshold changes the precision and recall. What threshold did you choose? Did you think about its business implications while doing so?   
If you have not yet tried the improvements mentioned above, try them out now. Submit your solution below. The solution will be published in the coming week.

Model Improvement Notebook

Submission details

Submit the Notebook that you created for improving the model performance here (.ipynb format). In markdown cells, add justifications for your choice of threshold and its business implication. 

We strongly recommend you to submit atleast 30 minutes before your deadline

Module Deadline

13 Jul '22

11:59 PM (IST)

Upload your file & Save as draft

Upload

You saw that we have engineered features to improve the results generated by the model and also decided the correct threshold using the precision-recall table. Having said that, in PySpark, there are different feature selection algorithms, which you can read about [here](http://spark.apache.org/docs/latest/ml-features.html#feature-selectors) and try out on the data set. A lot of these feature engineering also depends on the business context.

You may have seen that the results you get are not up to the mark even after the treatment of data and feature engineering. What, according to you, is the reason for this? Possibly, the data is so complex that a simple model such as logistic regression is not able to model the trends.

Therefore, you can always try different algorithms such as decision trees, random forests, boosting and neural networks. You will learn about some of these algorithms in the coming modules. But when you approach a new classification problem, logistic regression should be the first algorithm that you begin the solution with and use it as a benchmark for other algorithms that you might try. 

While running the training algorithm, you may have felt that Spark is slower than Python. Do you think that is true? Well, it depends.

Here, we are training a model on a smaller data set. Whatever be the size of the data set, Spark works on a distributed architecture, i.e., all the tasks get distributed between the executor and the nodes. In addition to doing the actual computation, a lot of other overhead tasks such as job distribution and communication between the nodes also require time. Additionally, the network speed between the nodes also slows down the computation.

So, you would not be able to spot the advantages of Spark when the data set is small. But as the data set size increases, Spark scales very well, runs much faster than Python and even solves the big data modelling problems that Python is not able to. But to get the most out of Spark processing, you should be able to understand the different ways in which you can improve the cluster performance.

In the next segment, Jaidev will discuss some of them.