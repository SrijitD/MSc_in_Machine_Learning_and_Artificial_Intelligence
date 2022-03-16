# AWS SDKs: Boto3

In the previous segment, you learnt about SDKs and understood how they help with developing applications over any platform. In this segment, you will explore one of the SDKs offered by AWS and learn how to use it to interact with different AWS services. So, let’s get started.

The installation process is performed over a previously created EC2 instance. You must also connect with an existing instance in order to replicate the procedure. You can use the `aws ec2 describe-instances` command in the AWS CLI to get the list of available instances in your account. As a precaution, also ensure that the instance is Amazon Linux-based and has the instance type as **t2.micro** as shown in the image given below.

![EC2 Instance Type](https://i.ibb.co/s2Ctk54/EC2-Instance-type.jpg)

**Note:** The ami-ID must be fetched from the website (not from the image provided above).

An important thing to note is that you may get a **time-out error** when you try to reconnect to the EC2 instance created before. This is because the public IP address of your local machine may have changed. So, every time, you must first check the public IP address of your local machine and then, if required, update the rules defined in the Security Group of the instance accordingly to allow access to the new IP address. You can refer to the documentation given below for this.

Download [Updating Security Groups](Docs/Amazon_Web_Services/Updating_Security_Groups.pdf)

Make sure that you pay attention to all the commands. Here, the sequence of commands also matters. Take a look at the image given below to get an understanding of the commands.

**VIDEO**

**Note:** [02:12] If **python36** gives an error, then you can install **python37**.

**Note:** It was mentioned you can use Python3 or Python2 but please take a note that official support for Python2 has been discontinued now.

**Note**: In case of any ambiguity, you can refer to the document provided below.  
(Steps for **Jupyter** are covered in the next video.)

Download [Boto3+Jupyter Installation](Docs/Amazon_Web_Services/Boto3_and_Jupyter_Installation.pdf)

Boto3 is the AWS SDK for Python. You can use it to access all the AWS services inside the Python environment. To work with Boto3, first, you need to install the following packages over the EC2 instance:

- Python3
- PIP3

Make sure you run all the necessary steps shown in the video carefully. Once all the required prerequisites are installed, your instance is ready for the installation of Boto3. You can simply run the following command to install the package over the instance:

**`pip3 install boto3`**

So, now that you have installed Boto3 over the instance, you need a Python environment, such as a shell or a Jupyter Notebook where you can run your commands. In the forthcoming video, you will hear from Vinod as he explains how to load one in our EC2 instance.

**Important Note: The process to connect to the Jupyter Notebook after installation will differ in the Windows OS. You must refer to the documentation "Boto3 + Jupyter Installation" after running the installation command at [02:09].**

**VIDEO**

So, you can install the Jupyter Notebook on a Linux-based instance using the following command:

**`pip3 install jupyter --user`**

**Linux/Mac users** can run the following command (after modification) to connect to the EC2 instance:

```shell
ssh -i "keypair1.pem" -N -f -L 8888:localhost:8888 ec2-user@IPv4_address_of_EC2 instance
```

Windows users require the software 'PuTTY' to connect to the instance. The complete process has been provided in the documentation above: _**Boto3 + Jupyter Installation**_.

Once you have access to the Jupyter Notebook, you will have all the elements that you need in order to run the Boto3 commands to access AWS services using Python. You will not have to install Boto3 and Jupyter on this instance the next time you launch this instance. However, in case you create a new instance, you will have to follow these steps if you wish to work with AWS services using the Jupyter Notebook. Now, in the next video, we will run a few commands using Boto3 in the Jupyter environment.

**VIDEO**

So, as you learnt in the video, working with Boto3 is similar to working with other libraries such as Pandas and NumPy. You need to import the package or library into the Notebook in order to call the functions present in it.

The code used in the video is provided here.

```shell
# Importing Boto3
import boto3

# Creating S3 client
s3 = boto3.client('s3')

# Listing the buckets
response = s3.list_buckets()

# Printing the response variable
print(response)

# Printing the bucket names
for bucket in response['Buckets']:
    print(bucket['Name'])
```

The commands in Boto3 follow a simple structure, as described below:

- First, you define a client associated with the service that you want to access. In the above case, it was S3.
- Once the service is ready, you can then call different functions associated with it. Here, you saw that the `list_buckets()` command was used to list all the buckets. You can find all the commands associated with the service in the [Boto3 documentation](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/index.html#available-services).
- The output received from the command above contains the metadata associated with the operation, along with the desired results. You can easily fetch the desired elements by iterating over the appropriate section. Here, we did it for bucket names.

You must also make note of the following points while working with the Jupyter Notebook on the instance:

- If you try to launch a new Jupyter session when one session is already running, then it will be hosted on a new port number. You will not be able to access the environment on the new port using the steps above, as you will have to first provide access under the Security group for the new port.
- If you implement the steps mentioned in the Jupyter notebook on a new instance, make sure that you have added the required permissions for S3 through IAM Roles.
- To terminate a Jupyter session on the instance, you can press ‘**Ctrl + C**’ on the instance window. It will ask whether you would want to terminate the session. You can provide the input ‘y’ in case you want to terminate the Jupyter session.

#### AWS SDK: Boto3

Qn: The output generated from the Boto3 function `list_buckets()` is in which format?

- JSON

- List

- Dictionary

- Array

Ans: C. _The output generated from the Boto3 functions is in the form of a dictionary. You can use the commands associated with them to fetch all the required results._

Qn: Which of the following commands is the correct one to launch a new instance for computation using the Boto3 SDK?

- **Client:** EC2; **Command:** `start_instances()`

- **Client:** EC2; **Command:** `run_instances()`

- **Client:** EC2; **Command:** initiate_instances()

- **Client:** EC2; **Command:** `launch_instances()`

Ans: B. *You can use the run_instances() command to create a new EC2 instance. You can find the complete syntax [here](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/ec2.html#EC2.Client.run_instances).*

This is how you can work with the different AWS services in Python using the Boto3 SDK. Now, in the upcoming segments, you will learn how to create an application using this SDK.

Here are some necessary steps before proceeding to the next segment:

- You must **terminate all the instances** created until now. The EBS volume attached with each instance is charged even though the instance remains in the stop state. Therefore, if you have anything stored on the instance, then copy it on your local machine and terminate the instance.
- Keep all the codes and documentation in a folder as you will require codes from the previous sessions to implement the tasks in the case study provided ahead.
