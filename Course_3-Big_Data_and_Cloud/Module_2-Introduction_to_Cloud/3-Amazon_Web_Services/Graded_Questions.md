# Graded Questions

#### Quiz

Qn: Let’s say there are 5000 users and require the same permissions. Granting each of them individually would be a cumbersome process. Which of the following would be the best fit to solve this problem?

- Role

- Groups

- Policy

- None of the above

Ans: B. *You can add all these 5000 users to a group and assign the policy with the required permissions to this group only once. Here, you are getting rid of the cumbersome process of assigning the policy to each user individually.*

Qn: Consider this scenario: in Amazon S3, a new version of a file is being uploaded and, simultaneously, the request to download the same file is being executed. What does the user get in this scenario?

- The older version of the file

- The new version of the file

- The corrupt file

- Does not get anything

Ans: A. *Since all uploads to Amazon S3 are atomic, the user gets the older version of the file in this scenario. They get the latest version of the file only if the upload is complete. It never gives an incomplete or corrupt version of the file.*

Qn: Consider, you know the EC2 instance configuration for your requirement and need it for one year. Which of the EC2 instance type best suits this scenario?

- On-demand instance

- Spot instance

- Reserved instance

- None of the above

Ans: C, *These are suitable for the use cases which have predictable usage. Here, the customers can commit to various plans provided by amazon some of them are 1 year or 3 year term plans.*

Qn: RDS is _____ offering

- SaaS

- IaaS

- PaaS

Ans: C. *The Amazon RDS is a managed relational database service. Amazon RDS relieves user of standard database tasks such as backup, patching up and monitoring. Amazon RDS is  PaaS offering from Amazon Web Services.*
