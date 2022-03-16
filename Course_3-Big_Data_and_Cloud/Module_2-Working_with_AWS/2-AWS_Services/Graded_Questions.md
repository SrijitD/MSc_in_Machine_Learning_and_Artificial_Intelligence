# Graded Questions

Based on your learnings from this session, answer the graded questions given below.

#### Amazon Rekognition

Qn: Select the statement that is true when Amazon Rekognition is used over [this](http://sureshemre.files.wordpress.com/2011/12/solvayphysics19271.jpg) image. It is an image from the Fifth Solvay Conference on Physics held in 1927.

- Albert Einstein is not recognised in the image by the service.

- All the individuals are correctly identified by Amazon Rekognition.

- According to Amazon Rekognition, it is less likely that Marie Curie is smiling in the image.

- Amazon Rekognition is more confident about the presence of a human in the image than about a tie in it.

Ans: C. *Use the facial analysis feature here. The probability that Marie Curie is not smiling is greater than 50%.*

Qn: Which of the following services will not be helpful in translating a live speech in an international conference?

- Amazon Polly

- Amazon Comprehend

- Amazon Transcribe

- Amazon Translate

Ans: B. *Amazon Comprehend is a text analytics service. This will not be required here.*

#### Amazon CloudWatch

Qn: Suppose you are working with a platform like Instagram that helps you share images and videos. Now, let us assume that the front end is hosted on a set of EC2 machines and the application uses S3 to store all the files in different buckets. Which of the following metrics would help you keep a fixed number of files in each bucket?

- S3: BucketSizeBytes

- EC2: InstanceUsageBytes

- S3: NumberOfObjects

- EC2: NumberOfObjects

Ans: C. *The task is to track the number of files in the S3 buckets. This metric will help you perform this task.*
