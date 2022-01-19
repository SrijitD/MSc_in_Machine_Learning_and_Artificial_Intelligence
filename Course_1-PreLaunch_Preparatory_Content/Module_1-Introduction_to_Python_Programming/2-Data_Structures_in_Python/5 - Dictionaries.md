# Dictionaries

The first thing that comes to mind when you hear about dictionaries is the Oxford Dictionary where you can look up the meanings of words. So, you can imagine how dictionaries work. A dictionary is a collection of words along with their definitions or explanations.

At a broader level, you could describe a dictionary as a mapping of words with their synonyms or meanings. Let's learn about Python dictionaries conceptually from the upcoming video:

**VIDEO**

The dictionary structure looks as shown below:

![](https://i.ibb.co/SVrk3xY/Dictionary-Key-Value.png)

Dictionary is one data structure that is very useful because of the way in which it is defined. Let's take a look at a small example to understand this. Imagine we have employee data with the following attributes: employee id, name, age, designation. Now, let’s say you want to retrieve employee details based on employee id (since this is unique to each employee). How would you store the data?

| **E_id** | **Employee Information**          |
| -------- | --------------------------------- |
| **101**  | **Akash, 24, Content Strategist** |
| **102**  | **Vishal, 30, Project Manager**   |
| **…..**  | **…..**                           |
| **159**  | **Vikas, 18, Intern**             |

Let’s say you use a list or tuple here; it would simply be difficult. Let’s see how.

First, you should have a list where each element represents an employee, and this element should be iterable again since you have different values to represent every employee.

**[[e_id1, name1, age1, designation1],[e_id2, name2, age2, designation2]...]**

But would this serve the purpose? There is a problem here:  **e_id** is unique and cannot be changed, or, in other words, it is an immutable entity. Let’s say we make this entire element a tuple:

**[(e_id1, name1, age1, designation1),(e_id2,name2, age2, designation2)...]**

Now, this would make **name**, **age** and **designation** immutable entities; instead, they should be mutable entities:

**[(e_id1, [name1, age1, designation1]),(e_id2,[name2, age2, designation2])...]**

Having arrived at this point, imagine how it is to retrieve information about a particular employee based on their employee id. To achieve this, you need to use the loops concepts in Python, but isn’t this whole thing difficult? Imagine how simple this would be if you used a dictionary here:

**E = { e_id1 : [name1, age1, designation1],e_id2 : [name2, age2, designation2],...}**

Here - 

- **e_id** is unique;
- **name**, **age** and **designation** are mutable; and
- simply using **E[e_id1]** will give employee e_id1’s information.

Now that you understand the application and use of a dictionary, let's learn to declare a dictionary and also explore some of its features:

**VIDEO**

### Dictionary Coding

#### Problem

Description

Write code to fetch the profession of the employee with Employee id - 104 from an employee input given in the form of a dictionary where key represent employ id and values represent the name, age, and profession (in the same order).

**Sample input:**

Employee_data = { 101:['Shiva', 24, 'Content Strategist'] ,102:['Udit',25,'Content Strategist'], 103:['Sonam', 28,'Sr Manager'], 104:['Ansari',29,'Product Lead' ],105:['Huzefa',32,'Project Manager' ]}

**Sample output:**

'Product Lead'

Note: Assume that employee data would be available in the data provided to you.

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_dict = ast.literal_eval(input_str)

#Type you answer here
profession = input_dict[104][2]

print(profession)
```

#### Dictionary

Qn: Using this [document](https://docs.python.org/3/tutorial/datastructures.html#dictionaries), answer the following question:

Which of the following statements create a dictionary? Select all the options that apply. (More than one option may be correct.)

- d = {}

- d = {'a':1, 'b':2}

- d = dict(a=1, b=2)

- d = ('a':1, 'b':2)

Ans: A, B & C

- *It will create an empty dictionary.*

- *This is one of the methods to create a dictionary.*

- *The dict function can be used to create a dictionary.*

#### Dictionary Operation

Qn: Suppose dict_1 = {"Python'':40, "R'':45}. What command should be used to delete the entry "R"?

- dict_1.delete('R':45)

- del dict_1['R']

- del dict_1

- del dict_1('R':40)

Ans: B *Yes, del is used to delete a dictionary key.*

#### Dictionary to List

Qn:What would be the output of the following set of instructions?

```python
d = {'Python':40, 'R':45}
print(list(d.keys()))
```

- ['Python':40, 'R':45]

- ('Python':40, 'R':45)

- ('Python', 'R')

- ['Python', 'R']

Ans: D. *The keys() method returns only the key elements; and list() converts these keys into the list format.*

### Dict_Error

#### Problem

Description

From a Dictionary input_dict={'Name': 'Monty', 'Profession': 'Singer' }, get the value of a key ‘Label’ which is not a part of the dictionary, in such a way that Python doesn't hit an error. If the key does not exist in the dictionary, Python should return 'NA'.

**Sample Input:**

{'Name': 'Monty', 'Profession': 'Singer' }

**Sample Output:**

NA

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_dict = ast.literal_eval(input_str)

if "Label" not in input_dict.keys():
    answer = "NA"
else:
    answer = input_dict["Label"]

# Type your answer here

print(answer)
```

### List of Values in a Dictionary

#### Problem

Description

Create a SORTED list of all values from the dictionary input_dict = {'Jack Dorsey' : 'Twitter' , 'Tim Cook' : 'Apple','Jeff Bezos' : 'Amazon' ,'Mukesh Ambani' : 'RJIO'}

**Sample Input:**

{'Jack Dorsey' : 'Twitter' , 'Tim Cook' : 'Apple','Jeff Bezos' : 'Amazon' ,'Mukesh Ambani' : 'RJIO'}

**Sample Output:**

 ['Amazon', 'Apple', 'RJIO', 'Twitter']

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
input_dict = ast.literal_eval(input_str)

#type your answer here
values = list(input_dict.values())
print(sorted(values))
```

By now, you should have a good overview of dictionaries and how to use them. The further segments will provide you with practice questions which will help you explore more about lists, tuples and sets.
