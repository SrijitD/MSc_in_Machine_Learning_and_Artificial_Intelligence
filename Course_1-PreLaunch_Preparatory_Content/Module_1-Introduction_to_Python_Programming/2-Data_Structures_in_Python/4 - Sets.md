# Sets

In the earlier segments, you learnt about lists and tuples, which are ordered sequences. In this segment, you will learn about a data structure '**sets**' that is unordered, or, in other words, it doesn’t maintain an order in which elements are inserted. This makes sets unfit for indexing or slicing, but what is their use then? Let’s watch the video below to understand this:

**VIDEO**



By now, you would have found the answer to our earlier question about why sets are used: They can eliminate duplicates. This feature is necessary while handling massive data where most of it is just redundant and repeating. Let’s take a look at an example to understand this better:

Let’s say you have a huge list that contains student grades:

Grades = ['A', 'A', 'B', 'C', 'D', 'B', 'B', 'C', 'D', 'E', 'C', 'C', 'A', 'B', 'F', 'D', 'C', 

          'B', 'C', 'A', 'B', 'F', 'B', 'A', 'E', 'B', 'B', 'C', 'D'...]

You want to identify distinct grades allotted to students. Obviously, you cannot check every element of this list; instead, we make use of sets which gets our job done here.

By using the set function on the grades, you would get the distinct grades in the form of a set:        

```python
Grades = ["A", "A", "B", "C", "D", "B", "B", "C", "D", "E", "C", "C", "A", "B", "F", "D", "C", "B", "C", "A", "B", "F", "B", "A", "E", "B", "B", "C", "D"]

set(Grades)
{'A', 'B', 'C', 'D', 'E', 'F'}
```

With all the conceptual understanding of the application of sets let's learn to declare sets and add and remove elements from them in the next video:

**VIDEO**

These sets further help you perform all the typical set operations that you learnt in high school. Take a look at the upcoming video to understand better:

**VIDEO**

Imagine you have two sets: 

A = {0,2,4,6,8}

B = {1,2,3,4,5}

![](https://i.ibb.co/LS06DRL/sets-venn-diagram.png)

**Set methods**

- Union represents the total unique elements in both sets.
  
  - **A.union(B)** → {0, 1, 2, 3, 4, 5, 6, 8}

- Intersection represents the elements common to both sets.
  
  - **A.intersection(B)** → {2, 4}

- Difference(A-B) represents the elements present in A and not in B.
  
  - **A.difference(B)** → {0, 6, 8}

- Symmetric difference represents the union of the elements A and B minus the intersection of A and B.
  
  - **A^B →** {0, 6, 8, 1, 3, 5}

The order of elements shown above may not be the same when you actually execute the above operations. It is because sets are unordered, which means they do not store the positional index of an element in the set.



### Sets Practice

#### Problem

Description

Let’s say you have two lists A and B. Identify the elements which are common in the two lists A and B and return them in a sorted manner. For example 

**Sample Input :**

A = [5, 1, 3, 4, 4, 5, 6, 7]

B = [3, 3, 5, 5, 1 ,7 ,2]

**Sample Output:**

[1,3,5,7]

If you observe the sample output here you can see that 

1. Though value 5 is repeated twice in both lists, in the final output it is present only once.
2. The values are returned in a sorted manner with values increasing.

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_list = ast.literal_eval(input_str)
list_1 = input_list[0]
list_2 = input_list[1]
answer = list(set(list_1) & set(list_2))
#Type your answer here

print(answer)
```

#### I Am Unique

Qn: What gets printed with the following set of instructions?

```python
nums = set([1,1,2,3,3,3,4])
print(len(nums))
```

- 7

- 4

- 3

- 1

Ans: B. *Set() removes duplicates and returns the unique values. Hence, nums would be updated as {1, 2, 3, 4}, and when you print len(nums), it will be 4 and not 7.*



**A Fun Activity**

Try to decode the set operation give below:

(A.union(B)).difference(A.intersection(B))

Instead of using commands, you can also use simple mathematical operators between sets to perform the various operations. Go through the below link to understand how:

[Operations on Sets](https://docs.python.org/3/tutorial/datastructures.html#sets)


