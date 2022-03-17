# PaaS and SaaS

In the previous segment, you learnt about IaaS, which provides users with the required hardware, networking, storage and servers; it is the users’ job to install the required operating system and work. The users set up their own required custom environment to run their application. However, cloud service providers observed an overlap of custom environments utilised by various users. Hence, they decided to provide a custom environment along with IaaS in the Platform as a Service (PaaS) model. So, let’s watch the next video and learn more about this cloud service model.

**VIDEO**

So, as you learnt, _**Platform as a Service (PaaS)**_ provides an environment for developers and companies to create, host and deploy applications. This helps developers to concentrate more on developing and running the applications, rather than setting up, configuring and managing infrastructures such as hardware and operating system.

This allows the users to be more efficient in deploying their applications on the cloud, as they do not need to worry about resource allotment, capacity planning, software maintenance, patching, or any of the other undifferentiated heavy lifting involved in running their applications. This allows them to build, compile and run programs.

![PaaS](https://i.ibb.co/QrvywRy/PaaS.png)

Common examples of PaaS include

1. AWS Elastic Beanstalk
2. Windows Azure
3. Heroku
4. Force.com
5. Google App Engine
6. OpenShift

Here are some of the advantages and disadvantages of PaaS:

**Advantages:**

1. **Prebuilt platform**: PaaS provides an already built platform for users to build and run their applications.

2. It is a simple model to use and deploy applications.

3. **Low cost**: Since the platform is already built, the user needs to create only their applications. This reduces the costs related to hardware and software.

**Disadvantages:**

1. **Migration issues**: Migrating the user applications from one PaaS vendor to another might raise some issues.
2. **Platform restrictions**: The platforms provided by some vendors may have certain restrictions, for instance, the user can use only certain specified languages.

Software as a Service (SaaS) is a software licensing and delivery model in which software is licensed on a subscription basis and is hosted centrally. It basically means that a third party hosts an application on its servers or cloud, and makes it available to all its customers over the Internet. The customers can access these applications through the internet, and use the applications as well as the data for their own purposes.

![SaaS](https://i.ibb.co/gWYKMQq/SaaS.png)

Common examples of Saas include :

1. Google Workspace
2. Dropbox
3. Salesforce
4. Cisco WebEx

Software as a Service, also known as cloud application services, represents the most commonly utilized option for businesses in the cloud market. A majority of SaaS applications run directly through your web browser, which means they do not require any downloads or installations on the client-side.

Here are some of the advantages and disadvantages of SaaS:

**Advantages:**

1. **Ease of access**: Users can access the applications on the server from anywhere using any Internet-connected device. Most types of internet-connected devices can access SaaS applications.

2. **Low maintenance**: Users need not update an application. The application is on the server, and it is the service provider’s responsibility to maintain the application.

3. **Quick setup**: Users do not require any hardware to install the application. The SaaS application is already present on the cloud.

**Disadvantages:**

1. **Lack of control**: Users do not have control over the SaaS applications. Only the vendor has full control of SaaS applications.
2. **Connectivity issue**: The applications can only be accessed only via the Internet. Hence, if there is no Internet, then the users cannot access the applications.

#### Quiz

Qn: In Paas, at what level in the data centre stack does the user gets access?

Custom environment

Operating system

Server

Application

Ans: A. _In the PaaS model, the service provider manages the required hardware, software, OS and the custom environment (i.e., middleware and runtime), whereas the user would be responsible for the data and applications._

Qn: Let’s suppose SocOrg wants to move their SQL database to a cloud service provider and don't want to maintain the complexity of configuring the database. Which of the following service models meets this requirement?

- SaaS

- PaaS

- IaaS

- None of the above

Ans: B. _Platform as a Service is a great option when you are using standard technologies to develop your applications. For example, most cloud service providers today have managed database services of industry-leading database engines such as mySQL, SQL servers, etc._

Qn: In SaaS, at what level of data centre stack does the user get access?

- Custom environment

- Operating system

- Server

- Application

Ans: D. _The cloud service provider manages the required hardware, software and custom environment, including the applications. The user’s job is simply to have an Internet connection to use those applications._

Now that you have learnt about the different types of cloud service models, in the next segment, you will go through an example to understand them in more detail.
