# Tuples

Tuples are similar to lists in almost of their functionalities, but there is one significant difference in both the data structures lists are mutable and tuples are not. Let’s start learning about tuples.

Let's start by understanding what tuples are from the upcoming video:

**VIDEO**

A **tuple** contains a sequence of comma-separated values within parentheses. An important feature of a tuple is immutability, which means the elements of a tuple **cannot** be altered. It is used to store data such as employee information, which is not allowed to be changed.

For example: ('Gupta', 24 , 'Project Manager')

Here, we are storing the employee information name, age and designation in the form of a tuple. This makes this information unchangeable or immutable.

One crucial point to observe from the list of examples covered in the video is that a tuple can also be defined without using parentheses. For example:

X = 1, 2, 3, 4 → makes X a tuple

Accessing the elements of tuples is similar to accessing elements in a list. You can use the same indexing method. In indexing of list, each character is assigned an index; similarly, each element is given an **index** in a tuple. Take a look at the upcoming video:

**VIDEO**

Tuples are ordered sequences, which means the order in which the elements are inserted remains the same. This makes them flexible for indexing and slicing just like lists. Using slicing, you were able to obtain sections of the data from a list; here, you will be able to obtain a subset of elements.

#### It's the Time to Disco!

Qn: What would be the output here?

```python
t = ("disco", 12, 4.5)
t[0][2]
```

- disco

- 'disco'

- 's'

- Error

Ans: C. _The output here would be ‘s’. t[0] would fetch the first element in the tuple, which is a string. Since this string is also an iterable set of characters, [2] would give the third character of the string._

**VIDEO**

Immutability is the differentiating property between lists and tuples. The elements in a tuple cannot be changed once the tuple is declared. You have to make a new tuple using concatenation if you wish to change a value in a given tuple. You also saw tuples can be sorted just like lists. Let us now see how to iterate over a tuple in the upcoming video:

**VIDEO**

In this video, you learnt that a tuple can have an iterable object or another sequence as its elements.

`t = (1,5,"Disco", ("Python", "Java"))`

If you apply the type function on the third element, it would return a tuple:

```python
t = (1,5,"Disco", ("Python", "Java"))
type(t[3])
tuple
```

Towards the end of the video, you saw how the inbuilt **dir()** function helps to look for the list of methods that can be used while handling tuples. The **dir()** function only gives the list of methods available; instead, using the **help()** function and passing an empty tuple gives you a brief description of each of the methods available with tuples:

#### Tuple Indexing

Qn: Suppose t = (1, 2, 4, 3). Which of the following statements would result in an error? [More than one option are correct]

- print(t[4])

- t[3] = 5

- A tuple cannot be modified.

- print(t[1:-4])

- print(len(t))

Ans: A & B.

- _As the index value 4 is higher than the maximum index value of the tuple, t[4] will return an out of range error._

- _A tuple cannot be modified._

#### Creating a Tuple

Qn: Which of the following declarations can be used to create a Python tuple? (More than one option may be correct.)

- x = ('2')

- x = 1,2,

- x = ((1,2,3), 4,5)

- x = (Hello,'2','3')

Ans: B & C.

- _You can also define a tuple in this way without using parentheses. [Refer to the first video which explains different ways to define a tuple]_

- _A tuple is a collection of objects. This object can also be a tuple; here, (1,2,3) is a tuple and it acts as an object of tuple x._

#### A List and a Tuple Together?

Qn: Can a list contain an integer as an element?

- Yes

- No

Ans: A. _Yes, a list can contain integer as an element._

### Tuple

#### Problem

Description

Add the element ‘Python’ to a tuple input_tuple = ('Monty Python', 'British', 1969). Since tuples are immutable, one way to do this is to convert the tuple to a list, add the element, and convert it back to a tuple.

**Sample Input:**

('Monty Python', 'British', 1969)

**Sample Output:**

('Monty Python', 'British', 1969, 'Python')

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_tuple = ast.literal_eval(input_str)

# Write your code here
input_list = list(input_tuple)
tuple_2 = tuple(input_list + ['Python'])
# Make sure to name the final tuple 'tuple_2'
print(tuple_2)
```

![Tuples-Meme](https://i.ibb.co/CM8xyns/Tuples-Meme.png)

Tuples are immutable. Don't try to change them!

So far you should have a good understanding of both tuples and lists. In the next segment, you will be introduced to sets in python.
