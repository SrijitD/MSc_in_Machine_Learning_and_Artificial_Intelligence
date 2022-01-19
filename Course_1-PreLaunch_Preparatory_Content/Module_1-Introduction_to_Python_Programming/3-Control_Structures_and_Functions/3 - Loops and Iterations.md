# Loops and Iterations

In the previous session, you learnt about lists and various other data structures. Let’s look at a small example where you have a person’s income and expense data across five months in the form of a list, and you want to compute his savings across these five months. You may be thinking to do this manually by taking the first elements from the two lists and subtracting them, then again taking the second elements and subtracting, and so on. This may look simple, but let’s say this task has to be done for 10 or 20 years timeframe, in that case, would have the same strategy? 

In cases where we need to repeat a pre-set process n number of time the concept of iteration comes in handy, as you are repeating the same operation multiple times. With this in mind, let’s learn more about it.

**VIDEO**



**While loop**

As you saw in the video, the while loop keeps on executing **until** the defined condition is <u>true</u>. Once the condition <u>fails&nbsp;</u> the loop is <u>exited</u>. Such kind of programs are used in every-day applications such as the pin code lock:

```python
#Let's create a pin checker which we generally have in our phones or ATMs
pin = input("Enter your four digit pin: ")
while pin != '1234': #Pre-set pin is 1234
     pin = input('Invalid input, please try again: ')  
print("Pin validation successful.")
```

But usually, you only get three attempts to unlock anything with a pin code. Can this condition be written in the while loop, let's find out in the following video:

**VIDEO**

To add the functionality of the number of attempts you use a counter variable. The code from the video is given below: 

```python
# Now if we want to add a maximum number of tries allowed we'll add an 'if loop'import sys #required for exiting the code and displaying an error

pin = input("Enter your four digit pin: ")
attempt_count = 1
while pin != '1234':
    if attempt_count >= 3:
        sys.exit("Too many invalid attempts") #error code
    pin = input('Invalid input, please try again: ')  
    attempt_count += 1
print("Pin validation successful.")
```

That was about the while loop, let's move on to the next looping technique that is the 'for' loop. 

## **'For loop' Control Structure:**

**VIDEO**

By now, you have understood the syntax of a for loop. 

```python
for val in seq :
 statements
```

A few things to note in the syntax include:

1. **seq**, which represents a sequence; it can be a list, a tuple or a string. To put it in a simple way it can be any iterable object.

2. The **in** operator, which, as you may recall, is a membership operator that helps to check for the presence of an element in a sequence. 

**But what role is the '*in'* operator playing here?**

When you say for <u>val&nbsp;</u> **in** seq, it means that for <u>a value&nbsp;</u> in sequence, it executes the set of statements in the code block <u>once</u> and returns to '**for**' again and then shifts the position to the next value.

Let’s say you are at the last element in the seq. Here, the for block executes, and now, when it again goes to  <u>val&nbsp;</u> in seq, there are no more elements, and hence, <u>val&nbsp;</u> in seq returns a <u>false</u> and stops the execution. 

The for loop can iterate over any iterable object, we seen a few examples of this already. Dictionary data type is also an iterable object.  Let's learn how <u>for loop&nbsp;</u> can be applied over the dictionaries. 

**VIDEO**

Now that you have learnt about the 'for-statement', can you answer our initial question of calculating savings using a person’s income and expenses data? Let’s try this out.

Assume you have -

**L1 = [10, 20, 30, 24, 18] (in thousands)**

**L2 = [8, 14, 15, 20, 10]**

What you were doing manually is subtracting the first element of each list and then the second element, and so on. In other words, it is L1[i] - L2[i]. 

Since you need these indexes, let’s create a dummy array of five elements that represent the index positions L3 = [0, 1, 2, 3, 4]. 

Let’s implement the for loop using the list L3:

```python
L1 = [10, 20, 30, 24, 18]
L2 = [8, 14, 15, 20, 10]
L3 = [0, 1, 2, 3, 4]

for i in L3:
    L3[i] = L1[i] - L2[i]
```

Here, you are updating elements of L3 at each iteration. Now think whether you can use the same approach for a list with 1000 elements? To answer this, let's look at our next video.

Note: here 'i' is an iterator - An **iterable** is any Python object capable of returning its members one at a time, permitting it to be iterated over in a for-loop.

