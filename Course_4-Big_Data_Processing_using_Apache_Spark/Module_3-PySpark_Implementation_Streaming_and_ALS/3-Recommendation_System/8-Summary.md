# Summary

In this session, you learned about many concepts related to recommendation systems. Let’s summarise them one by one in the following order:

- **Recommendation System:**
    1. The objective of the recommendation system is to deliver the most relevant and accurate information to users.
    2. A recommendation system algorithm learns users’ interest based on their browsing behaviour and provides suggestions to the products.
    3. Such recommendation systems are used by most businesses to improve their customer experience and maximise revenue.
- **Collaborative filtering:** The two types of collaborative filtering are as follows:
    1. **User-based collaborative filtering:** This method identifies users that are similar to the other users who have rated or queried in a similar way as that of the identified users.
    2. **Item-based collaborative filtering:** This method identifies items that are similar to the other items in terms of user ratings.
- **Alternating least squares (ALS):** Some of the features of the ALS algorithm are summarised below:
    1. ALS is a **matrix factorization** algorithm that separates the user-rating matrix into two matrices and performs the multiplication of the two separated matrices to deliver predicted ratings given by individual users for each item in the list.
    2. The matrix multiplication occurs parallelly, not sequentially. This process is known as **Parallelism.**
    3. ALS is implemented in the Apache Spark ML library.
    4. It is built for implementing large-scale collaborative filtering on huge data sets.
    5. It became popular when Netflix organised a competition to build the best model for its recommendation system.
    6. It is a state-of-the-art algorithm that helps many companies recommend the most relevant and appropriate products to their customers.

In the next session, you will get hands-on experience in building a recommendation system based on real-life movie-rating data using the ALS algorithm.
