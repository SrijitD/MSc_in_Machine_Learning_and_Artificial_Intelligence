# Data Types in Python

Now that you know how to use Jupyter notebooks. Let's write your first piece of code - the hello world program.

**VIDEO**

Now that you have learnt how to write the basic “Welcome to Upgrad, name” program in Python, it’s time to understand how to declare a variable in Python. We will also learn about the different data types available in Python.

The following video will offer you an introduction to the basic syntax of declaring a variable in Python.

You can find the Jupyter notebook used throughout this session below.

**VIDEO**

You have learnt that variables are nothing but a memory location to store values assigned to them. Some of the properties of these variables are:

1. There is no need to declare the data type of the variable as done in other programming languages, such as C, C++ and JAVA

`int c = 5`

`string name = 'Alex'`

2. The variable name (or identifier) cannot start with a number, i.e., declaring something like 2name = 7 throws an error.

3. Python is case sensitive or in other words, these variables are case sensitive. This means that declaring name= 2 & Name = 4 would create two different variables.

In the previous video, you understood how to declare a variable in python. Let's use the variables to make a small application that can calculate the age of a person in months.

**VIDEO**

In the previous video, you saw that the input function always reads data in a string. And to make arithmetic operations the variable needs an integer. So you will need to change one data type to another in Python, this process of changing one data type to another is called **typecasting.** You saw the process of typecasting in the video above. Let's look at a few more examples in the video given below:

**VIDEO**

In the video, you learnt two commands.

- To find the data type of a variable use type()
- For casting variables use the keyword of the target data type.

In order to change the data type of a particular variable, you can simply call the following inbuilt methods in python.

![](https://images.upgrad.com/38dab48d-d7a1-4fa0-855a-c71b21e4615b-code_snip.PNG)

In the above snapshot of code, you are assigning a value to a variable (x) and then using typecasting, converting it into different data types. So for example, when you convert x into an integer it converts the floating-point value into an integer value.

Based on your learning about various data types and typecasting in Python from the previous videos, attempt the quiz given below.

#### Float to Int; Back to Float

Qn: What would be the output of the following code?

`x = 3.5 print(float(int(x)))`

- 3.5

- 3.0

- 3

- Error

Ans: B. _The int(x) will convert the float value(3.5) to an integer value 3, and then float(3) will return the value 3.0._

#### What's Your Datatype?

Qn: What would be the output of the code given below?

`name = Varma`

`print(type(name))`

- <class 'str'>

- str

- String

- Error

Ans: D. _The above piece of code throws an error saying 'invalid syntax' because Varma isn’t properly declared as a string. During the execution of the code, it will be considered as two variables (name, Varma) being equated, and since they are not declared earlier, the compiler throws an error._

## Additional Resources

Confused between multiple data types and their input parameters?

Here is a quick reference guide on - [Various data types in Python](https://www.w3schools.com/python/python_datatypes.asp)
