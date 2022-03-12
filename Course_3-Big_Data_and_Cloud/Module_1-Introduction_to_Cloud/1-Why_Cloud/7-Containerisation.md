# Containerisation

Using virtualisation, you can deploy applications on multiple virtual machines. Though you require only a few specific resources to run the application, you need to load the entire operating system in a virtual machine and then deploy the application.

Using containerisation, you can deploy the application in containers, where you will be provided with only those resources that are required for running it. This is faster than creating a virtual machine and deploying an application. Let’s learn more about it through an example.

**VIDEO**

Now, you must have understood that containerisation is OS-based virtualisation. Here, the operating system is virtualised by sharing the OS kernel among containers.

Before you move forward, a **kernel** is the foundational layer of an operating system (OS). It is that part of the OS that functions at a basic level, communicating with hardware and managing resources. You can read more about the difference between OS and kernel [here](https://www.geeksforgeeks.org/difference-between-operating-system-and-kernel/) for more clarity.

Coming to the containers, they are isolated from each other. Each container loads only the libraries required to run an application. The container engine, which resides in the host operating system, is responsible for sharing the OS kernel among containers.

![Containers](https://i.ibb.co/jTBJjKq/Containers.png)

The differences between virtualisation and containerisation:

![Virtualisation-vs-Containerisation](https://i.ibb.co/6HBSpvy/Virtualisation-vs-Containerisation.png)

| **Virtualisation**                                                                                                                                      | **Containerisation**                                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| It is a hardware-level virtualisation.                                                                                                                  | It is operating system-level virtualisation.                                                                                                         |
| It loads the complete OS for an application to run.                                                                                                     | It loads only the required libraries for an application to run.                                                                                      |
| It is heavier than containers, as it loads the complete operating system for deploying an application. The size of a virtual machine is usually in GBs. | It is lighter than virtual machines, as it loads only the required libraries for deploying an application. The size of containers is usually in MBs. |
| As Virtual machines are heavier than containers, the process of launching a new virtual machine is slower.                                              | As containers are lighter than virtual machines, the process of launching a new container is faster.                                                 |

Now, based on all that you have learnt thus far, answer the following questions.

#### Quiz

Qn: Select all the true statements.

- Virtual Machine loads the entire operating system to deploy any application

- Virtual Machine loads only the required libraries for deploying an application

- Container loads only the required libraries for deploying an application

- Container loads the entire operating system to deploy any application

Ans: A & C. *Virtualisation can be defined as the process of running a virtual instance of a computer system in a layer abstracted from the actual hardware. On the other hand, containerisation aims to virtualise the operating system by sharing the OS kernel, which is the core of any operating system.*

Qn: Select all the true statements.

- Virtual machines are lighter than containers.

- Provisioning container is faster than provisioning virtual machines.

- Containers are lighter than virtual machines.

- Provisioning virtual machine is faster than provisioning containers.

Ans: B & C. *The containers provide only the resources and libraries required for the application, whereas virtual machines maintain the entire operating system for deploying an application. This makes the container lighter and their provisioning faster.*

In the upcoming videos, you will understand the essential characteristics of the cloud by exploring its benefits.
