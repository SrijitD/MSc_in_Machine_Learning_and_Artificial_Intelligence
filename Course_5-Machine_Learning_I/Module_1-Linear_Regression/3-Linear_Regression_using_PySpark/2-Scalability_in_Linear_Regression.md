# Scalability in Linear Regression

Till now in this module, you saw how to build a linear regression model using the stats library and scikit learn library. In the next series of videos, you will understand how to implement linear regression using the pyspark API. 

  
Before looking at that, let’s first understand how your linear regression algorithm is scalable. While understanding the basics of linear regression you saw how the whole algorithm boils down to a matrix representation of β. The calculation involves a set of matrix transformations and matrix multiplications. In the previous course,  during the discussion on ALS, you saw how anything related to a bunch of matrix operations becomes scalable.

**VIDEO**

You have seen earlier that matrix multiplication is parallelizable in Spark. Let’s take the example of the linear regression coefficients beta,

$$\hat{\beta}=(X^TX)^{-1}X^Ty$$
                                                               

You can see that there are it is composed of 4 operations:

-   Multiplication $X^T$ and $X$
    
-   Inverse of $X^T*X$
    
-   Multiplication $X^T$ and $Y$
    
-   Multiplication of $inv(X^T*X)$ and $(X^T *Y)$
    

All the above operations are matrix multiplications, which can be easily parallelized in Spark. Hence, most of the Machine Learning algorithms are parallelizable in Spark as they are usually a series of matrix operations.

Having understood this, let’s now move on to build models using the Spark ML library.