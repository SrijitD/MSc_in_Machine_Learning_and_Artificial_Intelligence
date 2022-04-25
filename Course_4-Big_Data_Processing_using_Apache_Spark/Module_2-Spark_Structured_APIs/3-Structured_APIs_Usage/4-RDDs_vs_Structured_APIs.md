# RDDs v/s Structured APIs

By now, you should be well-versed with the different abstractions, including structured and unstructured, available in Spark. Even though using structured APIs has its own benefits, users still prefer RDDs in certain scenarios. Let’s recall the features of both RDDs and structured APIs and try to understand which API to use under what circumstances by watching the video given below.

**VIDEO**

**You should use RDD abstractions in the following instances:**

1.  **Low-level APIs:** when you need a high control over the method of executing jobs. The MapReduce-style commands in RDDs allow users to pass detailed instructions about the execution of a job.
    
2.  **Schema is unavailable:** when the schema of the data is either not available or not important to the user. 
    
3.  **Unstructured data:** Data used in the analysis is unstructured. For example log files, text data. 
    
4.  **Optimisation is not a priority:** In cases where optimisation is not that important. Or in other words, the aforementioned points are more important than the time it takes to execute the code. 
    

Most importantly RDDs are preferred by the user who likes to specify exactly the code should do in a job. If you recall any code written in an RDD abstraction, it specifies all the details of how a specific job needs to be executed. Simply one can say RDDs are more of **‘how to’** type of abstraction.

**You should use structured APIs in the following scenarios:**

1.  **High-level API:** Ease of code is an important factor. The code written in a high-level API is easily readable. Instructions given in the code are the specific objectives that need to be achieved. 
    
2.  **Structured data:** When the data sources are structured/ semi-structured, eg: CSV, JSON DB parquet etc. 
    
3.  **Availability of libraries:** high-level APIs have a lot of pre-existing libraries for ML and HIVE tables. Reduces a lot of coding effort. 
    
4.  **Optimisation:** Code needs to be executed quickly. Structured APIs have an in-built optimiser capability called the catalyst optimiser.  
    

In contrast to the RDD code, code written in high-level abstraction is concentrated on '**what to do'**. In this case, Spark is able to figure out the ‘how’ part on its own.

Considering the above-mentioned features of both RDDs and structured APIs, you are now well-equipped to make a decision regarding which API to use in your project.

Before moving on to the next segment, try answering the following questions:


#### Choosing the right APIs

Qn: A picture feed on Instagram needs to be analyzed, to find the users who like pictures with a specific colour. Which API is stable for loading pictures? 

- Structured APIs

- Unstructured APIs

Ans: B. *Pictures are unstructured data, RDDs are used to analyse this data.*


Qn: Suppose you have a data set with all types of digital content with details, actors, directors, IMDB rating, the genre of the content and so on. The data is of few terabytes. A recommender engine needs to be built on this data. Which API is more suitable?

- Structured APIs

- Unstructured APIs

Ans: A. *It is easy to fit this data into structured columns and rows. However, as the data set is huge, it becomes important to have optimisation.*


Qn: A data set with all the research papers with coronavirus and needs to be analysed to find the most recurring patterns to avoid the spread of the virus. Which APIs are suitable?

- Structured APIs

- Unstructured APIs

Ans: B. *The data set is unstructured, so unstructured API needs to be used.*


Let's summarise your learnings from this session and module before you attempt the 'graded' questions