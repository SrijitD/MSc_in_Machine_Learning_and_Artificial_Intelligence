# Module Overview

Welcome to the module on **‘Working with AWS’**. You were introduced to the basic concepts of machine learning and cloud in the previous modules.

## In this module

Let's watch the forthcoming video to get an idea of what this module will cover.

Play Video

3221820

This module will help you work on one of the most used cloud platforms, **Amazon Web Services (AWS)**, and introduce you to the application of the different services offered by AWS. You will learn how to use these tools and services, and, later, you will work on a case study to build an application using these tools and services. By the end of this module, you should be able to select appropriate services to build such applications on your own. You can refer to the diagram below to get a gist of all the concepts covered in this module.

![AWS UpGrad Sessions](https://i.ibb.co/Sf3SvQK/AWS-Up-Grad-Sessions.jpg)

**Important note:** The previous modules mainly involved the introduction of the concepts. This module, on the other hand, will involve a lot more hands-on elements. Please keep a note of the following elements while going through the module:

- Being a tool-oriented module, it will require more time in comparison with the other modules. Make sure that you devote adequate time to understand and complete all the concepts covered in this module.
- Make sure that you use your laptop or computer to complete this module. The module contains multiple demonstrations and uses different tools, which cannot be accessed from mobile phones.
- You must not wait until the last moment to start the module, as issues may take a day or two to resolve. Therefore, try and use your time accordingly.
- Pay attention to each step while implementing the task or functions to avoid any errors. In case of any error, you might end up using more than the mentioned time due to troubleshooting.
- Implement all the steps at your end to get a clear understanding of the entire process. This is important, as you will be tested on the same throughout the course.
- You will work with different AWS services that are not free. You will be working with a limited balance; hence, none of them should be left idle. You must stop or terminate all the resources after they have served their purposes.

## In this session

You will be introduced to a new tool to interact with the AWS platform: **AWS Command Line Interface (CLI)**. When dealing with a large user base, this is a much faster way to work on AWS than the Management Console. You will learn more about it in the segments to come. In this session, we will also discuss some advanced topics related to the different AWS services that were covered in the previous module. Working with these services will help you understand how an actual deployment happens in the Cloud.

This segment requires you to have basic knowledge of Linux shell commands. You can watch a video with essential commands [here](http://www.youtube.com/watch?v=IVquJh3DXUA) to learn or revise them before proceeding. The same has been provided in the document below.

[Basic Linux Commands](Basic_Linux_Commands.pdf)

**Important note:** The previous modules mainly involved the introduction of the concepts. This module, on the other hand, will involve a lot more hands-on elements. Please keep a note of the following elements while going through the module:

- Being a tool-oriented module, it will require more time in comparison with the other modules. Make sure that you devote adequate time to understand and complete all the concepts covered in this module.
- Make sure that you use your laptop or computer to complete this module. The module contains multiple demonstrations and uses different tools, which cannot be accessed from mobile phones. Moreover, it will be preferred that you do not work with the lite mode as some features may take time to complete.
- You must not wait until the last moment to start the module, as issues may take a day or two to resolve. Therefore, try and use your time accordingly.
- Pay attention to each step while implementing the task or functions to avoid any errors. In case of any error, you might end up using more than the mentioned time due to troubleshooting.
- Implement all the steps at your end to get a clear understanding of the entire process. This is important, as you will be tested on the same throughout the course.
- You will work with different AWS services that are not free. You will be working with a limited balance; hence, none of them should be left idle. You must stop or terminate all the resources after they have served their purposes.

Please refer to the FAQ document below in case you are stuck with any step.

[FAQ - Working with AWS](Working_with_AWS-FAQ.pdf)

## In this session

You will be introduced to a new tool to interact with the AWS platform: **AWS Command Line Interface (CLI)**. When dealing with a large user base, this is a much faster way to work on AWS than the Management Console. You will learn more about it in the segments to come. In this session, we will also discuss some advanced topics related to the different AWS services that were covered in the previous module. Working with these services will help you understand how an actual deployment happens in the Cloud.

This segment requires you to have basic knowledge of Linux shell commands. In case you do not know these commands, please refer to the document provided below before proceeding.

Now, try to answer the questions given below to test your understanding. These questions are based on Linux shell commands. If you are unable to answer even a single question, then please refer to the documentation provided above.

#### Linux Commands

Qn: Which of the following commands will help you to identify the folder or the directory in which you are present?

- dir

- pwd

- print_dir

- show

Ans: B. ***pwd** This command is used to print the directory in which you are present. Its full-form is ‘print working directory’.*

Qn: Suppose you want to create a file 'text.txt' inside the current folder in which you are present. Which of the following commands will help you perform this task?

- vi text.txt

- create text.txt

- cat>text.txt

- file text.txt

Ans: A & C.

- *The vi command launches the vi editor, which can be used to create or view a file in the Linux environment.*

- *The cat command can be used to create or view a file in the Linux environment.*

Qn: Suppose you are inside a folder 'folder_1' in the Linux environment. It contains a sub-folder where you would want to create a new text file. Which of the following commands are essential for completing this task if you are not aware of the sub-folder name?

- ls

- cat

- list

- cd

Ans: A & B.

- *You will need the **ls** command to list the contents of the folder in order to identify the sub-folder in which you want to create the new file.*

- *The **cat** command will help you create the file in the sub-folder. The command would look like this: `cat >./sub-folder-name/file.txt`*

Qn: Match the entries in Column A with the correct options in Column B.

| Column A                                                               | Column B      |
| ---------------------------------------------------------------------- | ------------- |
| 1. Exiting the cat command without saving the changes made to the file | 1. (Ctrl+D)*2 |
| 2. Exiting the cat command after saving the changes made to the file   | 2. Esc + :q!  |
| 3. Entering the edit mode inside the VI editor                         | 3. Esc+:wq!   |
| 4. Exiting the VI editor without saving the changes made to the file   | 4.  i         |
| 5. Exiting the VI editor after saving the changes made to the file     | 5.  Ctrl + C  |

- 1 - i, 2 - ii, 3 - iii, 4 - iv, 5 - v

- 1 - i, 2 - v, 3 - iv, 4 - iii, 5 - ii

- 1 - v, 2 - i, 3 - iv, 4 - iii, 5 - ii

- 1 - v, 2 - i, 3 - iv, 4 - ii, 5 - iii

Ans: D. *These commands will be helpful in the coming segments. Make sure you are well versed with them.*

## People you will hear from in this session

**Adjunct Faculty**  
**[Vinod Seshadri](https://www.linkedin.com/in/vinod-seshadri-94543714/)**  
Software Architect - Machine Learning, Wipro Limited  
With over 14 years of experience in the field of IT, Vinod has more than six years of experience in building machine learning solutions on the Cloud. He has extensive experience in product engineering and solutions. Vinod holds a master’s degree in Computer Science, with a specialisation in machine learning, from the Georgia Institute of Technology.
