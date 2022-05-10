# Matrix Factorisation

In this segment, you will understand how ALS works and what matrix factorisation is. Let’s hear from Sajan as he explains the theme behind matrix factorisation.

**VIDEO**

#### Matrix Factorisation

Qn: What would be the dimension of the User rating matrix R if there are 170 million users & 10,000 movies?

- 170,010,000

- 170,000,000 x 10,000

- 10,000 x 170,000,000

Ans: B. *The dimension is the number of users x number of movies.*

Let’s consider the user matrix that we used in the previous segment. Here, we will use a similar matrix, i.e., matrix ‘R’.

![Matrix Factorisation](https://i.ibb.co/ScHhJby/Matrix-Factorisation.png)

Imagine the enormity of the matrix ‘R’. For example, Netflix has around 170 million users watching over 10,000+ titles. You can imagine how enormous this matrix is going to be. You have already seen that R is going to be a 170,000,000 x 10,000 matrix which is huge.

Most of you would not have watched more than 200 movies. Now consider your user vector; Out of the 10,000 values, only 200 movies will have a rating while the rest 9800 would be blank. A similar distribution will be there for other users as well. Hence, you can imagine how **sparse** this matrix is going to be. Techniques like User-based or Item-based Collaborative Filtering tend to fail when the matrix is this sparse. Hence, in such cases, the solution is provided by methods like ALS which work on factorizing the original matrix ‘R’ into smaller matrices.

Hence, the user rating matrix is divided into two smaller matrices: matrix ‘U’ (users) and matrix ‘M’ (movies). In the case considered by Sajan, the orders of matrix 'U’ and matrix ‘M’ are nX2 and 2Xm, respectively, where there are two features. Before we move forward, you should understand that the features are **latent features** which means that the features are decided by the ALS algorithm, you do not select them. Also, in the diagram, the matrix 'M' is represented as it's [transposed](https://www.mathsisfun.com/definitions/transpose-matrix-.html) form, MT for ease of understanding. Hence, the dimensions are shown as 2 x m, which ideally are m x 2. Hence,

$R = U * M^T$

Now let’s try to understand what these features represent.

As a human user, movies will have some of the following features on which one would intrinsically differentiate the movies:

- Genres: action, superhero, horror, romantic or comedy
- Actors
- Hollywood or Bollywood
- Old movie or new movie
- Directors

Now let’s consider the feature: genres of movies to understand what ALS does behind the hood. Suppose that you like action and superhero movies, dislike horror movies and moderately like comedy and romance movies.

So, considering the five genres, action, superhero, horror, romance and comedy, you can create your own vector as follows with the range (0: lowest, 1: highest). Similarly, there'll be other users User_2 and User_3.

|        | Action | Superhero | Horror | Romantic | Comedy |
| ------ | ------ | --------- | ------ | -------- | ------ |
| User_1 | 0.4    | 0.4       | 0.0    | 0.1      | 0.1    |
| User_2 | 0.1    | 0.1       | 0.4    | 0.4      | 0.0    |
| User_3 | 0.4    | 0.05      | 0.4    | 0.15     | 0.0    |

Based on the single user matrix above, it is clear that User_1 likes action and superhero movies, is not interested in horror movies at all and is moderately interested in romance and comedy movies. In the same way, User_2 likes horror and romantic movies but least interested in comedy and action movies.

Now let’s consider the movie, Avengers. The movie is categorised as both genres action and superhero. Also, the movie Titanic is categorised as romantic and a little bit comedy. So, if you create a similar matrix based on this information, then you will derive the following data.

|           | Action | Superhero | Horror | Romantic | Comedy |
| --------- | ------ | --------- | ------ | -------- | ------ |
| Avengers  | 0.5    | 0.4       | 0.0    | 0.0      | 0.1    |
| Titanic   | 0.0    | 0.0       | 0.0    | 0.8      | 0.2    |
| Conjuring | 0.0    | 0.0       | 0.9    | 0.05     | 0.05   |

As you saw above, the genres of movies acted as features for the user and movie matrix. In the case of ALS, these features are a combination of different features that you can think of, which are decided by the model and hence called latent features. Hence, features play a significant role in factorizing the Rating matrix, R into two different matrices. In the subsequent segments, you will learn how to optimise these two matrices and reduce errors while predicting user ratings.

Let’s go through another example through which Professor D. Janakiram explains the basics of matrix factorisation and its features.

**VIDEO**

So, you have seen in the above video that you have been given user's rating corresponding to the novel, now in the next video, you will see the matrix factorization into user and novel matrices. When you miltiply these two factorised matrices then you would get the predicted ratings corresponding to the users and novel.

**VIDEO**

As you have already seen in the case of movies, how we separate the user and movie matrix into two matrices.

In the above video, the Professor has taken another example of books. In this example, you are trying to recommend the books based on the similarity among the other users. In the next part, Prof. has mentioned the matrix factorization, that is how you can separate the User matrix and Book matrix using features like plays, history and spirituality. Hence, each user and book is characterised by these in their respective matrices, User matrix and Book matrix. You must have realised by now that values in the User and the Book matrices help in giving a relative sense of the ratings as long as all the values have the same scale within the matrix.

You will learn more about the factorization and features in the further segments.

#### Matrix Factorisation

Qn: Suppose the feature vector of the movie Casino Royale is (9, -10, -6). Similarly, the feature vector of the movie Toy Story is (-8, 10, 8). If the user vector of Nikhil is (Action, Animation, Children) = (9, 0, -6), then calculate the [dot](https://www.mathsisfun.com/algebra/vectors-dot-product.html) product of Nikhil and Casino Royale.

- -120

- 117

- 120

- -117

Ans:B. *The dot product of Nikhil and Casino Royale, i.e., (a, b, c).(x, y, z) = a.x+b.y+c.z*

Qn: Suppose the item vector of Casino Royale is (9, -10, -6). Similarly, the item vector of Toy Story is (-8, 10, 8). If the user vector of Nikhil is (Action, Animation, Children) = (9, 0, -6), then which of the following two movies will be recommended to Nikhil?

- Toy Story

- Casino Royale

Ans: B. *The dot product of Casino Royale and Nikhil is 117, which is greater than -120, the dot product of Toy Story and Nikhil. Hence, the one with the higher value will be recommended.*

Qn: You have been given the three matrices user-movie, users and movies as follow:

User-movie matrix:  
![User Movie Matrix](https://i.ibb.co/4Y1DvPX/User-Movie-Matrix.png)

User matrix:

![User Matrix](https://i.ibb.co/mqPrpPB/User-Matrix.png)

Movie matrix:

![Movie Matrix](https://i.ibb.co/gZF9Mn3/Movie-Matrix.png)

What is the error in the predicted value of score for User_2 for Movie_3?

Note: Error = |Predicted Value - Actual Value|

- 22

- 21

- 20

- 19

Ans: B. *This is the correct answer when you multiply the user_2 vector (3, 2) with movie_3 vector (4, 5) you get the value 22. And after getting the value just subtract it with the original user-movie matrix value and you get the 21.*
