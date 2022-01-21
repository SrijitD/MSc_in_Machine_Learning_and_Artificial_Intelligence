# Methods

In the last two sessions, you used a lot of in-built methods in case of lists, tuples or some other data structures. The methods essentially are functions which are responsible to implement a certain functionality when they are used in code. This segment will help you learn how these methods are implemented in Python. Take a look at the video below:

**VIDEO**

The self keyword in the init method has a different functionality of linking the elements defined in the class to the values passed as arguments while creating an instance to the class as shown in the image below:

![Employee-Update](https://i.ibb.co/RSDkND8/Employee-Update.png)

In the execution, you can see that the E1 employee object is created, and on calling the update method, it is returning the updated age and also updating the age of the employee.

You can write a similar function to update the company code as well; however, there would be a critical flaw if you did so because handling class variable shouldn’t be within an ordinary method that can be accessed/changed by any instance object. There are separate methods called class methods to do this. Let's watch the video below to understand more about these methods:

**VIDEO**

#### Methods

Qn: What is the output of the following code?

```python
class A :
    x = 10

    def __init__(self, y,z):
        self.y = y
        self.z = z

    def update_y(self):
        self.y = self.y * self.x
        self.z = self.z * self.x

A1 = A(3,4)
A2 = A(5,6)
A1.update_y()
A1.y + A2.z
```

- 36

- 30

- 18

- Error

Ans: A. *Using A1.update(), the values of A1.y and A1.z would be updated to 30 and 40, respectively. The values of A2.y and A2.z would remain the same.*

#### Methods

Qn: What is the output of the code below?

```python
class A :
    x = 10
    def __init__(self, y,z):
        self.y = y
        self.z = z

    def update_y(self):
        self.y = self.y * self.x

    @classmethod
    def update_z(cls):
        self.z = self.z + 20


A1 = A(3,4)
A2 = A(5,6)

A2.update_z()
A1.y + A2.z
```

- 10

- 20

- 4

- Error in update_z()

Ans: D. *Self keyword binds the attributes to the values of an instance but since here you are not authorised to handle instance variables it would return an error saying self is not defined.*

Qn: What is the output of the code below?

```python
class A :
    x = 10
    def __init__(self, y,z):
        self.y = y
        self.z = z

    def update_y(self):
        self.y = self.y * self.z



A1 = A(3,4)
A2 = A(5,6)

A.x = 30
A1.y + A2.x
```

- 16

- 33

- 14

- 30

Ans: B. *x is a class variable, and by A.x = 30, the variable x would be assigned an updated value of 30.*

A class method is defined using a class method decorator (@classmethod) and takes a class parameter (cls) that has access to the state of the class. In other words, any change made using the class method would apply to all the instances of the class.

## Food for thought: *Method vs Functions*

1. Python functions are called generically, methods are called on an object since we call a method on an object, it can access the data within it.

2. A 'Method' may alter an object’s state, but Python 'Function' usually only operates on it, and then returns a value.

## **Additional Resource:**

For a better understanding of the difference between a class method and a static method, you can go through this [video](http://youtu.be/PNpt7cFjGsM).

Note: Please be aware that the environment used for running python is different from the one we have been using, but the concept is explored really well.
