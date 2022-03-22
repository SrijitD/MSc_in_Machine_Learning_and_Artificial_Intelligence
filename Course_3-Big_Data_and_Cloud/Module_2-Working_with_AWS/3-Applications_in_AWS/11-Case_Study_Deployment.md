# Case Study: Deployment

By now, you must have understood how to build an application using SDKs. In the previous segments, you went through a case study of building an application using AWS services. However, the approach used in the case study is different from the actual deployment. In the forthcoming video, Vinod will explain how this application would actually look in a production environment.

**VIDEO**

So, as mentioned in the video, the applications are not hosted on a Jupyter Notebook in an actual production environment. There is a front end and a back end associated with the application. The image below broadly represents the deployment of the celebrity recognition application that you built during the case study.

![Image Recognition Application](https://i.ibb.co/ZL5rYwC/Image-Recognition-Application.jpg)

From the previous video, you must have understood that developing an actual application requires a deeper understanding of resources. Here, you are expected to design an architecture that provides all the desired features and is able to handle the varied load on the system. In this case, you must use:

- **Autoscaling EC2 instances** to handle requests from users. The number of upload and download requests may vary; therefore, your application must be capable of operating in all conditions. To do so, the instances will require enough computation and memory power. Hence, you must use a general-purpose instance.
- **S3 buckets** for storage, as they provide a low-cost option that is highly scalable and durable.
- **AWS Lambda**, as it provides rapid scaling and speed of the back-end processes. There could be a huge variation in the number of images uploaded per second. The application must be efficient in quickly scaling according to the load. Also, AWS Lambda can track the events in S3 to trigger image analysis when a new image is uploaded to S3.
- **Amazon Rekognition** to process the images in the back end.
- **MySQL database** to store the results in a structured format for easy querying.

Question 1/1

Mandatory

#### Application Deployment

Qn: Which of the following services enables the feature for launching the Lambda service automatically as soon as a file is uploaded in the S3 bucket?

- Amazon CloudWatch

- AWS Lambda

- Amazon S3

Ans: C. *Amazon S3 can send an event to a Lambda function when an object is created or deleted. Since this event is responsible for launching the Lambda function, it is S3 that triggers the Lambda service.*

So, by now, you must have understood the application-building process better. In the next segment, we will summarise the learnings from this session.
