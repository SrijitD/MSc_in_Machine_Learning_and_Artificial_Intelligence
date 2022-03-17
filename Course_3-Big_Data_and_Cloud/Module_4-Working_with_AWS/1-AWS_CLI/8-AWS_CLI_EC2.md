# AWS CLI: EC2

In this segment, you will explore the computation service of AWS, that is, Amazon EC2, through the AWS CLI. To make things interesting, you will learn how to create a public network where the instance can interact with components external to a private cloud network.

The entire architecture would like the image provided below.

![AWS EC2 Architecture](https://i.ibb.co/VS2KKyt/AWS-EC2-Architecture.jpg)

As you can see above, the following components must be created in order to complete the expected task:

- VPC or the Virtual Private Cloud: It is the cloud space dedicated to a particular user for his or her operations. This resembles individual accounts under AWS.
- Subnets: The subnets will help in dividing the entire cloud space into two parts: public and private. Functionally, it is a range of IP addresses that form the entire network.
- Internet gateway: This component allows to enable communication between resources in your VPC and the internet.
- Route table: A routing table is a set of rules that help guide the traffic in your cloud network.
- Security group: A security group acts as a virtual firewall that will help you control who can access the components of your network. For example, you specify the IP address of your local machine under the security group to allow access to the EC2 instance.
- Key pair: A key pair, consisting of a public key and a private key, is a set of security credentials that you use to prove your identity when connecting to an Amazon EC2 instance from the local machine.
- EC2 instance: An Amazon EC2 instance is a virtual server in Amazon's Elastic Compute Cloud (EC2) for running applications on the Amazon Web Services (AWS) infrastructure.

In the forthcoming video, let's listen to Vinod as he talks about the same and builds the components one by one.

**VIDEO**

In the video provided above, you learnt how to create two components: VPC and subnets.

The code mentioned in the video provided above is given below.

```shell
# EC2 Commands

# Creating a VPC

aws ec2 create-vpc --cidr-block 10.0.0.0/16

# VPC Details

aws ec2 describe-vpcs --vpc-ids vpc_ID_from_above_command

# Creating subnet 1

aws ec2 create-subnet --vpc-id vpc_ID_from_above_command --cidr-block 10.0.1.0/24

# Copy the subnet ID for subnet 1 from here

# Creating subnet 2

aws ec2 create-subnet --vpc-id vpc_ID_from_above_command --cidr-block 10.0.2.0/24

# Copy the subnet ID for subnet 2 from here

# Subnet 1 Details

aws ec2 describe-subnets --subnet-ids subnet_1_ID_copied_from_above
```

While working on the components, you came across the networking concept of **CIDR Block**. CIDR stands for Classless Inter-Domain Routing, and it is a method for allocating IP addresses for the VPC and the subnets in AWS. In case you are not aware of the notation, you can refer to the document given below to understand it better.

Download [CIDR Blocks](CIDR_Blocks.pdf)

#### CIDR Block

Qn: Which of the following ranges covers all the IP addresses that fall under the CIDR Block **10.0.1.0/26**?

- 10.0.1.0 to 10.0.1.45

- 10.0.1.0 to 10.0.1.63

- 10.0.1.0 to 10.0.1.99

- 10.0.1.0 to 10.0.1.127

Ans: B. *Since the last number is 26, you can alter 32 - 26 = 6 bits. Therefore, you will have 2^6 = 64 IP addresses under the block.*

Now, in the next video, we will understand how the remaining tasks for creating the EC2 instance through the AWS CLI are executed.

**VIDEO**

The code given in this video is provided below.

```shell
# Creating internet gateway

aws ec2 create-internet-gateway

# Copy the Internet Gateway ID from here

# Attaching the internet gateway with the VPC created before

aws ec2 attach-internet-gateway --vpc-id vpc_ID --internet-gateway-id internet_gateway_ID

# Create Route table

aws ec2 create-route-table --vpc-id vpc_ID

# Copy the Route table ID from here

# Attaching the route table to the internet gateway

aws ec2 create-route --route-table-id route_table_ID --destination-cidr-block 0.0.0.0/0 --gateway-id internet_gateway_ID

# Attaching the route table with the subnet 1

aws ec2 associate-route-table --subnet-id subnet_1_ID --route-table-id route_table_ID

# Code to map a public IP to the instance on launch

aws ec2 modify-subnet-attribute --subnet-id subnet_1_ID --map-public-ip-on-launch
```

Using this code, you have attached an Internet gateway to Subnet 1 inside the VPC so that it can be accessed from the external environment. To access it, you have also modified the subnet attribute to attach a public IP that will be assigned to an instance as soon as it is launched under Subnet 1.

So, with the tasks given above completed, you can now proceed to the next video.

**Important Notes**

You will require the ami-ID and the public IP of your system for the next video.

- The ami-ID AMZNLINUXHVM described in the video given below at [05:55] is for ap-south-1, as Vinod is working in the Mumbai region. However, your account is restricted to the **North Virginia** region. Therefore, you must update the command before implementation. You can refer to the document 'AWS CLI - EC2' provided after the video to check the correct ami-ID.
- The document will also help you determine the public IP address of your system. Please **do not** type the same IP address because in that case, the instance will not open on your system.

**VIDEO**

**Note:** Students working with the Windows OS must use the [documentation](https://cdn.upgrad.com/uploads/production/e7598f7d-6bea-46e2-a35c-dfaac6c57392/Connecting+to+EC2+instance+-+Windows.pdf) provided in the previous module to access the EC2 instance through PuTTY.

The document for finding the correct ami-ID and the public IP address of your local machine is provided below.

[AWS CLI - EC2](EC2_CLI.pdf)

**VIDEO**

Finally, in the video provided above, you learnt how to create an instance. The code used for this purpose in the video is provided below.

```shell
# EC2 Commands

# Creating key pair

aws ec2 create-key-pair --key-name keypair1 --output text --query "KeyMaterial"> keypair1.pem

# Opening the .pem file (Windows)

# Open using the 'Notepad' application

# Opening the .pem file (Linux/Mac)

vi keypair1.pem

# Changing the permission to read only (Linux/Mac)

chmod 400 keypair1.pem

# Creating Security Group

aws ec2 create-security-group --group-name test_group --description "Security group for demo" --vpc-id vpc_ID

# Copy Security Group ID as it will be helpful later

# Adding rule to your security group to permit access from your laptop - Ports 22 and 8888

aws ec2 authorize-security-group-ingress --group-id security_group_id_from_above --protocol tcp --port 22 --cidr your_public_ip
aws ec2 authorize-security-group-ingress --group-id security_group_id_from_above --protocol tcp --port 8888 --cidr your_public_ip

# Initiating an ec2 instance

aws ec2 run-instances --image-id correct_AMI_ID_from_document --count 1 --instance-type t2.micro --key-name keypair1 --security-group-ids security_group_id_from_above --subnet-id subnet_1_ID

# Copy ths instance ID from above

# Describing the details of the instance

aws ec2 describe-instances --instance-id Instance_ID_from_above

# Logging into the instance in a LINUX/Mac environment

ssh -i keypair1.pem ec2-user@EC2_instance_public_IP

# Starting an existing instance

aws ec2 start-instances --instance-ids Instance_ID
```

To access an AWS service from the created EC2 instance, you must also attach a role to it. The code for this is provided below. It helps you attach the role created in the previous segments to the created instance.

```shell
# EC2 Instance

# Creating an instance profile to attach the role to the instance

aws iam create-instance-profile --instance-profile-name instanceprofile1

# Attaching the created role to the instance profile

aws iam add-role-to-instance-profile --role-name role1 --instance-profile-name instanceprofile1

# Attaching the instance profile to the instance

aws ec2 associate-iam-instance-profile --instance-id Instance_ID --iam-instance-profile Name=instanceprofile1

# Stopping the instance

aws ec2 stop-instances --instance-ids Instance_ID
```

Moving further, you may have got a clear understanding of how to create an EC2 instance through the CLI. Note that once you have implemented all of the steps, you must stop the instance if you are taking a break. You can restart the instance using the code provided above whenever required. However, you must also keep a check on the public IP in the security groups. It must always be updated to ‘My IP’ under the inbound rules on the EC2 dashboard at the start of the section.

#### AWS CLI: EC2

Qn: Which of the following components is responsible for directing the traffic within a VPC?

- Route table

- Internet gateway

- Security group

Ans: A. *Route tables help in directing the traffic in/out of the various subnets within a VPC.*

Now, you can easily build an EC2 instance using the AWS CLI commands. In the next segment, you will learn about a few advanced concepts associated with Amazon EC2.
