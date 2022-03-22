# CAP Theorem

Now that you have understood the properties of a good distributed system, let’s look at an interesting theorem known as the CAP theorem, which states the challenges that you might encounter while designing a distributed system.

**VIDEO**

CAP theorem considers the three main dimensions, namely **Consistency**, **Availability** and **Partition tolerance** for designing a distributed data system.

1. In the earlier segment, you learnt that data is replicated among different nodes to avoid data loss. When you replicate this data for fault tolerance, achieving consistency among all the replicas is essential.
2. When it comes to availability, it states that even if some of the nodes on which data is replicated are down, the system should be still available.
3. Finally, a distributed system is said to be partition tolerant when the system wouldn’t fail in case of any partitions or node failure.

![CAP Theorem](https://i.ibb.co/p2SWmDp/CAP-Theorem.jpg)

According to the Eric Brewer CAP theorem, it is possible to achieve only two of the above three characteristics while designing distributed systems.

Let’s consider different cases and understand this:

1. When you consider **consistency** and **partition tolerance** automatically availability is compromised - This is because let’s say there is a partition in the system due to which some of the nodes in the network would no longer be able to communicate. Given that these nodes aren’t able to communicate, in order to maintain consistency across the entire system, these nodes should no longer be accessible, or in other words, they are made unavailable. This way, by ensuring consistency and partition tolerance, you are sacrificing the availability of all the nodes.
2. When you consider **availability** and **partition tolerance**, automatically you compromise on consistency. Let’s understand this by examining the same scenario as discussed earlier. Here when a partition has occurred, and you want every node of the system to be available. It means that some of the nodes which are no longer connected wouldn’t have any updates happening in the system leading to a lack of consistency in the system.
3. When you consider **availability** and **consistency**, you should compromise on partition tolerance. If there is a partition occurring in the distributed system, then either consistency or availability is compromised. To avoid it you should consider that the system isn’t tolerant towards partitions.

It is due to the above-stated reasons that distributed systems are designed to **provide partition tolerance and availability with eventual consistency**. It means that the system would be tolerant to failures and 100 percent available but when it comes to consistency the replicas or copy of data stored across different machines may not be consistent at a given time, but they will eventually become consistent.

## Coming up

In the next segment we will introduce you to the Hadoop Distributed File System.

#### CAP Theorem

Qn: Assume you have a distributed system that consists of 100 nodes connected over a local area network. Now due to a network issue, three of the nodes stopped responding to the system. However, this didn’t affect the functionality of the whole system, changes/updates made are being reflected on the rest 97 nodes, but the other three remain unaffected. In this scenario, you decided to remove these three machines.

Which of the three dimensions in CAP theorem is being compromised?

- Cardinality

- Consistency

- Association

- Availability

Ans: D. *In the example described, a partition occurred in the system due to which some of the nodes in the network are no longer able to communicate.  To maintain consistency across the entire system, these nodes are removed from the system. In other words, availability is being compromised here.*

Qn: Assume you have a distributed system that consists of 100 nodes connected over a local area network. One of the nodes in the system started misbehaving by sending wrong messages to other nodes in the network. You decided to remove this node from the system but removing this system made the whole system stop functioning.

Which of the three dimensions in CAP theorem is compromised here?

- Partition Tolerance

- Consistency

- Association

- Availability

Ans: A. *By removing a system a partition is created and the entire system stopped working. In other words, the system isn’t partition tolerant.*
