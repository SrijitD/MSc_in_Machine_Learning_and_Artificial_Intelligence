# S3: Storage Classes - II

In this segment, you will learn how to change the storage class of an object stored in Amazon S3. You must know that the default storage class of any object, when uploaded to S3, is **S3 Standard**. So, the object is placed under the most expensive option by default. Therefore, to prevent unnecessary costs, you must change the storage class of the object accordingly. In the forthcoming video, you will learn how to do that.

**VIDEO**

**Note:** In the newer versions of AWS, the 'change storage class' option has been renamed as 'edit storage class'.

Now, you can easily move an object from one storage class to another manually. Apart from this, you can also automate the entire process with the help of the **Object Life Cycle**. This is an extremely useful feature, and it helps reduce the risk of unnecessary costs in case someone forgets to move the file to an appropriate storage class.

Under life-cycle configuration, you can define a set of rules that automatically delete or move an object from a storage class after the defined time. So, there are two types of actions as given below.

-   **Transition actions:** To define the transition from one storage class to another 
-   **Expiration actions:** To define the expiry (auto-deletion) of an object

It is always advised that you develop the habit of defining an object life cycle at the time of upload. You should always keep the following points in mind when defining an object life cycle:

-   You must have a good understanding of the usage pattern of the file for which the object life cycle is being defined. For example, if a file is deleted based on the expiration action, then you will not be able to retrieve it.
-   You must be careful about the costs associated with both transition and expiration actions. These are paid services, and the cost varies based on the size of the object, the storage class and the duration specified in the rules.

#### Amazon S3: Storage Classes

Qn: Which of the following is not a suitable storage class when you want to store data in the region **ap-northeast-1**?

- S3 Standard

- S3 Intelligent Tiering

- S3 One Zone-IA

- S3 Standard-IA

Ans: C. *The region code ap-northeast-1 refers to Tokyo. Since this is an earthquake-prone region, you must never rely on only one Availability Zone to store your data.*

In the next segment, you will resume performing tasks on the AWS CLI and learn how to work with Amazon EC2 through it.