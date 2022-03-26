# Indexing I

In the previous segments, you learnt how to create the database and tables in Hive. You also understood querying using the Hive Query Language. You can now write your own query in Hive using an SQL-like syntax and derive useful insights from the data.

Now that you have gone through the entire module on SQL and RDBMS, you can apply your learnings of querying to write your own codes in Hive.

As you already know, Hive deals with Big Data. So, when you write a query, it takes time for the execution due to the large volume of the data. You can optimise the queries in several ways. Indexing is one of them.

Let us learn how indexing works from Vishwa in the next video.

**VIDEO**

As you saw in the video, an operation takes a long time to perform if done without indexing. This is because it has to search the entire volume of data, from the first row to the desired record row, which is a time-consuming process.

Now, let’s understand how indexing makes the query faster.

Suppose there is a table with the attributes 'id', 'Name' and 'City', where 'Name' is the name of a person and the 'City' represents the city where that particular person is residing. Now let's say you want to search the name ‘N’ along with their id and city. When you write a query to search the name ‘N’, it searches row by row. This becomes a time-consuming exercise when you are dealing with Big Data.

To make the querying faster, you can add indexing on the 'Name' column.

![Indexing](https://i.ibb.co/9ZHNy1f/Hive-Indexing.png)

As you can see in the image above, the indexing has been done on the 'Name' column. Each name has been added in the sorted order in the separate data structure, and there is a reference corresponding to each name, representing the rows in the original table.

So, when you search a particular name, it goes to the separate data structure, applies the 'binary search algorithm', returns the address of the row in the original table and delivers the results.

Hive has the following two types of Indexing:

- Compact indexing

- Bitmap indexing

You can understand more about these two types of indexing from the following link

[Types of Indexing](http://brainbloggerblog.blogspot.com/2017/08/in-hive-index-is-table-which-is.html).

Sometimes, it can get confusing to understand where it would be beneficial to use indexing. Let’s understand where to use indexing through the following video.

**VIDEO**

Following are instances where you can use indexing:

- When the data set is large in size

- If a faster query execution is required

- Columns that are used more frequently

- For read-heavy applications, where you need to read the data more frequently

- Generally, it is not advisable to use indexing in write-heavy applications because every time new data is received, all the new updates have to be done internally in the separate data structure. Simultaneously, the separate data structure must remain in the sorted state every time you add new data in it. Editing this data structure while writing the data in the actual table every time would be a time-consuming task.

In the next segment, you will learn how to perform indexing on Hive through a practical demonstration.
