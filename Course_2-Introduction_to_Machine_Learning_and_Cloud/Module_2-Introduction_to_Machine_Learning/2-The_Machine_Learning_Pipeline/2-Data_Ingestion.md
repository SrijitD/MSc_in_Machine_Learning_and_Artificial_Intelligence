# Data Ingestion

Data ingestion can be defined as the process of absorbing data for immediate use or storage. It is a bridge to transfer the data generated at a particular source to a destination for storage.

Let’s understand this in the video ahead:

**VIDEO**

Some of the key aspects that need to be considered during the data ingestion phase include:

1. Type of data
2. Processing requirements of data
3. Storage

Based on the structure of the data, it can be classified into three types:

1. **Structured data**: Data is organized and can be stored in SQL databases, i.e., in tables with rows and columns. Therefore, it has the advantage of being  **entered, stored, queried, and analysed**  efficiently using Structured Query Language (SQL).
   - Examples include Aadhaar data, financial data and the metadata of files.
2. **Unstructured data**: We can naively describe unstructured data as a complement to structured data, i.e., it cannot be easily organized and stored in the form of tables (columns and rows).
   - Examples of unstructured data include images, audio, video and chat messages, which are usually generated and consumed by humans. It’s not surprising that the vast majority (~80%) of the data being created in today’s world is unstructured.
3. **Semi-structured data**: There is no predefined schema for semi-structured data. In terms of readability, it sits between structured and unstructured data.
   - XML and JSON files are examples of semi-structured data.

Emails are also examples of semi-structured data since they contain fields such as  **‘From’, ’To’, ’Subject’, and ’Body’**. Emails have internal tags and markings that identify separate data elements; this enables information grouping and the creation of hierarchies among the elements. However, this schema does not constrain the data as in an RDBMS, e.g., the ’Subject’ and ’Body’ fields may contain the text of any size.

Once we know the type of data being handled, the next step would be to identify the processing requirements of the data. Ingestion tools and storage components vary based on these processing requirements. Different types of processing include:

1. **Batch processing**: In batch processing, all the data is collected and stored offline. Then, code is run on the complete dataset to generate valuable insights. Usually, batch processing requires a long time to finish, but also provides more accurate results.
2. **Stream processing**: Unlike batch-processing systems, stream-processing systems handle all incoming data instantaneously. Moreover, systems using stream processing handle data that is typically of the order of a few KBs. The results produced are available almost instantly after the data is received.
3. **Micro-batch processing**: This is very similar to batch processing, except for the fact that batches are tiny. In micro-batch processing, the batch size generally depends on a few events gathered over a short time span, say a few milliseconds.

Batch processing is typically used for complex analytics, whereas stream processing is used to gain real-time insights.

Based on the above factors, the storage component for the collected data is decided:

1. If the data is well-structured, a traditional database can be used.
2. If the data is unstructured, then NoSQL databases are necessary to store it.

Amazon provides multiple storage options such as  **Amazon DynamoDB, Amazon RDS, Amazon Redshift and Amazon Cache**. The choice of these services depends on the type of data you are dealing with, the latency you require, budget and various other aspects.  
The image below best summarizes the concepts learned in this segment. (Please hover on the image for the zoom-in option)

![Data_Ingestion](https://i.ibb.co/ZJ2zB3w/Data-Ingestion.png)

Now answer the following questions to test your understanding:   

#### Structured and Semi-structured

Qn: Pick the reason that justifies why an email is a form of semi-structured data.

- It has metadata justifying the significance of each section (To, CC, BCC, Subject, etc.)
- It can be stored easily in an RDBMS
- It always includes structured content
- It follows a strict format and has to have data in all its sections

Ans: An email has metadata that gives it a well-defined structure.  

#### Identifying the Type of Data

Qn: Match the following:
Data:

1. JSON data
2. A restaurant menu
3. A newspaper article
4. [A website form](https://blog.hubspot.com/marketing/form-examples)

Type:

- A - Structured
- B - Unstructured
- C - Semi-structured

Options:

- 1:A, 2:A, 3:B, 4:C
- 1:C, 2:A, 3:B, 4:A
- 1:C, 2:A, 3:B, 4:C
- 1: C, 2:B, 3:B, 4:C

Ans: 

1. JSON data is semi-structured because this data is in key-value pairs.  
2. A restaurant menu is structured because this data only has three columns: serial number, item and price.  
3. A newspaper article is unstructured because it is pure text.  
4. A website form is semi-structured because even though it has a structure, the data entered may be unstructured.
