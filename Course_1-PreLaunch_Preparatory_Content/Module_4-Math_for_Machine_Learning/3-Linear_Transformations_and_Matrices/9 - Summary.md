# Summary

In this session, you revisited the basics of matrices and studied matrices as functions representing **linear transformations**. You learnt that linear transformations transform space such that the gridlines remain parallel and evenly spaced. Every linear transformation can be represented as a matrix. 

You studied how **systems of linear equations** can be represented in the matrix form as Ax=b where the matrix A represents a linear transformation. The solution to this system exists only when there exists a vector x which lands at b after the transformation. 

In some special cases, the transformation squishes the original space into a lower dimensional space, in which case a solution is less likely to exist. This is represented by the fact that the **inverse** of the matrix A does not exist (and thus the determinant is zero). In such cases, the **rank** of the matrix is reduced (and equivalently, the **column space** of the matrix is reduced to a lower dimensional space). 

You also learnt to compute the inverse, determinant and rank of a matrix in Numpy.
