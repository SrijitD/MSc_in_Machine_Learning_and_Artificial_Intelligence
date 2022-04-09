# Creating an Oozie Workflow

The Hadoop ecosystem consists of multiple technologies, and mostly, different Hadoop jobs are performed sequentially to complete data processing based on their dependencies. In such cases, it is important to coordinate the flow of these multiple jobs. Oozie, the workflow scheduler for Hadoop, provides control over such complex multistage Hadoop jobs. Although it is designed for handling Hadoop jobs, it can also manage non-Hadoop jobs such as Java jobs and shell scripts.

Let’s learn more about this in our next video.

**VIDEO**

As explained in the video, there are many components in the workflow like sqoop scripts or hive queries. Oozie gives a single platform for running all the dependencies. It makes it easier to manage and test. You can use hue for easy drag and drop a way for creating the workflow.

![Oozie Workflow](https://i.ibb.co/7Y1Kcmt/Oozie-Workflow.jpg)

A workflow can be established by writing a .xml document or using a hue service, which is provided by EMR. Let’s quickly explore the hue service in the next video.

**VIDEO**

In this video, you learnt about the front end services you can access along with your EMR cluster. As you can see in the picture below, you can easily view the details of your DFS (Distributed File System) and YARN tasks from the console itself.

![DFS Details](https://i.ibb.co/Sv7fpfw/DFS-Details.png)

In this video, we also explored one of the major front end services called Hue. It is an open-source web-based interface that makes Hadoop much more easy to use. In other words, instead of logging into the Hadoop cluster using the command line and writing the queries on the terminal itself, you can perform all these tasks with the help of this GUI (Graphic User Interface) called Hue. Hue stands for Hadoop User Experience. Hue contains all the editors that can be used on the Hadoop ecosystem such as Hive, Impala, Pyspark and also connect with different RDBMS such as MySQL, Oracle etc. Hue also contains scheduler services such as Oozie. In the next video,  we will use this interface and build an Oozie workflow.

**Workflow 1:**

Let us build a workflow integrating different hive jobs involving the device's data.

**Action 1**: Creation of an Avro table for the device's data as devices_avro and loading it.  
**Action 2**: Creating a Parquet table as devices_parq and loading data from the devices_avro table  
**Action 3**: Joining the device's data with the CRM data to find popular brands for customers of age 30.

**Important Note:**

Before you start building your workflow, you need to first sqoop the device's data from RDS instance into the HDFS.

```sql
sqoop import -Dmapreduce.job.user.classpath.first=true -Dhadoop.security.credential.provider.path=jceks://x.jceks --connect jdbc:mysql://telcodb.cqsesz6h9yjg.us-east-1.rds.amazonaws.com:3306/telco --table device --target-dir /user/hadoop/telco/devices_avro -m 1 --username admin -P --as-avrodatafile
```

After using the above sqoop command make sure you change the properties of the devices_avro directory by using the below command :

`hadoop fs -chmod 777 /user/hadoop/telco/devices_avro`

This command will change the file permissions making it readable writable and executable by everyone.If you aren't doing this and try to execute the workflow, it will throw an error because you are trying to use the data as a different user.

**VIDEO**

In this video, you learnt to create an Oozie workflow to integrate different tasks inside a Hadoop ecosystem. Here, Ganesh has created the following workflow:

1. Creation of avro table and loading the 'devices' data from the avro file into the avro table
2. Creation of a parquet table using the existing 'devices' table which is now in the avro format
3. Joining the 'devices' data with the 'crm' data and find the popular brands for specific age group.

Ensure that before you start building this workflow, you have already used sqoop to import the device's data from RDS instance into the HDFS using the following command.

```sql
sqoop import -Dmapreduce.job.user.classpath.first=true -Dhadoop.security.credential.provider.path=jceks://x.jceks --connect jdbc:mysql://telcodb.cqsesz6h9yjg.us-east-1.rds.amazonaws.com:3306/telco --table device --target-dir /user/hadoop/telco/devices_avro -m 1 --username admin -P --as-avrodatafile
```

Now start the hue service and add the three hive jobs as an oozie workflow.

![Oozie Workflow](https://i.ibb.co/bdYxrwT/Oozie-Workflow-1.png)

You can check the result of your oozie workflow by entering the following command:

hadoop fs -cat /user/hadoop/telco/output2/*

**Additional Reading**

You can refer to the **additional reading** section to understand how to run a Sqoop job using hue service.
