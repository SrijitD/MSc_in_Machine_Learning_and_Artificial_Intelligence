# MapReduce Programming

In this segment, you will study the programming framework used for data processing in Hadoop, that is, MapReduce. MapReduce is a programming paradigm that was invented to speed up the processing of large quantities of data.

Initially, Hadoop does the computations on data stored as individual blocks and then combines the results obtained from all the blocks to give the final output. Let’s look at the video below to understand this in detail.

**VIDEO**

In this video, using the example of finding the number of occurrences of Rama, you learnt about the different tasks involved in a MapReduce construct. The Hadoop framework essentially has two components:

1. Map task
2. Reduce task

**Map task:** The map task takes a block of data and converts it into key-value pairs. The key and value are decided on the basis of the task that is to be performed.  

**Reduce task:** The reduce task takes the output from the map as an input and combines those key-value pairs to get the desired output.

![How MapReduce Works](https://i.ibb.co/8XRZLt5/How-Map-Reduce-Works.jpg)

For the communication to happen between different machines in a distributed system, you need to represent each piece of data with a unique identity so that all the machines in the distributed system can identify a given piece of information with this unique identity. This is similar to our discussion on dictionaries, where each entry in the [dictionary](https://learn.upgrad.com/v/course/568/session/52403/segment/288808) is in the form of a key-value pair.  

In our next video, let’s look at MapReduce programming in more detail.

**VIDEO**

In this video, you saw how the whole MapReduce paradigm works. To summarise,

1. First, the whole book, or simply put, the data available with you is divided into blocks. This data in each block will be a set of sentences.  

2. The next step includes the map phase, where the data is converted into a key-value pair and passed to the mapper program. In the example cited by the professor in the video, the input key-value pair will be the line number and the corresponding sentence.

   Key     Value
   <001> <Rama Weds Sita>  
   <002> <Rama Kills Ravana>  

   The mapper applies the logic defined and converts the existing key-value to a new key-value pair. For example, in the earlier scenario, since you are looking to find the number of occurrences of the word ‘Rama’, you consider the unique identifier, i.e., the key to the word ‘Rama’, with value 1 representing the occurrence of the word.  

   If the objective is to find the number of sentences in the book, then the input to the mapper can be the line number and the corresponding sentence, and the output can be a single variable **count**, with the value **1** representing the individual count of the sentence.

   sampleInput - {001, ‘This is MapReduce Programming’}  
   sampleOutput - {count, 1}  

   This means that at the end of the mapper phase, you would have only {count, 1} key-value pairs, and each {count, 1} represents one line.  

3. Next is the reduce phase. Here, you take the output from all the mappers to perform a global aggregation of results. For example, let’s assume that in the discussed example, our huge file is divided into five blocks of data, and these blocks reside at five different DataNodes.  
   Block 1  
   <rama, 1>  
   <rama, 1>..... 5682 times  
   Block 2  
   <rama, 1>  
   <rama, 1>.... 2932 times  
   …  
   ..  
   Each <rama,1> represents an occurrence of 'rama' in the sentence. In order to have the final occurrence of 'rama' in the entire file, the reducer aggregates the values based on the rama key-value and returns the final count of rama as <rama, 38829>. Here, 38829 represents the total occurrence of the word rama in the file.  
   In returning the total occurrence of rama, the total aggregation can be done at the reduce phase, but doing this would increase the load on the reducer. To avoid this, a local aggregation can be done with the help of a [combiner](https://hadoop.apache.org/docs/stable/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html#Mapper). Now, during the map phase, the combiner does a local aggregation and returns the total occurrence of rama in that particular block. The new output of the map-phase will be:  
   Block 1  
   <rama, 5862>  
   Block 2  
   <rama, 2932>  
   ...  
   This is far more efficient than the earlier method of execution, as here, the reducer has very few values to handle.

To summarise, the output of the final MapReduce program will be a key-value pair, where the key is the field that you want to keep unique. For example, since your objective is to count the number of times Rama has appeared, the key would be ‘Rama’. If the objective is to find the total count of sentences, then the key would be ‘count’. Similarly, if the objective is to find the count of all the words in the book, then each word would be a key. Essentially, while handling the MapReduce construct, you need to understand the concepts of key and value and be able to write your code following this construct.

#### Quiz

Qn: Suppose you are given a book (of 9,990 Pages) and asked to find the number of occurrences of vowels in the entire book. If you decide to write a MapReduce job around this, what can be the keys at the end of the mapper phase?  
\[ Assumptions:

1. You have infinite mappers and reducers available.
2. Logic should have a single map and reduce construct.]

More than one option can be correct.

- Keys can be the serial number of each sentence.

- Keys can be unique words in the data set.

- Keys can be alphabets in the data set.

- Keys can be vowels in the data set.

- Keys can be the page number of each sentence.

Ans. C & D. *The input in the map phase will be the line number of each sentence and the corresponding text. The output of the map phase should represent what you are finding; in other words, it can either be all the alphabets in the dataset or simply vowels. If the above question doesn’t mention a single mapper reducer construct the keys of first mapper output can be words and they can be passed to the second mapper to give alphabets. Since it's clearly mentioned as a single mapper reducer construct you shouldn’t consider this case.*

## Comprehension

Let’s say you have an input file with 12 rows and four columns. Each column contains a list of numbers. You want to calculate the sum of each column. The data is divided into three blocks: Block 1 stores the first four rows, Block 2 stores the next four rows, and Block 3 stores the last four rows.

| Column 1 | Column 2 | Column 3 | Column 4 |
| -------- | -------- | -------- | -------- |
| 1        | 0        | 1        | 0        |
| 0        | 0        | 0        | 0        |
| 0        | 1        | 0        | 1        |
| 1        | 1        | 1        | 0        |
| 1        | 1        | 0        | 0        |
| 0        | 0        | 1        | 1        |
| 0        | 0        | 0        | 0        |
| 1        | 0        | 0        | 1        |
| 1        | 1        | 1        | 1        |
| 0        | 0        | 1        | 0        |
| 0        | 1        | 0        | 0        |
| 0        | 0        | 0        | 1        |

## Block 1

| Column 1 | Column 2 | Column 3 | Column 4 |
| -------- | -------- | -------- | -------- |
| 1        | 0        | 1        | 0        |
| 0        | 0        | 0        | 0        |
| 0        | 1        | 0        | 1        |
| 1        | 1        | 1        | 0        |

## Block 2

| Column 1 | Column 2 | Column 3 | Column 4 |
| -------- | -------- | -------- | -------- |
| 1        | 1        | 0        | 0        |
| 0        | 0        | 1        | 1        |
| 0        | 0        | 0        | 0        |
| 1        | 0        | 0        | 1        |

## Block 3

| Column 1 | Column 2 | Column 3 | Column 4 |
| -------- | -------- | -------- | -------- |
| 1        | 1        | 1        | 1        |
| 0        | 0        | 1        | 0        |
| 0        | 1        | 0        | 0        |
| 0        | 0        | 0        | 1        |

#### Map Task

Qn: Let’s assume that the key here will be the column ID and the value is the sum as computed by the mapper code for each block. So, after the map task for a given block, you will get a column ID and a sum of values (stored in that block) for the column. What will the outcome be after the mapper code finishes execution?

![Map Task](https://i.ibb.co/whCnFNP/Map-Task-Question.png)

- A

- B

- C

Ans: A. *Each column ID will be represented by a key. There are four columns in total. So, each block will have four outputs, one for each column. The value corresponding to each key (or column ID) will be the sum of all the numbers corresponding to that column ID.*

#### Reduce Task

Qn: After the map task, the key-value pairs will now be passed through the reducer code. The reducer task (as defined by the code) is to aggregate the duplicate keys and add all the values of a key. For Column 1, what will the outcome of the reducer phase (or task) be?

- 2

- 5

- 7

- 8

Ans: B. *The value obtained from Block 1 is 2, from Block 2 is 2, and from Block 3 is 1. So, the reducer will output 5 (2+2+1).*

## Additional readings

This document comprehensively describes all user-facing facets of the Hadoop MapReduce framework and serves as a tutorial.

1. [MapReduce](https://hadoop.apache.org/docs/stable/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html#Mapper)

## Coming up

In the next segment you will learn about the middleware involved in executing the MapReduce jobs on the data stored in HDFS.
