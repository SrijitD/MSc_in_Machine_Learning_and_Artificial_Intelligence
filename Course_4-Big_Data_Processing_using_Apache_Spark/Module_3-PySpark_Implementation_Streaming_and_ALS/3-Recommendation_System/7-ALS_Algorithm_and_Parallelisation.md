# ALS Algorithm and Parallelisation

In this segment, you will learn how the user matrix and the item matrix are created and also understand how you can predict the ratings given an individual user for a particular item or movie.

Before deep-diving into the ALS algorithm, let’s hear from Professor D. Janakiram, as he revises how ALS works, how the cost function is reduced and why this approach is called the alternating least squares algorithm.

**VIDEO**

In the above video, Professor mentioned that you can factorise the user-movie matrix into the user matrix and movie matrix. You can use the singular value decomposition (SVD) to factorise into these matrices but this algorithm will not work due to the following reasons:

- The matrix may not fit into the memory
- This matrix is a sparse matrix means that there are millions of entries are not available in this matrix.

You also saw how the ALS training involving matrix multiplication parallelises in big data systems. 

Let’s now hear from Sajan what happens under the hood of the ALS algorithm.

**VIDEO**

So, as explained in the video above, multiple iterations occur in the ALS algorithm, ultimately leading to the convergence of the matrix values.

You can find the simple version of the ALS algorithm below.

$Initialise\ matrix\ U\ and\ M\ with\ random\ values$

$repeat$

    $for\ random\ R_i^j\ in\ R\ do$

         $error = R_{ij} - U_iXM^T_j$

         $U_i^{new} = U_i^{old} - alpha(error*M_j^T + Regularization)$

         $M_j^{new} = M_j^{old} - alpha(error*M_i^T + Regularization)$

    $end\ for$

$until\ convergence$

Let’s understand the process in the following steps:

- The algorithm starts with the random value initialization in the matrix ‘U’ and the matrix ‘M’.
- Next, it performs matrix multiplication to derive the values of the predicted ratings and then calculates the error by subtracting the resulting values with the actual values.
- It then updates the matrix ‘U’ by fixing the matrix ‘M’.
- Similarly, it updates the matrix ‘M’ by fixing the matrix ‘U’ calculated in the above step.
- This process continues until the algorithm error converges, which means that the user and movie matrix do not change with iterations. When you implement ALS, you can fix the number of iterations to a particular value, for example, 3 or 5, and stop the process. You will get a clearer understanding of the iteration and error convergence in the next session on the implementation of ALS.

To summarise, the algorithm fixes matrix ‘M’ while updating the matrix ‘U’ and vice versa. Simply put, you are alternating between the matrices to calculate the values of each matrix. Hence, this algorithm is called alternating least squares.

Note again that you do not need to understand all the concepts related to ALS. This is just an introduction to the mathematics behind machine learning algorithms. You will get a clearer understanding of most of these concepts in machine learning courses.

In the next video, you will learn about parallelization. Let’s hear from Sajan as he explains it in detail.

**VIDEO**

As explained in the video above, all the vector multiplications of user and movie matrices occur parallelly, not sequentially. For example, when you are calculating the user matrix, for each user Ui you need to multiply Ui with each of the movie vectors Mjs in M to get the Rij. Hence, a good way to parallelise this can be to broadcast the Movie matrix M to every executor of the nodes in the cluster and the minimization for every user Ui can happen on different executors. This further gets optimised on the basis of the size of the matrix and amount of resources available 

Suppose you have two users and two movies with three features. The user and the movie matrices are as follows:

User Matrix:

|        | Feature_1 | Feature_2 | Feature_3 |
| ------ | --------- | --------- | --------- |
| User_1 | 2         | 3         | 4         |
| User_2 | 1         | 4         | 5         |

Movie Matrix:

|         | Feature_1 | Feature_2 | Feature_3 |
| ------- | --------- | --------- | --------- |
| Movie_1 | 2         | 5         | 4         |
| Movie_2 | 3         | 1         | 2         |

So basically you have four multiplications that have to occur in order to find out the predictions, which are as follows

Task A: User_1 X Movie_1: (2, 3, 4) X (2, 5, 4)  
Task B: User_2 X Movie_1: (1, 4, 5) X (2, 5, 4)  
Task C: User_1 X Movie_2: (2, 3, 4) X (3, 1, 2)  
Task D: User_2 X Movie_2: (1, 4, 5) X (3, 1, 2)

So, in the parallelization process, these all four tasks occur in a parallel fashion on different executors in the cluster as shown in the image below:

![Parallelization Process](https://i.ibb.co/4dLWjJk/Parallelization-Process.png)

Hence, you can get the understanding that this process is resource optimised and can be achieved in significantly lesser time than other matrix factorization algorithms.

#### ALS Algorithm

Qn: Which of the following statements regarding the ALS algorithm is/are true?

- ALS solves the problem of sparseness in the rating matrix. It also solves the problem of scalability.

- Regularisation along with the root mean square error is used for preventing the overfitting of the model.

- It multiplies the value of each user vector with that of each movie vector sequentially.

Ans: A & B.

- ALS predicts user ratings based on the previous users’ ratings and ultimately produces a matrix containing all the ratings.

- Regularisation is used for preventing the overfitting of the ALS model. The overfitting concept will be introduced to you in further machine learning courses.
