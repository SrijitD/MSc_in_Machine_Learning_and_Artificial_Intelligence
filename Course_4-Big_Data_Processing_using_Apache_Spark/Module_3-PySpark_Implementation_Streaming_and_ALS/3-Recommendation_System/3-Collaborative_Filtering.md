# Collaborative Filtering

So far, you have learned how a recommendation system plays a significant role in improving customer experience and maximising revenue for certain businesses. In this segment, you will learn about a basic method of recommendation, i.e., collaborative filtering.

Suppose you and your partner like the same kind of movies and, most of the time, both of you watch movies or TV shows together.

One day, your partner is busy at work and you want to pass the time, so you ask him/ her to suggest a movie. As both of you have similar preferences, your partner will most likely recommend a movie that you will enjoy watching. Such a recommendation is known as user-based collaborative filtering. Let’s learn more about this in the following video.

**VIDEO**

In this video, you saw that many users have watched a set of movies and rated them as per their liking. Based on their ratings, the system is recommending some of these movies to other users. Now the two types of collaborative filtering are as follows:

- User-based collaborative filtering
- Item-based collaborative filtering

![Movie Rating Matrix](https://i.ibb.co/Mg5B86q/Movie-Rating-Matrix.png)

- **User-based collaborative filtering:** This method identifies the users that are similar to other users who have rated or queried in a similar way.  
    As you can see in the table above, user_1, user_4 and user_6 have given similar ratings to the movies. This means that they enjoy watching superhero movies, such as The Avengers and The Dark Knight. Also, they are not interested in horror movies, such as The Conjuring, or romantic movies, such as Titanic. Hence, based on their similar likings, you can recommend Iron Man to user_1.

- **Item-based collaborative filtering:** This method identifies the items that are similar to other items based on user ratings. In this example, each movie is an item.  
    As you can see in the table above, Iron Man and The Dark Knight are given similar ratings by the different users. Also, since user_1 has given The Dark Knight a good rating, you can conclude that user_1 will also give Iron man a good rating and will enjoy watching Iron Man.

Now identifying similar users becomes an extremely tedious task when there are many users and items. Hence, there are mathematical methods that you can use to find similar users. But we are not going deep into those mathematical methods. We shall cover one such method of Collaborative filter: ALS or Alternating Least Squares.

In the next segment, you will be introduced to the ALS algorithm and its mathematical logic.

Now, let’s answer some questions to test your understanding.

#### Collaborative Filtering

\_\_\_\_\_\_\_\_\_\_ algorithms recommend items based on the similar users’ interests. Other users' behaviour and preferences over the items are used to recommend items to the new users. In this case, features of the items are not known.

- Collaborative filtering

- Content-based filtering

Ans: A. *In Collaborative filtering, a particular user gets recommendations for those items that this user hasn’t rated before but was positively rated by other users whose tastes are almost similar to the previous user.*

Qn: Given the problem of predicting an unknown test rating (of a test item by a test user), \_\_\_\_\_\_\_\_\_\_ measures similarities between the test user and other users, and \_\_\_\_\_\_\_\_\_\_ measures similarities between the test item and other items.

- Content-based filtering and collaborative filtering

- Item-based collaborative filtering and user-based collaborative filtering

- User-based collaborative filtering and item-based collaborative filtering

Ans: C. *Content-based filtering does not use any other user or item. User-based collaborative filtering (UBCF) measures similarities between the test user and other users, whereas item-based collaborative filtering (IBCF) measures similarities between test the item and other items.*
