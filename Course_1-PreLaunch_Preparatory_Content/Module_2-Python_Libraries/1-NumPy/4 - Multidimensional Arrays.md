# Multidimensional Arrays

Until now, you learnt about one-dimensional arrays, where all the data is stored in a single line or row. In this segment, you will learn what a multidimensional array is.

A **multidimensional array** is an array of arrays. For example, a two-dimensional array would be an array with each element as a one-dimensional array. 

1-D array : [1, 2, 3, 4, 5]
2-D array : [ [1, 2, 3, 4, 5], [6, 7, 8, 9, 10] ]

Similarly, a three-dimensional array can be thought of as an array with each element as a two-dimensional array. To create multidimensional arrays, you can give a multidimensional list as an input to the np.array function. 

In the following video, Behzad will explain two-dimensional arrays in detail.

**VIDEO**

As you learnt in this video, NumPy arrays have certain features that help in analysing multidimensional arrays. Some features are as follows:

1. shape: It represents the shape of an array as the number of elements in each dimension.
2. ndim: It represents the number of dimensions of an array. For a 2D array, ndim = 2.

Similar to 1D arrays, nD arrays can also operate on individual elements without using list comprehensions or loops. The following video will give you a small demonstration of operating on nD arrays. 

**VIDEO**

As you learnt in this video, you can multiply the different elements in an array with different values. This property of NumPy is called broadcasting. As this is a slightly advanced topic with respect to the scope of this module, it will not be explained in detail here. However, if you wish to learn more about broadcasting, then you can visit this [link](https://numpy.org/doc/stable/user/basics.broadcasting.html).

In NumPy, dimensions are called **axes**. In NumPy terminology, for 2-D arrays:

- *axis = 0* refers to the rows, and
- *axis = 1* refers to the columns.

![Multidimensional Array](https://cdn.upgrad.com/UpGrad/temp/955dae3c-d41c-41db-8ef1-4c38d50f96ef/2_d_array.png)

Multidimensional Array

Multidimensional arrays are indexed using as many indices as the number of dimensions or axes. For instance, to index a 2-D array, you need two indices: array[x, y]. Each axis has an index starting at 0. The figure provided above shows the axes and their indices for a 2-D array.

In the next video, you will learn how to subset and operate on multidimensional arrays.

**VIDEO**

#### Slicing Arrays

Qn: Which of the following would extract all the rows of the first 3 columns in a 2D array?

- `array_name[ : , :2] `

- `array_name[( : , :2)] `

- `array_name[ : , :3] `

- `array_name[( : , :3)]`

Ans: C. *`array_name[:,:3]` extracts all the rows of the first 3 columns. Note that even though the first 3 columns have the indices 0, 1, and 2, respectively, we need to mention `array_name[:,:3]`instead of `array_name[:,:2]` since the last column index mentioned is not included, i.e., `array_name[:,:2]` will give you just the first two columns, i.e., 0 and 1.*

### Border Rows and Columns

#### Problem

Description

Extract all the border rows and columns from a 2-D array.  

**Format:  
Input:** A 2-D Python list  
**Output:** Four NumPy arrays - First column of the input array, first row of the input array, last column of the input array, last row of the input array respectively.  

**Example:  
Input 1:  
**[[11 12 13 14]  
 [21 22 23 24]  
 [31 32 33 34]]  
**Output 1:  
**[11 21 31]  
[11 12 13 14]  
[14 24 34]  
[31 32 33 34]

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)

import numpy as np

# Convert the input list to a NumPy array
array_2d =np.array(input_list)

# Extract the first column, first row, last column and last row respectively using
# appropriate indexing
col_first = array_2d[:, 0]
row_first = array_2d[0, :]
col_last = array_2d[:, -1]
row_last = array_2d[-1, :]
print(col_first)
print(row_first)
print(col_last)
print(row_last)
```

The indexing and slicing of nD arrays are similar to those of 1D arrays. The only difference between the two is that you need to give the slicing and indexing instructions for each dimension separately. Consider the following example:

players_converted[:, 0]

Returns all the rows in the 0th column. Here, ‘:’ is the instruction for all the **rows**, and 0 is the instruction for the 0th **columns**. Similarly, for a 3D array, the slicing command will have three arguments. You can also opt for conditional slicing and indexing of data in nD arrays. Let’s watch the following video where Behzad will explain this concept in detail. 

**VIDEO**

In this video, Behzad demonstrated a few different ways to slice an array. You can apply a condition on the array itself or use a different array with the same dimensions to apply the condition. Now, let’s summarise the learnings from this segment. 

**VIDEO**

In the next segment, you will learn how to initialise fixed-length one-dimensional NumPy arrays using different functions.

## Additional Resources:

Here is a visual representation of **[making arrays and understanding dimensions visually](https://www.youtube.com/watch?v=vN5dAZrS58E).**
