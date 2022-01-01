# Matrices: The Basics

In the last session, you studied the basics of vectors

We will now move on to  **matrices**, a time-tested and powerful type of data structures used to perform numerical computations. First, recall some basics of matrices. Watch  [this video courtesy Khan Academy](https://www.youtube.com/watch?v=xyAuNHPsq-g)  for a fundamental understanding of matrices, though if you are comfortable with the basics you can skip the video and move ahead.

Briefly, a matrix is a **collection of values stored as rows and columns**. In this module, we will be dealing with matrices with only numerical values.

![Matrix](https://i.ibb.co/nL9600T/Matrix-1.png)

Let's recall some terms related to a matrix:

-   **Rows:** Rows are  **horizontal**. The above matrix A has 2 rows. Each row itself is a vector, so they are also called  **row vectors.**
-   **Columns:** Columns are  **vertical**. The above matrix A has 3 columns. Each column itself is a vector, so they are also called  **column vectors.**
-   **Entities:** Entities are **individual values**  in a matrix. For a given matrix A, value of row i and column j is represented as Ai,j. For example, in the above matrix, A0,2=6 (note that we are using indexing starting from zero to be consistent with the Numpy way).
-   **Dimensions:** The number of rows and columns. For m rows and n columns, the dimensions are  **m x n**. The dimensions of the above matrix A are 2 x 3.
-   **Square Matrices:** These are matrices where  **the number of rows is equal to the number of columns**. The above matrix A is not a square matrix.
-   **Diagonal Matrices:** These are square matrices where all the off-diagonal elements are zero. For e.g. this is a 3 x 3 diagonal matrix: 
![Diagonal Matrix](https://i.ibb.co/WGHXDbt/Matrix-2.png)
Note that 'diagonal' refers to the elements Aij  where i=j.
-   **Identity Matrices:** These are diagonal matrices where all the diagonal elements are '1'. For e.g. this is a 3 x 3 identity matrix: 
![Identity Matrix](https://i.ibb.co/7G37WDQ/Matrix-3.png)

#### Matrices Refresher
- All diagonal matrices are square matrices with the off-diagonal values zero.
- Identity matrices contain ones in the diagonal, and all off-diagonal elements are zeros. They are necessarily square matrices.

## Creating and Inspecting Matrices in Numpy

In Numpy, there are  **two main ways**  to work with matrices - 1) the  **np.array()**  method that you are already familar with, and 2) the  **np.matrix()**  method. Although the np.matrix() method may look more convenient at first, it only allows you to work with two dimensional matrices (a major drawback). In most cases, you will need to work with 3d, 4d etc. matrices, which you can do with the np.array() method.

Thus, we will use the np.array() method going forward.

The following code block demonstrates how to make a matrix in Numpy and extract its rows, columns, etc. Try playing around with the code in your local Python environment:

    import numpy as np
    A = np.array([[1, 2], 
                 [2, 0]])
    
    print(A.shape) # shape
    print(A[:, 0]) # first column
    print(A[1, :]) # second row

 
# Matrix Operations - I

In the previous section, you learnt the basics of matrices, how to create them, and some terminology related to them. In this section, we will revisit some basic matrix operations (addition, multiplication, etc.). If you are already familiar with these, you can just skim through the page.

## Matrix Addition

Adding two matrices simply means to add the individual entities  **element-wise**, that is, to add up the corresponding i, j elements of both the matrices.

For example, if we have the following two matrices,
![Example](https://i.ibb.co/X8GKn9f/Matrix-4.png)
Then their sum (A + B) would be equal to:
![A+B](https://i.ibb.co/cJBr6ft/Matrix-5.png)
Note that  **not all matrices can be added to each other.** Since the addition is done element-wise, you can only add matrices that have the  **same dimensions**, i.e. the exact same number of rows and columns. Also, the matrix that you get by adding two m x n matrices will also be an m x n matrix.

## Matrix Multiplication

For a quick recap of matrix multiplications, you can watch the following videos.

## Video

Here are some videos, courtesy Khan Academy, that talk about matrix multiplication. If you already know this, so you skip the videos and move ahead - the important points are summarized in the text.

-   [Matrix multiplication - Part 1](https://www.youtube.com/watch?v=aKhhYguY0DQ)
-   [Matrix multiplication - Part 2](https://www.youtube.com/watch?v=OAh573i_qn8)

Let's now summarize what you learned in these videos.

Firstly, note that  **not all matrices can be multiplied with each other.** For the matrix multiplication AB to be valid, the **number of columns in A** should be equal to the  **number of rows in B.** In other words, if you have two matrices **A** and **B** with the dimensions (a1,a2) and (b1,b2) respectively. Then:

-   AB exists if and only if a2=b1
-   BA exists if and only if b2=a1

For example, the following examples show a valid and an invalid multiplication. You  **can**  multiply a (3x2) matrix with a (2x3) matrix, but you  **cannot**  multiply a (3x2) matrix with a (3x2) matrix:
![Valid & Invalid multiplication](https://i.ibb.co/5W61v2G/Matrix-6.png)
In machine learning problems, even though the actual matrix multiplications will be almost always done by libraries (such as Numpy), it is extremely helpful to check that the sizes of your inputs and outputs are what you expect them to be. For example, if you have two large arrays of sizes (1000, 1500) and (1500, 3000), you should verify that the product is of shape (1000, 3000). These 'sanity checks' help you in verifying that the code you are writing does not contain any mistakes.

The  **matrix multiplication process**  can be broken down into computing vector dot products - the (i, j) element of the output matrix is the  **dot product** of the  **ith row**  of the first matrix and the  **jth column**  of the second matrix.

![Matrix Dot Product](https://cdn.upgrad.com/UpGrad/temp/ba27becc-c0c1-40bf-bee4-4b7a55252b53/11.png)

Matrix Dot Product

For example, if:
![A, B](https://i.ibb.co/3kffGYQ/Matrix-7.png)
then A∗B is given by:

![A*B](https://i.ibb.co/m0ZVnBz/Matrix-8.png)

Also, note that A∗B is not necessarily equal to B∗A, i.e. **matrix multiplication is not commutative.**

#### Matrix Addition

Consider the following two matrices:

![A, B](https://i.ibb.co/6ZKvmvV/Matrix-9.png)

Q - What is the result of the sum of the matrices?
A - This is the matrix that results from adding all the individual values in equivalent positions of the two matrices.
![A+B](https://i.ibb.co/G5jbf6H/Matrix-10.png)

Q - What's the result of the product of the two matrices?
A - For position [i, j], the value will be equal to the dot product of row 'i' of A and column 'j' of B.
![A*B](https://i.ibb.co/P19FFPh/Matrix-11.png)

## Matrix Operations in Numpy

You can use the  **np.dot()** method to do matrix multiplication in Numpy, as shown below. To add two matrices  A and B, you can simply use A+B:

    import numpy as np
    
    A = np.array([[1, 2], 
                 [2, 0]])
    B = np.array([[0, 1], 
                 [-1, 2]])
    
    # matrix addition
    print(A+B)
    
    # matrix product
    print(np.dot(A, B))


# Matrix Operations - II

Let's now study two commonly used matrix operations -  **transpose**  and  **inverse.**

## Transposing a Matrix

The  **transpose**  of a matrix produces a matrix in which the rows and columns are interchanged. For example, the transpose of the matrix
![Transpose of Matrix](https://i.ibb.co/1Gk60g0/Matrix-12.png)

Note that the size of the transpose matrix can different from the original matrix, as shown in this example.

In general, the transpose of a matrix satisfies the following:

-   The transpose of an (m, n) matrix is a matrix of size (n, m)
-   The value present at the index  (i, j) in the original matrix will be present at the index  (j, i ) in the transpose matrix

In Numpy, you can compute the transpose of a matrix  A using A.T as follows:

    import numpy as np
    A = np.array([[1, 3], 
                 [2, 0]])
    # transpose
    print(A.T)

#### Transpose of a Matrix

Consider the following matrix
![X](https://i.ibb.co/Sy21rMP/Matrix-13.png)
Q - Now, consider the matrix U=(X′* X), where X' is the transpose of X. Which of the following dimensions can a matrix A have, if U*A is known to exist?
A - Since X' is a 3 x 4 matrix, U = X'X is a 3 x 3 matrix. For UA to exist, then the number of rows in A should be equal to 3.

## **Matrix Inverse**

The inverse of a matrix  A is a matrix A−1 such that their product AA−1=I , i.e. the identity matrix. You can study the basics of matrix inverse in  [the following Khan Academy video](https://www.youtube.com/watch?v=iUQR0enP7RQ), though you will not need to compute the inverses of matrices manually in this program - you can skip the video if you are familiar with the basic idea.

However, it is useful to know how to compute the inverse in Numpy. You can do that using the method np.linalg.inv(A) as shown below. Also, note that matrices in Numpy can be created using either np.matrix() or using np.array().

    # inverse
    A = np.array([[2, 1, -1], 
                  [1, 0, -1], 
                  [-2, 0, 1]])
    
    np.linalg.inv(A)

# Linear Transformations

Let's now study one of the most important ideas in linear algebra -  **linear transformations.**

## **Matrices as Linear Transformations**

To study linear transformations,  [watch this well-animated video courtesy 3Blue1Brown](https://www.youtube.com/watch?v=kYB8IZa5AuE). The text below summarises the key points in the video.

Geometrically, a transformation can be visualised as the  **distortion of the n-dimensional space -** squishing, stretching, rotating etc. The distortion of space can be visualised as a distortion of the grid lines that make up the coordinate system. Space can be distorted in several different ways. A  **linear transformation**, however, is a special distortion with two distinct properties:

1.  Straight lines remain straight and parallel to each other
2.  The origin remains fixed

Let's consider a linear transformation where the original basis vectors  ^i, ^j move to the following points:
![Example](https://i.ibb.co/4jPzY5t/Matrix-14.png)
This means that ^i moves to (2, 0) (from (1, 0) earlier) and ^j stays at (0, 1) in the linear transformation. Try visualising this transformation and see what kind of distortion this involves - does it involve rotation of the 2d space, 'stretching' space in some direction, etc? This transformation simply stretches the space in the x-direction by two units.

Now, here is the most important idea of this section - we can combine the two vectors where ^i and  ^j land and write them as a single matrix. Each of these vectors forms one column of the matrix (and hence are often called **column vectors**).
![enter image description here](https://i.ibb.co/84jLDyb/Matrix-15.png)
This matrix fully represents the linear transformation. If you want to find where _any_ given vector v lands after this transformation, you simply multiply the vector with the matrix:
![enter image description here](https://i.ibb.co/7G6fw4B/Matrix-16.png)
It is convenient to  **think of this matrix as a function**  which describes the transformation - it takes the original vector v as the input and returns the new vector vnew.

Now that we have looked at linear transformations intuitively, it will be easy to study them formally. Formally, a transformation is linear if satisfies two properties. If  L is a linear transformation (i.e. a matrix), and v and w are two vectors, then:
![Linear Transformations](https://i.ibb.co/wN9SY0s/Matrix-17.png)
Using the intuition of linear transformations that you now have, think about (i.e. visualise) why these two properties should be true.

## **Matrix Multiplication: Composition of Linear Transforms**

Now that you know that a matrix represents a linear transformation, let's understand what multiplication of two or more matrices represents geometrically. Watch this  [video from 3Blue1Brown on matrix multiplication as composition](https://www.youtube.com/watch?v=XkY2DOUCWMU).

#### Vector Positions from Describing Rotation

Q - Consider a linear transformation. In this transformation, the coordinate system is rotated counter-clockwise by 90°. What are the new locations of basis vectors ^i and ^j?
A - Try visualising a 90 degree counter-clockwise rotation, and imagine the points at which ^inew and ^jnew will fall.
![enter image description here](https://i.ibb.co/b6XYdNm/Matrix-18.png)

#### Describing Rotation from Vector Positions

Q - Now let's try the reverse of the previous question. Consider the following positions of basis vectors:
![enter image description here](https://i.ibb.co/5G5fkHj/Matrix-19.png)
Which of the following rotations do these positions represent?
A - 135° clockwise.   ^i is at 45° in the 3rd quadrant, and ^j is at 45° in the 4th quadrant. This requires 90° + 45° of rotation.

#### Shearing

Q - You saw the transformation "shearing" in the video. Which of these matrices describe shearing?
A - The →j vector moves to (1,1). Imagine the rectangle described by the basis vectors "sheared", that is, the top of it moves while its base remains the same. 
![enter image description here](https://i.ibb.co/mRj0fk3/Matrix-20.png)
#### Composite Transformation

We can also apply multiple linear transformations one after the other. For example, you can rotate the space 90 degrees counter-clockwise, then apply 'positive shear', and then rotate it back again 90 degrees clock-wise. Let's say these matrices are called A, B and C respectively.

Mathematically, if you imagine these transformations being applied to a vector v, then the final vector would be:

vfinal=CBAv. That is, you apply  A to  v to get the matrix Av, then apply B to Av, and so on to get  CBAv.

Now, you can write the matrix product CBA as another matrix L, i.e. L=CBA. L represents the three transformations done one after the other. In other words, the matrix L=CBA is the  **composite transformation matrix**  - doing the three consecutive transformations is equivalent to the single transformation  L.

You already know the matrices corresponding to the operations described above: rotate the space 90 degrees counter-clockwise (A), then 'shear' it in positive direction (B), and then rotate it back again 90 degrees clock-wise (C). What is the composite matrix L? Hint: The shear matrix is:
![Shear matrix](https://i.ibb.co/tqqqGGJ/Matrix-21.png)
A - The product
![enter image description here](https://i.ibb.co/Fqm4bKR/Matrix-23.png)
You can also imagine the transformations in sequence and see that the vectors ^i and ^j end up at (1, -1) and (0, 1) respectively.
![enter image description here](https://i.ibb.co/2WSFmTP/Matrix-22.png)

### Linear Transformation - Shearing Matrix

Description

One of the more common linear transformation is shearing. This name comes from the effect this transformation has when it distorts space. The matrix of shearing is:  
  
S = [[1, 1], [0, 1]]  
  
This is referred to as positive shearing. Negative shearing is also possible.  
Now, let's imagine a rectangle of height 1 and length 2. The four corner points of the rectangle are:  
a = (0, 0)  
b = (2, 0)  
c = (2, 1)  
d = (0, 1)  
  
Now, think about applying the shearing transformation to these four points. Can you imagine the rectangle turning into a parallelogram, with its vertical sides getting stretched? Let's try applying the transformation on the points. What do we get?

    # Import libraries
    import numpy as np 
    
    # Declare the positive shearing transformation
    
    S = np.matrix([[1,1], [0,1]])
    
    # Declare the vectors that define the corners of the rectangle.
    
    a = np.matrix([[0],[0]])
    b = np.matrix([[2],[0]])
    c = np.matrix([[2],[1]])
    d = np.matrix([[0],[1]])
    
    # Apply the shear transformation to the vectors
    
    a_sheared = S * a
    b_sheared = S * b 
    c_sheared = S * c
    d_sheared = S * d 
    
    # Print the new vectors after the transformation has been applied
    print ("Point 'a' is at \n",a_sheared)
    print ("Point 'b' is at \n",b_sheared)
    print ("Point 'c' is at \n",c_sheared)
    print ("Point 'd' is at \n",d_sheared)

# Determinants

The determinant of a matrix  A, usually denoted as |A|, is a numerical value  associated with a matrix. You might remember computing determinants of matrices manually from high school math (and perhaps also that whether the determinant is zero or not was an important question in those exercises).

Let's now understand determinants in the light of linear transformations.

## **Visual Intuition: Determinants**

In the last section, you understood that a matrix represents a linear transformation. You also saw that this linear transformation distorts the n-dimensional space. What does a determinant mean from the perspective of space-distortion?

[Watch this video on determinants, courtesy 3Blue1Brown](https://www.youtube.com/watch?v=Ip3X9LOh2dk) to understand what the determinant represents geometrically.

Even though you'll rarely need to compute determinants manually, let's quickly revise how it is done for 2d matrices. Let's say we have the following 2x2 matrix A:
![A](https://i.ibb.co/9VbvHZ2/Matrix-24.png)
The determinant is given by the **formula**:
![Determinant of A](https://i.ibb.co/cyJqcCq/Matrix-25.png)
Thus, in the distorted space, 1 square unit of area is multiplied by a factor of  **(a∗d−b∗c)** when matrix A is applied as a linear transformation.
How does this extend to 3x3 matrices?
![B](https://i.ibb.co/Lp71G9M/Matrix-26.png)
The determinant is given by:
![Determinant of B](https://i.ibb.co/DCDVsr1/Matrix-27.png)

In 3d space, the determinant represents the magnitude by which the volume, instead of area, is scaled. The process of calculating determinants of matrices of higher dimensions can be scaled up analogously, though you'll usually use Numpy for that. In Numpy, you can compute the determinant using np.linalg.det() as shown below.

    # determinant
    A = np.array([[2, 3], [-1, 4] ])
    np.linalg.det(A)

#### Determinants - Intuition

Q - The determinant of a 2 x 2 matrix being zero means that the matrix:
A - Represents a transformation that squishes the 2d space into a straight line or a single point

Q - What is the determinant of the matrix
![A](https://i.ibb.co/KqDH8Tt/Matrix-28.png)
A - The determinant is given by (4)*(2) − (−1)\*(1) = 9.

Q - Following is a matrix A:
![A](https://i.ibb.co/v1Y4JFt/Matrix-29.png)
We know that the determinant of this matrix is 0. What are the possible values of 'x'?
Hint: Apply the formula, get a quadratic equation of the form ax2+bx+c=0 and solve it. This type of determinant computation will appear in the next session on eigenvalues and eigenvectors.

A - The equation x^2−2x−24=0 reduces to (x−6)*(x+4)=0.

# System of Linear Equations

Let's now look at an important practical application of matrices - solving a  **system of linear equations.**

Systems of linear equations are widely studied because they occur in multiple domains -engineering, economics, physics, computer science and so on. In fact, one of the earliest computers in the world,  [ENIAC](https://en.wikipedia.org/wiki/ENIAC), was primarily designed (during World War-II) to compute trajectories of missiles, which boils down to solving a system of linear equations.

## **Systems of Linear Equations**

A system of linear equations is a set of linear equations involving the same set of variables.

For example, consider the following three linear equations in three variables  x1,x2,x3:

x1+5x2−x3=1

2x1+3x2−2x3=2

−3x1+4x2=0

Solving this system means to find a combination x1,x2,x3 which satisfies all three equations. You can solve this system of equations algebraically (with pen and paper) in a few minutes, but in most practical applications, you have really large sets of equations and variables (e.g. modern deep neural networks involve systems of a few million equations and variables).

Thus, you need to automate the process of solving such systems. Matrices give us a very nifty way to express and solve these equations. The equations above can be rewritten in the matrix form as:

Ax=b, where:
![A, x, b](https://i.ibb.co/yNZnZrv/Matrix-30.png)

Solving the system of linear equations boils down to solving the matrix equation Ax=b. i.e. finding a vector x which satisfies Ax=b. You may already know that this solution is given by x=A−1b where  A−1 is the inverse of the matrix  A.

Here we only had three equations and three variables, but you can extend this to any number of equations and variables. Thus, solving a system of equations (no matter how many of them) is reduced to computing the inverse of a matrix and multiplying it by a vector. More importantly, since matrix operations can be parallelised, large systems can be solved in a matter of seconds (Numpy code shown below).

Try executing the following code in a Jupyter notebook to compute the solution to the system shown above. The inverse of a matrix can be computed using 'np.linalg.inv(A)':

    # system of three equations
    A = np.array([[1, 5, -1], 
                  [2, 3, -2], 
                  [-3, 4, 0]])
    b = np.array([1, 2, 0])
    
    # compute the inverse
    A_inv = np.linalg.inv(A)
    
    # solution: A_inv * b
    x = np.dot(A_inv, b)
    print(x) # returns [ 0.  0. -1.]

You will see that the solution x comes out to be [0, 0, −1]. Verify that this is the correct solution by substituting the values in each of the three equations.

#### System of Linear Equations

Q - Solve the following system of three equations and three unknowns in Numpy and report the solution:
2x+6y−z=0
x+2y−2z=1
−5x+2z=8

A - [−2, 0.5, −1] 

# Inverse, Rank, Column and Null Space

In the previous segment, you saw how to solve a system of linear equations using matrices. Let's now understand what a system of equations represents geometrically. In the process, you will study the concepts of  **matrix inverse, rank, column space and null space.**

## Non-Invertible Matrices

In the previous examples of systems of linear equations we had taken, computing the inverse of matrix A was straightforward, but it is not always the case. For example, say you have the following two equations in two variables x and y - this setting would be quite familiar to you from high school math:
x+2y=5
3x+6y=10

Try solving this system using Numpy and observe the result. The matrix version of this problem is:
Ax=b, or
![enter image description here](https://i.ibb.co/HTQ6NVM/Matrix-31.png)

    # system of two equations
    A = np.array([[1, 2], 
                  [3, 6]])
    b = np.array([5, 10])
    
    # compute the inverse
    A_inv = np.linalg.inv(A)
    
    # solution: A_inv * b
    x = np.dot(A_inv, b)
    print(x) # returns [-3.00239975e+16  1.50119988e+16]

If you tried computing the solution in Numpy, you would have gotten a funny output: x is a terribly large vector with elements in the order of 1016. That's because it turns out that the matrix A is  **non-invertible.** To understand why this is happening, let's understand the  **geometric meaning**  of solving a system of linear equations.

## Video

Watch  [this video by 3Blue1Brown to understand systems of equations visually](https://www.youtube.com/watch?v=uQhTuRlWMxw).

To summarise, solving a system of linear equations Ax=b is equivalent to finding the unique vector x that lands on the vector b after the transformation A. In most cases, A will represent a transformation wherein the span is maintained - 2d stays 2d, 3d stays 3d, etc.

But in the rare cases when A happens to 'squish' space into a lower dimensional one, such as squishing 3d space onto a straight line, it becomes quite unlikely that a vector x exists which lands on b - in such cases, we say that the system of equations  **does not have a solution.** Such situations are reflected by the fact that the  **determinant of A is zero**, and equivalently that the  **inverse A−1 does not exist**. Some important terminologies are:

- The **rank of a matrix** is the dimensionality of the output of the transformation - for e.g. the rank of the matrix
![](https://i.ibb.co/g7fSrRc/Matrix-32.png)
is one because the two column vectors are collinear (i.e. they are the same vectors), and so this matrix squishes the 2d space onto a straight line of **dimension one**
- The **column space of a matrix** is the span of the columns of the matrix. For e.g. the column space of the matrix
![](https://i.ibb.co/g7fSrRc/Matrix-32.png)
is a straight line. Thus, rank is equal to the number of dimensions in the column space of the matrix.
-   The  **null space** is the space of all vectors that land on the zero vector under the transformation

#### Inverse of a Matrix

Q - You now understand what the matrix inverse represents intuitively. Without doing computations by hand (or using any programming language), report the inverse of the following matrix:
![A](https://i.ibb.co/ZSWVt3X/Matrix-33.png)
A - First, imagine the transformation represented by the matrix A, then imagine the reverse transformation. A represents an anti-clockwise rotation by 90 degrees, so A−1 should represent a clockwise 90 degrees transformation.
![A'](https://i.ibb.co/dWnFhwm/Matrix-34.png)
#### The Identity Transformation

Q - Which of the following matrices represents an identity transformation, i.e. a transformation that 'does nothing'?
A - The identity transformation does not alter the locations of the basis vectors, so ^i and ^j stay at (1, 0) and (0, 1) respectively.
![I](https://i.ibb.co/9vPpDQV/Matrix-35.png)
#### Rank of a Matrix

Q - Choose all the correct options. The rank of a 3 x 3 matrix which squishes the 3d space onto:
A - Rank of a matrix is the number of dimensions of the 'output space', i.e. space onto which the original space is transformed to. A plane is two dimensional and a straight line is one dimensional.
- a straight line is 1
- a plane is 2

#### Computing the Rank in Numpy

Q - In a previous example, you saw that the following matrix did not have an inverse. This is because the matrix represents a transformation which squishes the 2d space onto a single straight line.
![A](https://i.ibb.co/ZBSfKM2/Matrix-36.png)
Compute the rank of the matrix in Numpy using the function np.linalg.matrix_rank().
A - Rank = 1. Use np.linalg.matrix_rank(A)

#### Solving a System of Equations

Q - Consider the following system of three equations and three variables:
2x−y−z=1
2x−y+z=0
4x−2y−3z=−1

Try solving it in Numpy. You can use the following code to create the arrays:

    # system of three equations
    A = np.array([[2, -1, -1], 
                  [2, -1, 1], 
                  [4, -2, -3]])
    
    b = np.array([1, 0, -1])

The system of equations (hint: look at the determinant of the matrix A using np.linalg.det(A):

A - You'll see that the determinant (and thus the inverse) does not exist. This indicates that the system does not have a unique solution.

Q - What is the reason this system does not have a solution? You can answer that by computing the rank of the matrix A using np.linalg.matrix_rank(A).

A - The matrix A squishes the 3d space onto a plane, and the vector b does not lie on that plane. The rank of the matrix A comes out to be 2, which implies that the transformation A squishes the 3d space onto a plane (since a plane has two dimensions). It happens that the vector b does not lie on that plane, and thus there is no vector x which satisfies this equation.

# Least Squares Approximation

In this segment, you will study  **least squares approximation**  - a technique used to find 'approximate solutions' to systems of equations that do not have an exact solution. This concept will be useful specifically when you study 'Advanced Regression'.

Note that here we will discuss the idea of least squares approximation only at a high level without getting too much into math (just enough so that you know when and why should be used). You can study the topic more rigorously in the additional readings provided below.

## Least Squares Approximation

In the previous segment, we saw an example of the following system of equations which did not have a unique solution:
![](https://i.ibb.co/TTkYGzG/Matrix-37.png)
If you tried computing the rank of the matrix in Numpy, it would come out to be  **rank=2**. You can use the following code to compute the rank:

    # system of three equations
    A = np.array([[2, -1, -1], 
                  [2, -1, 1], 
                  [4, -2, -3]])
    
    b = np.array([1, 0, -1])
    np.linalg.matrix_rank(A) # returns 2

Before moving ahead, try to think of some reasons why this system does not have a solution.

#### System of Linear Equations

You saw an example of the following system of equations  Ax=b which did not have a unique solution:
![](https://i.ibb.co/jDVjtHG/Matrix-38.png)
Try to think about why this system is not solvable (in an intuitive manner) - choose an answer and compare your answer with your peers. This is a  **poll question.**

**Hints**:

1) Solving Ax=b means to find a vector x which lands on b under the transformation A.

2) The rank of A is two.

3) The vectors x and b are in 3d space.

The reason this system is not solvable is that the matrix A squishes the 3d space onto a 2d plane. The problem is that the vector  Ax lies on that 2d plane (like all vectors that get multiplied by  A), but the vector b does not lie on that plane. Hence, this problem is unsolvable in an exact sense.

But we often come across such systems of equations in the real world, and we want to find  **approximate solutions** to them. That is, we want to find the vector  x which comes 'as close to b as possible' after the transformation A. One such technique used to do that is called  **least squares approximation**.

## Video

You can study least squares approximation from [this Khan Academy video.](https://www.youtube.com/watch?v=MC7l96tW8V8&list=PL39469144F25ACECE&index=3)

To summarise, the least squares approximate solution to the system of equations Ax=b is given by:

![](https://i.ibb.co/fCz2DDr/Matrix-39.png)
This is an important and very frequently used technique because, in many real-world phenomena, the matrix A is not invertible. This is because it is usually not a square matrix, i.e. many real-world systems are not represented by square matrices.