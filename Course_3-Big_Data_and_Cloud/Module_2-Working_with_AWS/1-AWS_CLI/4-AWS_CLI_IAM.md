# AWS CLI: IAM

In the previous segment, you learnt how to create an access key pair and use it to log in to the AWS CLI. Now, the next step is to start using the AWS CLI to access different services through the local terminal. Since you will be working with a new tool, let's watch the forthcoming video and try to understand its syntax first.

**VIDEO**

As mentioned in this video, you can easily access different AWS services using the following code structure:

`aws <service> <operation>`

You can replace the elements based on the service and the operation that you wish to execute. To make things easier, AWS provides a list of functions along with their parameters under the same environment. To access them, you can simply use the `help` attribute along with the code. AWS provides the same documentation online as well. It is easier to use the online version because of the user-friendly interface. You can access it using this [link](https://docs.aws.amazon.com/cli/latest/index.html).

The code used in the video provided above is as follows:

```shell
# Help command
aws iam create-user help

# IAM Commands
# Creating an IAM user
aws iam create-user --user-name user1
```

#### AWS CLI: IAM

Qn: In the previous video, you have learnt how to create a user (‘user1’) using AWS CLI. You have covered the concept of roles and policies under IAM in the previous module. Based on fact that the user doesn't have any policy or permission attached, what are the different AWS services that the ‘user1’ can access at this stage?

- S3

- IAM

- EC2

- None

Ans: D. *The user will not be able to access any service until you attach a permission to it. You can check this in the IAM page of your account: **IAM → Users → user1 → Permissions***

Therefore, if you access AWS CLI through 'user1', you must first learn to attach the required permissions to this user. This falls under the roles and policies that can be controlled using IAM.

Now, you will learn how to use the AWS CLI to perform the different IAM operations that were covered in the previous module. You will have to extract the following files in the directory used in the shell environment to execute the commands before proceeding with the demonstration. To find the path in the command shell, use `dir` for Windows and `pwd` for Linux/macOS. You can download the individual JSON files directly from the links provided below.

[test.json](test.json)

[test_role.json](test_role.json)

**VIDEO**

#### AWS CLI: IAM

Qn: How will you create a role for an EC2 instance that provides full access to the AWS RDS? List the steps to perform the task.

Ans: Follow the steps below to create a role for an EC2 instance:

1. *Create a JSON file that stores the policy to allow the EC2 instance to assume a role*
2. *Using the JSON file created in Step 1, run the following command to create a role:*  
    `aws iam create-role --role-name role1 --assume-role-policy-document file://file.json`  
3. *Now, you need to attach a policy to the created role. In the previous case, we created the JSON file ‘test.json’ to define the policy. Since AWS has the inbuilt policy “AWSRDSFullAccess” to provide complete RDS access, you can directly attach it to the created role. Here, you can use the ARN of the policy to attach it to the role using the following command:*  
    `aws iam attach-role-policy --role-name role1 --policy-arn arn:aws:iam::aws:policy/AmazonRDSFullAccess`  
4. *The role is now ready to be attached to the EC2 instance. We will see how to attach it to an EC2 instance when we work with EC2 through the CLI.*

The key learning from the videos given above is that you can perform all the actions of the Management Console through the AWS CLI. To summarise, in the tasks performed in the CLI, you learnt how to:

- Create a new user,
- Create a new group,
- Add a user to a group,
- Create a policy and a role from a JSON file, and
- Attach a policy to the role using the JSON file and the policy ARNs.

You manage access in AWS by creating policies and attaching them to IAM identities (users, groups of users, or roles) or AWS resources. A policy is an object in AWS that, when associated with an identity or resource, defines its permissions. You can read more about it [here](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).

However, an IAM *role* is an IAM identity that you can create in your account that has specific permissions. An IAM role is similar to an IAM user, in that it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. You can read more about it [here](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).

You can also create your own policies by saving the files as JSON on Notepad or Notepad++. However, you must run your file through a JSON validator before using it for deployment. One such validator is attached [here](https://jsonlint.com/).

The code used in the above video is given below.

```shell
# IAM Commands

# Creating a group

aws iam create-group --group-name group1

# Adding user to the group

aws iam add-user-to-group --user-name user1 --group-name group1

# Fetching the group details

aws iam get-group --group-name group1

# Opening the json file that stores the policy to allow S3 access

vi test.json

# Creating a policy using the json file

aws iam create-policy --policy-name policy1 --policy-document file://test.json

# Make sure that you copy the policy ARN here as it will be used later

# Opening the json file that stores the role that allows EC2 to assume the Role

vi test_role.json

# Creating a role using the json file

aws iam create-role --role-name role1 --assume-role-policy-document file://test_role.json

# Attaching the poicy to the created role

aws iam attach-role-policy --role role1 --policy-arn paste_the_arn_copied_above

# Checking the created role

aws iam list-attached-role-policies --role-name role1
```

The following diagram explains the steps to attach a policy to a role.

![Steps to attach policy to a role](https://i.ibb.co/xqD3Nth/Steps-to-Attach-Policy-to-a-Role.jpg)

The video covered the concept of attaching roles to the IAM user. A role can include multiple policies that can be brought together, and then be applied on the underlying entity together. For example, you can include the policies for accessing S3 and RDS in a single role and attach the role to EC2 to access the services together. However, there are also pre-built policies saved under AWS that can be directly attached. For example, if you want the user ‘user1’ to access all the services through CLI, then you need to run the command mentioned below.

```shell
aws iam attach-user-policy --user-name user1 --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
```

The above command also follows the same structure:

`aws <service> <operation>`

`aws <iam> <attach-user-policy>`

As the operation mentions, the command attaches the policy '[AdministratorAccess](https://console.aws.amazon.com/iam/home?region=ap-south-1#/policies/arn%3Aaws%3Aiam%3A%3Aaws%3Apolicy%2FAdministratorAccess)' to the user. This will provide access to all the services to 'user 1'. You can change the policy ARN in case you want to restrict the permissions to a specific service. You can find the ARNs for different policies under the **Policies** section of the Amazon IAM service.

#### AWS CLI

Qn: How does Amazon identify the resources that are available on the AWS Cloud network?

Ans: *AWS tracks all the resources on its platform through Amazon Resource Names, or ARNs. ARNs help with uniquely identifying all the resources across all the users and services available on the platform through their unique structure,* `arn:partition:service:region:account-id:resource-type/resource-id`

Qn: What is the difference between the following policy documents? Multiple answers can be correct.

![AWS IAM Policy Question](https://i.ibb.co/F7W1JY1/AWS-IAM-Policy-Question.jpg)

- Policy 1 is defined for S3 only, and Policy 2 is for EC2 only.

- Policy 1 allows complete access to all the AWS services.

- Policy 1 allows access to all the AWS services, except for deleting the buckets in S3.

- Policy 2 gives complete access to the EC2 service.

- Policy 2 is defined for EC2 to assume a role.

Ans: C & E.

- *The policy provides complete access to all the services as mentioned in the first part. However, in the second part, the NotAction element restricts the action of deleting any bucket for the entity that assumes the defined policy.*
- *The policy as seen in the video above is used to allow EC2 to assume a role.*

In this segment, you learnt how to work with the AWS IAM service using the CLI. The next service that you will work with is Amazon S3.
