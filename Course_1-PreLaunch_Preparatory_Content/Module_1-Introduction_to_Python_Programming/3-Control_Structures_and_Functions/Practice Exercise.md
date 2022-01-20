# Practice Exercise: Map, Filter and Reduce

By now you are well versed with the concepts of basic python programming. Given below are some practice questions. Download the jupyter notebook given below and solve these questions before moving on to the practice exercise:

Once you are done solving the questions, refer to the solution notebook below to find the correct answers:

Now let us test our newly acquired python skills on some practice questions (**un-graded**)

Attempt the questions on map, filter and reduce functions.

### Map Function

#### Problem

Description

Using the function Map, count the number of words that start with ‘S’ in input_list.

**Sample Input:**

['Santa Cruz','Santa fe','Mumbai','Delhi']

**Sample Output:**

2

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)

count = sum(map(lambda x: x[0] == 'S', input_list))
print(count)
```

### Map Function

#### Problem

Description

Create a list ‘name’ consisting of the combination of the first name and the second name from list 1 and 2 respectively.   

For e.g. if the input list is:

`[ ['Ankur', 'Avik', 'Kiran', 'Nitin'], ['Narang', 'Sarkar', 'R', 'Sareen']]`

the output list should be the list:

`['Ankur Narang', 'Avik Sarkar', 'Kiran R', 'Nitin Sareen']`

**Note: Add a space between first name and last name.**

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)
first_name = input_list[0]
last_name = input_list[1]

combine_name = lambda x, y: x + " " + y
name = list(map(combine_name, first_name, last_name))

print(name)
```

### Filter Function

#### Problem

Description

Extract a list of numbers that are multiples of 5 from a list of integers named input_list.

**Sample Input:**

`[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]`

**Sample Output:**

`[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]`

**Note:** Use the filter() function.

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)

list_answer = list(filter(lambda x: x % 5 == 0, input_list))

print(list_answer)
```

### Filter Function

#### Problem

Description

You are given a list of strings such as input_list = ['hdjk', 'salsap', 'sherpa'].

Extract a list of names that start with an ‘s’ and end with a ‘p’ (both 's' and 'p' are lowercase) in input_list.

**Sample Input:**

['soap','sharp','shy','silent','ship','summer','sheep']

**Sample Output:**

['soap', 'sharp', 'ship', 'sheep']

**Note:** Use the filter() function.

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)

sp = list(filter(lambda x: x[0] == "s" and x[-1] == "p", input_list))

print(sp)
```

### Reduce Function

#### Problem

Description

Using the Reduce function, concatenate a list of words in input_list, and print the output as a string.

If input_list = ['I','Love','Python'], the output should be the string 'I Love Python'.

**Sample Input:**

['All','you','have','to','fear','is','fear','itself']

**Sample Output:**

All you have to fear is fear itself

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)

from functools import reduce

concat_str = reduce(lambda x, y: x + " " + y, input_list)

print(concat_str)
```

### Reduce Function

#### Problem

Description

You are given a list of numbers such as input_list = [31, 63, 76, 89]. Find and print the largest number in input_list using the reduce() function.

**Sample Input:**

[65,76,87,23,12,90,99]

**Sample Output:**

99

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)
from functools import reduce

answer = reduce(lambda x, y: x if x>y else y, input_list)

print(answer)
```
