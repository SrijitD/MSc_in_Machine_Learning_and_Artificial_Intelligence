# AWS CLI: S3

Having worked with the IAM service, you will now use the AWS CLI to perform different functions associated with S3, the storage service of AWS. Let's watch the video given below on the same.

**VIDEO**

**Note:** In case there are any spaces in the file path, make sure that you put it in double quotes.

The code used in the video given above is provided below.

```shell
# S3 Commands

# Creating a bucket - mb command

aws s3 mb s3://unique_bucket_name

# Listing the buckets in S3 - ls command

aws s3 ls

# Copying a file from local machine to S3 bucket - cp command

aws s3 cp ./test.json s3://unique_bucket_name/file_name.json

# Listing the objects in the bucket - ls command

aws s3 ls s3://unique_bucket_name

# Removing a file from the bucket - rm command

aws s3 rm s3://unique_bucket_name/file_name.json

# Removing all the files from the bucket - rm command

aws s3 rm --recursive s3://unique_bucket_name

# Removing the bucket - rb command

aws s3 rb s3://unique_bucket_name
```

You can explore all the commands available for Amazon S3 using the `help` attribute. You will find the following commands under the service:

- **cp:** To copy objects. It can be used to upload and download files from S3 to the local machine
- **ls:** To list the buckets/objects in S3
- **mb:** To create a new S3 bucket
- **mv:** To move the objects present on the local disk or in S3
- **presign:** To provide a pre-signed URL for an Amazon S3 object
- **rb:** To remove an **empty bucket**
- **rm:** To remove an object
- **sync:** To sync the directories present in S3
- **website:** To set the website configuration for a bucket

You must note above that the **rb** command removes an empty bucket. However, you can use the **--force** parameter along with it to remove all of the objects in the bucket and then remove the bucket itself at the end.

In the 'help' section, there are multiple attributes associated with each command that you can explore. Let’s take a look at a few of them using the questions provided below.

#### AWS CLI: S3

The ‘**rb**’ command helps you to delete an empty bucket. How will you delete a bucket that contains multiple files and folders? (Assume that versioning is disabled for the bucket and every object present in it.)

- `aws s3 rb --recursive s3://bucket_name`

- `aws s3 rb --force s3://bucket_name`

- `aws s3 rb --f s3://bucket_name`

- You have to empty the bucket first in order to delete it.

Ans: B. *Using the `--force` attribute, you can remove a bucket that contains multiple objects.*

Qn: Suppose you work in an e-commerce company that keeps records of multiple products (more than a thousand) in the S3 bucket ‘records’. The files have the following structure for filename: ‘**category-productid.csv**’. You have to analyse the records associated with the ‘Electronics’ category only. You are expected to download specific category reports and then perform analysis on your local machine. How will you perform this task?

- Manually run the command for each file (1,000 files → 1,000 commands)

- Download all the files locally and then delete unnecessary files

- Implement the task through the AWS Management Console by selecting the required files

- None of the above

Ans: D. *All the approaches mentioned in the options above are incorrect. Here, you can use the different attributes associated with the AWS CLI to implement the task easily. Now, try to perform this task in the next question.*

Qn: Suppose you work in an e-commerce company that keeps records of multiple products (more than a thousand) in the S3 bucket ‘records’. The files have the following structure for filename: ‘**category-productid.csv**’. You have to analyse the records associated with the ‘Electronics’ category only. You are expected to download specific category reports and then perform analysis over your local machine. Provide the command that helps you perform this task. **Hint**: Explore the **help** section under the S3 service.

Ans: *You can use the Exclude and Include filters to obtain the required objects. To download all the files associated with a particular category, you must use the --exclude and --include attribute together with the cp command under S3. Also, to check each file in the bucket, you have to use the recursive function:*

`aws s3 cp s3://records “local_path” --recursive --exclude “*” --include “electronics*”`

*Through this task, you must have realised the power of the AWS CLI and also learnt how it is better than the Management Console in performing challenging tasks.*

The examples covered as part of the video and assessments above show that AWS CLI is quite a useful tool to work with Cloud services. You can code your requirements using the features provided and execute the tasks, which would otherwise have been extremely difficult.

In the next segment, you will learn more about the different storage classes associated with Amazon S3.
