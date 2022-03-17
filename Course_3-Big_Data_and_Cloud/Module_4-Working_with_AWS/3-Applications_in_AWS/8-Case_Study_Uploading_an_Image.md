# Case Study: Uploading an Image

So far, you have completed the preparatory tasks to be covered through the AWS CLI. You have created all the components that are required to host the application. Now comes the implementation part. The entire process can be broken into the following three main tasks:

- Uploading the file to S3
- Performing image analysis
- Storing results

The image below shows the application architecture.

![Case Study Application Architecture](https://i.ibb.co/886kkWm/Case-Study-Application-Architecture.jpg)

This segment deals with the first task of uploading the image in  S3. In the forthcoming video, you will hear about it from Vinod. You can download the file provided below to write all the codes. The image used in the video is available at this [link](https://mlc-c01m04-casestudy.s3.amazonaws.com/bezos_demo_image.jpg).

Celebrity_Recognition

Download

**VIDEO**

**Note:** You can refer to the segment ‘AWS SDKs: Boto3’ to complete the installation of Jupyter Notebook on the EC2 instance.

After installing the Jupyter Notebook, the next step is to install the Boto3 package to access the AWS services using Python. The first task that you are expected to perform using the Boto3 SDK is to upload an image file to the S3 bucket for visual analysis.

The command that you are expected to work with is `upload_file`. You can refer to the [Boto3 documentation](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/s3.html#S3.Client.upload_file) to know more about it. Once this task is complete, you can use the `list_objects` command to check whether the upload was successful or not.

Note that you can first print the complete output stored inside the ‘_response_’ variable to understand the structure. This will help you extract only the required results from it (objects in ‘_testbuck-1_’ in our case). You can also find the same in the documentation [here](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/s3.html#S3.Client.list_objects).

Question 1/1

Mandatory

#### Boto3

Qn: Which Boto3 command will help you extract the size of the objects stored in S3 along with their names?

- ```python
  response = s3.list_objects(Bucket = ‘b1’)  
  for objects in response[‘Contents’]:  
      print(objects[‘Key’], objects[‘Size’])
  ```

- ```python
  response = s3.list_objects(Bucket = ‘b1’)  
  for objects in response[‘Contents’]:  
   print(objects[‘Key’, ‘Size’])
  ```

- ```python
  response = s3.list_objects(Bucket = ‘b1’)  
  for objects in response[‘Contents’]:  
   print(objects[[‘Key’, ‘Size’]])
  ```

Ans: A. _This is the correct way to print multiple elements from a dictionary._

The next task is to send the image for analysis. In the next segment, you will learn how to do this using AWS Lambda in Python.
