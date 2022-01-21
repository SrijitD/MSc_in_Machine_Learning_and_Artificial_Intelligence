# Class Inheritance and Overriding

In the previous segment, we have learnt about methods and functions in python. Next, we will be learning about inheritance and overriding. Let us start by understanding what inheritance is and how it works.

As the name suggests, inheritance means to receive something. In Python as well, inheritance has a similar meaning; Let's say class A is defined in class B, then in this case Class A would have all the properties of class B.

Inheritance helps in the code reusability. Just like a child inherits their parents' qualities, the class that inherits properties is known as a *child class*, and the class from which it inherits the properties is called the *parent class*. Let's take a look at an example to understand this better. Take a look at the video below:

**VIDEO**

In the example shown above, you saw that the rectangle and circle inherit the properties of the parent class shape, and because of this parent-child relationship, you didn’t need to define *set_colour* and *colour_the_shape* again in the circle and rectangle classes.

One more thing to notice is the method calculate area since it would be unique to different classes it was just initiated in the parent class and in the child class, this method was defined as per the child class functionality. This is nothing but **method overriding**. You can use methods to override the inbuilt functions in python as well. Let's look at an example in the video below:

**VIDEO**

That brings us to the end of the segment on inheritance and overriding. Before moving forward please attempt the question given below:

#### Super function

Qn: What is the output of the code below?

```python
class A:
    def __init__(self, x=1):
        self.x = x
class B(A):
    def __init__(self,y =2):
        super().__init__()
        self.y = y

def main():
    b = B()
    print(b.x,b.y)
main()
```

- Error

- 1 2

- 1 0

- 2 1

Ans: B. *The super function plays an important role in accessing the properties of the base class or parent class. In the example shown above, using the super() function in class B assigns property x as an instance to B as well.*

## Additional Reading

- If you want to learn more about inheritance then click on the link given below: [Inheritance](https://www.python-course.eu/python3_inheritance.php)
