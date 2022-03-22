# Understanding a Distributed System

Hadoop makes it easier to use all the storage and processing capacity in cluster servers, and to execute distributed processes against huge amounts of data. Hadoop provides the building blocks on which other services and applications can be built.

But before that let’s understand **what is a distributed system i**n the first place and then dive into some of its important aspects.

**VIDEO**

A distributed system is comprised of many independent computers or devices connected to each other over a network, running a set of services; this makes it appear as a single machine. These devices are referred to as **nodes** of the distributed system, and they communicate and coordinate their actions by sending and receiving messages to solve common tasks.

![Different Type of Network Connections](https://i.ibb.co/0r2h3mz/Different-Type-of-Network-Connections.jpg)

In the image shown above, you can see different devices connected together across various networks. These devices are nothing but nodes of the distributed system, and these nodes can be connected to the system via a **wireless connection** or an **LPWAN connection**, or simply a **wired connection.**

One of the important aspects of a distributed system is **fault tolerance**. A distributed system should not be affected by the failure of any of its components. Let’s understand more about this in our next video.

**VIDEO**

In this video, you got an idea of the different system failures that might occur when handling a distributed system. The two major kinds of system failures are:

1. Node failure, and
2. Network failure.

A node failure includes failures such as **fail-stop** failure and **Byzantine** failure, where the nodes of the distributed system have issues:

- A **Byzantine failure** is said to occur when a node misbehaves by sending wrong messages to other nodes in the network,
- And a **fail-stop failure** is said to occur when a distributed system fails to work when one of the nodes fails or crashes.
- **Network failures**, on the other hand, are caused by issues with the connections among the different nodes in the system.

When any one of the above-listed failures happens, the data stored in the node becomes unavailable for the rest of the system. To avoid this you have the **concept of replication** where you create copies of the data and have it across different machines so that the distributed system is not fully dependent on any particular machine. You will learn more about this in the upcoming segments.

Here are a few important properties of a distributed system:

1. **High availability**: A distributed system should ensure its availability, i.e., even if a component of the system fails, the system does not fail.
2. **Scalability**: A distributed system should ensure that it does not fail when the workload increases; it should be flexible so that you can easily increase the number of machines.
3. **Transparency**: A distributed system should provide a global view of all the underlying machines as a single machine and hide the internal workings of the system from the end-users.

#### Properties of Distributed Systems

Qn: What should a distributed system ensure that it does not fail when the workload increases?

- Availability

- Scalability

- Transparency

Ans: B. *This element deals with the capability of the system to handle the increased workload.*

With this understanding of distributed systems, in the next segments, you will learn how the storage across a distributed system works.

## Coming up

In the next segment, we will discuss **Consistency**, **Availability** and **Partition tolerance** also known as CAP theorem.
