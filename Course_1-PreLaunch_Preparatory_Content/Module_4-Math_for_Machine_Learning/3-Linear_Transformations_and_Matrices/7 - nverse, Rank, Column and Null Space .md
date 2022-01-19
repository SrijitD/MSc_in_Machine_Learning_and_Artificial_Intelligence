nverse, Rank, Column and Null Space

In the previous segment, you saw how to solve a system of linear equations using matrices. Let's now understand what a system of equations represents geometrically. In the process, you will study the concepts of **matrix inverse, rank, column space and null space.**

## Non-Invertible Matrices

In the previous examples of systems of linear equations we had taken, computing the inverse of matrix A was straightforward, but it is not always the case. For example, say you have the following two equations in two variables x and y - this setting would be quite familiar to you from high school math:
x+2y=5
3x+6y=10

Try solving this system using Numpy and observe the result. The matrix version of this problem is:
Ax=b, or ![enter image description here](https://i.ibb.co/HTQ6NVM/Matrix-31.png)

```python
# system of two equations
A = np.array([[1, 2], 
              [3, 6]])
b = np.array([5, 10])

# compute the inverse
A_inv = np.linalg.inv(A)

# solution: A_inv * b
x = np.dot(A_inv, b)
print(x) # returns [-3.00239975e+16  1.50119988e+16]
```

If you tried computing the solution in Numpy, you would have gotten a funny output: x is a terribly large vector with elements in the order of 1016. That's because it turns out that the matrix A is **non-invertible.** To understand why this is happening, let's understand the **geometric meaning** of solving a system of linear equations.

## Video

Watch [this video by 3Blue1Brown to understand systems of equations visually](https://www.youtube.com/watch?v=uQhTuRlWMxw).

To summarise, solving a system of linear equations Ax=b is equivalent to finding the unique vector x that lands on the vector b after the transformation A. In most cases, A will represent a transformation wherein the span is maintained - 2d stays 2d, 3d stays 3d, etc.

But in the rare cases when A happens to 'squish' space into a lower dimensional one, such as squishing 3d space onto a straight line, it becomes quite unlikely that a vector x exists which lands on b - in such cases, we say that the system of equations **does not have a solution.** Such situations are reflected by the fact that the **determinant of A is zero**, and equivalently that the **inverse A−1 does not exist**. Some important terminologies are:

- The **rank of a matrix** is the dimensionality of the output of the transformation - for e.g. the rank of the matrix ![](https://i.ibb.co/g7fSrRc/Matrix-32.png) is one because the two column vectors are collinear (i.e. they are the same vectors), and so this matrix squishes the 2d space onto a straight line of **dimension one**
- The **column space of a matrix** is the span of the columns of the matrix. For e.g. the column space of the matrix ![](https://i.ibb.co/g7fSrRc/Matrix-32.png) is a straight line. Thus, rank is equal to the number of dimensions in the column space of the matrix.
- The **null space** is the space of all vectors that land on the zero vector under the transformation

#### 

#### Inverse of a Matrix

Qn: You now understand what the matrix inverse represents intuitively. Without doing computations by hand (or using any programming language), report the inverse of the following matrix: ![A](https://i.ibb.co/ZSWVt3X/Matrix-33.png)  
Ans: First, imagine the transformation represented by the matrix A, then imagine the reverse transformation. A represents an anti-clockwise rotation by 90 degrees, so A−1 should represent a clockwise 90 degrees transformation. ![A'](https://i.ibb.co/dWnFhwm/Matrix-34.png)

#### 

#### The Identity Transformation

Qn: Which of the following matrices represents an identity transformation, i.e. a transformation that 'does nothing'?
Ans: The identity transformation does not alter the locations of the basis vectors, so ^i and ^j stay at (1, 0) and (0, 1) respectively. ![I](https://i.ibb.co/9vPpDQV/Matrix-35.png)

#### 

#### Rank of a Matrix

Qn: Choose all the correct options. The rank of a 3 x 3 matrix which squishes the 3d space onto:  
Ans: Rank of a matrix is the number of dimensions of the 'output space', i.e. space onto which the original space is transformed to. A plane is two dimensional and a straight line is one dimensional.

- a straight line is 1
- a plane is 2

#### 

#### Computing the Rank in Numpy

Qn: In a previous example, you saw that the following matrix did not have an inverse. This is because the matrix represents a transformation which squishes the 2d space onto a single straight line. ![A](https://i.ibb.co/ZBSfKM2/Matrix-36.png) Compute the rank of the matrix in Numpy using the function np.linalg.matrix_rank().  
Ans: Rank = 1. Use np.linalg.matrix_rank(A)

#### 

#### Solving a System of Equations

Qn: Consider the following system of three equations and three variables:
2x−y−z=1
2x−y+z=0
4x−2y−3z=−1

Try solving it in Numpy. You can use the following code to create the arrays:

```python
# system of three equations
A = np.array([[2, -1, -1], 
              [2, -1, 1], 
              [4, -2, -3]])

b = np.array([1, 0, -1])
```

The system of equations (hint: look at the determinant of the matrix A using np.linalg.det(A):  
Ans: You'll see that the determinant (and thus the inverse) does not exist. This indicates that the system does not have a unique solution.



Qn: What is the reason this system does not have a solution? You can answer that by computing the rank of the matrix A using np.linalg.matrix_rank(A).  
Ans: The matrix A squishes the 3d space onto a plane, and the vector b does not lie on that plane. The rank of the matrix A comes out to be 2, which implies that the transformation A squishes the 3d space onto a plane (since a plane has two dimensions). It happens that the vector b does not lie on that plane, and thus there is no vector x which satisfies this equation.





Until now, we have only covered systems which have as many equations as variables, so we only had square matrices A. But you often come across **non-square matrices** - those which have an unequal number of rows and columns. Though fundamentally they represent the same concept, you can optionally study that in the video provided below.

## **Additional Study**

You can study how these concepts extend to **non-square matrices** here:

1. [3Blue1Brown: Intuition of non-square matrices](https://www.youtube.com/watch?v=v8VSDg_WQlA)

Non-invertible matrices are also called **singular matrices**. For a detailed study of inverses and how such systems are solved manually, you can go through the following Khan Academy videos:

1. [Khan Academy: Calculating matrix inverse](https://www.youtube.com/watch?v=iUQR0enP7RQ)
2. [Khan Academy:  The row-echelon form to manually solve a system of linear equations.](http://www.khanacademy.org/math/precalculus/precalc-matrices/row-echelon-and-gaussian-elimination/v/matrices-reduced-row-echelon-form-2)


