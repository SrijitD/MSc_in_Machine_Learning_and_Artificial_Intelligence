# S3: Storage Classes - I

By now, you are aware of the commands that can help you access Amazon S3 through the AWS CLI. You can perform all the basic functions, such as create, delete, move and copy. In this segment, you will take a look at the implementation of this service in a real scenario.

In the production environment, you must remember that all the AWS services that you use are chargeable after a free tier. The applications or the resources of any company cannot be sustained only on the free tier. In the case of Amazon S3, the cost is calculated based on the following parameters:

1. The region where S3 is located
2. The size of the data stored
3. The duration of the data in S3
4. The object access request

Now, to make the service cost-effective, AWS offers the feature of **Storage Classes**, which you were introduced to in the previous module on ‘Introduction to Cloud’. Let's try to understand this feature in detail in the forthcoming video.

**VIDEO**

As you saw in this video, the usage or the frequency of accessing a file, either on a local machine or in the Cloud environment, varies from one file to another. Some files are accessed daily, whereas others are opened only when required. Moreover, the usage pattern of a file can also change over time. Now, let's take a look at the image given below that shows the project flow chart.

![Project Flow](https://i.ibb.co/GnfM6Z3/Project-Flow.png)

Since Amazon S3 is a paid service, you would want to optimise the storage as much as possible. In the next video, you will learn how to do this in the Cloud.

Play Video

3221820

**Note:** At [01:23], Vinod mentions that object availability is the percentage of a 1-year period for which the file is inaccessible, which is not correct. It tells the percentage of a 1-year period for which the file will be **accessible**.

AWS provides you with the service to store data based on the usage pattern and charges you accordingly. Depending upon the budget and the access frequency, you can select from the provided storage classes. All the storage classes that you saw in the video given above deal with files that are accessed repeatedly.

![Storage Classes](https://i.ibb.co/chvCTgS/S3-Storage-Classes.jpg)

However, you may also require the storage service simply for backup or to archive files. In that case, you would not be interested in paying the same amount as you pay for the accessed data. Storing the data on external hard drives or spare machines would be cheaper than paying for the aforementioned storage classes. However, you will then face the hassle of maintaining and tracking all of these external resources.

In the forthcoming video, we will see how AWS provides a solution to overcome this issue.

Play Video

3221820

AWS provides an extremely useful and cost-effective solution to back up or archive data. The table given below summarises all the storage classes discussed above.

![AWS Storage Classes - Specs ](https://i.ibb.co/KbVDqSB/S3-Storage-Classes-Specs.png)

**Note:** Right-click to open the image in a new tab for more clarity.

Note that the objects stored in S3 Glacier and S3 Deep Archive do not allow real-time access and have to be restored first before accessing data. The restored object is a temporary copy, which expires after a specified time. Hence, from the image given above, you can see that object availability for these classes is 99.99% after the files have been restored. To get more clarity on the same, you can refer to [this](http://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) link.

So, you can now choose the most suitable storage class based on your usage and the allocated budget. You can check the pricing of the different storage classes [here](https://aws.amazon.com/s3/pricing/). Now, based on the concepts that you have learnt above, try to answer the questions provided below.

#### Amazon S3: Storage Classes

Qn: Which is the most suitable storage class when you have a very important file (should be readily accessible) that is accessed only once or twice a year?

- S3 Standard

- S3 Standard IA

- S3 Glacier

- S3 Intelligent Tiering

Ans: B. *This is the most cost-effective option for infrequently accessed data, which must be accessible readily when needed.*

Qn: What do you understand by Object Durability of 99.5%?

- 1 out of 200 files stored in S3 may be inaccessible.

- 1 out of 2,000 files stored in S3 may be inaccessible.

- 1 out of 200 files stored in S3 may be lost.

- 1 out of 2,000 files stored in S3 may be lost.

Ans: C. *99.5% means 995 out of 1,000 files will not be lost.*

Now that you have a basic understanding of storage classes, in the next segment, you will learn how to set the storage class for any bucket or for an object.
