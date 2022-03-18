# Introduction to MapReduce Programming

In the previous session, you learnt how data is stored in a distributed system. The next step involves processing this data. This is no longer similar to the regular processing, where everything is processed on a single machine. You need the machines to work together and interact with each other before arriving at the final result. Let’s hear the professor explain this in detail.

**VIDEO**

In order to process data across multiple machines, you do not have to write programs and execute on all these machines; you can do this easily using the [MapReduce construct](https://static.googleusercontent.com/media/research.google.com/en//archive/mapreduce-osdi04.pdf) designed by Google. The MapReduce construct essentially helps in achieving parallel execution of tasks. The data stored at different nodes in the cluster needs to be executed parallelly, and then, the results from each of these nodes need to be accumulated to arrive at the final result. You will understand more about the MapReduce construct in the coming segments.

Read the following scenario and answer the questions below based on your understanding of parallel task execution.

**User classification and clustering:**

- Consider a large online retailer BigSale, which has information of 400 million users acquired over the years. The retailer groups the users into different profiles based on their online behaviour and purchase patterns.

- On any given day, about ~10 million users log in to BigSale.com. Whenever a user logs in and performs some activity on the website, the user information is updated. The updated user information is verified once a day to check if the user still fits their current profile or not.

- If they do not fit the current profile, they are to be reclassified into one of the other profiles or added to the ‘UNKNOWN’ class.

- When the ‘UNKNOWN’ class becomes significantly large, all user information is clustered to identify new user profiles.

Clustering is different from classification in the sense that the output class(es) are not known in the case of clustering. So, clustering is done with the assumption that the existing classification of user-profiles may not be valid any longer. \[You had heard about these during our discussion on [supervised](https://learn.upgrad.com/v/course/609/session/73516/segment/411858) and [unsupervised](https://learn.upgrad.com/v/course/609/session/73516/segment/411859) algorithms]

## Coming up

In the next segment, you will learn about Mapreduce which is a programming framework used for data processing in Hadoop.

#### Distributed Processing - I

Qn: In this scenario, suppose the retailer needs to fetch user information based on their activity on the site. Can it be done in parallel for all the users currently logged in?

- Yes

- No

Ans: A. *The information of a particular user is independent of other users' activity. So the fetching can be  executed in parallel*

#### Distributed Processing - II

Qn: Suppose user information fetching (based on their current activity) is to be done on a distributed database stored on N nodes in a network. There is a master node that coordinates with the distributed database.

If the information for one million users is to be fetched at one point in time, what is the number of tasks that can run in parallel? \[Assume that only one task can run at a time on a computer (including the master node) and that the master node can identify the database node for a user using a hash function.]

- One task to locate the database nodes for all users and N tasks to fetch details from the database

- One million tasks on the master node, one task each to locate the database node for one user, and N tasks to fetch details from the database

- One task to locate the database nodes for all the users and one millions tasks to fetch details from the database

- N tasks, one task each to locate the database nodes for 1/N million users, and N tasks to fetch details from the database

Ans: A. *The master server can run only one task as per the assumption. The N database nodes can run one task each. Once the database node is identified, the updates can happen. If database node identification is done on the database nodes themselves, the information has to be moved around a lot, from the node that did the identification to the node that is the database part for that user.*
