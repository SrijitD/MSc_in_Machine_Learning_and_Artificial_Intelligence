# Case Study: Storing Results

In the previous segment, you identified the celebrity present in an image. The Lambda function provided you with the results inside the Jupyter Notebook. However, the final aim is to store the generated results in a database.

The image below shows the application architecture.

![Case Study Application Architecture](https://i.ibb.co/886kkWm/Case-Study-Application-Architecture.jpg)

You have already created a MySQL database in the previous segment. Now, you will be working with the same to store the results obtained from the Lambda function. In the forthcoming video, you will learn how to do that.

Note that you will be working with SQL commands in the upcoming video. All the concepts associated with SQL will be covered in-depth in later modules.

**VIDEO**

Here is a summary of the steps covered in the video:

- First, you have to install the ‘_mysql-connector_’ library on the EC2 instance to work with the MySQL database.
- Once the library is installed, you then need to create a connector object to establish a connection with the MySQL server. In our case, it was defined as ‘_dbc_’ in the video above. You will need the host address, port number, username and password associated with the DB instance to connect with the database.
- Once the connection is established, the next step is to create a table inside the database. A table is essential to store the data in the database.
- After you have created all the elements, you can run the necessary commands shown in the video to easily store the results in the created MySQL database.

#### Amazon RDS

Qn: What is the reason for using an RDS instance to store the output data when you can store them over S3?

- Amazon RDS is a cheaper resource than Amazon S3.

- Amazon RDS provides structured storage to query data faster.

- Data stored in RDS is more secure than data stored in S3.

Ans: B. _Amazon RDS stores the data in the form of tables, which helps you search for the required data faster. You will learn about this in detail in future modules._

So, you now have the application ‘Celebrity Recognition’, and it can be used to scan any image for a celebrity. Now, watch the next video for a short summary of all the tasks performed to build the application.

**VIDEO**

## Important Tasks After the Case Study

Following is a list of important tasks to be performed after the case study:

- Try to run the application using different images. You can try to improve the application by adding features such as match confidence in the extracted results. This metric will give you the confidence score (in percentage) that a face recognised is that of a celebrity.
- You must ensure that **all the services are terminated and deleted** once you have completed the tasks; otherwise, your account balance will be exhausted and you will face difficulties during the assignment.

In the next segment, you will learn how to deploy your model.
