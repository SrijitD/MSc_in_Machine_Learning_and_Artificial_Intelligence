# Matrix Factorisation and Cost Function

In the previous segment, you saw the representation of the rating matrix as a user and a movie matrix. In this segment, you will learn about the cost function of the ALS algorithm and understand how the algorithm minimises the cost function which in turn reduces errors in predicted ratings.

Please note that some of the concepts covered in this segment are related to machine learning modelling and you may not be able to understand it completely. But do not worry, Sajan shall help in developing an intuitive understanding. You’ll have an in-depth understanding of these in the upcoming modules.

In this video, Sajan will extend the concepts taught by Prof. in the previous segment.

**VIDEO**

In the previous segment, you learned that ALS segregates the main user matrix into two different matrices. Now, based on the features, the ALS algorithm fills the scores for each feature in the feature matrices of both users and movies and finally reduces the errors in predicted ratings using the cost function.

![Latent Features](https://i.ibb.co/R3bfyCf/Latent-Features.png)

Here, there are five latent features: F1, F2, F3, F4 and F5. Thomas has given a 4.5 rating to The Avengers.

Let’s try to understand how ALS works. You can see that for Thomas rating Avengers, we have the following values for the 5 latent features: 0.35, 0.45, 0.1, 0.1, 0.2. These are the representation of Thomas in terms of the 5 latent features, F1, F2, F3, F4 and F5.

Similarly, the movie Avengers is represented as 0.3, 0.5, 0.0, 0.1, 0.1 in terms of the 5 latent features, F1, F2, F3, F4 and F5.

Now if you multiply these vectors, you get $0.35*0.3 + 0.45*0.5 + 0.1*0.0 + 0.1*0.1 + 0.2*0.1 = 0.36$. The value of 0.36 corresponds to a rating of 4.5 according to the table.

Now, consider that you have to find the rating Bella would give to Conjuring. Doing the above computation using the latent feature representation, you would get the value as $0.2 *0.1 + 0.1* 0.0 + 0.6 *0.8 + 0.1* 0.1 + 0.0 *0.1 = 0.51$. If you now calculate the rating, using the unitary method, you would get the answer as $(4.5/0.36)*0.51 \approx 6.4$. There are some things you should observe here:

- The calculated rating comes out to be 6.4 which should not be the case as the rating cannot be greater than 5. Nevertheless, you get the idea that Bella is going to like Conjuring as the rating is on the higher side.
- Ideally, multiplication of the user vector, Ui and the Movie vector, Mj should be giving the rating in the matrix Rij. But, here you are not getting that. Do you know why? Yes, you got that right! It is because the model training has not happened. Hence, the values in the User and the Movie matrices are the initialised values. Having said this, the way we calculated the rating that Bella would give to Conjuring is incorrect!

Any machine learning model trains by minimizing a cost function or a loss function. Let’s take a look at it now.

$min(\sum{(R_{ij} - U_iXM^T_j)^2}) + Regulairization$

- $R_{ij}$ is Rating for $i^{th}$ user and $j^{th}$ movie
- $U_i$ is a vector for $i^{th}$ user
- $M_j$ is a vector for $j^{th}$ movie

The formula above is the cost function that is reduced by ALS to derive the most appropriate rating values corresponding to the users. So, considering the formula, the squared term in front of the summation sign represents the squared error of the values of ratings, i.e., the square of the difference between the actual and predicted rating.

You can take the example of Thomas from the above matrix and calculate the error for the single user i.e. Thomas.

Just multiply the Thomas’s feature vector with the movie Avenger’s feature matrix:  
0.35 *0.3 + 0.45* 0.5 + 0.1 *0.0 + 0.1* 0.1 + 0.2 * 0.1 = 0.36. But the actual rating given by the Thomas for the movie Avengers is 4.5, hence, you can calculate the error: 4.5-0.36 = 4.14. Hence, squared error for Thomas rating Avengers comes out to be

$R_{Thomas\ Avengers}=4.14^2=17.14$

Similarly, you calculate all the errors like this for every available rating in the rating matrix, R and do the sum of the squares of all the errors then it will come out to be:

$\sum{(R_{ij} - U_iXM^T_j)^2}$

The second term in the cost function is the regularisation term, which is used to avoid the overfitting of the model. Overfitting is a situation when the model is able to predict correctly for noise data also, which is not a good thing for a model. Do not worry about all these concepts here as we will cover this in the later modules.

So, the cost function is reduced in each iteration of the algorithm, ultimately converging to give the best-predicted value of the ratings.

In the next segment, you will learn about the workings of the ALS algorithm and understand why this approach is called ‘Alternating Least Squares'.

## Comprehension

Consider a user-rating matrix, where users have given ratings (out of 5) to a particular set of movies. The matrix also contains some missing entries, as users have not watched those movies yet.

User - Movie Matrix (Rating = out of 5):

|        | Deadpool | Interstellar | Spiderman |
| ------ | -------- | ------------ | --------- |
| User_1 | 4.5      | **?**        | 2         |
| User_2 | **?**    | 4            | 3.5       |

Now suppose that the model is using the features as the two genres: sci-fi, superhero.

Separate users and movies matrices are given below:

Users Matrix (Rating = out of 5):

|        | Sci-fi | Superhero |
| ------ | ------ | --------- |
| User_1 | 0.5    | 4.5       |
| User_2 | 3.5    | 1.5       |

Movies matrix (Rating = out of 0.5):

|              | Sci-fi | Superhero |
| ------------ | ------ | --------- |
| Deadpool     | 0.2    | 0.8       |
| Interstellar | 0.9    | 0.1       |
| Spiderman    | 0.3    | 0.7       |

Consider the given matrices and answer the following questions:

#### RMSE Value

Qn: To calculate the RMSE values you need to:

- First, multiply the value of each user vector with that of each movie vector and calculate the predicted ratings given by each user;
- Next, calculate the errors in each predicted rating of the original movie-user matrix.
- Finally, calculate the mean of the squares of errors and find the square root of the derived result.

Based on the steps mentioned above, choose the correct RMSE value of the given ratings (upto 2 decimal points):

**Note**: The RMSE value can be calculated only for the ones that have the actual ratings available in the Movie-User matrix.

- -1.25

- -1.09

- 1.25

- 1.09

Ans: D. *When you will find all the predicted ratings, you will have the following values,*

![RMSE Value Question](https://i.ibb.co/5WPCRHR/RMSE-Value-Question.png)

*and by following the above steps, you can calculate the errors in each predicted ratings and then RMSE value.*

- *User_1 (3.7, 0.9, 3.3) for Deadpool, Interstellar and Spiderman respectively.*

- *User)1 (1.9, 3.3,2.1) for Deadpool, Interstellar and Spiderman respectively.*

Qn: Which of the following is the predicted rating of the movie Deadpool given by user_2?

- 0.9

- 1.9

- 3.7

- 3.3

Ans: B. *The predicted rating given by user_2 for the movie Deadpool is  product of the vectors $[3.5\ \ 1.5]$ and $[0.2\ \ 0.8]$ = $(3.5*0.2)+(1.5*0.8)=1.9$*

Qn: Based on the predicted ratings, is the movie Interstellar an appropriate suggestion for user_1?

- Yes

- No

Ans: B. *As calculated earlier, the predicted rating given by user_1 for the Interstellar is 0.9, which is low. Hence, Interstellar is not an appropriate suggestion for user_1.*
