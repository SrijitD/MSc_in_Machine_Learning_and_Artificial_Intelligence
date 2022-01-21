# Operations Over 1-D Arrays

In the previous segment, you learnt how to create NumPy arrays using existing lists. Once you have loaded the data into an array, NumPy offers a wide range of operations to perform on the data.

Next, you will learn how to efficiently operate on NumPy arrays.

**VIDEO**

In this video, you learnt about the calculation of BMI using NumPy arrays. In the BMI example given above, if you had been working with lists, then you would have needed to map a lambda function (or worse, write a for loop). Whereas, with NumPy, you simply use the relevant operators, as NumPy does all the back-end coding on its own.

Now that you have learnt how to use operators to perform basic operations on a 1D array, let’s understand how to access the elements of an array. For one-dimensional arrays, indexing, slicing, etc., are similar to those in Python lists, which means that indexing starts at 0. The following video will demonstrate the methodologies of indexing and slicing arrays.

**VIDEO**

As explained in this video, indexing refers to extracting a single element from an array, while slicing refers to extracting a subset of elements from an array. Both indexing and slicing are exactly the same as those in lists. Having a unified method of extracting elements from lists and NumPy arrays helps in keeping the library simpler.

The aforementioned element extraction methods will only help you when you know the location of the element that you want to extract. In the following video, you will learn how to access elements based on a condition.

**VIDEO**

To summarise, similar to lists, in NumPy arrays, you can subset your data through conditions based on your requirements. To do this, you need to use logical operators such as ‘<’ and ‘>’. NumPy also has a few inbuilt functions such as max(), min() and mean(), which allow you to calculate statistically important data over the data directly. In the following video, Behzad will explain these functions and also summarise the learnings of this segment.

**VIDEO**

#### Indexing Array

Qn: Given an array:

`array_1 = [1,2,3,5,4,6,7,8,5,3,2]`

What will be the output of the code provided below?

`print(array_1[:3])`

- [1 2 3 5]

- [1 2 3]

- [2 3 5]

Ans: B. _The function only gives the first three entries, and this answer follows that._  

Qn: Given an array:

`array_1 = [1,2,3,5,4,6,7,8,5,3,2]`

What will be the output of the code provided below?

`print(array_1[2:-3])`

- [3 5 4 6 7 8]

- [3 5 4 6 7 8 5]

- [2 3 5 4 6 7 8]

Ans: A. _The desired values start from the third entry (included) in the array until the third last entry (excluded)._

Qn: Given an array:

`array_1 = [1,2,3,5,4,6,7,8,5,3,2]`

What will be the output of the code provided below?  
(Hint: The syntax is [starting value : end value : step value])

`print(array_1[ : : -2])`

- [2, 5, 6, 8, 3]

- [1, 3, 4, 7, 5, 2]

- [2, 5, 7, 4, 3, 1]

Ans: C. _The syntax is [starting value : end value : skip value]. Here, since the skip value is negative, it means that we will start from the opposite direction take every second value in the array_

Qn: How would you extract all the elements with an odd index in a given array?  
(Hint: Odd index refers to the position of the element, not the actual value)

- `array[1:1]`

- `array[: : 2]`

- `array[1: : 2]`

- `array[1:2]`

Ans: C. _The syntax here will give all the elements at odd indices._

**Please note:** For the embedded coding question listed below, we request you to directly type down the code, as the console loads the libraries used by Python automatically; also, if you wish to directly copy and paste this code to Jupyter or any other external IDE, you would be required to manually add the libraries for the code to run.

### Extracting Elements from Array

#### Problem

Description

From a given array, extract all the elements which are greater than 'm' and less than 'n'. Note: 'm' and 'n' are integer values provided as input.

Input format:

A list of integers on line one

Integer 'm' on line two

Integer 'n' on line three

Output format:

1-D array containing integers greater than 'm' and smaller than 'n'.

Sample input:

[ 1, 5, 9, 12, 15, 7, 12, 9 ] *(array)*

6 *(m)*

12 *(n)*

Sample output:

[ 9 7 9 ]

Sample input:

[ 1, 5, 9, 12, 15, 7, 12, 9 ]

12

6

Sample output:

[ ]

#### Solution

```python
import ast 
input_list=ast.literal_eval(input())
m=int(input())
n=int(input())

import numpy as np
array_1 = np.array(input_list)
array_greater = array_1[array_1 > m]
array_less = array_greater[array_greater < n]

final_array = array_less

print(final_array)
```
