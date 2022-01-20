# Map, Filter and Reduce Functions

Now that we have covered more sophisticated methods like loops and comprehensions, let us also learn more about the map, filter and reduce methods, that offer us sophisticated and faster method implementation. Starting with Map;

Map is a function that works like list comprehensions and for loops. It is used when you need to map or implement functions on various elements at the same time.

**VIDEO**

The syntax of the map function looks as shown below:

**map(function,iterable object)**

- The function here can be a lambda function or a function object.

- The iterable object can be a string, list, tuple, set or dictionary.

Let’s look at an example to understand the map function better:

**VIDEO**

In the code above, you are using a map function to create a list from a tuple with each of its elements squared.

```python
list_numbers = (1,2,3,4)
sample_map = map(lambda x: x*2, list_numbers)
print(list(sample_map))
```

In the implementation of the map function, the lambda function lambda **x: x*2** would return a lambda object, but the map handles the job of passing each element of the iterable to the lambda object and storing the value obtained in a map object. Using the list function on the map object, you finally obtain the output list. 

```python
def multi(x):
    return x*2

list_numbers = [1,2,3,4]
sample_map = map(multi, list_numbers)

print(list(sample_map))
```

The difference between the previous code and this above-mentioned code is that instead of applying a lambda function, you can use the function object also. 

Now let us look at the **Filter operation**:

'**Filter**' is similar to map function, only distinguishing feature being that it requires the function to look for a condition and then returns only those elements from the collection that satisfy the condition.

**VIDEO**

The syntax of the filter function looks as shown below:

**`filter(function,iterable object)`**

-  The function object passed to the filter function should always return a boolean value.
- The iterable object can be a string, list, tuple, set or dictionary.

Let's take a look at an example to understand filter function:

**VIDEO**

In the video, the filter command was used to create an application that can count the number of students whose age is above 18. 

```python
students_data = {1:['Sam', 15] , 2:['Rob',18], 3:['Kyle', 16], 4:['Cornor',19], 5:['Trump',20]}

len(list(filter(lambda x : x[1] > 18, students_data.values())))
```

Now, let us take a look at the last function in sequence i.e. the reduce function - 

'**Reduce**' is an operation that breaks down the entire process into pair-wise operations and uses the result from each operation, with the successive element. The syntax of reduce functions given below. 

reduce(function,iterable object)

- The function object passed to the reduce function decides what expression is passed to the iterable object.
- The iterable object can be a string, list, tuple, set or dictionary.
- Also, reduce function produces a single output.

Let's take a look at the 'reduce function' in the video below:

**VIDEO**

**NOTE:** One important thing to note is that reduce function needs to imported from the 'functools' library.

`from functools import reduce`

Let's take a look at an example to understand reduce  function:

```python
from functools import reduce
list_1 = ['Paul','Ted']
reduce(lambda x,y: x + y,list_1)
```

In the code snippet given above, you are importing functools library is being imported to access reduce function. In the implementation of the reduce function, the lambda function x,y : x+y, list_1 is appending two objects; remember here if the objects are strings it appends them if the objects are numbers it adds them.

For the example above, the reduce function will convert the list of string into a single list, the output is given below:

`'PaulTed'`

In the next segment, let's solve a few questions related to Map, Filter, and Reduce.
