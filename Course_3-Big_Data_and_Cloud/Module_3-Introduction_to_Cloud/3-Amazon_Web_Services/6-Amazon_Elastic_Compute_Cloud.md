# Amazon Elastic Compute Cloud

Now, you will learn about another popular amazon service, Amazon Elastic Compute Cloud, which is popularly known as **Amazon EC2**. In the upcoming segments, you will learn how to connect Amazon S3 from Amazon EC2 using a role.

**VIDEO**

Features of Amazon EC2:

1. It provides a virtual computing machine on AWS.

2. You will require a key pair to log in to an EC2 instance. (You will understand this better once you move on to the hands-on part of it.)

3. Amazon EC2 provides various instance types based on the requirements. The instance types are broadly classified as follows:

    1. Computing

    2. General Purpose

    3. Memory Optimised

    4. Storage Optimised

    5. Accelerated Computing

4. It also provides some preconfigured operating system templates with some pre-installed software. The templates are called Amazon Machine Images (AMIs).

    1. You can also build custom AMIs and directly launch them as per requirement in the future.

There are four EC2 instance types in pricing perspective, which you will learn in the next video.

**VIDEO**

There are broadly four different instance types that users can utilise as per their requirements in order to optimise cost. The instance types are as follows:

1. On-Demand Instances

2. Spot Instances

3. Reserved Instances

4. Dedicated Instances

You can read more about instance types [here](https://www.virtana.com/blog/demystifying-terminology-aws-instances/).

To help users to maintain their privacy, prevent them from losing data and provide security effectively, AWS comes with amazon virtual private cloud and security groups. Let’s learn about them from Vinod.

**VIDEO**

By using VPCs and Subnets, you can make your database private and allow only your application to access the data that is publicly available. To understand these technical terms better, please refer to this [link](https://medium.com/tensult/intro-to-vpc-548b69f1bd1f).

![EC2 VPC](https://i.ibb.co/vHw0SLt/EC2-VPC.png)

You also learnt that the end user can use security groups to specify which IP addresses can be allowed to access the instance of a specific port.

![EC2 Security Groups](https://i.ibb.co/48wNxCd/EC2-Security-Groups.png)

Now, based on everything that you have learnt so far, answer the following question:

#### Quiz

Qn: Suppose you are working on a machine learning project and want to conduct machine learning training that requires in-memory calculations. Which of the following types of instance best suits this case?

- Compute instance

- Memory-optimised instances

- General-purpose instances

- Storage-optimised instances

Ans: B. *Memory-optimised instances are configured for workloads that need to compute large amounts of data with high performance in memory.*

In the next segment, you will have hands-on experience with AWS EC2 where you will connect Amazon S3 from Amazon EC2 using an IAM role.
