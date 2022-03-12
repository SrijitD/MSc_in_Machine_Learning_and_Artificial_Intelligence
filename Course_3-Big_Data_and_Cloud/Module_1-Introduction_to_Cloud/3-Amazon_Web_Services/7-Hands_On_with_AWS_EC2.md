# Hands-On with AWS EC2

In the previous segment, you learnt about Amazon EC2. You also understood VPCs and security groups. Now, in this segment, you will get hands-on experience with AWS EC2, and then you will learn how to connect Amazon S3 from Amazon EC2 using an IAM role.

First, let’s start by creating an AWS EC2 instance and connecting it from our local device.

**_IMPORTANT:_ In this video, at (0:47) Vinod uses 't2.micro' instance type. It is mandatory that you also use the same instance type for your practice purpose.  You are not supposed to use other instance types unless it is mentioned to you. Also, make sure that you stop/terminate the instance once you are done with your work. Violating this could expire your monthly budget.**

**Note 1: You may find some steps to be updated in the documentation. Refer to the steps mentioned in the document alongside the video.**

**Note 2: The video covers the steps to launch and connect to an EC2 instance for Linux or Mac users. If you are a Windows user, kindly refer to the documentation after [03:24] for establishing a connection with the EC2 instance).**

**VIDEO**

[Launching and EC2 Instance](EC2.pdf)

You learnt how to create an EC2 instance through the following steps:

1. Choose an AMI

2. Choose an Instance type

3. Configure instance details

    1. Choose VPC and subnet (in the video, these are kept as default)

4. Mention the required storage details

5. Tags (In the video, they are left as default)

6. Configure the security group

7. Create or select an existing key pair

You can refer to the following documents to get a detailed description of each step.

[Connecting to EC2 Instance - Linux/Mac](Connecting_to_EC2_instance-Linux_Mac.pdf)

[Connecting to EC2 Instance - Windows](Connecting_to_EC2_instance-Windows.pdf)

[Updating Security Groups](Updating_Security_Group.pdf.md)

**Note: In case you take a break before proceeding to the next video, please refer to the following document.**

In the earlier segment on Users, Groups, Roles and Policies, you learnt about 'role' and its uses. You understood that role can be assumed by any AWS IAM user or Amazon service. You also learnt that role allows an Amazon service to access an Amazon resource. In the next video, you will learn how a user can access the Amazon S3 bucket list from Amazon EC2 using an IAM role.

**Note: You may find some steps to be updated in the documentation. Refer to the steps mentioned in the document alongside the video.**

**VIDEO**

You learnt how to connect S3 from EC2 without providing any credentials by using the role. All the steps have been laid down in the document below for your reference.

[IAM Role](IAM_Role.pdf)

Now, based on everything that you have learnt so far, try to answer the following question.

#### Quiz

Qn: Which of the following options allows you to make sure that only intended users from specific IP addresses and ports would be able to access the instances?

- AWS AMI

- EC2 instance types

- AWS Security Groups

Ans: C. _AWS security groups enable the user to make sure that only intended users from specific IP addresses and ports would be able to access the instances. With security groups, the user can specify which IP address can access the instance on which port._
