# Users, Groups, Roles and Policies

In the previous segment, you were introduced to the IAM service of AWS and learnt about its different key terms, namely, **users, groups, roles** and **policies**. Now, let’s quickly look into each of these terms in more detail.

**VIDEO**

So, with IAM, you can create users and grant or deny them access to AWS resources and services.

1. **AWS root user:** Once you create a new AWS account, you will be provided with single login credentials, namely, your registered email id and password. This account is called a root user and it has complete access to all AWS services. (However, the accounts that you get from NuvePro are not root users.)

2. There are two ways an IAM user can access AWS. These are follows:

    1. Console access

    2. Programmatic access

3. There are three types of IAM users, namely:

    1. Privileged administrators

    2. End users

    3. Programmatic users

If a user 1 wants to access ‘Resource A’, this can be done by granting access to that user. However, let’s say 100 users want to access the same resource; in this case, granting them access individually would be a cumbersome process. This can be done quickly using groups. So, let’s quickly learn about groups in the next video.

**VIDEO**

So far, you have explored two key terms of IAM, namely, **users** and **groups**. Now, how does one control their users or groups to access the AWS resources? Well, this can be done by using IAM policies, which you will learn about in the upcoming video.

**VIDEO**

Now, let's summarise the key points from the video above:

1. **IAM Identities:** Users, Groups or Roles

2. **Resource:** Any entity created by AWS services (for example VM, database, etc.)

3. **Policies** in AWS are JSON documents.

4. Some of the important policy types include the following:

    1. **Identity-based policies**

    2. **Resource-based policies**

5. **IAM Role:** It is an IAM identity that you can create in your AWS account with some specific permissions. Next, this Role can be assumed by any user, service or application to access an AWS resource.

    ![AWS-IAM-Role.png](https://i.ibb.co/hKFSFFX/AWS-IAM-Role.png)

6. Using an IAM role, you can control an Amazon service to access other Amazon services. This cannot be done using policies.  

    ![IAM Roles](https://i.ibb.co/kMG7Sp3/AWS-IAM-accessing-Amazon-Services.png)

In the next segment, you will first create some resources. Then using the identity-based policy and resource-based policy, you will learn how to control a user to access that resource. In the later segments, after exploring some popular Amazon services, you will also get hands-on experience with roles. But before that, you will learn about some IAM best practices that will help you secure the AWS users and resources.

Let's revisit the key IAM best practices below:

1. Delete root user access keys

2. Use multifactor authentication

3. Use groups

4. Rotation of credentials

5. Grant the least privilege of access to any resource

#### Quiz

Qn: Which of the following are IAM identities?

- Users

- Groups

- Roles

- All of the above

Ans: D. *The different IAM identities include Users, Groups and Roles.*

Qn: Which of the following is a JSON document and is used to allow or deny an IAM identity access to AWS resources or services?

- IAM Users

- IAM Groups

- IAM Policy

- IAM Roles

Ans: C. *You can control access to AWS resources by assigning policies to IAM identities or resources. Policies in AWS are JSON documents. An example of a policy is shown in the next question.*

Qn: Which of the following is NOT a sub-element of the statement in a policy document?

- Effect

- Version

- Action

- Resource

Ans: B. *The statement encapsulates the collection of permissions for a particular resource or user.*

Qn: Select all true statements from the options below. More than one option can be correct.

- Identity-based policies are attached to a user, a group or a role.

- Resource-based policies are attached to a user, a group or a role.

- Identity-based policies are attached to resources.

- Resource-based policies are attached to resources.

Ans: A & D.  

- *Identity-based policies are attached to AWS IAM identities (users, group of users or roles). These policies control their access to the AWS resources.*
- *Resource-based policies are attached to AWS resources (Amazon S3). These policies determine which identity can or cannot access the resources.*
