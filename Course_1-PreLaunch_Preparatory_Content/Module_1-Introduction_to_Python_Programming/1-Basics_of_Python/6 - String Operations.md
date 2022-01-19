# String Operations

90% of the data in the world is in form of text data; as we have seen in the last few segments - python handles text data generally via the string data type; and this makes '**strings**'  perhaps one of the most important data types and hence, learning how to work with strings is crucial. In the next set of videos, you will learn about various operations and manipulations applicable to a string.

**VIDEO**

In the above video, you understood the basics of the string data type, and you also understood the functionalities a string could provide, such as the escape character or '\' operator. Let's continue exploring the functionalities of the string data type and start by building a small application that could take your dessert order!

**VIDEO**

The application that we built in the above video has used string concatenation to order a dessert. The code used in the video is given below. 

```python
#Let's try building a system that could ask for flavour, and the type of desert user wants
flavour=input("What flavour would you like ")
dessert_type=input("What type of dessert would you like ")
print("You have ordered", flavour + "-" + dessert_type)
```

String concatenation is just one of the way to manipulate a string, let us have a look at what other string manipulation techniques does Python offer.

**VIDEO**

In the previous video, you learned about <u>indexing&nbsp;</u> in strings. Always remember that <u>&nbsp;forward indexing</u> starts with **0,** and <u>reverse indexing</u> starts with **-1.**

We should also keep in mind the distinct feature of immutability that string data type provides, which means that once a string is created, it cannot be changed.

And for cases where we may want to add data from multiple strings together, such as creation of a variable 'Full name' from variables 'First name' and 'Last name' we'll use <u>string concatenation</u>.

Now, let's move on to the next video and understand another important concept **string slicing**.

**VIDEO**

In the previous video, you saw slicing in a string through several examples. Now, based on your learning attempt the quiz given below:

#### I Love Python!

Qn: How will you extract Python from the string word "I love Python programming"? (More than one options may be correct.)

- word[7:13]

- word[7:12]

- word[-12:-18]

- word[-18:-12]

Ans: A & D.

- *The index value of P in Python is 7 and the index value of N in Python is 12. So, while indexing, we include the starting value, whereas the ending value is not included. So, word[7:13] will give Python, while word[7:12] will give ‘Pytho’.*

- *Negative indexing starts from backward with the last character having an index value -1. Following this P would have an index value of -18 and n would have an index value of -13. Hence, to extract python, you need to give start index -18 and end index as -12. Note here that you shouldn't provide -13 for the same reason that end index isn't included.*



#### Operations on Strings?!

The len() function in Python returns the length of the string when a string is passed as an argument. For example, len(‘Python’) would return an integer value 6.

With this in mind, what would be the output of the following code?

```python
x = 'len'
x[len(x * 2) - 5]
```

- 'n'

- ''

- 'e'

- Error

Ans: C. _Using a star operator on a string will result in repetition, so x*2 would give ‘lenlen’ and on passing this to the length function, it would give us an output 6. The expression inside would finally equate to x[1], which is ‘e’._



Earlier in the segment, you saw how to do indexing and slicing in strings. Now let us take a step forward and learn how to change the character-case for a string or remove unwanted characters adjacent to a given string variable.

**VIDEO**

Apart from the methods you saw in the video, there is one more important method which you might want to use in certain situations.  The `split()` method splits the string into substrings based on the separator chosen; the final outcome is a list which has the substrings in it. 

```python
a = "Hello World!"  
print(a.split(" ")) # returns ['Hello', 'World!']
```

This method is used in situations where you might want to separate certain strings. For example, consider the categories of products in an e-commerce data set. It might be possible that they are given in the following manner: 

- electronics-phone 
- electronics-headset
- furniture-table

Now with the data structured in this manner in order to get a category and the sub-category level data, we'll have to split the words into two sub-strings.

Now, in the upcoming video, we'll learn how to count the number of occurrences of a substring in a string.

**VIDEO**



### String Problem

#### Problem

Description

In a certain encrypted message which has information about the location(area, city), the characters are jumbled such that first character of the first word is followed by the first character of the second word, then it is followed by second character of the first word and so on

In other words, let’s say the location is bandra,mumbai

The encrypted message says ‘bmaunmdbraai’.

**Sample Input:**

bmaunmdbraai

**Sample Output:**

bandra,mumbai

Let’s say the size or length of the two words wouldn’t match then the smaller word is appended with # and then encrypted in the above format.

With this in mind write a code to identify the right location and print it as place,city.

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()
#Type your code here
message1=input_str[0::2]
message2=input_str[1::2]
print(f"{message1},{message2}")
```


