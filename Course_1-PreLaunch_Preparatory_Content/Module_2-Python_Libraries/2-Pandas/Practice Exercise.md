# Practice Exercise

Now, solve the questions provided below to test your understanding of the topic. To set the expectation, you will have to surf through the Pandas documentation to solve some of the problems. This is intended to inculcate the habit of reading the official documentation to increase your knowledge.

For your reference, here is a [cheat sheet by Pandas](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf) that will help you quickly refer to the command and syntax.

## Practice Exercise - I: Data Preparation

Usually, in machine learning applications, the data is not very hygienic, or you can say that it is not very easy to load and operate on. This exercise is meant to give you some exposure to how to use pandas to make a data set fit for use. Find the question notebook attached below. The dataset that you will be using for this session is the weather data from Seoul, Korea. You can download the data from the [Kaggle page](https://www.kaggle.com/bappekim/air-pollution-in-seoul?). Kaggle, a subsidiary of Google, is a platform for the data science community to share data sets and code notebooks. It will prove a valuable resource in your data science journey.

Try to solve the question given in the notebook on your own. Once you think you have made a genuine attempt, look up the solution notebook below.

Now, let's move on to the next exercise.

## Practice Exercise - II: Movies

In this assignment, you will try to find some interesting insights into a few movies released between 1916 and 2016, using Python. You will have to download a movie data set, write Python code to explore the data, gain insights into the movies, actors, directors and collections, and submit the code.

The following Python file consists of certain questions based on the concepts that you have learnt in this session. You are expected to code in the Jupyter Notebook in order to arrive at the correct solutions to the questions provided and to answer the MCQs given below.



#### Structure of a Dataframe

Qn: How many rows and columns are present in the dataframe? 

- (3821, 26)

- (3879, 28)

- (3853, 28)

- (3866, 26)

Ans: C. *You can use the `shape` command to check the number of rows and columns in a dataframe.*



#### Columns with Null values

Qn: How many columns have null values present in them? Try writing code for this instead of counting them manually.

- 3

- 6

- 9

- 12

Ans: D. *You can find the number of columns with null values using the following syntax:*

`print((movies.isnull().sum()>0).sum())`

`movies.isnull().sum()` *returns the sum of null values in each column. Over that, you can implement the condition as provided above.*



#### Dropping Columns

Qn: What is the count of columns in the new dataframe?

- 10

- 13

- 15

- 17

Ans: B. *You can check the number of columns using the 'shape' function again.*



#### Deriving a Metric

Qn: Which column has the highest percentage of null values?

- language

- genres

- num_critic_for_reviews

- imdb_score

Ans: A. *You can calculate the percentage of null values using the code learnt in Question 2.*

`round(100*(movies.isnull().sum()/len(movies.index)), 2)`



#### Replacing Null values

Qn: What is the count of movies made in the English language after replacing the NaN values with English?

- 3670

- 3674

- 3668

- 3672

Ans: C. *To replace the values, you can equate the entries with language column as null with 'English':*

`movies.loc[pd.isnull(movies['language']), ['language']] = 'English'`

*Next, you can count the movies made in English:*

`(movies.language == 'English').sum()`



#### Sorting a dataframe

Qn: Which movie is ranked 5th from the top in the list obtained?

- E.T. the Extra-Terrestrial

- The Avengers

- The Dark Knight

- Titanic

Ans: A. *You can create the column 'Profit' using the following code:*

`movies['profit'] = movies['gross'] - movies['budget']`

*Once you have the column ready, you can use the sort function:*

`top_10 = movies.sort_values(by = 'profit', ascending = False).head(10)`



#### Analysing dataframes

Qn: Suppose movies are divided into 5 buckets based on the IMDb ratings:

- [7.5, 8)
- [8, 8.5)
- [8.5, 9)
- [9, 9.5)
- [9.5, 10)

Which bucket holds the maximum number of movies from IMDb_Top_250?

- [7.5, 8)

- [8, 8.5)

- [8.5, 9)

- [9, 9.5)

- [9.5, 10)

Ans: B. *You can use the following code to solve this question:*

```python
IMDb_Top_250 = movies.sort_values(by = 'imdb_score', ascending = False)
IMDb_Top_250 = IMDb_Top_250.loc[IMDb_Top_250.num_voted_users > 25000]
IMDb_Top_250 = IMDb_Top_250.iloc[:250, ]
IMDb_Top_250['Rank'] = range(1,251)

import matplotlib.pyplot as plt
plt.hist(IMDb_Top_250['imdb_score'], bins = 5, range = (7.5,10), edgecolor = 'cyan')
plt.show()
```



#### Operations on Dataframe

Qn: Which actor is highest rated among the three actors according to the user reviews?

- Meryl Streep

- Leonardo DiCaprio

- Brad Pitt

Ans: B. *To solve the question, you can use the following code:*

```python
Meryl_Streep = movies.loc[movies.actor_1_name == 'Meryl Streep']
Leo_Caprio = movies.loc[movies.actor_1_name == 'Leonardo DiCaprio']
Brad_Pitt = movies.loc[movies.actor_1_name == 'Brad Pitt']
Combined = pd.concat([Meryl_Streep, Brad_Pitt, Leo_Caprio])
Combined_by_segment = Combined.groupby('actor_1_name')
Combined_by_segment['num_user_for_reviews'].mean()
```



#### Operations on Dataframe

Qn: Which actor is highest rated among the three actors according to the critics?

- Meryl Streep

- Leonardo DiCaprio

- Brad Pitt

Ans: B. *To solve the question, you can use the following code:*

```python
Meryl_Streep = movies.loc[movies.actor_1_name == 'Meryl Streep']
Leo_Caprio = movies.loc[movies.actor_1_name == 'Leonardo DiCaprio']
Brad_Pitt = movies.loc[movies.actor_1_name == 'Brad Pitt']
Combined = pd.concat([Meryl_Streep, Brad_Pitt, Leo_Caprio])
Combined_by_segment = Combined.groupby('actor_1_name')
Combined_by_segment['num_critic_for_reviews'].mean()
```