**VIDEO**

Now, let's revisit what you have learnt in the video above. The syntax of the range function is simple. Different implementations of range function include:

- `range(n)`: This creates a range object that has elements from 0 to n-1 [ both inclusive].

- `range(m,n)`: This creates a range object that has elements from m to n-1 [both inclusive].

- `range(m,n,t)`: This creates a range object that has elements from m to n-1 with a step count of t. In other words, the range object has elements m, m+t, m+2t…so on. If t is negative, the elements would be decreasing, and that’s exactly what happens in the range (100, 0, -1).

An important thing to note here is that you saw a way to create lists using the list function on the range object. list(range(0, 10) would create a list of 10 elements.

#### Complete the Code

Complete this piece of code for calculating the element-wise difference between two lists and storing them in L3.

[Assume that the lists are of the same length.]

```python
L1 = [10, 20, 30, 24, 18]
L2 = [8, 14, 15, 20, 10]
L3=[]
for i in ##1###:
    L3.###2##
L3
```

- range(L1), append(L2 - L1)

- range(len(L1) + 1), pop(L2(i) - L1(i))

- range(len(L2)), append(L2[i] -L1[i])

- range(len(L1)), append(L2(i) - L1(i))

Ans: C. 

- *The elements in the list 3 would be the same as the other two lists; so, you need to iterate the loop such that every element-wise subtraction is calculated and appended to the list 3. Append is a method defined on lists; so, in order to append an element, you use list.methodname().*

- *Using a range function, range(n) would create elements from 0 to n-1, and for adding new elements to a list, you can use the append function.*



Now, attempt the coding question given below based on your understanding of iterations.



### Iterations

#### Problem

Description

You are given a list of string elements and asked to return a list which contains each element of the string in title case or in other words first character of the string would be in upper case and remaining all characters in lower case

Sample Input:

['VARMA', 'raj', 'Gupta', 'SaNdeeP']

Sample Output

['Varma', 'Raj', 'Gupta', 'Sandeep']

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)

# Type your code here
result = [x[0].upper() + x[1:].lower() for x in input_list]

print(result)
```



Suppose a situation arises where the developer has no idea about the number of iterations he needs to have. Such iterations are called event-based iterations. Let's learn about them in detail.

And before moving forward let's use the learnings of this segment, to create a small app which can find the prime numbers in the given list of numbers. It is highly recommended that you try to build this app your own. If you feel that you are not comfortable with the syntaxes yet, try to come up with a logical flow for the app. After you give it a try, look at the following video to understand the solution. 

**VIDEO**

#### 

#### What's with all the Negativity?

Qn: Which of the following would create a list of negative even numbers from -100 to 0 (-100 included and 0 not included)? [More than one option may be correct.]

- list(range(0, -101, 2))

- list(range(-100, -1, 2))

- sorted(set(range(-2, -101, -2)))

- ```python
  l = []
  for i in range(-100, 0):
      if(i % 2 == 0):
          l.append(i)
  l
  ```

Ans: B, C & D.

- *The range function here creates elements from -100 with an increase in value by 2, as the step count of 2 is passed as a third argument.*

- *The range function, range(-2,-101) would create an empty list, as the start value is greater than the end value. Instead, here the inclusion of the third parameter step plays an important role. Since the value specified is -2 it means to consider starting value as -2 and decrease value by 2 each time. This would return elements as -2, -4,-6….-100. Applying a set function would create a set of the range objects. But applying an in-built sorted function on this set would return a sorted list, i.e., -100, -98,-96…..*

- *In this given code snippet, you are basically taking an empty list l. Then, first by iterating a for loop over elements in range object which has elements from -100 to 0, then checking if an element is even or not and if i is even you are appending to list L. At the end of completion of the list the list would have all the negative even elements from -100 to 0. This is exactly what we need.*



#### Of Fish, Birds, and Mammals

Qn: Using the following [document,](https://docs.python.org/3/tutorial/datastructures.html#dictionaries) answer the following questions. What will the output of the following code be?  

```python
d = {0: 'Fish', 1: 'Bird', 2: 'Mammal'}
for i in d:
    print(i)
```

- Error

- Fish Bird Mammal

- 0 1 2

- 0 Fish 1 Bird 2 Mammal

Ans: C. *By default, the iteration is over the keys.*






