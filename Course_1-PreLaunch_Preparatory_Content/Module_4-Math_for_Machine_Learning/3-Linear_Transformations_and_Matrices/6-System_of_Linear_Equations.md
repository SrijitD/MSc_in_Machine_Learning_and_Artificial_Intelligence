# System of Linear Equations

Let's now look at an important practical application of matrices - solving a **system of linear equations.**

Systems of linear equations are widely studied because they occur in multiple domains -engineering, economics, physics, computer science and so on. In fact, one of the earliest computers in the world, [ENIAC](https://en.wikipedia.org/wiki/ENIAC), was primarily designed (during World War-II) to compute trajectories of missiles, which boils down to solving a system of linear equations.

## **Systems of Linear Equations**

A system of linear equations is a set of linear equations involving the same set of variables.

For example, consider the following three linear equations in three variables x1,x2,x3:

x1+5x2−x3=1

2x1+3x2−2x3=2

−3x1+4x2=0

Solving this system means to find a combination x1,x2,x3 which satisfies all three equations. You can solve this system of equations algebraically (with pen and paper) in a few minutes, but in most practical applications, you have really large sets of equations and variables (e.g. modern deep neural networks involve systems of a few million equations and variables).

Thus, you need to automate the process of solving such systems. Matrices give us a very nifty way to express and solve these equations. The equations above can be rewritten in the matrix form as:

Ax=b, where: ![A, x, b](https://i.ibb.co/yNZnZrv/Matrix-30.png)

Solving the system of linear equations boils down to solving the matrix equation Ax=b. i.e. finding a vector x which satisfies Ax=b. You may already know that this solution is given by x=A−1b where A−1 is the inverse of the matrix A.

Here we only had three equations and three variables, but you can extend this to any number of equations and variables. Thus, solving a system of equations (no matter how many of them) is reduced to computing the inverse of a matrix and multiplying it by a vector. More importantly, since matrix operations can be parallelised, large systems can be solved in a matter of seconds (Numpy code shown below).

Try executing the following code in a Jupyter notebook to compute the solution to the system shown above. The inverse of a matrix can be computed using 'np.linalg.inv(A)':

```python
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
```

You will see that the solution x comes out to be [0, 0, −1]. Verify that this is the correct solution by substituting the values in each of the three equations.

#### System of Linear Equations

Qn: Solve the following system of three equations and three unknowns in Numpy and report the solution:
2x+6y−z=0
x+2y−2z=1
−5x+2z=8  
Ans: [−2, 0.5, −1]

In the next segment, you will understand what a system of equations represents geometrically and study the concepts of **matrix inverse, rank, column space and null space.**
