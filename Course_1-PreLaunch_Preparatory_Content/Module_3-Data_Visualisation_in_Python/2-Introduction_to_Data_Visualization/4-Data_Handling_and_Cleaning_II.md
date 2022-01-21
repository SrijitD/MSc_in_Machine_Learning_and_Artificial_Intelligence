# Data Handling and Cleaning: II

In the previous segment, you were briefly introduced to the dataset and also performed some basic data-cleaning tasks by handling the null values. The next step would be to handle the data types of the columns. It is essential that your columns are also in the correct format or else it may hamper any further analysis. To understand the motivation for doing this, try answering the following question:

#### Mean

Qn: What is the average Price for all the apps which have the Android version as “4.1 and up” ?

- $12.11

- $0.56

- $0.67

- Some error comes up while calculating the value

Ans: D. *Observe that Price is of an object datatype. If you try to solve this problem directly without converting it into a float, then it would show up an error.*

If you recall the earlier modules where you learnt about data types available in python, you know that aggregations like **average, sum or mean** cannot be performed on character variables or strings. Only numeric datatypes like **float** or **int** would allow you to calculate those values. Therefore, it is crucial that you convert all the columns having the incorrect data types to the correct ones.

The **info()** function is pretty handy here to start inspecting the datatypes of the various columns, and we can use it as a stepping stone to performing the data conversion tasks.

**VIDEO**

As you saw in the video, the **Price** column had an additional ‘**$**’ sign for every paid app that was visible clearly once we used the **value_counts()** function. This resulted in the column being treated as an object instead of a float-type value. So, your first task was to clean those columns.

Now, let’s go ahead and inspect the **Reviews** column and perform the necessary changes to it.

**VIDEO**

![Faulty-Row](https://i.ibb.co/3cn9kLF/Faulty-Row.png)

Faulty Row

In the previous segment, you had fixed the row **'Life Made Wi-Fi'** where all the values had shifted to the right. There you had a value of **3.0M** under the **'Reviews'** column due to which the entire column got treated like an object. Since that row got removed, you no longer had any issues with the **'Reviews'** column and all you had to do was convert it into an ***int*** type.

Then, you saw the issue with the Installs column and observed the problem with it - the values contain both the ‘,’ and ‘+’ symbols, which led to this misrepresentation as an object type. Try solving it on your own and answer the question given below:

#### Fixing the Installs column

Qn: After removing the additional symbols in the Installs column, calculate the approximate number of installs at the 50th percentile.

[Hint - You can use the **replace()** function here. Check this [link](https://www.programiz.com/python-programming/methods/string/replace) to understand how to use it.]

- 100,000

- 500,000

- 10,000

- 1,000,000

Ans: B.

## **Additional Notes:**

You can observe that the **value_counts()** function is quite versatile in its utility. As a matter of fact, it is one of the most commonly used functions throughout the **pandas** library, along with the **describe()** function, to perform a quick analysis of the data and obtain summary statistics like sum, median, average, frequency, etc.
