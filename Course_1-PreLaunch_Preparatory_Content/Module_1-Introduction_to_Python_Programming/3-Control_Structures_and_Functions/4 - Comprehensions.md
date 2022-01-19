# Comprehensions

Comprehensions are syntactic constructs that enable sequences to be built from other sequences in a clear and concise manner. Here, we will cover list comprehensions, dictionary- comprehensions and set comprehensions.

**VIDEO**

Using list comprehensions is much more concise and elegant than explicit for loops. An example of creating a list using a loop is as follows:

```python
L1 = [10, 20, 30, 24, 18]
L2 = [8, 14, 15, 20, 10]
L3 = []
for i in range(len(L1)):
    L3.append(L1[i] - L2[i])
L3
```

You know this code from our earlier discussions. The same code using a list comprehension is as follows:

```python
# using list comprehension

L1 = [10, 20, 30, 24, 18]
L2 = [8, 14, 15, 20, 10]
L3 = [L1[i] - L2[i] for i in range(0, len(L1))]
L3
```

You can use list comprehension to iterate through two lists at a time. The following video will demonstrate this capability:

**VIDEO**

In the video above, apart from iterating through two lists, you also saw dictionary comprehension. It is similar to list comprehension in its construction.  

Let’s look at an example to understand the dictionary comprehension better. First, using the traditional approach, let’s create a dictionary that has the first ten even natural numbers as keys and the square of each number as the value to the key.

```python
# Creating a dictionary consisting of even natural numbers as key and square of each element as value

ordinary_dict ={}

for i in range(2,21):
    if i % 2 == 0:
        ordinary_dict[i] = i**2

print(ordinary_dict)
```

The same code in terms of a dictionary comprehension is as follows:

```python
# Using dictionary comprehension
updated_dict = {i : i**2 for i in range(2,21) if i % 2 ==0}
print(updated_dict)
```

You can see that the comprehension is inside curly brackets, representing that it is <u>dictionary comprehension</u>. The expression inside the brackets first starts with the operation/output that you desire, and then loops and conditionals occur in the same order of the regular code. 

The comprehension technique can work on sets as well. Let's look at an application of set comprehensions.

**VIDEO**



In the above video, you saw the use of sets comprehension to create a small application which returns the vowels in a name. The code in is given below: 

```python
word = input("Enter a word : ")
vowels = {i for i in word if i in "aeiou"}
vowels
```

Now, based on your learning from the previous video attempt the coding question given below:



### List Comprehension

#### Problem

Description

You are given an integer 'n' as the input. Create a list comprehension containing the squares of the integers from 1 till n^2 (including 1 and n), and print the list. 

For example, if the input is 4, the output should be a list as follows:

[1, 4, 9, 16]

The input integer 'n' is stored in the variable 'n'.

```python
import ast, sys
n = int(input())
final_list = [n**2 for n in range(1,n+1)]
print(final_list)
```



#### Problem

Description

Extract the words that start with a vowel from a list input_list=[wood, old, apple, big, item, euphoria] using list comprehensions.

**Sample Input:**

['wood','old','apple','big','item','euphoria']

**Sample Output:**

['old', 'apple', 'item', 'euphoria']

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)

list_vowel = [word for word in input_list if word[0] in ['a', 'e', 'i', 'o', 'u']]

print(list_vowel)
```



#### Dictionary Comprehension

Qn: Following is the code to create a dictionary where the keys are multiples of 3 among the first 100 natural numbers and each value is the cube of the key.

```python
input_list = list(range(1,100))
output_dict = {}

for val in input_list:
    if val % 3 == 0:
        output_dict[val] = val**3
```

Now, what would be corresponding dictionary comprehension for the code involved in dictionary creation? 

- output_dict= [val:val**3 for val in input_list if val%3=0]

- output_dict= {for val in input_list if val%3==0 val:val**3 }

- output_dict= { if val%3==0 val:val**3 for val in input_list}

- output_dict= {val : val**3 for val in input_list if val % 3 == 0}

Ans: D. *A dictionary comprehension should be inside curly brackets, and the expression inside the brackets first starts with the operation/output that you desire, and then loops and conditionals occur in the same order of the regular code.*



#### List Comprehension

What will the output of the following code be?

```python
print([i+j for i in "abc" for j in "def"])
```

- ['ad', 'ae', 'af', 'bd', 'be', 'bf', 'cd', 'ce', 'cf']

- [‘da’, ‘ea’, ‘fa’, ‘db’, ‘eb’, ‘fb’, ‘dc’, ‘ec’, ‘fc’]

- [[‘da’, ‘db’, ‘dc’], [‘ea’, ‘eb’, ‘ec’], [‘fa’, ‘fb’, ‘fc’]]

Ans: A. *For every value of j, i and j are concatenated in a list.*





#### Dictionary Comprehension

Qn: What will the output of the following code be?

```python
d = {x.upper(): x*3 for x in 'acbd'}
print(d)
```

- {'A': 'a3', 'C': 'c3', 'B': 'b3', 'D': 'd3'}

- {'A': 'aaa', 'C': 'ccc', 'B': 'bbb', 'D': 'ddd'}

- {'A': '3a', 'C': '3c', 'B': '3b', 'D': '3d'}

- None of the above

Ans: B. _a*3 will return aaa and a.upper() will return 'A'._
