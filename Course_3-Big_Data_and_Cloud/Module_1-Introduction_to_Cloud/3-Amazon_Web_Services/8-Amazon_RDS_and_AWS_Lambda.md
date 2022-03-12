# Amazon RDS and AWS Lambda

In this segment, you will learn about two of the popular services provided by Amazon. They are Amazon RDS and Amazon Lambda. Let’s first understand what Amazon RDS is from Vinod.

**VIDEO**

Amazon RDS is a distributed relational database service.

1. It is the PaaS offered by AWS.

2. DB instance is the core part of RDS.

    1. It is an isolated database environment in AWS.

3. There are different storage types in RDS:

    1. General-purpose SSD

    2. Provisioned IOPS

    3. Magnetic

4. It also provides a wide range of instance types. The two main types are as follows:

    1. General-purpose instance types

    2. Memory-optimised instance types

5. DB instances from a pricing perspective are as follows:

    1. On-demand DB instances

    2. Reserved instances

Now that you have understood what Amazon RDS is, let’s quickly learn how to create and delete an RDS instance in AWS.

**_IMPORTANT:_ The video below only for demonstration purpose. You must use the documentation provided below to launch an RDS instance. It is mandatory for you to use only 'db.t2.micro' instance type for your practice purposes.  You are not supposed to use other instance types unless it is mentioned to you. Violating this could lead to expire your monthly budget.**

**VIDEO**

All the steps have been provided in the following document.

Download [RDS Instance](Docs/AWS/RDS_Instance.pdf) Documentation

In the next video, let's explore the created database instance in Amazon Web Server.

**VIDEO**

In the next video, you will learn about another popular service offered by Amazon, AWS Lambda, which you can use to run your code without managing any server. It will automatically scale based on the requirement. Let’s learn more about it from Vinod.

In the next video, you will learn about another popular service offered by Amazon, AWS Lambda, which you can use to run your code without managing any server. It will automatically scale based on the requirement.

**VIDEO**

## AWS Lambda

1. It is a serverless computing platform offered by AWS.

2. It allows users to run any code without worrying about the management of servers.

3. Users have to pay only for the computing time they consume to run their code.

4. Users have to just upload their code to AWS Lambda; it takes care of everything that is required for scaling any resources and running the code.

5. Users can trigger the code on AWS from any other AWS services, the web or any mobile applications.

6. Every user's code is executed parallelly.

So, you learnt how to run a simple Python code using AWS Lambda. Now, based on everything that you have learnt so far, answer the following questions.

#### Quiz

Qn: Which of the following options is the core part of AWS RDS?

- Storage types

- DB Instance

- Instance types

- None of the above

Ans: B. _The core part of an RDS is the DB instance, which is an isolated database environment in AWS. It can contain multiple databases and is the basic building block of Amazon RDS._

Qn: Which of the following RDS storage types is used for low latency and consistent I/O throughputs?

- General-purpose SSD

- Provisioned IOPS

- Magnetic storage

- None of the above

Ans: B. _Provisioned IOPS is suitable for databases that require low latency and consistent I/O throughputs. This is specifically for I/O intensive workloads._

Qn: Which of the following Amazon Services is an example of serverless computing?

- Amazon EC2

- Amazon RDS

- Amazon Lambda

Ans: C. _This is a serverless computing platform offered by AWS. It allows users to run any code without worrying about the management of servers._

Qn: Suppose you want to run a large code in AWS Lambda, but you are not sure about the amount of time it would take to execute the code. Is there a way to stop the execution of a particular code in Lambda if it exceeds a certain threshold runtime?

- Yes

- No

Ans: A. _There are certain key aspects of Lambda. One of them is ‘Basic settings’; here, you can specify the threshold memory and runtime that is required to execute your code._
