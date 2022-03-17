# AWS CLI: Installation

The AWS CLI serves as a powerful tool when working with AWS resources. It allows control over all the AWS services from the local command-line shell on your machine. Now, let's proceed with the installation process for the AWS CLI.

**Note:** The video given below covers the installation process for macOS. You can refer to the document provided after the video to learn how to download the AWS CLI on a Windows-based machine after you have watched the video.

**VIDEO**

_**Note: In the video, it was mentioned that version 2 cannot be used for production. However, version 2 is now stable and can be be used for production environments as well. The content covered here uses version 1 but this will not affect your learning in any manner.**_

The installation guide for Windows is provided below.

[AWS CLI Installation - Windows](Docs/AWS?AWS_CLI_Installation-Windows.pdf)

**You can refer to the information provided below as text before proceeding with the documentation.**

AWS CLI comes in two different versions as mentioned below.

- **Version 1.x** (used in the module)
- **Version 2.x** (latest)

To learn more about the difference between the two versions, you can refer to the **[official documentation](https://docs.aws.amazon.com/cli/latest/userguide/cliv2-migration.html)** provided by AWS. Now, moving on to the installation, there are two prerequisites for Version 1.x as given below.

- Python package (version 2 above 2.7 and version 3 above 3.4)
- pip package

pip is useful in installing and managing Python packages. Both the packages come preloaded with Anaconda, which you installed as part of the preparatory content. However, it is advised that you check for the pip package before proceeding.

To do so, you can run the following command: **`pip --version`**. This will return with the version of the pip package if it exists on your machine. You can also check for pip3, as you were working with Python3 prior to this. In case the package has to be installed, you can refer to the documentation provided below.

[_pip_ Installation Guide](PIP_Installation_Guide.pdf)

Once all the required packages are present, you can install the AWS CLI on your machine using the instructions provided above. Note that you must update the CLI package regularly in order to support the latest features added to it. To learn how to do this, you can refer to the instructions provided over the **[AWS platform](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)**.

Now that you have installed the AWS CLI, in the forthcoming video, Vinod will explain how to access the CLI on the local machine.

**VIDEO**

To access the AWS CLI from your local terminal, you need the access key pair. The access key pair acts as the credentials for you to log in to the AWS CLI through the local terminal. There are two components associated with it as mentioned below.

- Access key ID (user ID)
- Security access key (password)

Therefore, first, you must create the access key pair to access AWS through the CLI. These credentials must be safely stored and **must not be shared**, as they give complete control of your AWS account through the CLI.

Now, in the next video, you will learn how to use them to run the AWS CLI on your local machine.

**Important note:** In the demonstrations, the region has been selected as ‘ap-south-1’. But, you are advised to work with the **North Virginia** region only. The region code for that region is ‘**us-east-1**’. Make sure that you use the same region throughout the program.

**VIDEO**

Once you have provided all the required details, you are ready to access all the AWS services from the command line.

**Windows users need to type the following command in the command prompt to access the ‘_credentials_’ file:**

`notepad "./.aws/credentials"`

If you are a Windows user, then you must provide the _**application name**_ (notepad) and the _**path of the file**_ (“./.aws/credentials”) to open a file through the command prompt.

The steps mentioned in the video provided above have been summarised in the document given below.

[Accessing the AWS CLI](Accessing_AWS_CLI.pdf)

Now, to log in to AWS through the AWS CLI, you can simply run the following command:

**aws configure**

#### AWS CLI

Qn: What are the different output formats available when working with the AWS CLI?

- Table

- Text

- Image

- JSON

Ans: A, B & D.

- _You can print the output of AWS CLI commands in a tabular format._

- _The AWS CLI provides you the feature to print the output as plain text._

- _The output from the AWS CLI can be obtained in the JSON format._
