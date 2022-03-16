# Case Study: Preparatory Steps - II

The application has a computation platform ready in the form of the EC2 instance. The next step is to work on the storage resources. Now, you need the following two storage services in your application:

- Amazon S3
- Amazon RDS

Let’s watch the next video for the process of creating the same. Pay attention to the video, as you will be creating an RDS instance using the AWS CLI for the first time.

**VIDEO**

**Note:** Windows users must also add another rule in Security Groups that allows database access to your public IP address, as you will be running the Jupyter Notebook from your local browser.

So, in the previous video, you learnt how to create a MySQL database using Amazon RDS through the AWS CLI. You can specify all the features under the `create-db-instance` command of the RDS service and your instance will be ready once the command has been executed.

```shell
# RDS Commands 
# Creating an RDS instance through CLI
aws rds create-db-instance --engine mysql \
    --db-name celebrities \
    --db-instance-class db.t2.micro \
    --allocated-storage 20 \
    --db-instance-identifier test-instance \
        --master-username master \
        --master-user-password casestudy

# Created RDS instance
aws rds describe-db-instances

# Authorizing EC2 and RDS connection
aws ec2 authorize-security-group-ingress --group-id db_instance_security_group --protocol tcp --port 3306 --cidr ec2_instance_ip
```

Now, you are working with an existing bucket, and a newly created RDS instance will be used to build the application. The last preparatory step is to define a role for AWS Lambda. If you remember, you will need Lambda to access a file from S3 and send it to Amazon Rekognition for storage. Hence, you must add a role to the Lambda service that allows access to Amazon S3 and Amazon Rekognition.

You have already learnt how to perform all the steps to attach a role to a service. Try to do all the activities for AWS Lambda now.

#### AWS Lambda

Qn: Provide and perform all the steps required to create an appropriate role for the AWS Lambda service under the celebrity recognition application. You must specify the codes along with the steps for a thorough understanding. You are expected to store the ARN of the created role for future reference.

**Note:** This is a necessary step. In case you are stuck, please watch the video in the solution to move ahead.

Ans: *Create the ‘Assume Role’ document for AWS Lambda first.*

You have now completed all the steps of the preparation phase. In the next segment, you will move into the implementation phase, where you will start using the Jupyter Notebook.

**Important Note**

Amazon RDS is one of the costliest services offered by Amazon. Therefore, you must terminate the RDS instance as soon as you are done with the case study. This is very important as the accounts are recharged with a limited balance every month, and you must use it wisely.
