# Amazon Comprehend

The first AWS ML/AI service that you will learn about is Amazon Comprehend. In the forthcoming video, let's listen to Vinod as he talks about this service.

**VIDEO**

Amazon Comprehend is a text analytics service that finds insights and relationships in a text. It uses the Natural Language Processing (NLP) function in the background to accomplish the task. The service offers the following features:

- **Keyphrase Extraction**  
    This feature returns key phrases from the text and provides a confidence score to support them as key phrases. This helps with understanding the gist of the entire text from the unstructured data present in the file.
- **Sentiment Analysis**  
    It returns the sentiment of the text (positive, negative, neutral or mixed). This feature is useful in analysing customer responses, as it helps with inferring the satisfaction level of consumers through their posts, comments, reviews, etc.
- **Syntax Analysis**  
    This feature identifies word boundaries and the parts of speech for each word, for example, a noun and a pronoun.
- **Entity Recognition**  
    This feature helps with identifying different entities within the text – ‘People’, ‘Places’, ‘Locations’, etc.
- **Topic Modeling**  
    This feature identifies key terms from a collection of documents and also groups each document under relevant topics. It provides a weightage to each topic in the document in order to gauge which topic is the most relevant in each document.

Due to the long list of features that it offers, Amazon Comprehend finds great use in multiple industries. You can go to this [link](https://aws.amazon.com/comprehend/customers/) to explore how different companies use this tool. The image given below shows one such use.

![Amazon Comprehend](https://i.ibb.co/svKzCgC/Amazon-Comprehend.png)

While using Amazon Comprehend, you must also keep a check on the cost of each service. You are charged only for the feature that you use. To learn about the pricing, you can visit this [page](https://aws.amazon.com/comprehend/pricing/).

Moreover, you can read about the industry use cases of this service from this [link](https://aws.amazon.com/comprehend/customers/).

#### Amazon Comprehend

Qn: It is necessary to know machine learning concepts in order to run the Amazon Comprehend service. Is this statement True or False?

- True

- False

Ans: B. *AWS provides a pre-trained model that is ready to use whenever required. You can run the service on the AWS platform without any background in machine learning.*

Qn: Suppose you are running the Sentiment Analysis feature over a 250-character review. What would be the amount charged for the service?

- $2.5*10^{-4}$ dollars

- $3*10^{-4}$ dollars

- $3*10^{-4}$ dollars

- $4*10^{-4}$ dollars

Ans: C. *Amazon Comprehend requests for Entity Recognition, Sentiment Analysis, Syntax Analysis, Key Phrase Extraction and Language Detection are measured in units of 100 characters, with a 3-unit (300 character) minimum charge per request.*

In the next segment, you will learn about another ML/AI service offered by AWS: Amazon Transcribe.
