# Functions in Python

In the previous segments, you saw how to take two lists and perform an element-wise subtraction. Now, imagine you are trying to build an app which the general public could use. For such an app, the 'expense calculator function' would be re-used. Now instead of writing or copying the code each time you could build it as a function which is similar to methods you have seen earlier. Functions serve the purpose of reusable and customizable methods. 

By the end of this segment, you would be able to create your own functions which could be customized to perform a task based on your preference.

**VIDEO**

Syntax of a function:

![](https://i.ibb.co/SKQQXnT/Python-Function-Syntax.png)

In the video above, the function which was built was not really useful. It returned the number four no matter what the input was. Let's build a function that actually serves a purpose.

**VIDEO**

Now, based on your understanding from the previous video attempt the coding question given below:

### Function

#### Problem

Description

Create a function squared(), which takes x and y as arguments and returns the x**y value. For e.g., if x = 2 and y = 3 , then the output is 8.

**Sample Input:**

['6','7']

**Sample Output:**

279936

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)
x = int(input_list[0])
y = int(input_list[1])

#Write your code here
def squared(a, b):
    return a**b

print(squared(x,y))
```

As you saw in the 'factorial function' in the earlier video, functions can take multiple parameters. When the functions get complicated, programmers often get confused while passing parameters to a function. Let us now look into more complex examples to build a stronger foundation of functions.

**VIDEO**

You heard about arguments and parameters a couple of times in the video and might have been feeling a little fuzzy about it, so here is a refresher - Function parameters are the variables used while defining the function, and the values used while calling this function are the function arguments.

There are four types of function parameters:

1. **Required parameters**: These parameters are necessary for the function to execute. While calling an inbuilt max() function, you need to pass a list or dictionary or other data structure. This means that a sequence is a required parameter for this function.

2. **Default arguments**: These parameters have a default value and will not throw any error if they are not passed while using the function. 

3. **Keyword parameters**: These parameters are expected to be passed using a keyword. In the example of printing a list, you saw that passing end = ',' prints the elements of the list separated by a comma instead of the default newline format. This is a classic example of a keyword argument, the value of which is changed by using the end keyword and specifying the value.

4. **Variable-length parameters**: These enable the function to accept multiple arguments. Now, let’s try to write a function that takes two lists as the input and performs an element-wise subtraction. It is simple: first, you define your function with two parameters: 

`def fun(L1,L2):`

Now, from your previous experience, you know how to perform element-wise subtraction. So, in order to build it into a function for the same, you just need to put the code inside a function definition:

```python
def list_diff(list1,list2):
    list3 = []
    for i in range(0, len(list1)):
        list3.append(list1[i] - list2[i])
    return list3

L1 = [10, 20, 30, 24, 18]
L2 = [8, 14, 15, 20, 10]

print(list_diff(L1, L2))
```

**Note:** The return statement is very crucial in the whole function definition, as it is responsible for returning the output of the function.

Based on your understanding about functions from the previous videos, attempt the quiz given below:

#### To Err is Human

Qn: Identify the error/errors in the given code to apply the function (x∗y+x+y) on x,y and finally return the value.

```python
func(x, y):
 z = x * y + x + y
func(2)
```

(More than one option may be correct.)

- Keyword missing in the function definition

- Return the statement missing in the code

- Error in function call

- Error in the equation used in the code

Ans: A, B & C

- *def() keyword is necessary while defining a function. It should be def func(x,y): and not func(x,y)*

- *The question mentions that value is being returned but the return statement is missing in the function implementation.*

- *There are two parameters in the function definition, but during the function call, only one argument is being called hence it would throw an error here.*

#### Function Call for a Function Call

Qn: What would be the output of the following code?

```python
def func(x, y = 1):
    z = x * y + x + y
    return z
