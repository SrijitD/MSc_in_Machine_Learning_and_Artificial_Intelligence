# Operations on Paired RDDs - II

Once you have a paired RDD ready, you can run different transformations to summarise the data stored in it. First, let’s watch the next video to learn how to perform the `reduceByKey()` operation.

**VIDEO**

**Note**: The professor is using an older version of Spark (2.1.1). The warnings thrown by Spark may not be visible on your screen because the Spark environment used by the professor is of a different version and has a different configuration set-up than the one you are working with.

As you can saw in the video above, the `reduceByKey()` transformation aggregates the values associated with a particular key based on the function provided. This is quite helpful in summarising the information stored in the RDDs.

Another important transformation that the professor mentioned earlier was `groupByKey()`. Let’s watch the next video to learn how to perform this transformation.

**VIDEO**

The `groupByKey()` transformation groups the values for each key in the RDD into a single sequence. This is different from the `reduceByKey()` operation, as you are provided with an aggregate value instead of a grouped entity. However, you can also run aggregations on the `groupByKey()` results, which will be covered through the assessments provided below.

So far, you have learnt about all the functions associated with the keys in paired RDDs. In some cases, you may want to alter only the values associated with each key. Suppose you have the name and price of multiple products in an RDD, where the name of the product is the key and the price is the value. Now, if all the prices increase by 10%, you will have to update the values stored in the RDD. However, the keys will remain unchanged. There can be multiple instances where you may want to update only the values stored in the RDD. Let's watch the next video to learn how Spark can help in such cases.

**VIDEO**

You can use the `mapValues()` function to transform the values stored in a paired RDD. It works similar to the `map()` transformation in normal RDDs. It maps a specified function only to the values stored in the paired RDD.

Let’s attempt assessments given below to further understand the workings of these transformations.

#### Paired RDD

Suppose you have the following RDD that represents the marks of students in different subjects out of 100:  
marks = sc.parallelize([('Phanendra', 'English', 98), ('Kaustubh', 'Mathematics', 99), ('Vishal', 'English', 95), ('Kaustubh', 'Science', 100), ('Phanendra', 'Science', 94), ('Vishal', 'Science', 97), ('Kaustubh', 'English', 96), ('Vishal', 'Mathematics', 98), ('Phanendra', 'Mathematics', 98)])

Qn: Which of the following codes will result in the aggregate percentage scored by the students in the class?

- `marks.groupByKey().mapValues(sum).map(lambda x: (x[0], x[1]/3)).collect()`

- `marks.map(lambda x: (x[0], x[2])).reduceByKey(lambda x,y: (x+y)).map(lambda x: (x[0], x[1]/3)).collect()`

- `marks.map(lambda x: (x[0], x[2])).reduceByKey(lambda x,y: (x+y)/3).collect()`

- `marks.map(lambda x: (x[0], x[2])).groupByKey(lambda x,y: (x+y)).map(lambda x: x/len()).collect()`

- `marks.map(lambda x: (x[0], x[2])).groupByKey().map(lambda x: (x[0], sum(x[1]))).map(lambda x: (x[0], x[1]/3)).collect()`

Ans: B & D.

- *The code first maps the student name with the marks they obtained into a paired RDD. This is then grouped based on the name using the reduceByKey() where the sum is provided as the aggregation function. Finally, the average is calculated for the three subjects by dividing the sum by 3. The collect() function prints the results on the screen.*

- *The code first maps the student name with the marks they obtained into a paired RDD. This is then grouped based on the name using the groupByKey(). Next, the values under the same key are added together using the map() function. Finally, the average is calculated for the three subjects by dividing the sum by 3. The collect() function prints the results on the screen.*

Qn: Which of the following codes will help in obtaining the highest score for each subject?

- marks.map(lambda x: (x[1], x[2])).reduceByKey(max).collect()

- marks.reduceByKey(max).collect()

- marks.map(lambda x: (x[1], x[2])).groupByKey().map(lambda x: (x[0], max(x[1]))).collect()

- marks.map(lambda x: (x[0], x[2])).reduceByKey(max).collect()

Ans: A & C

- *The code first maps the subject with the respective marks into a paired RDD. The elements belonging to the same subject are then reduced into the maximum value using the reduceByKey() transformation. The collect() function prints the results on the screen.*

- *The code first maps the subject with the respective marks into a paired RDD. The elements belonging to the same subject are then grouped together and then mapValues function helps to obtain the into the maximum value using the reduceByKey() transformation. The collect() function prints the results on the screen.*

Qn: Based on your understanding, which of the following transformations is better to perform aggregation operations - ‘reduceByKey()’ or ‘groupByKey()’? Explain your understanding.

Ans: *The reduceByKey() transformation is a better option here which can be understood by the concept of data locality. In case of reduceByKey(), the amount of data that is transferred from one node to another is lesser as the values are first reduced by a local combiner and then forwarded to another executor. However, in the case of groupByKey(), the entire data will be shuffled across executors instead of the reduced value. Therefore, reduceByKey is a better option in the above two cases.*

Qn: In a given paired RDD, if we want to find out whether a certain key is present or not which of the following commands should be used?

- collectAsMap()

- lookup()

- aggregateByKey()

- sortByKey()

Ans: B. *This command searches for a key and returns its corresponding values.*

Qn: Which of the following commands will help to sort the RDD elements based on the names of the student?  
(All the marks of Kaustubh will appear first, followed by Phanendra with Vishal at the last.)

- `marks.sortByKey().collect()`

- `marks.sortBy(lambda x: x[0]).collect()`

- `marks.sortByKey(keyfunc = lambda k:k[0]).collect()`

- `marks.sortByKey(ascending = False, keyfunc = lambda k:k[0]).collect()`

Ans: A, B & C.

- *rdd.sortByKey() sorts the given RDD in ascending order and collect() returns the new RDD to the driver program.*

- *rdd.sortBy() sorts the given RDD in ascending order using the lambda function and collect() returns the new RDD to the driver program.*

- *rdd.sortByKey(keyfunc=lambda k:k[0]) sorts the given RDD in ascending order and applies the lambda function of sorting on the Keys of the RDD. The collect() returns the new RDD to the driver program. [Not mentioning True/False, by default takes ascending=True]*

In the next segment, we will summarise your learnings from this session.
