# Example of Service Models

In the previous segments, you explored the different types of cloud service models. In this segment, you will go through an example of deploying a web application, understand its architecture and compare the various methods of deploying this application in different cloud service models that you learnt earlier.

**VIDEO**

Here is the architecture of the web application. Here, we have the front-end UI, the message queue, the back-end processing engine and the machine learning system.

![Application Architecture](https://i.ibb.co/9ZX2HTt/Application-Arhitecture.png)

Here is the implementation of the web application in IaaS. Here, we use virtual machines to host each component of the web application. A cloud administrator is required to handle these virtual machines.

![Application Architecture - IaaS](https://i.ibb.co/qY8kM4b/Application-Arhitecture-IAAS.png)

Here is the implementation of the web application in PaaS. Here, we have managed services offered by the cloud to host most of the components of the application. Here, you can see that the number of services used has decreased drastically.

![Application Architecture - PaaS](https://i.ibb.co/HrG08mh/Application-Arhitecture-PAAS.png)

Here is the implementation of the web application in SaaS. Here, the cloud provides the API for taking care of the back-end and machine learning tasks. The user has to just maintain a front-end UI to interact with the API.

![Application Architecture - SaaS](https://i.ibb.co/RgT2kp4/Application-Arhitecture-Saa-S.png)

Now, here is an overview of the different cloud service models from the perspective of the data centre stack.

![Different Cloud Service Models](https://i.ibb.co/4P1bV8h/Different-Cloud-Service-Models.png)

#### Quiz

Qn: What is the fastest way to deploy a web application? Would you use IaaS or PaaS for this purpose?

- IaaS

- PaaS

Ans: B. *PaaS, as it provides managed services for deploying cloud web applications. In the other case, if we choose to go with IaaS, then we would have to build those managed services that are provided in PaaS.*

So far in this session, you have explored the different cloud deployment and service models. You have also learnt about the popular cloud service providers. In the next session, you will be introduced to Amazon Web Services and get hands-on experience of it.