func(2, func(3))
```

- 35

- 5

- 23

- Error

Ans: C. *There is no error in the piece of code above; it successfully executes. The function call f(2,f(3)) has two parts. First, the function call f(3), which involves a single argument, works fine because one of the two parameters used in a function definition is a default parameter. Second, the value obtained from f(3), which is 7, would become the second parameter in the function call, and this value updates the default value of y from 1 to 7.*

*The function calculations are done as shown below:*

`f(3) = 3*1 + 3 + 1 = 7`

`f(2, f(3)) = 2*7 + 2 + 7 = 23`

#### Function Call for a Function Call - II

Qn: What would be the output of the following code?

```python
def func(x, y):
    z = x * y + x + y
    return z
func(2, func(3))
```

- 35

- 5

- 23

- Error

Ans: D. *An error is thrown on executing the given piece of code. In the function definition, both x and y are required parameters. So, the function call would throw an error if only one argument is given. Here, f(3) is taking only one argument; so, this leads to an error.*

#### Function Call for a Function Call Returns

Qn: What is the output of the following code?

```python
def func(x = 1 ,y = 2):
    z = x * y + x + y
    return z
func(2, func(3))
```

- 35

- 23

- Error

- 5

Ans: A. *In the function definition, both x and y are assigned a default value of 1 and 2, respectively. Now, during the function call, if two values are passed as arguments, the values of x and y will be updated as per the argument values and as used in the function. The tricky part would be when you pass a single argument; this argument will be assigned to the parameter that comes first in the definition.*

*fun(3) would assign 3 as the value of x, and y remains with the same default value, and the function returns 3 * 2+ 3+2 = 11.*

*func(2,func(3)) would assign 2 as the value of x and 11 as the value of y. So now, the function execution would be as shown below:*

`2 * 11 + 11 +2`

*While passing the arguments, you may want to maintain the value of x as the default but update the value of y to 3 and then use the concept of keyword argument. f(y=3) would keep the value of x as 1  but would update the value of y to 3.*

#### Function Parameters

Qn: Functions can be used inside a list comprehension too. An example to create a list, the elements of which would be the result of applying the function x2−2x−2 on each element in the list = [2, 7, 8, 10, 3] is shown below:

```python
L1 = [2, 7, 8, 10, 3]

def func(y):
    return ____- 2 * y - 2

ans_list = [func(x) for ______ ]
ans_list
```

The missing parts of the code include _____.

- x**2 , x in L1

- x**2 , L1

- x*2, y in L1

- y**2 , x in L1

Ans: D. _In the piece of code where the func is being implemented, as per the equation given in the question, it should be x\*\*2, but the parameter being used here is ‘y’. Hence, it will be y\*\*2._

*In the latter part of the code, where you are implementing ans_list using a list comprehension, func(x) should be applied to every x in L1, i.e., for x in L1.*

**Lambda functions** are another way of defining functions to execute small functionalities occurring while implementing a complex functionality. These functions can take multiple parameters as input but can only execute a single expression; in other words, they can only perform a single operation.

**VIDEO**

The format of a lambda expression is as follows:

**function_name  = lambda  input_parameters :  output_parameters** 

For example: diff = lambda x,y : x-y is a lambda function to find the difference of two elements.

### Lambda

#### Problem

Description

Create a lambda function 'greater', which takes two arguments x and y and return x if x>y otherwise y.

If x = 2 and y= 3, then the output should be 3.

**Sample Input:**

['9','3']

**Sample Output:**

9

Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)
a = int(input_list[0])
b = int(input_list[1])

#Write your code here
greater = lambda x, y: x if x > y else y
print(greater(a,b))
```

#### Lambdas

Qn: What is the output of this program?

```python
min = (lambda x, y: x if x < y else y)
min(101*99, 102*98)
```

- 9998

- 9997

- 9999

- 9996

Ans: D. *The min function here returns the minimum of two values passed as arguments to the function. So passing 101*99 and 102*98 would return 102*98, in other words, 9996.*
