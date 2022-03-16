# AWS CLI: Introduction

In the previous module, you learnt how to access AWS services from the AWS web platform or the Management Console. Now, we will begin this segment with the forthcoming video where Vinod will talk about another way to work with all of these services.

**VIDEO**

As mentioned in this video, there are two ways to access AWS services as given below.

1. AWS Management Console Access
2. Programmatic Access

These are discussed briefly in the image given below.

![Accessing AWS](https://i.ibb.co/1GvC5RY/Accessing-AWS.jpg)

You have already accessed different services through the Management Console. Now, you will use the programmatic access through the **AWS Command Line Interface (AWS CLI)** for the same purpose. As per the documentation:

“_The AWS Command Line Interface is an open-source tool that enables you to interact with AWS services using commands in your command-line shell._”

In the AWS CLI, instead of relying on the web platform, you work with the AWS services through the local command-line environment on the machine. It comes with its own syntax and commands, which you will learn in the following segments.

The video provided above also discussed some of the merits that the CLI has over the Management Console. One of the key features of the AWS CLI that was highlighted is its ability to save time. The following points summarise the contents of the above video.

- The AWS CLI gives you control over all the services that AWS offers through the Management Console. Any service that is launched on the Management Console is made available through the CLI at the time of launch or within **180 days** of launch. To see this in action, you will work with all the services that were covered in the previous module through the AWS CLI as part of this module.
- The AWS CLI gives you control of all the services on one platform, thus saving you from visiting the individual pages of each service to execute any task. For example, to access the S3 bucket from an EC2 instance, you will have to visit web pages for two different services: First, the IAM page to create a new role that allows S3 access, and, second, the EC2 page to attach the created role to the required EC2 instance. All this can be done through a few lines of code using the AWS CLI. This is depicted in the image given below. However, in some cases, the Management console could be the better option.

![AWS CLI Control](https://i.ibb.co/PrMJc58/AWS-CLI-Control.jpg)

- Since the AWS CLI is a programming console, it also comes with the ability to replicate tasks through scripts. You can easily reduce the time spent on writing code for each task that you were expected to perform manually on the Management console. This also reduces the scope of errors that can be committed while executing the operations manually.  
  
  To understand this better, think of a data analytics firm that collects consumer data daily and uses certain parameters from the collected data to generate reports. Now, with the help of scripts, the firm can quickly collect the required data from S3, instead of manually fetching the data daily.

Hence, you can easily say that the AWS CLI is a better tool to work with the cloud services offered by AWS in certain conditions. As part of this session, you are expected to work with the AWS CLI interface wherever possible. Now, try to solve the following problems based on your learning.

#### AWS CLI

QN: The AWS CLI serves as a better tool than the AWS Management Console when you are working in the Cloud environment. Which of the following options is true and does not support this statement?

- The Management Console saves time, as you can run all the operations through a series of clicks.

- The Management Console is better as it gives access to all the features, which may not be provided in the CLI.

- The Management Console lists the operations associated with a service in a single space.

Ans: C. _The Management Console has the advantage over the AWS CLI in that it lists all the features in a structured manner on the web page. In the case of the AWS CLI, you need to be well versed with the documentation in order to know the features and the services offered._

Now that you know what AWS CLI is, in the next segment, you will learn how to install it on your machine.

Qn: Which tool is better to use in the following cases?

| Case                                              | Option                            |
| ------------------------------------------------- | --------------------------------- |
| 1. Understanding a new feature launched by Amazon | I. AWS CLI                        |
| 2. Viewing all the objects in the S3 bucket       | II. AWS Management Console Access |
| 3. Assigning roles to multiple users              | III. Both are equally good        |

- 1 - I, 2 - II, 3 - III

- 1 - I, 2 - I, 3 - I

- 1 - II, 2 - III, 3 - I

- 1 - II, 2 - I, 3 - I

Ans: D.

1. _With a new feature, you must first try to follow a guided approach. It is done under the Management Console._
2. _While working with the CLI, you can easily work with resources without going to the web page and entering all the details. You can simply run one command in the command line and you will have the objects listed for you._
3. _As you have learnt above, attaching a role involves visiting multiple pages, and, hence, you must prefer working on the AWS CLI instead of the AWS Management Console._
