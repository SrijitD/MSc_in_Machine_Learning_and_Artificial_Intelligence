# User-Defined Functions

You have already understood the in-built functions in the SQL module. Hive also supports a variety of in-built functions. Along with the in-built functions, Hive also supports a dynamic feature of user-defined functions(UDF).

Hive allows you to custom functions to process records and group of records. In many industries, it is necessary to do various jobs using UDFs which are highly extensible than already existing functions.

Let’s listen to Vishwa to understand how you can create the UDFs in Hive.

**VIDEO**

So, in order to create user-defined functions, you have to follow these steps:

- Create a Java program

- Save the Java file as ‘.jar’ file

- Add the ‘.jar’ file into Hive

- Create a function of the ‘.jar’ file added

- Use those functions in the Hive query

Let's understand these steps through a demonstration by watching the video.

**VIDEO**

As you saw in the video, Vishwa created a Java program to return the absolute value of any integer. Note that you should not worry about the java program here. You should focus on the steps that are being followed after the Java program has been created.

- Once you have your Java program ready, you need to export it as a ‘.jar’ file.

- Now, you need to bring the ‘.jar’ file in Hive and add it. You can add the jar file using the following command: **add jar /home/hadoop/udfDemo.jar** ;

- Once the JAR file has been added, you have to create a function and use it for querying.

This is how you create your own functions and apply them in your queries.

You can try it by yourself by using the following Jar file:

Download [Jar File](udfDemo.jar)

You can see the Java code in the following JAVA file and can modify it and add your own customised UDF in this file:

Download [UDF Java File](AbsoluteValue.java)

```shell
[hadoop@ip-172-31-31-128 ~]$ aws s3 cp s3://hive-demo-data-bucket/udfDemo.jar .
download: s3://hive-demo-data-bucket/udfDemo.jar to ./udfDemo.jar
[hadoop@ip-172-31-31-128 ~]$ ls
u.user  udfDemo.jar
[hadoop@ip-172-31-31-128 ~]$ hive

Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j2.properties Async: false
hive> add jar /home/hadoop/udfDemo.jar;
Added [/home/hadoop/udfDemo.jar] to class path
Added resources: [/home/hadoop/udfDemo.jar]
hive> create temporary function absoluteValue as 'udfDemo.AbsoluteValue';
OK
Time taken: 0.221 seconds
hive> select absoluteValue(-11);
OK
11
Time taken: 1.222 seconds, Fetched: 1 row(s)
```

## Additional Reading

You can read more about Jar files and user-defined java files from the links given below.

[Jar Files](https://docs.oracle.com/javase/8/docs/technotes/guides/jar/jarGuide.html)

[User-Defined Java Files](https://docs.oracle.com/javase/7/docs/api/java/nio/file/attribute/UserDefinedFileAttributeView.html)

In the next segment, you will learn about the indexing in Hive.
