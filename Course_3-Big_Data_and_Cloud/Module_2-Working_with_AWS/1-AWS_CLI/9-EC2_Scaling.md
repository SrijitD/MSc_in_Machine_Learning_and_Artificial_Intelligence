# EC2: Scaling

The basic purpose of an EC2 instance is to provide a computation environment in your system. All the applications, websites, etc., that you want to host on the Cloud can be hosted through Amazon EC2. However, it is not necessary that the same computation power is used throughout. In case your application faces more than the expected load, there must be a solution to sustain the extra load. Let's watch the forthcoming video and hear about it from Vinod.

**VIDEO**

Scaling is the process of adjusting the resources present in the installed system as and when required. For example, during a sale on an e-commerce platform, the company can increase the computation power to handle the excess traffic that it receives on its app and website.

In the case of variation in load or usage, you can increase or decrease the computation power in the following two ways:

- **Horizontal scaling** (scale in/out)**:** Adjusting the number of instances
- **Vertical scaling** (scale up/down)**:** Adjusting the computation power (CPU, RAM, etc.) of the current instances

The image given below briefly illustrates vertical and horizontal scaling.

![EC2 Vertical and Horizontal Scaling](https://i.ibb.co/86ktydS/EC2-Vertical-and-Horizontal-Scaling.jpg)

#### EC2: Autoscaling

Qn: Suppose you want to introduce a new feature in your application that requires very high processing machines. The existing infrastructure could not provide the required support due to technical limitations. Which of the following types of scaling must you use in this scenario?

- Vertical scaling

- Horizontal scaling

Ans: B. *In case the entire infrastructure is incapable to handle the requirement, it is advised to use horizontal scaling. In vertical scaling, there is a limit to which you can increase the efficiency of resources. Hence, you may not be able to accommodate the entire load.*

The main advantage of scaling is that it allows you to run an optimum number of instances based on the usage. However, it would be quite difficult to track when to scale up and when to scale down. In the next video, Vinod will describe a solution to overcome this issue.

**VIDEO**

**Note:** Delete the autoscaling group after creation. The autoscaling group can lead to unnecessary costs in case the load on your instance increases due to some error.

You can automate the process of scaling your Cloud infrastructure in AWS through the autoscaling feature. Here, you are expected to define the following two things:

- **Autoscaling group:** This component stores the conditions under which an instance has to be launched or terminated. You can define the metrics based on the different services, and AWS will automatically launch the desired number of instances once the conditions are met. You must also specify the minimum and maximum number of instances to host the application under the autoscaling group. This is done mainly to keep the expense within the defined budget.
- **Launch configuration:** It stores the configuration of the new instances that must be launched in case the conditions defined under the autoscaling group are met.

To understand the autoscaling group feature, take a look at the image given below.

![EC2 Autoscaling Group](https://i.ibb.co/Npf82M4/EC2-Autoscaling-Group.jpg)

Based on the defined metrics, AWS will launch the desired number of instances. The key advantages of autoscaling are that it helps you restrict the cost by terminating unwanted resources and run your application seamlessly by launching new instances in case of excess load.

Since you are working with a limited budget in the program, it is necessary that you **delete the autoscaling group** that was created after implemented autoscaling. This is to prevent any additional costs that may incur due to the launch of unnecessary instances.

#### EC2: Autoscaling

Qn: Which type of scaling does AWS perform under autoscaling?

- Horizontal

- Vertical

- Both

Ans: C. *AWS provides both horizontal and vertical scaling. You can check the following [link](https://aws.amazon.com/blogs/architecture/tag/vertical-scaling/) to know more about the vertical scaling in AWS.*

[Autoscaling - Instance Termination](EC2_Autoscaling_Termination.pdf)

With this, we have come to the end of the first session. The next segment summarises your learnings from this session.
