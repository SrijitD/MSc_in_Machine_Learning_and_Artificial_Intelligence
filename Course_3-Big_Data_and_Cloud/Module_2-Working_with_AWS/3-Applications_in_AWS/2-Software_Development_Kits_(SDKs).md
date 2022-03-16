# Software Development Kits (SDKs)

So far, you have worked with the AWS services independently and called them via two different interfaces: Management Console and CLI. However, learning how to run these services is not enough. While exploring the different use cases in the previous session, you must have noticed that all the AWS services are just elements or parts of an application or software.

Now, if you take the example of Netflix, it has an application of its own to host the video content, but it uses AWS resources in the background to do so. Hence, in an actual production scenario, you must have an idea of how the applications are built and how you can call the services within those applications. This segment will help you understand the application-building part.

## Building an application

Note that this is not a course on app development, and so, you will not get to explore that in much detail here. This segment provides you with a brief introduction to **Software Development Kits (SDKs)**, which are used to build applications. In the forthcoming video, you will learn what SDKs are.

**VIDEO**

As the term suggests, a Software Development Kit is a toolkit that helps you build or develop applications for specific hardware or software platforms. The video showed an example of an iOS SDK that helps you develop applications for the iOS platform.

The components that may be found in software development kits are :

- API(s): Application Interfaces
- Documentation
- Editors
- Libraries
- Run-time and development environments
- Compilers
- Debuggers
- Drivers
- Network protocols
- Examples/test projects

An example of it is depicted in the image given below.

![iOS SDK](https://i.ibb.co/BVFCcZH/iOS-SDK.jpg)

#### SDKs

Qn: What are the different components of an SDK?  
(More than one option may be correct.)

APIs

Libraries

Debugging

Test projects

Ans: All of the above.

- *APIs are a set of functions that help you access the features of the service they are built for. They are an important part of an SDK.*

- *SDKs come with all the support libraries and packages that are required to build an application on the desired platform.*

- *An SDK contains different tools to help developers perform various tasks, including debugging, compiling, running and testing their applications.*

- *SDK providers add sample examples or test projects so that it becomes easy for the developers to build applications.*

Now that you have learnt what an SDK is, in the next video, we will try to get a deeper understanding of its role.

**VIDEO**

Every platform is different, but SDKs make life easier by providing all the required tools that allow an application or software to work well on the desired platform. The image given below briefly illustrates what an SDK is.

![SDK](https://i.ibb.co/dpHNYQp/SDK.jpg)

Coming back to AWS, Amazon provides various SDKs that can be used to call the AWS services within software or applications. You can choose from these SDKs based on your proficiency and the constraints of the platform on which you are working.

#### SDKs

Qn: What is the use of the Mapbox Maps SDK for Android?

Ans: *The Mapbox Maps SDK for Android is an open-source toolset that allows developers to add the functionality of maps inside their Android applications.*

In the next segment, you will start working with the Boto3 SDK provided by AWS.
