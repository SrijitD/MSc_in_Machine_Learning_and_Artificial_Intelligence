# Introduction to Spark

In the previous segment, you learnt that Spark is an in-memory-based processing framework. This gives Spark a significant edge over MapReduce in terms of speed. It is able to process data at a faster rate as compared with MapReduce. However, there is more to Spark than just its speed. In this segment, you will learn about the other features of Spark.

According to the official documentation, **“_Apache Spark™ is a unified analytics engine for large-scale data processing._”**

It was initially developed at the AMPLab at UC Berkeley by Matei Zaharia as an alternative to the MapReduce paradigm, traditionally the most popular technique to perform big data analytics. Later, it was donated to the Apache Software Foundation, which made it an open-source project.

Some of the basic features of Spark include the following:

- **High speed**: Due to in-memory computation, Spark is able to process data at a very high speed. It can be 10-100 times faster than MapReduce, depending on the nature of the job.
- **Support for multiple data sources**: Spark has the ability to process data stored in different file formats such as images, text files and csv files. Moreover, it can be placed over different platforms, including HDFS and S3 Cassandra. Organisations find it quite easy to work with Spark because they can directly load data from different sources.
- **Rich support of language APIs**: Spark provides the user with the freedom to code jobs in different programming languages. You are free to choose Scala, Java, Python, R or SQL to run your functions in Spark.
- **Advanced analytics**: With in-memory computation, you can easily perform exploratory data analysis and build machine learning models on GBs/TBs of data.

Due to the above-mentioned features, Spark finds application in multiple industries. Let’s watch the next video to learn about a few of them.

**VIDEO**

As you can learnt in the video above, Spark is extensively used by multiple industry domains for various day-to-day activities. Some of these industry domains are as follows:

- Spark can process a large pool of data and provide results within a short period of time. Therefore, it is able to help in making important business decisions and optimise the workflow for companies. Companies like **Big Bazaar** can analyse data across multiple stores quickly to handle their sales and inventory efficiently.
- The features offered by Spark also benefit the **banking** and **finance** industry. Banks process billions of transactions on a daily basis, as their network spreads over the entire world. They have databases that collect real-time data, which is then analysed using frameworks similar to Spark to detect any fraudulent acitivities in the background.
- Several industries rely on Spark to maximise their revenue. Ride-sharing applications such as **Ola** and **Uber** calculate their surge prices based on the booking and availability of drivers in a particular area. They run complex ML algorithms in real time and reflect the results directly on their mobile applications. This is possible because of the rich support of libraries offered by Spark.
- Another use case discussed in the previous video was **personalised advertisements**. Companies track the browser history of internet users and provide personalised ads on various websites or applications accessed by these users. This is possible because of the rich library support and quick analysis features offered by Spark.

#### Apache Spark

Qn: Which of the following languages is Spark developed in?

- Java

- Python

- Scala

- R

Ans: C. _Spark has been developed in Scala. All other APIs are built on top of it._

Qn: Which of these is not a key functionality of Spark?

- High speed

- Ease of use

- Ability to build databases

Ans: C. _This is not one of Spark's key features. Spark works in conjunction with different databases._

#### Spark vs MapReduce

Qn: Which of the following has higher latency?

- Spark

- MapReduce

Ans: B. _The latency of MapReduce is high due to the disk-based I/O operations during processing._

Now that you have learnt about the various features of Spark, in the next segment, you will learn how data is stored in Spark.

## Additional Reading

- [How PayPal uses Spark-like systems for real-time analytics](https://www.paypal-engineering.com/tag/spark/)

- [A blog post detailing the differences between Spark and MapReduce](https://www.edureka.co/blog/apache-spark-vs-hadoop-mapreduce)
