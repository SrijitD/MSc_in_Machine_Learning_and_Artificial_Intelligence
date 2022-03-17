# Graded Questions

Based on your learning from this session, answer the graded questions given below.

#### AWS CLI

Qn: Which of the following is the correct attribute to attach a policy to a user?

- attach-policy

- add-user-policy

- attach-user-policy

- attach-policy-to-user

Ans: C. *aws iam attach-user-policy --user-name user1 --policy-arn arn:aws:iam::aws:policy/Policy*

Qn: You are expected to extract the instance ID and the private IP address of all the instances in the Mumbai region. The output has to be stored in tabular format in a text file ‘instance info.txt’. How will you perform this task using the AWS CLI?

- `aws ec2 describe-instances --query “Reservations[*].Instances[*].[InstanceID, PrivateIPAddress]" --output table --region ap-south-1 > “instance info.txt”`

- `aws ec2 describe-instances --filter “Reservations[*].Instances[*].[InstanceID, PrivateIPAddress]" --output table --region ap-south-1 > “instance info.txt”`

- `aws ec2 describe-instances --query “Reservations[*].Instances[*].[InstanceId, PrivateIpAddress]" --output table --region ap-south-1 > “instance info.txt”`

- `aws ec2 describe-instances --filter “Reservations[*].Instances[*].[InstanceId, PrivateIpAddress]" --output table --region ap-south-1 > “instance info.txt”`

Ans: C. *The correct attribute to get the desired options from the output is query. Also, the AWS CLI is case sensitive and you must check the format of each element that you want to extract.*

#### EC2: Scaling

Qn: A company decides to scale its systems, but the constraint is that the available space is limited by size or, in other words, the company cannot increase the number of servers installed in the facility. Which of the following scaling strategies can the company deploy in order to achieve the desired targets if they want to maintain a private cloud network within the same premises?

- Vertical scaling

- Horizontal scaling

- Both of them

- None of these

Ans: A. *Since the company has to increase the processing power of the existing system, i.e., increase the RAM or other hardware, the correct option is vertical scaling.*