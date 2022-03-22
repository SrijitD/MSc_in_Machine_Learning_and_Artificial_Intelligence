# Essential Characteristics of Cloud

In this segment, you will understand the essential characteristics of the cloud by exploring its advantages over traditional data centres. Let's hear from Vinod.

**VIDEO**

As you learnt, some of the benefits of the cloud are as follows:

1. **Cost-efficiency:** This is possible due to one of the cloud characteristics, which is Measured Services. With this service, resources like storage, processing and bandwidth, etc. can be managed and controlled by the user. This enables the transparency of usage between the cloud provider and the user.

2. **Rapid Elasticity:** With this characteristic, the cloud can provision resources as per the requirement and cancel them if the resources are not required. The cloud can scale up and scale down based on requirements. This makes the user feel like the cloud is unlimited.

In the next video, you will learn about some more essential characteristics of the cloud by exploring its other benefits.

**VIDEO**

The cloud offers an approach to managing its resources and infrastructure using definition files such as **JSON** files (also called templates).

[**JSON**](https://www.json.org/json-en.html) (JavaScript Object Notation) is a lightweight data-interchange format. JSON is a text format that is completely language-independent but uses conventions that are familiar to programmers of the C-family of languages, including C, C++, C#, Java, JavaScript, Perl, Python, and many others. These properties make JSON an ideal data-interchange language.

JSON is built on two structures:

- A collection of name/value pairs. In various languages, this is realized as an _object_, record, struct, dictionary, hash table, keyed list, or associative array.
- An ordered list of values. In most languages, this is realized as an _array_, vector, list, or sequence.

![Cloud_Service_Providers](https://i.ibb.co/8Km8K8h/Cloud-Service-Providers.png)

These JSON files are used to store the required infrastructure. These files can be used at any time to get back or recreate the infrastructure. With this Infrastructure as Code(IaC) approach, you can save the infrastructure and switch between multiple cloud service providers using tools such as **Ansible, Terraform, Chef, Puppet**, etc.

The ‘**Multi-tenancy**’ of the cloud allows multiple companies to have their data isolated on the same physical hardware. This enables the users to choose the region where their data should reside. However, the exact physical device on which their data resides is not known to the user. Here, VM’s are not shared among the users; they are allocated to individuals. Multi-tenancy allows users to share cloud resources.

![Multi_Tenancy](https://i.ibb.co/0cnph73/Multi-Tenancy.png)

Let’s understand this in detail through an example. Consider an organisation running on a traditional data centre. It wants to provide services and resources to its three clients - A, B and C. The total available storage is 1,500GB that is distributed between each of the clients equally. However, client A is utilising only 100GB, client B is utilising only 200GB, and client C exceeds the 500GB storage limit and requests for an additional 100GB. To address client C’s issue, the organisation needs to purchase more storage and allocate it to the client. This is because the company is using a traditional data centre.

In the above case, if we keep equal distribution (500 GB) for each client, you can see that 400GB space at client A and 300GB space at client B is idle, yet the organisation is spending to get additional storage for client C. If the service was offered over cloud, the entire storage of 1,500GB could be shared among the three based on the respective requirements. For example, if client A is utilising only 100GB, client B is utilising only 200GB and client C needs 600 GB, the cloud service provider can allocate the additional 100 GB to client C from the 700GB of idle storage available after 100 + 200 + 500 GB of the 1,500GB storage has been utilised by all the clients.

However, cloud computing **should be avoided** in certain scenarios**.**

1. Cloud computing makes a small business dependent on the reliability of the internet connection. If your internet service **suffers from frequent outages or slow speeds**, cloud computing may not be suitable for your business.
2. Cloud must also be avoided if you are working with sensitive data. Security should be another consideration before moving to cloud.

Let's see other characteristics of the cloud in the video below.

_**Note: Vinod selects the Mumbai region to launch the virtual machine in the video below. However, you are expected to work under the 'North Virginia' region as part of this program.**_

Play Video

3221820

The Broad Network Access characteristic of the cloud enables users using various types of devices to connect with it. This is the case with traditional data centres as well.

![Broad_Network_Access](https://i.ibb.co/1TDyFjR/Broad-Network-Access.png)

The **On-Demand Self-Service** of the cloud enables users to provision and release the cloud’s resources on their own with just a few clicks. Whereas in a traditional data centre, this process takes about a week. If you want to start a new machine in the cloud and require the storage, then you need not ask anyone to grant the storage. You can simply create an account with any of the cloud service providers and then start the machine and purchase the storage on your own with just a few clicks.

#### Quiz

Qn: What is the difference between scalability and elasticity in cloud computing?

Ans: In cloud computing, scalability refers to the ability to increase or decrease the capacity of the computing system based on the incoming demand, whereas elasticity is a measure of how quickly a system can be scaled up or down to closely match the incoming demand.

In the next segment, let's summarise our learnings about the cloud and its characteristics.

Qn: What is multi-tenancy? Write in your own words.

Ans: Multi-tenancy is a cloud characteristic that allows users to share cloud computing resources. This allows multiple users to share the same hardware resources. But the physical device on which their data resides is completely isolated. The user is completely unaware of the physical device on which their data resides.

Qn: Which cloud essential functionality makes it possible for organisations to deploy applications faster than they could with a conventional on-premise solution?

- Resource Pooling

- On-Demand Self-Service

- Measured Services

- Broad Network Access

Ans: B. _On-Demand Self-Service is one of the most attractive characteristics of the cloud. It allows the user to get the required resources or services from the cloud. The user does not require any support staff to provide them. The user can get access to them solitarily. But if the user wants to get all these resources in a conventional on-premise solution, it takes about a week._

Qn: In Resource Pooling, which of the following is not shared?

- Storage

- Virtual machine

- Data centre

- Network bandwidth

Ans:
