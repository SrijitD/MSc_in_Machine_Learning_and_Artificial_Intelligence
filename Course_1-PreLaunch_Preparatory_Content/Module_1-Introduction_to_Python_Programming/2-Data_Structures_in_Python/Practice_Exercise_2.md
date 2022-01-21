# Practice Exercise (Part II)

Download the Python file given below; it includes an exercise to test your understanding of the concepts learnt in this session:

Based on your answers obtained in the notebook, attempt the following quiz:

#### Senior-Most Employee

Qn: Find out the age of the senior-most employee.

- 45

- 44

- 48

- 42

Ans: A. _To identify the age of the senior-most employee, first you have to use the dictionary values() method to get all the ages in the form of an iterable dictionary object; then, applying the in-built Python function max(), you have to get the max value, which is nothing but the age of the senior-most employee._

`max(Employee_data.values())`

####

#### 159th Employee

Qn: Find out the age of the employee with employee id 159.

- 25

- 32

- NA

- 42

Ans: C. _Since you want to get the age of the employee with employee id 159, simply passing it as a key to the dictionary would throw a key error, which means the employee id isn’t present in the data._

_To avoid such errors, you should use the get method in the Python dictionary; it returns a value if the key is present and wouldn’t throw an error if the key isn’t present. You can also provide the message that you intend to display in the method as shown below:_

_Completely unrelated; did you know that the 3rd, 4th, and 5th digits of π are 1, 5, and 9?_

####

#### Start-Up Organisation

Qn: Count the total number of employees in the organisation?

- 79

- 78

- 60

- 74

Ans: D. _You can find out the number of employees by using the length on the dictionary:_

`len(Employee_Data)`

#### Mean Age

Qn: Calculate the mean age of the employees.

- 31.36

- 36.48

- 28.77

- 32.47

Ans: A. _The mean age of the employees equals the sum of the ages of employees divided by the number of employees". With the in-built function of Python, you can find the sum of ages, and you know the number of employees from the earlier step. With these two values, you can calculate the mean age of the employees._

`sum (Employee_data.values())/74`

####

#### A Couple of Tasks

Qn: Perform the following two tasks and then calculate the updated mean age of the employees:

Task 1: Update the ages of the employees with employee ids 104,140 and 164 as 27.

Task 2: Remove the employ with employee id 143.

- 30.71

- 31.36

- 30.13

- 31.13

Ans: D. _You know how to update and remove values from the dictionary; however, the critical step here would be to identify the updated length of the dictionary and then use that information to calculate of the mean age of the employees. In the code given below, you can have a look at the different steps involved in arriving at the right answer:_

![](https://i.ibb.co/pwrFvQy/Calculate-Mean-Two-Tasks.png)
