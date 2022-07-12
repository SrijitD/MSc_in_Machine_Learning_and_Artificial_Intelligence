# Solution

In this segment, another version of the model improvement discussed in the earlier segment is demonstrated. Before going through the solution, try to improve the model on your own. Once you feel that you have a good enough solution, only then take a look at this solution. As discussed earlier, there is no such thing as the correct solution; as long as the model has good predictability, the solution is acceptable.

  
The solution given here is divided into three parts. First, we will show the feature engineering steps that were discussed in the last segment. Then using the selected features, a model will be built, and finally, we will try different thresholds to find a suitable threshold. The Notebook used in the videos is attached here.

Download [CTR Solution Notebook Part1](CTR_Assignment_Solution_Part1.ipynb)

Download [CTR Solution Notebook Part2](CTR_Assignment_Solution_Part2.ipynb)

### Feature engineering

Let’s perform the feature engineering steps discussed in the last segment.

1.  Combine site_id, site_category, site_domain, and app_id, app_category, app_domain.
2.  There are a lot of entries in the column user_id encoded with a single value; this repeating value has to be depicting null values. Wherever the user ID is null, replace it with a combination of device_type and device_ip.
3.  Find the frequency with which each user_id repeats.
4.  Combine the user and hour to find the frequency of users being shown ads in a particular hour.
5.  Drop all the columns that:  
    a.       Are redundant,  
    b.       Have a lot of categories, or  
    c.       Do not contribute to the learning process.

The video provided below performs all the steps discussed above.

**VIDEO**

As you saw in this video, the number of features have been reduced as compared with the original data set. Also, a few columns containing a lot of categories have been dropped, thereby saving the computational effort. Now it is time to train a model using these columns. 

### Data Preparation

Before training the model, you need to make sure that all the columns are represented by integers.

1.  pub_category contains categorical data represented by strings. It will need to be converted to integers using the string indexer.
2.  C20 contains categorical data represented by integers, but it also has negative values.   
     

After handling these peculiarities, you will need to run the columns through the one-hot encoder. To make it easier to recognise the encoded columns, you can add a string such as 'Enc' to the name of the column. Add these encoded columns and the two continuous columns to a vector assembler. And finally, you can use this vector to train the model. 
  
Watch the next video to understand how the aforementioned steps are performed.

**VIDEO**

You saw the complete model building exercise in the video. If you gave this an attempt, you would realise that the training process takes a lot of time. Since this process is being run on the EMR cluster, it is a costly affair. One way you can minimise the EMR time is by performing all the preprocessing on an EC2 instance or locally, or wherever you have Spark installed, and save the final data frame to a file. Then, import this data frame just before training to the cluster and start the training process on the EMR. Similarly, once the training is complete, you can write the data frame with results to a file for future use. 

  
You can use the spark.write command to write data frames. You learnt about this command earlier in the program. Let’s quickly take a look at the variation of the command used in the video.

```python
result_test.predictions.coalesce(1).write.option("header", "true").parquet("s3a://logistic-data/testresult1.parquet")
```

The object ‘result_test’ is an object that is created after the evaluate method is run on a model. result_test.predictions refer to the data frame with a few added columns such as raw prediction, probability and prediction. This is the data frame that you want to save, as all future calculations can be done using this data frame. This file is written in the Parquet format because the data frame has some vector columns as well, such as probability, which cannot be written in a CSV file. Finally, the Coalesce method forces the file to be written in a single partition. If this is not done, the file will be written in several segments. 

  
The results of this model are still not promising. To improve this model further, you can select a more suitable threshold. You already have the results file written; so, you need not go back to the cluster and rerun the whole exercise. You can read the file and start processing it. Selecting the right threshold does not mean simply choosing a threshold that gives the highest recall or precision; a lot of business groundwork goes into making this decision. 

  
Let’s take a look at the process of selecting the right threshold. You can find the Notebook used in this video attached at the top of this page.

**VIDEO**

In this video, you saw how business insights are needed for deciding the model parameters. Before diving into the threshold selection, let's iterate a few new concepts that you learnt about in the video. 

  
**Creating a data frame from a list**  
You can create a data frame from any list as long as it has a structure. The result list in the video was a list of lists, and all the internal lists had the elements in the same order. If such a structure exists, you can create a schema using the StructType and StructField commands. The argument to StructType is a list of StructFields. Each StructField has three arguments: name of the column, data type of the column and a Boolean representing whether the column can have empty values. You then create an Resilient Distributed Dataset (RDD) from the list, which you can convert to a data frame by applying the schema to it. 

  
**Installing packages to the EMR cluster**  
In the previous video, you saw that you can find the Python packages that already exist on EMR by running the following command.

```python
sc.list_packages()
```

If the package that you need is not on the list, you can use the following command to install it. In the video, you learnt how to install pandas and matplotlib.

```python
sc.install_pypi_package("pandas==0.25.1")
sc.install_pypi_package("matplotlib", "https://pypi.org/simple")
```

You can vision the web address mentioned in the command to see what packages are available on that page. All of them can be installed in the same way. Then you can use these libraries just like you use them in Python.

Now, let's understand the business implications of selecting a threshold. 

**VIDEO**

Now let’s look at the table that was created at the end of the video.

![CTR Table](https://i.ibb.co/Bzzy0c8/CTR-Table.png)

The most business-relevant columns here are ad_spend, conversions and spend per conversion. Finding the right balance between these columns will help select the right threshold. 

  
Consider a few different cases and thresholds you might want to select. If the product that you are selling is niche and has a huge profit margin, you may be tempted to pick 0.1 as the threshold. In this case, you do not want to lose potential customers, and the money being spent is not an issue. If the money being spent is a constraint and the product is universal, losing a few customers will not be consequential, as you can easily get new customers. In that case, you may want to pick a higher threshold like 0.4. If you are looking at optimising the cost spent while getting the highest number of conversions, a threshold such as 0.2 or 0.25 may be the best choice. 

  
This is what we could achieve using vanilla logistic regression. After you learn a few more classification algorithms, you can try this problem again to see if they perform better.