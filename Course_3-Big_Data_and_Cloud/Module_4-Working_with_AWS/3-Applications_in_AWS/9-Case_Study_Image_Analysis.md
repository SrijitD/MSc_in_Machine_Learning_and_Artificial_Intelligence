# Case Study: Image Analysis

After uploading the image, the next task is to call the Amazon Rekognition service to scan the image for a celebrity. In our application, this is done through a Lambda function. The reason for using a Lambda function here is that it can be called anywhere once created. In the later segments, you will learn about a major reason for using AWS Lambda in the actual production environment.

The image below shows the application architecture.

![Case Study Application Architecture](https://i.ibb.co/886kkWm/Case-Study-Application-Architecture.jpg)

The first part associated with this task is to create a Lambda function. In the forthcoming video, you will learn how to do that.

**VIDEO**

**Note:** Do not forget to add ‘**!**’ or ‘**%**’ in the commands wherever specified. These characters are useful when you want to run local shell commands inside the Jupyter Notebook.

In the previous video, we defined all the elements necessary to create a Lambda function. The function uses Amazon Rekognition to perform celebrity recognition over an image stored in S3. You can refer to the documentation for the [recognize_celebrities()](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/rekognition.html#Rekognition.Client.recognize_celebrities) command, which is called as part of the handler. The code is given below

```python
import boto3
import json

def lambda_handler(event,context):
    client = boto3.client('rekognition')
    response = client.recognize_celebrities(
                    Image={
                               'S3Object':{
                                   'Bucket' : event['bucket'],
                                   'Name':event['object_name']
                               }
                    }
    )
    return (response['CelebrityFaces'][0]['Name'])
```

As part of the process, you also installed the Boto3 package and zipped it along with the handler created for the Lambda function. The next step is to create the Lambda function and call it within the notebook in order to perform celebrity recognition. In the next video, we will see how to do that.

**VIDEO**

So, you could successfully extract the name of the celebrity using the Lambda function. Now, to create the Lambda function, you are expected to run the CLI function `create-function` under AWS Lambda. It takes different attributes, such as function name, handler and zip file, to create the function from the files created in the first video.

```python
!aws lambda create-function \
--function-name celebrity_detector \
--runtime python3.6 \
--zip-file fileb://celebrity_detector.zip \
--handler handler.lambda_handler \
--role arn:aws:iam::688716701626:role/csdlambdarole \
--region ap-south-1
```

Once you have the function ready, you can use it within the Jupyter Notebook through the Boto3 commands. You can run the ‘[invoke](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/lambda.html#Lambda.Client.invoke)’ function to call the Lambda function over the image stored in S3. The output from the function is stored in the ‘_Payload_’ section under the ‘_response_’ variable. Finally, you can decode the stored value to get the name of the first celebrity.

```python
#invoke that AWS lambda

lam = boto3.client('lambda',region_name='ap-south-1')

response = lam.invoke(
FunctionName = 'celebrity_detector',
InvocationType = 'RequestResponse',
LogType = 'Tail',
Payload = json.dumps({"bucket":"testbuck-1","object_name":"bezos_demo_image.jpg"})

)

celebrity_name = response['Payload'].read().decode('utf8')
```

#### AWS Lambda

Qn: In the application above, you have extracted only the name of the celebrity. Now, you are expected to extract the confidence score as well. Which of the following elements must be changed in order to obtain that?

- Print parameters

- Invoke parameters

- Lambda function

- Extraction parameters (variable - celebrity_name)

Ans: C. *This is the correct option. If you check the last line of the handler.py file, you will find that the Lambda function extracts only the celebrity names from the output of the Rekognition service. `(response['CelebrityFaces'][0]['Name']).` Hence, you must change the Lambda function if you want any additional information.*

#### Amazon Rekognition

Qn: Which of the following commands would be the most helpful to build a facial recognition service on a large scale for security purposes?

- compare_faces

- detect_faces

- search_faces_by_image

- list_faces

Ans: C. _This is the correct command, as it can be used to search a face within a specified collection._

#### Boto3

Qn: You are using AWS Lambda to call different applications within your application. Is it possible to work without it?

- Yes

- No

Ans: A. *You will be working with Boto3, as the application must be built in a Jupyter Notebook. The Boto3 documentation provides you with commands associated with all the AWS services. Instead of calling Amazon Rekognition through AWS Lambda, you can directly perform the task through the package. Please refer to this [link](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/rekognition.html#Rekognition.Client.recognize_celebrities). Here, you are using AWS Lambda in the application to get a holistic view of all the elements.*

Here is a summary of the steps to call an AWS service through the Lambda function:

- Create a handler file that defines the AWS service to be used. This file also stores the commands to be executed once the function is called.
- Zip the handler file with all the required packages in a folder.
- Create the Lambda function using the CLI command `create-function` under AWS Lambda.
- Call the Lambda function over the desired object using the `invoke` function from the Boto3 documentation.

You are now ready with all the required results. The next step is to store the results in a database. We will discuss this in the next segment.
