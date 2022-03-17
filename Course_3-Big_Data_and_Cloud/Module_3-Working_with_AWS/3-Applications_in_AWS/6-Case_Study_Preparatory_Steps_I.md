# Case Study: Preparatory Steps - I

Now that you are aware of the application architecture, it is time to create it using the tools learnt in the previous sessions. You will be working with the AWS CLI and the Jupyter Notebook in order to complete all the tasks. The process is divided into the following two parts:

- **Preparatory phase -** In this phase, you will work with the CLI to create the required components, and assign appropriate roles and permissions to the following services:
  - EC2
  - S3
  - RDS
  - Lambda (role creation)
- **Implementation phase -** In this phase, you will execute all the tasks associated with the application inside a Jupyter Notebook. Here, you will run the commands associated with the Boto3 SDK and also learn how to create a Lambda function to call services inside a notebook.

**Note:** You will not be provided with the codes at all the places as a part of this case study. You are expected to use your understanding from the previous sessions to complete the tasks. The complete code file will be attached at the end of the session for your reference.

#### Amazon EC2

Qn: Which of the following policies must be attached to the role associated with the EC2 instance used in the application architecture discussed in the previous segment?

- Amazon RDS

- AWS Lambda

- Amazon Rekognition

- Amazon S3

Ans: C & D.

- *You will need access to AWS Lambda in order to call other services inside the notebook.*

- *Since you will be accessing the images inside Amazon S3 through the EC2 instance, you need to provide permission for the same.*

Now, let's create an EC2 instance with all the requirements to host the application. You are already familiar with the process. This will be a revision of all the concepts. You must run all the codes in the N Virginia (**us-east-1**) region. The policy for the EC2 instance to assume the created role is provided below.

**Important Note:** In the video below, Vinod uses `AWSLambdaFullAccess` to attach the required policy to the instance. However, it has been depreciated according to the AWS documentation starting 2021. You must use `AWSLambda_FullAccess` for this purpose.

Download [test_role.json](test_role.json)

**VIDEO**

#### Amazon EC2

Qn: What are the three elements that you need to create before using an EC2 instance from your machine as part of this program?

Ans: The three elements that must be created before using the EC2 instance are:

- Role,
- Security groups and
- Key pair.

**Note:** You must understand that these elements are required for using the instance, not to create it. You can run the `run-instance` command without these three elements in place.

**Note:**

- [01:01] The content here is incorrect. You must refer to the question related to policies before the video for clarification.
- The second in-video question has an important command that must be executed before proceeding ahead in the video. Do not skip the command to avoid errors.

In the video, you learnt how to create the role for the EC2 instance. Now, in the forthcoming video, we will move on to the next elements: security group and key pair.

**VIDEO**

**Note: You must provide your public IP in the command above.**

You are now ready with all the elements to access the EC2 instance. In the next video, we will use all of these elements to launch the EC2 instance. Make sure you change the AMI-ID while launching the instance, as you are working in a different region.

**VIDEO**

**Note:** Windows users must connect to the instance using PuTTY once it is ready.

The EC2 instance is now ready with all the required permissions. It is now equipped to host the celebrity recognition application as developed in the architecture.
