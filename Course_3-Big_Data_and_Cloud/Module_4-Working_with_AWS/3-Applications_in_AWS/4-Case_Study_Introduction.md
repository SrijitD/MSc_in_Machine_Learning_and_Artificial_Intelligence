# Case Study: Introduction

By now, you must be familiar with Boto3, which is the Python SDK offered by AWS to work with its services. Now, in this segment, you will learn how you can use this SDK to interact with multiple services. To do this, you will be building an application on the AWS platform. You will learn more about it from Vinod in the forthcoming video.

**VIDEO**

So, as part of this session, you will be building an application that scans an image for celebrities as shown in the image below. You are expected to execute all the tasks in a Jupyter Notebook. Here you shall be learning to use an AWS AI service called 'Rekognition' for image recognition which is going to be discussed in the next segment.

![Case Study Celebrity Recognition](https://i.ibb.co/CJVwSyW/Case-Study-Celebrity-Recognition.jpg)

#### AWS

Qn: Which of the following services will be required to build the application discussed in the video above?

- RDS

- Rekognition

- EC2

- S3

Ans: All of the above.

- *The results must be stored in a database. Hence, you will need an RDS database.*

- *Amazon Rekognition will be helpful for recognising celebrities in an image.*

- *You need an EC2 instance to host the Jupyter Notebook on which the application will be hosted.*

- *You will need S3 storage to upload your images.*

So, the video gives a clear idea of the task that your application is expected to perform. However, there needs to be clarity on how you would build the application. You need to perform certain necessary steps before entering the implementation phase.

In the forthcoming video, you will learn about these steps and implement them for our application.

**VIDEO**

It is always better to have a complete understanding of the requirements before proceeding with the creation phase. In this respect, you should focus on the following two main aspects:

- **Design requirements:** The design requirements are useful for checking whether the proposed solution is able to complete all the tasks successfully.
- **Budget:** Since you have to pay for all the AWS resources that are used in the deployment, this must be accounted for in advance to prevent any future complications. Sometimes you will be expected to either compromise on the requirements or come up with a different approach in order to execute the project in case the proposed solution does not fit the budget constraints.

Both the aspects above are quite important for keeping the application running. Here, the application will not be deployed in the production phase, and so, we will not enter into the budget discussion. However, you must try to optimise the costs associated with the application by selecting appropriate service parameters and terminating the instances once the task is over.

Once you have identified all the elements, the next step is to build an architecture from them. You will learn about this in the next segment.
