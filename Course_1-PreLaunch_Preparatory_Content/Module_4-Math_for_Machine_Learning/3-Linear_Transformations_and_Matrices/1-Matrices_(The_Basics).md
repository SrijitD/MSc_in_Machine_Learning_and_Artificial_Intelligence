# Matrices: The Basics

In the last session, you studied the basics of vectors

We will now move on to **matrices**, a time-tested and powerful type of data structures used to perform numerical computations. First, recall some basics of matrices. Watch [this video courtesy Khan Academy](https://www.youtube.com/watch?v=xyAuNHPsq-g) for a fundamental understanding of matrices, though if you are comfortable with the basics you can skip the video and move ahead.

Briefly, a matrix is a **collection of values stored as rows and columns**. In this module, we will be dealing with matrices with only numerical values.

![Matrix](https://i.ibb.co/nL9600T/Matrix-1.png)

Let's recall some terms related to a matrix:

- **Rows:** Rows are **horizontal**. The above matrix A has 2 rows. Each row itself is a vector, so they are also called **row vectors.**
- **Columns:** Columns are **vertical**. The above matrix A has 3 columns. Each column itself is a vector, so they are also called **column vectors.**
- **Entities:** Entities are **individual values** in a matrix. For a given matrix A, value of row i and column j is represented as Ai,j. For example, in the above matrix, A0,2=6 (note that we are using indexing starting from zero to be consistent with the Numpy way).
- **Dimensions:** The number of rows and columns. For m rows and n columns, the dimensions are **m x n**. The dimensions of the above matrix A are 2 x 3.
- **Square Matrices:** These are matrices where **the number of rows is equal to the number of columns**. The above matrix A is not a square matrix.
- **Diagonal Matrices:** These are square matrices where all the off-diagonal elements are zero. For e.g. this is a 3 x 3 diagonal matrix: ![Diagonal Matrix](https://i.ibb.co/WGHXDbt/Matrix-2.png) Note that 'diagonal' refers to the elements Aij where i=j.
- **Identity Matrices:** These are diagonal matrices where all the diagonal elements are '1'. For e.g. this is a 3 x 3 identity matrix: ![Identity Matrix](https://i.ibb.co/7G37WDQ/Matrix-3.png)


#### Matrices Refresher

Qn: Choose all the correct options:

- All square matrices are diagonal matrices

- All diagonal matrices are square matrices

- An identity matrix's all elements are equal to 1

- All identity matrices are square matrices

Ans: B & D.

- All diagonal matrices are square matrices with the off-diagonal values zero.

- Identity matrices contain ones in the diagonal, and all off-diagonal elements are zeros. They are necessarily square matrices.


## Creating and Inspecting Matrices in Numpy

In Numpy, there are **two main ways** to work with matrices - 1) the **np.array()** method that you are already familar with, and 2) the **np.matrix()** method. Although the np.matrix() method may look more convenient at first, it only allows you to work with two dimensional matrices (a major drawback). In most cases, you will need to work with 3d, 4d etc. matrices, which you can do with the np.array() method.

Thus, we will use the np.array() method going forward.

The following code block demonstrates how to make a matrix in Numpy and extract its rows, columns, etc. Try playing around with the code in your local Python environment:

```python
import numpy as np
A = np.array([[1, 2], 
             [2, 0]])

print(A.shape) # shape
print(A[:, 0]) # first column
print(A[1, :]) # second row
```

In the next segment, you will study **matrix operations**.