# Spark: Word Count

So far, you have learnt about different transformations and actions and their functions. In this segment, you will use that knowledge to implement the word count problem in Spark. You must be familiar with the word count problem from the previous modules. You have previously implemented them on a text file using the MapReduce framework. In this segment, you will use Spark to do the same.

**VIDEO**

Let's take a look at the code executed by the professor in the example covered in the video above. You will notice that the number of lines and words do not match. The reason for this that is that the NOTICE file is present in the Spark installation folder, and it changes with the version of Spark you are using. In the video above, the Professor has used an older version, and hence, the numbers are different.

Code

```python
# Reading the file into an RDD
lines=sc.textFile("NOTICE")

# In order to find the total number of partitions, we can use:
lines.getNumPartitions()

# Now, in order to find the number of words, we will split the file based on the position of spaces as follows:
words = lines.flatMap(lambda x:x.split(" "))

# Total number of lines in the file
lines.count()

# Total number of words
words.count()

# To count the number of times each word appears, we begin by initializing the count of each word by 1.
wordpair = words.map(lambda x: (x,1))

# We will now reduceByKey() to find the count of each word
wordcount = wordpair.reduceByKey(lambda x, y: x+y)

# Printing the count for all the words
wordcount.collect()

# Ssingle line code:
lines.flatMap(lambda x: x.split(" ")).map(lambda x: (x, 1)).reduceByKey(lambda x, y: x+y).collect()
```

The image given below summarises the code and the entire flow of the word count problem.

![Spark Word Count](https://i.ibb.co/njtzQST/Spark-Word-Count.png)

Based on this simple example, you can clearly understand the advantages that Spark holds over the MapReduce framework, which are as follows:

- The code written in Spark is quite easy and self-interpretable. However, in MapReduce, you have to write the map and reduce jobs to execute the entire process. It involves writing long and complex code, which is not the case in the Spark environment.
- The execution happens much faster in Spark than in the MapReduce framework.

Now, let's explore the word count problem further using the questions provided below. You can use the file provided in this [link](https://drive.google.com/file/d/157Xa_VoZeWxXWSP4g52Wo-rZFF1M0W4Q/view?usp=sharing).

Question 1/2

Mandatory

#### Word Count: Extended

Qn: Using Spark, find how many times do the words "Apache" and "Software" appear together in the file "NOTICE"?

- 50

- 60

- 70

- 80

Ans: C. *You can find the count of elements after splitting the lines based on 'Apache Software' instead of ' ' (space). You can then subtract the total line count obtained from the count of lines after splitting them on the basis of 'Apache Software'.*

`lines.flatMap(lambda x: x.split("Apache Software")).count() - lines.count()`

Qn: Generally, when we are analysing texts, we get rid of the stopwords. Stopwords are frequently used words like 'is', 'am', 'are', etc. which do not provide any significance to the analysis. Here is a small list of stopwords:

['a', 'the', 'or', 'on', 'of', 'at', 'for', 'then', 'there', 'it', 'he', 'she', 'me', 'them', 'we', 'i', 'us', 'me' ]

Your task is to give the total count of relevant words in the file 'NOTICE' after removing these stopwords. Remember, Spark is case sensitive. Therefore, 'a' and 'A' are treated differently. You are expected to remove all the forms of the words (are, Are, aRe, etc.)

The correct count of words is:

- 5529

- 5539

- 5549

- 5559

Ans: D. *There are three tasks that you need to run on lines RDD:*

- split based on ' ' (space)
  
  ```python
  split_rdd = lines.flatMap(lambda x: x.split(" "))
  ```

- converting all the words in lowercase or uppercase
  
  ```python
  lower_rdd = split_rdd.map(lambda x: x.lower())
  ```

- filtering the words which are not in stopwords
  
  ```python
  stopwords = ['a', 'the', 'or', 'on', 'of', 'at', 'for', 'then', 'there', 'it', 'he', 'she', 'me', 'them', 'we', 'i', 'us', 'me' ]
  filtered_rdd = lower_rdd.filter(lambda x:x not in stopwords)
  ```

- count the number of words
  
  ```python
  filtered_rdd.count()
  ```