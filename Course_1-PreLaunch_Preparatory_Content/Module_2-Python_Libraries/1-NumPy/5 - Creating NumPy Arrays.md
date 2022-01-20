# Creating NumPy Arrays

In the previous segments, you learnt how to convert lists or tuples to arrays using np.array(). There are other ways in which you can create arrays. The following ways are commonly used when you know the size of the array beforehand:

1. `np.ones()`: It is used to create an array of 1s.
2. `np.zeros()`: It is used to create an array of 0s.
3. `np.random.random()`: It is used to create an array of random numbers.
4. `np.arange()`: It is used to create an array with increments of fixed step size.
5. `np.linspace()`: It is used to create an array of fixed length.

The iPython file attached below has been used in the demonstrations in this segment.

In the following video, let’s take a look at each of these methods one by one.

**VIDEO**

In this video, you learnt about the functions of ones and zeros. Let’s watch the next video and learn about the other functions that are used to create arrays.

**VIDEO**

### Array 'arange' Function

#### Problem

Description

Create an array of first 10 multiples of 5 using the 'arange' function.

#### Solution

```python
import numpy as np
array_multipleof5 = np.arange(1, 11) * 5

print(array_multipleof5)
```

In both the videos given above, Behzad talked about creating NumPy arrays using the functions mentioned earlier. But, if you notice, all the arrays that Behzad created were one-dimensional. These functions can also be used to create multidimensional arrays. In the following video, you will learn how to create nD arrays.

**VIDEO**

### Create border array

#### Problem

Description

Given a single integer n, create an (n x n) 2D array with 1 on the border and 0 on the inside.  

Note: Make sure the array is of type **int.**  

**Example:  
Input 1:**  
4  
**Output 1:**  
[[1 1 1 1]  
[1 0 0 1]  
[1 0 0 1]  
[1 1 1 1]]  
**Input 2:**  
2  
**Output 2:**  
[[1 1]   
 [1 1]]

#### Solution

```python
n = int(input())

import numpy as np

# Create an 'n*n' array of all ones

# Fill the array with zeroes from second index (i.e. index 1) to second last index.
# Do this for both row indices and column indices

# Print the array created
border_array = np.zeros([n,n], dtype=int)
border_array[0,:] = np.ones(n, dtype=int)
border_array[:,0] = np.ones(n, dtype=int)
border_array[-1,:] = np.ones(n, dtype=int)
border_array[:,-1] = np.ones(n, dtype=int)
print(border_array) 
```

As you learnt in this video, many other functions can also be used to create arrays. A few methods that will not be covered in this segment are mentioned below. Please read the official NumPy documentation to understand the usage of these methods. 

1. `np.full()`: It is used to create a constant array of any number ‘n’.
2. `np.tile()`: It is used to create a new array by repeating an existing array for a particular number of times.
3. `np.eye()`: It is used to create an identity matrix of any dimension.
4. `np.random.randint()`: It is used to create a random array of integers within a particular range.

In the next segment, you will learn about the mathematical methods available for performing mathematical transformations on NumPy arrays.
