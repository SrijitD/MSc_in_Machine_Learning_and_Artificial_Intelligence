# Least Squares Approximation

In this segment, you will study **least squares approximation** - a technique used to find 'approximate solutions' to systems of equations that do not have an exact solution. This concept will be useful specifically when you study 'Advanced Regression'.

Note that here we will discuss the idea of least squares approximation only at a high level without getting too much into math (just enough so that you know when and why should be used). You can study the topic more rigorously in the additional readings provided below.

## Least Squares Approximation

In the previous segment, we saw an example of the following system of equations which did not have a unique solution: ![Matrix-37](https://i.ibb.co/TTkYGzG/Matrix-37.png) If you tried computing the rank of the matrix in Numpy, it would come out to be **rank=2**. You can use the following code to compute the rank:

```python
# system of three equations
A = np.array([[2, -1, -1], 
              [2, -1, 1], 
              [4, -2, -3]])

b = np.array([1, 0, -1])
np.linalg.matrix_rank(A) # returns 2
```

Before moving ahead, try to think of some reasons why this system does not have a solution.

#### System of Linear Equations

You saw an example of the following system of equations Ax=b which did not have a unique solution: ![Matrix-38.png](https://i.ibb.co/jDVjtHG/Matrix-38.png) Try to think about why this system is not solvable (in an intuitive manner) - choose an answer and compare your answer with your peers. This is a **poll question.**

**Hints**:

1. Solving Ax=b means to find a vector x which lands on b under the transformation A.

2. The rank of A is two.

3. The vectors x and b are in 3d space.

The reason this system is not solvable is that the matrix A squishes the 3d space onto a 2d plane. The problem is that the vector Ax lies on that 2d plane (like all vectors that get multiplied by A), but the vector b does not lie on that plane. Hence, this problem is unsolvable in an exact sense.

But we often come across such systems of equations in the real world, and we want to find **approximate solutions** to them. That is, we want to find the vector x which comes 'as close to b as possible' after the transformation A. One such technique used to do that is called **least squares approximation**.

## Video

You can study least squares approximation from [this Khan Academy video.](https://www.youtube.com/watch?v=MC7l96tW8V8&list=PL39469144F25ACECE&index=3)

To summarise, the least squares approximate solution to the system of equations Ax=b is given by:

![Matrix-39](https://i.ibb.co/fCz2DDr/Matrix-39.png) This is an important and very frequently used technique because, in many real-world phenomena, the matrix A is not invertible. This is because it is usually not a square matrix, i.e. many real-world systems are not represented by square matrices.
