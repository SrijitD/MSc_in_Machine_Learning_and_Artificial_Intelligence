# Mathematical Operations on NumPy I

The objective of this segment is to discuss the mathematical capabilities of NumPy as a library that is meant for scientific calculations. Behzad will walk you through the topics mentioned below.

1. Manipulating arrays
   1. Reshaping arrays
   2. Stacking arrays
2. Performing operations on arrays
   1. Performing basic mathematical operations
      1. Power
      2. Absolute
      3. Trigonometric
      4. Exponential and logarithmic
3. Applying built-in functions
4. Applying your own functions
5. Applying basic linear algebra operations

In the first half of this segment, you will learn about concepts such as reshaping and stacking arrays. These concepts are important and might come in handy. In the second half of this segment, demonstrations will show all the mathematical topics mentioned above. The notebook provided below will be useful in this and the next segment.

In the following video, you will learn about the operations on arrays with mismatching dimensions.

**VIDEO**

In the video provided above, Behzad performed algebraic operations on arrays. A point to note here is that when the shapes of NumPy arrays are not the same, the arrays cannot be operated on. Because of this restriction on the operability, the flexibility of NumPy reduces significantly. Fortunately, the developers of NumPy noticed this issue and developed a few functions that can modify the shape of a NumPy array. They will be discussed one by one in the following video.

**VIDEO**

The commands demonstrated in this video can be used to change the dimensions of a given NumPy array. These commands are as follows:

1. hstack: It puts two arrays with the same number of rows together. By using this command, the number of rows stays the same, while the number of columns increases.
2. vstack: It puts two arrays on top of each other. This command works only when the number of columns in both the arrays is the same. This command can only change the number of rows of an array.
3. reshape: It can change the shape of an array as long as the number of elements in the array before and after the reshape operation is the same.

### Index of the 100th Element

Qn: Consider an (11,12) shape array. What is the index (x,y) of the 100th element? Note: For counting the elements, go row-wise. For example, in the array:

`[[1, 5, 9],
 [3, 0, 2]]`

the 5th element would be '0'.

- (8, 3)

- (8, 4)

- (9, 3)

- (9, 4)

Ans: A. You can create an 11 x 12 array using `np.array(range(1, 11*12+1))`. You can reshape it to an (11 x 12) array and then check the position of 100. Be clear that the indexing starts from 0; hence, the 9th row will have the index 8.  
Alternatively, you can also use `np.unravel_index(99, (11,12))` on the created array.

### Reshaping an Array

Qn: Suppose you have an array 'p':

`[[1, 5],
 [3, 7],
 [4, 9]]`

What will be the output of the following code?

`np.reshape(p, -1)`

- 1-d array

- 2-d array

Ans: A. *`reshape()` function returns a 1-D array when you specify the shape as -1.*

Qn: Consider the array provided below:

`[[1, 2, 3, 4, 5]
 [6, 7, 8, 9, 10]
 [11, 12, 13, 14, 15]
 [16, 17, 18, 19, 20]]`

Now, you are expected to generate the following array out of it:

`[[1, 3]
 [5, 7]
 [9, 11]
 [13, 15]
 [17, 19]]`

Which code will give you the correct output?  
(Hint: Also check if one or more options are correct.)

- `print(array_1.reshape(5, 4)[array_1%2 != 0])`

- `print(array_1[array_1%2 != 0])`

- `print(array_1[array_1%2 == 0].reshape(5, 2))`

- `print(array_1[array_1%2 != 0].reshape(5, 2))`

Ans: D. *`print(array_1[array_1%2 != 0].reshape(5, 2))`  
This is the correct way to slice odd entries and arrange them in the given order.*

Qn: Suppose you have an array 'p'

`[[1, 5],
 [3, 7],
 [4, 9]]`

What will be the output of the following code?

np.reshape(p, (1, -1))

- 1-D Array

- 2-D Array

Ans: B. *The dimension of the array is specified by the number of elements you specify in the tuple. Here, the answer is 2-D array.*

### Stacking arrays

#### Problem

Description

Merge the three arrays provided to you to form a one 4x4 array.

[Hint: Check the function *np.transpose() in the 'Manipulating Arrays' notebook provided.*]

Input:

Array 1: 3*3

[[7, 13, 14]

[18, 10, 17]

[11, 12, 19]]

Array 2: 1-D array

[16, 6, 1]

Array 3: 1*4 array

[[5, 8, 4, 3]]

Output:

[[7 13 14 5]

[18 10 17 8]

[11 12 19 4]

[16 6 1 3]]

#### Solution

```python
# Read the input
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)
list_1 = input_list[0]
list_2 = input_list[1]
list_3 = input_list[2]

# Import NumPy
import numpy as np
list_1_np = np.array(list_1)
list_2_np = np.array(list_2)
list_3_np = np.array(list_3)

list_3_np_tp = list_3_np.reshape(-1, 1)

# Write your code here
list_12 = np.vstack((list_1_np, list_2_np))
final_array = np.hstack((list_12, list_3_np_tp))
print(final_array)
```

Now that you have learnt about the function that can be used to reshape a NumPy array, let’s take a look at some inbuilt functions in the NumPy library that can help transform an array.

**VIDEO**

In the video given above, you learnt about a few commands such as power and absolute that are available in the NumPy library. In the next segment, let’s continue exploring the mathematical capabilities of the NumPy library.

## Additional Resources

Here is a video tutorial on **[reshaping and indexing NumPy arrays](https://www.youtube.com/watch?v=dEzyaIh-7hs).**
