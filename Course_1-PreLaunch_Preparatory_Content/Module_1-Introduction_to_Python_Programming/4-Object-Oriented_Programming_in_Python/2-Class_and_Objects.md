# Class and Objects

In the previous sessions, you must have heard about using a list object. In this session, we'll first understand 'what exactly is an object in Python?' and then, we will explore the concept of object-oriented programming, which will help us understand the language better.

Let's take a look at the upcoming video for a better understanding of the concept:

**VIDEO**

The above video provides a basic introduction to classes and objects. These concepts are a little complex to digest but you will get a better understanding after looking at a few examples in the upcoming video:

**VIDEO**

You have learnt about **classes** from the previous video, you can now try to create an Employee class with three attributes, namely, age, name and employee id.

The **class keyword** is used to define a class, and in the **__init__** method is used to initialise the attributes that define our class. Here, the attributes 'name', 'age' and 'employee id' define our employee class, and using the self keyword, you define these arguments inside the **__init__** method.

You will learn about the significance of the keyword - 'self' in future segments. Take a look at the code snippet below and try creating your own class:

```python
class Employee:
    def __init__(self, age, name, eid): 
        self.age = age
        self.name = name
        self.eid = eid
```

It is very important to understand the **init method**, it is this method that is instantiated automatically when a particular class is being used; it also determines the number of values that are to be passed.  

Having created the employee class, you can now create an object in this class by just passing the details of employee as arguments. Take a look at the details and code snippet given below:

- E1 = Employee(24,'Ravi',101)  → This would create E1 with age = 24, name = Ravi, and eid = 101.
- This object E1 is nothing but an instance of the class Employee. When you try to apply the type function on E1, it will return the class to which it belongs.

![Employee_Object](https://i.ibb.co/KX9mcGM/Employee-Object.png)

The next question that arises is whether it is possible for this employee class to contain certain attributes such as the company code that is common to all the employees? These attributes are class variables, and they are common to all instances of the class. Take a look at the upcoming video to get a good understanding of it:

**VIDEO**

#### Class Instance

Qn: Which of the following would create an instance to this class?

```python
class Student:
    def __init__(self):
        self.age = 10
        self.name = "Name"
```

- student1 = Student(20,30)

- student1 = Student(10, "Ravi")

- student2 = Student()

- Error

Ans: C. *Since the init method doesn’t have any argument other than self, it won’t accept any argument while creating an instance to the class.*

#### Class

Qn: Which of the declarations below will throw an error?

```python
class Student:
    standard = 'IV'
    def __init__(self,age,name,Cid):
        self.age = age
        self.name = name
        self.id = Cid
```

- student1 = Student(12,"Raj",24)

- student1 = Student(12,"Sam",10)

- student1 = Student("Shiv",4, 3)

- None

Ans: D. *There won’t be any error in any of the declarations since all the options are taking the three necessary arguments as mentioned in the init method. The only difference in each of the declarations would be the assignment of the instance values to the class attributes.*

#### Class Variable

Qn: Fill in the piece of code at line 9 to update the student standard to V.

```python
class Student:
    standard = 'IV'
    def __init__(self,age,name,Cid):
        self.age = age
        self.name = name
        self.id = Cid

student1 = Student(12,"Raj",24)
XXXXXXXXXX
print(student1.standard)
```

- Student.standard = 'V'

- student1.standard = 'V'

- Student standard cannot be updated.

- Student standard can only be changed in the original class.

Ans: A & B.

- *Student standard is a class variable, so it can be updated directly using Classname.attributename and this would apply to all the instances of the class. Student standard can also be updated using object.attributename, but this would apply to only this instance of the class.*

- *Student standard is a class variable, so it can be updated directly using Classname.attributename and this would apply to all the instances of the class. Student standard can also be updated using object.attributename, but this would apply to only this instance of the class.*

So, let’s add a class variable called company code to our employee class using the code given below:

```python
class Employee :
    company_code = "EMZ"
    def __init__(self,age, name,eid):
        self.age = age
        self.name = name
        self.eid = eid
```

This would make the company code a common property of all the employees. On creating an employee instance, the company code attribute and its value are assigned automatically to the employee as shown below:

```python
E1 = Employee(24, 'Ravi', 101)
E1.company_code

'EMZ
```

You cannot simply use E1.company_code = 'XYZ’ to change the company_code. This would change the company_code of E1 employee; however, since company code applies to all the employees, you need to write:

`Employee.company_code ='XYZ'`

In the upcoming segments, you will be learning about the different methods and functions that can be applied to the data in python.
