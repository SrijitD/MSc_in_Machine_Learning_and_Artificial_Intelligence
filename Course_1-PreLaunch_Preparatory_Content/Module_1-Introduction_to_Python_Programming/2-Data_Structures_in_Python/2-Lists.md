# Lists

In this session, we will understand more about data structure; A data structure is nothing but a collection of **data values**.

Practically, whenever you are handling data, you are not given a single number or a string; instead, you are given a set of values and asked to manage them. There are multiple data structures that can handle such a set of values, each with its unique properties. Let's have a learn more about them from the video below:

**VIDEO**

Lists are the most basic data structure available in python that can hold multiple variables/objects together for ease of use. Let's explore a few examples of lists to understand more about how they are used.

**VIDEO**

There are different ways of accessing elements that are present in a list. You can use **indexing** to access individual elements from a list or you can use **slicing** to multiple elements. Implement it yourself using the code given below:

```python
# Indexing example

L = ["Chemistry", "Biology", [1989, 2004], ("Oreily", "Pearson")]
L[0]

# Slicing

L[0:3]
```

For more examples of indexing and slicing in lists, you can refer to the [python documentation](https://docs.python.org/3/tutorial/introduction.html#lists) on lists. Let's continue exploring the capabilities of lists in python in the upcoming video:

**VIDEO**

You can check the members of a list by using the "in" keyword. The membership check operation returns a boolean output. Lists are **mutable**, which means the elements of a list can be changed. Take a look at the video below:

**VIDEO**

Some of the essential methods available with lists include:

- **extend():** Extend a list by adding elements at the end of the list.

- **append():** Append an object to the end of a list.

The significant difference between the two methods is that the append() method takes an object passed as a single element and adds it to the end of the list, whereas extend() takes an object passed as an iterable and adds every element in the iterable at the end of the list. Take a look at the code below and implement it yourself:

```python
# extend()

L = ["Chemistry", "Biology", [1989, 2004] ,("Oreily" , "Pearson")]
L.extend([5, 8])
L

# append()

L = ["Chemistry", "Biology", [1989, 2004], ("Oreily" , "Pearson")]
L.append([5, 8])
L
```

In the examples above, you can see that when a list is passed in the extend method, it takes each element from the list and appends it to the end of the list. However, when the same list is passed to an append method, it considers this list as a single element and appends it to the end of the list. Take a look at the upcoming video:

**VIDEO**

Some of the common list functions that you have learnt in the video above:

- **pop(index)**: Remove and return the item at index (default last)

- **remove(value)**: Remove the first occurrence of a value in the list

Till now you have learnt indexing, slicing, adding elements, and removing elements from a list. Now let's understand how to order the elements in a list in the upcoming video:

**VIDEO**

There are two functions you can use to sort a list:

- **sort():** sorts the elements of a list in place
- **sorted():** assign the sorted elements to a new list. And the original list is left as is.

#### Indexing from the End

Qn: Suppose list_1 is [2, 33, 222, 14, 25]. What is list_1[-5]?

- 2

- 33

- []

- Error

Ans: A. _A list supports negative indexing with the last element starting at -1. So, list_1[-5] will return 2._

#### I Lost Everything!

What would be the output of the code below?

```python
word = ['1','2','3','4']
word[ : ] = [ ]
print(word)
```

- Error

- The output will have an additional space after each element.

- Empty list

- ['1','2','3','4']

Ans: C. _Yes, this is the correct answer. We are indexing all the elements of the list 'word' to an empty list; hence, the final output would be an empty list. Hence, this method can also be used to delete all the items from a list._

####

#### Sorted List

Qn: Consider the following list:

```python
L = ['one','two','three', 'four', 'five', 'six']
print(sorted(L))
print (L)
```

- ['five', 'four', 'one', 'six', 'three', 'two']

  ['one', 'two', 'three', 'four', 'five', 'six']

- ['one', 'two', 'three', 'four', 'five', 'six']

  ['five', 'four', 'one', 'six', 'three', 'two']

- ['five', 'four', 'one', 'six', 'three', 'two']

  ['five', 'four', 'one', 'six', 'three', 'two']

- Error

Ans: A. _sorted(L) will return a sorted list, and when it comes to strings, it happens based on the character ASCII values. First, it compares the ASCII values of the first characters and sorts the strings. If the first characters have the same value, then it proceeds to the second characters and compares their ASCII values; if this matches again, then it proceeds to the third characters, and this continues until you have sorted them. In this way, the strings are sorted in a list._

### List Remove Append

#### Problem

Description

Remove SPSS from input_list=['SAS', 'R', 'PYTHON', 'SPSS'] and add 'SPARK' in its place.

**Sample Input:**

['SAS', 'R', 'PYTHON', 'SPSS']

**Sample Output:**

['SAS', 'R', 'PYTHON', 'SPARK']

#### Solution

```python
import ast,sys
input_list = (sys.stdin.read()).split(',')
# Write code to remove 'SPSS'
# Write code to append 'SPARK'
input_list.remove("SPSS")
input_list.append("SPARK")
print(input_list)
```

### List to String

#### Problem

Description

Convert a list ['Pythons syntax is easy to learn', 'Pythons syntax is very clear'] to a string using ‘&’. The sample output of this string will be:

**Pythons syntax is easy to learn & Pythons syntax is very clear**

Note that there is a space on both sides of '&' (as usual in English sentences).

#### Solution

```python
import ast,sys
input_str = (sys.stdin.read()).split(',')

string_1 = input_str[0] + " & " + input_str[1]
print(string_1)
```

**VIDEO**

In the video above, you learnt about shallow copying, which is an important concept to understand while handling lists. As you saw, by assigning B = A, you refer to the same list object in the memory, and the changes made to list A will be reflected in list B as well. With A[:], you are creating a new object, and this new object is assigned to B; here, any changes in list A wouldn’t affect list B anymore. Take a look at the image below to understand better:

![Shallow-Copying](https://i.ibb.co/LgwQkrk/Shallow-Copying.png)

#### I Will Find You, Python.

Qn: How will I extract Python from the nested list

`input_list = [['SAS','R'],['Tableau','SQL'],['Python','Java']]`

- input_list[2][0]

- input_list[2]

- input_list[0]

- input_list[1]

Ans: A. _Using the slicing concept we can extract Python from the nested list. Here indexing starts from 0 and as the given list is a nested list then from index position 2 we have to extract the first element which is Python and whose index position is 0._

`input_list[2][0]`

### String Split

#### Problem

Description

Split the string input_str = 'Kumar_Ravi_003' to the person's second name, first name and unique customer code. In this example, second_name= 'Kumar', first_name= 'Ravi', customer_code = '003'.

A sample output of the input 'Kumar_Ravi_003' is:

**Ravi
Kumar
003**

Note that you need to **print in the order** first name, last name and customer code.

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
second_name, first_name, customer_code = tuple(input_str.split("_"))
# second_name = #write your answer here
# customer_code = #write your answer here
print(first_name)
print(second_name)
print(customer_code)
```

In this segment, you have learnt about lists. In the upcoming segment, you will be learning about tuples.
