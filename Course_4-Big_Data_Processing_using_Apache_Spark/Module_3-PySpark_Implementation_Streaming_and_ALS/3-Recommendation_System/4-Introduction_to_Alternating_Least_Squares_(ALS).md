# Introduction to Alternating Least Squares (ALS)

In the previous segment, you learned how to find similar users and similar items based on the ratings given by different users and accordingly recommend these items to the users. In this segment, you will learn about the alternating least squares (ALS) algorithm, which is the state-of-the-art recommendation algorithm.

Let’s hear from Sajan as he explains what ALS is.

**VIDEO**

Some of the features of the ALS algorithm that were covered in the previous video are summarised below:

- **Alternating least squares (ALS)** is a **matrix factorization** algorithm that separates the user-rating matrix (which you learned about in the previous segment) into two matrices and performs the multiplication of the two separated matrices to deliver predicted ratings given by individual users for each item in the list.
- The matrix multiplication of the two matrices occurs parallelly, not sequentially. You will learn more about this concept in the segment on **Parallelism**.
- It is implemented using the Apache Spark ML library.
- ALS is built for implementing large-scale collaborative filtering on huge data sets.
- As observed in the video, the user-rating matrix may contain many empty entries, indicating that users have not watched the movies yet. These kinds of matrices are called sparse matrices. The ALS algorithm is able to work with such sparse matrices also, unlike other recommendation algorithms.

In the subsequent segments, we will try to intuitively understand the mathematics behind ALS.
