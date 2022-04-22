# Graded Questions

Based on your learning from this session, solve the questions provided below. The case study has been made difficult to test both your understanding of Spark and your coding aptitude.

## Case: Medical Insurance Dataset

Suppose you are working for a medical insurance company. Your task is to analyse the medical charges of a customer based on various factors. In order to do so, you are provided with a file containing the following information about each customer item:

- **age**: Age of the primary beneficiary
- **sex**: Gender of the beneficiary
- **bmi**: Body mass index of the beneficiary, which provides an understanding of their body stats  
    It is an objective index of body weight (kg / m ^ 2) using the height-to-weight ratio, which should ideally be between (**18.5 - 24.9**).
- **children**: Number of children covered by health insurance / Number of dependents
- **smoker**: Whether the beneficiary smokes or not
- **region**: Beneficiary's residential area in the US: northeast/ southeast/ southwest/ northwest
- **charges**: Individual medical costs billed by health insurance

Download [Insurance_Data](insurance.txt)

As part of this exercise, you are expected to load the file in your EC2 instance and then analyse the contents of the file to answer the questions.

**Hints**

- Load the data into the instance:
  - You can use the WINSCP tool as done in the previous modules. Here is the [link](https://learn.upgrad.com/course/1426/segment/10220/67418/198061/1050369) for the same.
- For loading the text file into an RDD, you can use the textFile() method. However, you must remove the first row from the RDD to perform analysis, as it is the header row. Remember to use the map() function and set operations to derive the desired results.

#### RDD operations

What is the total sum of insurance consumed by both female and male patients respectively? (Limit the answer to two decimal places)

- Female: 8321051.19, Male: 9434673.80

- Female: 8312061.19, Male: 9434673.80

- Female: 8321061.19, Male: 9434763.80

- Female: 8312051.19, Male: 9434763.80

Ans: C. *After loading the text file as RDD, the first step is to separate the column headers from the RDD. However, you may need the headers to refer to the column. So, store them as another RDD or list. Once that is done, you can split the elements of the text file using the map() function.

Finally, you can use the reduceByKey() operation to compute the sum for the two categories: Male and Female.*

```python
#load the text file
file=sc.textFile("insurance.txt")

#separate the headers from the rest of the rdd
headers = file.first()
headers_rdd = sc.parallelize([headers])
file2 = file.subtract(headers_rdd)

#Firstly split the words using map transformation and map the required columns. Finally, you can use the reduceByKey() operation to compute the sum for the two categories: Male and Female.
file2.map(lambda x:x.split(",")).map(lambda y:(y[1], float(y[6]))).reduceByKey(lambda x, y: x+y).collect()
```

Qn: What is the average insurance utilised by both female and male patients respectively? (Limit the answer to two decimal places)

- Female: 12555.97, Male: 13956.75

- Female: 12569.58, Male: 13956.75

- Female: 12569.56, Male: 13956.62

- Female: 12555.98, Male: 13956.62

Ans: B. *You may have separated the headers in the previous question. Here, you are expected to calculate the group-wise average for Males and Females. As discussed, implementing reduceByKey() directly will not result in a correct answer as average is not a commutative function. So, you can use the groupByKey() function to first club all the values together and then, calculate the sum and count of elements using the map() function.*

```python
rdd=file2.map(lambda x:x.split(",")).map(lambda y:(y[1], float(y[6]))).groupByKey()

#calculate the average as follows:
rdd.map(lambda x: sum(x[1])/len(x[1])).collect()
```

Qn: Compute the highest BMI in the given data. Also mention whether the person with the highest BMI is male or female.

- ('female', 53.30)

- ('male', 53.30)

- ('female', 53.45)

- ('male', 53.13)

Ans: D. *You can find the entry corresponding to the highest BMI value using the map() transformation and max() action after removing the headers from the created RDD.*

```python
#create an RDD using sc.textfile() method
file=sc.textFile("insurance.txt")

#separate the headers
headers = file.first()
headers_rdd = sc.parallelize([headers])
file2 = file.subtract(headers_rdd)

#Find the maximum BMI using the following command:
rdd=file2.map(lambda x:x.split(",")).map(lambda y:(y[1], float(y[2])))
rdd.max()
```

Qn: Using the given data, find out which type of individuals have higher total insurance claims: Smokers or Nonsmokers?

- Smoker

- Nonsmoker

- They use the same amount of insurance money.

Ans: B. *It can be computed using map() and reduceByKey() transformations on a paired RDD between the columns - smoker and charges. Also, it is reflected by the data that it is easier for nonsmokers to get their claims cleared by the insurance companies.*

```python
rdd2=rdd1.reduceByKey(lambda x:x[0]-x[1])
rdd2.collect()
```
