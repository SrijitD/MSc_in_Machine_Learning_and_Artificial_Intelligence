# Graded Questions

Based on your learning from this session, answer the graded questions given below.

#### SDKs

Qn: Which of the following SDK is not offered by AWS?

- Java

- Python

- PHP

- R

Ans: D. *AWS does not provide any SDK associated with the language R.*

## Text Analysis Using AWS Services

You are expected to solve the questions in the assignment using the Boto3 SDK offered by AWS. You can refer to the documentation [here](https://boto3.amazonaws.com/v1/documentation/api/latest/index.html).

Under the assignment, you are provided with a review of one of the courses offered by **upGrad**. Your task is to use the appropriate AWS service to analyse it and understand the sentiments of the student towards the course.

You are required to code entirely in Python using the Boto3 SDK. You must use the attached Jupyter Notebook to solve the questions asked below. The codes must have proper comments that explain the tasks performed.

[Text Analysis](Graded_Questions.ipynb)

#### Text Analysis Using AWS Services

Qn: Which of the following commands will help you get the gist or context of the review?

- detect_entities

- detect_sentiment

- detect_key_phrases

- detect_syntax

Ans: C. *Key phrases reflect all the important parts of the text. This will be helpful with getting the gist of the entire text.*

Qn: Which of the following companies is not listed in the review?

- upGrad

- Gramener

- Flipkart

- Ola

Ans: D. *This is the correct answer. You will not find Ola anywhere in the review.*

Qn: Based on the results from sentiment analysis using Amazon Comprehend, select the most appropriate option from the ones given below.

- The student has a very positive opinion about the course.

- The student does not feel that the course is worth enrolling in.

- The student suggests that some of the elements of the course are really good, but some of them are quite poor.

- The student feels that the course is neither good nor bad.

Ans: D. *This is the correct answer. The score of the ‘**neutral**’ sentiment is the maximum. This means that the reviewer is not inclined in any direction.*
