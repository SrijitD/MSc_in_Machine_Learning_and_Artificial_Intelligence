# Data Set Exploration

In this segment, you will get an understanding of the data sets that you will be using in this case study. Let’s quickly go through them in the following lecture.

**VIDEO**

So, to summarise, we have the following three data sets:

- CRM data

- Devices data

- Revenue data

![Case Study Telecom Data Sets](https://i.ibb.co/ZghTVTc/Case-Study-Telecom-Data-Sets.png)

CRM stands for customer relationship management, which includes data about customers who are associated with a MSISDN. MSISDN stands for Mobile Station International Subscriber Directory Number. It is used to identify a mobile number internationally. The second data set includes mobile or device information, using which you can identify the brand_name or model name associated with a particular MSISDN. Finally, the third data set gives the revenue generated for a particular MSISDN across different weeks.

You can download the data sets from the links below.

CRM data  -[https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/crm1.csv](https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/crm1.csv)

Device data- [https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/device1.csv](https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/device1.csv)

Revenue data - [https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/rev1.csv](https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/rev1.csv)

**Note:** The data sets are very large and will require a few minutes to download. You do not need to download them locally you can directly download them on EMR using the following command.

wget  [Link to dataset]

For example - wget  [https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/rev1.csv](https://telecom-case-study-ml-hive-sqoop.s3.amazonaws.com/rev1.csv)

You can download details about the attributes for each data set from the file attached below.

Download [Attribute Description](Attribute_Description.pdf)

In the next segment, we will understand the different steps involved in building the ETL pipeline.
