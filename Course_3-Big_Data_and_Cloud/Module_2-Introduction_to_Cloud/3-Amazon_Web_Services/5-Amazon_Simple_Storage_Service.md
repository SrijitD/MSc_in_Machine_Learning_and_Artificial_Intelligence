# Amazon Simple Storage Service

So far, you have explored the IAM service of AWS. You also learnt that using policies you can grant or deny users access to AWS resources. Now, to get some hands-on, you will create some resources using one of the popular Amazon services, namely, Amazon’s Simple Storage Service, which you will learn about in this segment. It is also known popularly as Amazon S3.

**VIDEO**

The above steps have been summarised in the document below.

Download [Amazon S3](S3.pdf)

**Amazon S3:** It is an object storage service of AWS.

1. **Uses:**

    1. Backup and restore

    2. Archiving purposes

    3. Hosting static websites

2. You can upload any type of file, such as images, csv, etc., to Amazon S3.

3. It offers 99.999999999% durability and 99.99% availability.

4. Some of its key concepts include the following:

    1. **Object:** Any file that is stored in Amazon S3 is considered an object.

    2. **Key:** It is a unique object identifier. It can be used to retrieve an object from Amazon S3.

    3. **Buckets:** The objects in Amazon S3 are stored in Buckets. It has a unique name globally.

    4. **Versioning:** You can also maintain the version of an object in Amazon S3.

In the next video, you will learn more about Amazon S3 by exploring other key concepts.

**VIDE0**

So, here is a list of the points that were covered in the video:

1. All buckets in Amazon S3 are private by default. You can make them public by modifying the bucket properties.

2. Uploads to Amazon S3 are atomic.

3. Amazon S3 provides read-after-write consistency.

4. Some of the popular Amazon S3 storage classes include:

    1. S3 standard

    2. S3 intelligent tiering

    3. S3 infrequent access

    4. S3 glacier

5. The cost of Amazon S3 depends on:

    1. The region where the S3 is located

    2. The size of the data stored

    3. The duration of the data in S3

    4. The object access request

So, now that you have the understanding of Amazon S3, it is time for you to make your hands dirty by working on the Amazon S3. You will now learn how to make the uploaded file publicly available and also learn how to maintain the versioning of a file.

**VIDEO**

**Note:** If you are planning to use the same bucket in future, remove the public access before proceeding ahead.

So, you learnt that if a user wants to make an object public, then they need to follow the steps below:

1. First, they should enable public access to the bucket, and then

2. Make the object public.

You also learnt how to maintain different versions of a file in S3 by setting versioning on the bucket. Also, You must remove this component from the bucket as you will be charged for maintaining different versions of the bucket.

Now that you have a good understanding of Amazon S3, you will next learn how to control the user to access Amazon S3 resources.

**VIDEO**

In the video above, you first learnt how to allow a user access to the AWS S3 buckets using the identity-based policy. Then you learnt how to deny the same user access to the S3 buckets using the resource-based policy.

Now, answer the following questions based on all that you have learnt thus far.

#### Quiz

Qn: Suppose you created a bucket in Amazon S3 by blocking all public access and then uploaded an object to it. Now, if we just change the permissions of the bucket as public, will the object be publicly available or not?

- Yes

- No

Ans: B. *In order to make your object public, you have to first make the bucket public, then you also have to explicitly make the object public.*

Qn: Select all true statements from the options below. More than one option can be correct.

- Key is a unique object identifier.

- S3 offers 99.999999999% durability.

- The name of a bucket should be unique globally.

Ans: All of the above.

- *Key is the name that is assigned to an object. It is a unique object identifier that can be used to retrieve an object.*

- *AWS S3 offers 99.999999999% (eleven 9's) durability. The chances of losing your file in Amazon S3 are very low. This is because S3 creates multiple copies of the objects across multiple physical systems.*

- *The objects are stored in buckets in Amazon S3. Every bucket in Amazon S3 should have a unique name globally. You can create buckets specific to a required region.*

Qn: Which Amazon S3 storage class is used for archiving purposes?

- S3 standard

- S3 Intelligent-Tiering

- S3 Infrequent Access

- S3 Glacier

Ans: D. *S3 Glacier is a free, long-term and inexpensive data archiving storage class. You will learn more about these storage classes in the upcoming module.*

Qn: Consider that you denied a user access to the S3 bucket by mentioning ‘Deny’ as Effect in their identity policy. Then you allowed the same user access to the S3 bucket by mentioning ‘Allow’ as Effect in the bucket policy of this bucket. Would the user now have access to this bucket?

- Yes

- No

Ans: B. *The user would not have access, since the least permission will always be enforced. For instance, if there is Deny in the resource-based policy and Allow in the identity-based policy, or vice versa, then the connection will not happen. There should not be any Deny in any of the policies. Only then will the connection happen.*

In the next segment, you will explore another popular service of AWS (i.e., Amazon Elastic Compute Cloud) and later try to connect to Amazon S3 from this service using an IAM role.
