# Graded Questions

You are provided with an Iris flower [data set](https://www.kaggle.com/arshid/iris-flower-dataset). The dataset has the following characteristics:

- sepal_width

- sepal_length

- petal_width

- petal_length

Now, try and answer the following questions based on your learning of structured APIs.

**Note:** These questions are **graded.** All the best!

Question 1/4

Mandatory

#### Structured APIs in Spark

Qn: Using the data frame abstraction, calculate the number of ‘Iris_setosa’ species.

- ```python
  df.filter("species" == 'Iris-setosa').count()
  50
  ```

- ```python
  df.filter(df["species"] == 'Iris-setosa').count()
  
  50
  ```

- ```python
  df.filter("species" == 'Iris-setosa').count()
  
  51
  ```

- ```python
  df.filter(df["species"] == 'Iris-setosa').count()
  
  51
  ```

Ans: B. *The desired result can be obtained by using the following command:* `df.filter(df["species"]='Iris-setosa').count()`

Qn: Is there any ‘Iris-setosa'  species with sepal_width greater than 4.0 and sepal_width less than 5.0? If yes, find out how many.

- No

- ```python
  df.filter((df['species']=="Iris-setosa") & (df['sepal_width']>4) | (df['sepal_width']<5)).count()
  1
  ```

- ```python
  df.filter((df['species']=="Iris-setosa") & (df['sepal_width']>4) & (df['sepal_width']<5)).count()
  3
  ```

- ```python
  df.filter((df['sepal_width']>4) & (df['sepal_width']<5)).count()
  2
  ```

Ans: C. *You can determine the number of flowers by using the following code:* `df.filter((df['species']=="Iris-setosa") & (df['sepal_width']>4) & (df['sepal_width']<5)).count()`

Qn: Analyse the 'Iris-versicolor' species of the flower and calculate the sum of all ‘sepal_width’ and ‘petal_length’ for this species.

- ```python
  df.filter(groupBy('species').sum('sepal_width','petal_length').show()
  
  sepal_width= 135.3, petal_length= 221.5
  ```

- ```python
  df.filter(df['species'] == 'Iris-versicolor').groupBy('species').add('sepal_width','petal_length').show()
  
  sepal_width= 140.5, petal_length= 200
  ```

- ```python
  df.filter(df['species'] == 'Iris-versicolor').groupBy('species').sum('sepal_width','petal_length').show()
  
  sepal_width= 138.5, petal_length= 212.99
  ```

- ```python
  df.filter(groupBy('species').sum('sepal_width','petal_length').show()
  
  sepal_width= 142.4, petal_length= 210.4
  ```

Ans: C. *Using the following code you can obtain the desired result:*

`df.filter(df['species'] == 'Iris-versicolor').groupBy('species').sum('sepal_width','petal_length').show()`

*This command filters the required species of flower, then sums up the required columns.*

Qn: Calculate the minimum petal_width for ‘Iris-virginica’ species.

- ```python
  df.filter(df['species'] == 'Iris-virginica' ).groupBy('species').min('petal_width').show()
  1.4
  ```

- ```python
  df.groupBy('species').min('petal_width').show()
  1.7
  ```

- ```python
  df.filter(df['species'] == 'Iris-virginica' ).groupBy('species').max('petal_width').show()
  0.4
  ```

- ```python
  df.filter(df['species'] == 'Iris-virginica' ).groupBy(Iris-virginica).min('petal_width').show()
  1.5
  ```

Ans: A. *You can find the minimum petal width for Iris-virginica species in multiple ways. Either of the following could be used.*

`df.groupBy(df['species']=='Iris-virginica').min().show()`

*OR*

`df.filter(df['species'] == 'Iris-virginica').groupBy('species').min('petal_width').show()`
