# Decision Making

If statements are a crucial part of the decision making constructs in python. The construct of the statement is inspired by the natural language. For instance:

***if** it rains today **then** I would order an umbrella.* 

In the example above, there is a logic to the decision taken to order an umbrella. If a condition is met then the action is executed. The if construct in python is exactly the same. In the following video, you will learn to code the condition that is to be checked. 

**VIDEO**

Having understood about relational operators, let’s now look at the if-else construct and the role of these relational operations in its implementation.

![if-elif](https://cdn.upgrad.com/UpGrad/temp/de581248-4fd9-4b85-b67f-e029ea038fb6/Capture.PNG)

**VIDEO**

In the example discussed above: 

```python
x = 450

if x < 99:
    print(x, "is less than 99")
else:
    print(x, "is greater than 99")
```

x < 99 is a relational condition that would return 'true' or 'false' based on the value of x. If this condition is true, the set of statements under the **if-block** will be executed; otherwise, the statements under the **else-block** will be executed. 

Important things to note here are as follows:

The **colon** that indicates the start of block creation, The **indentation** here defines the scope of the if- or else- statement, Either code under the if-block is executed or under the else-block is executed, not both of them. 

So now that you have understood the basic if-else construct, can you try to write a code to return YES if x lies in the range of 1000 to 1100, else return NO?

If you break this down, you can get the following conditions:

**Implementation:**

```python
if (X<1000):
    print('No')
else:
     if (X>1100 ):
         print('No')
     else:
         print('Yes')
```

In cases like this, where you would like to make a decision based upon multiple conditions combined together - you can use the logical operators in Python to combine various conditions within a single if-else loop; 

Let’s learn more about this in the following video:

**VIDEO**

In the video, you learnt that there are two types of logical operators: 

![](https://i.ibb.co/17H46d4/Python-Logical-Operators.png)

If you apply this concept to our earlier example for checking whether x lies in the range of 1000 to 1100, the code gets modified as shown below:

```python
if (X > 1000 & X < 1100):
    print('Yes')
else:
    print('No')
```

Isn’t this simple compared with the earlier code? That is how logical operators make our logic building easy.

Similar to an if-else construct, there is if-elif-else construct available in Python. The example used in the video is given below:

```python
shoppinng_total = 550

if shoppinng_total >= 500:
    print("You won a discount voucher of flat 1000 on next purchase")
elif shoppinng_total >= 250:
    print("You won a discount voucher of flat 500 on next purchase")
elif shoppinng_total >= 100:
    print("You won a discount voucher of flat 100 on next purchase")  
else:
    print("OOPS!! no discount for you!!!")
```

Note that in the elif construct, a particular block is executed if all the blocks above the considered block are false **and** this particular block is true. For instance, in the above example, if the shopping total is less than 500 **and** greater than 250 the output will be:

*You won a discount voucher of flat 500  on next purchase*

So the elif construct can also be used to replace the and operator in certain situations. 

Now let's look at the nested if-else constructs. 

**VIDEO**

In the example shown in the video:

```python
world_cups = {2019 : ['England', 'New Zealand'], 2015:["Australia", "New Zealand"], 2011 : ["India", "Sri Lanka"], 2007: ["Australia", "Sri Lanka"], 2003: ["Australia", "India"]}
year = int(input("Enter year to check New Zealand made it to Finals in 20th century : "))

if year in world_cups :
    if "New Zealand" in world_cups[year] :
        print("New Zealand made it to Finals")
    else:
        print("New Zealand could not make it to Finals")
else:
    print("World cup wasnt played in", year)
```

Using an if-else construct would also give us an answer, but imagine that you have 10 conditions like this; wouldn’t it be clumsy? Instead, if you use something like an elif-construct, it would make the code more readable. 

In this segment, you learnt about relational operators, logical operators, if-else, if-elif- else, and nested if-else constructs. You might be pretty confused about when to use each of them. Read the tips given below, which may help you to arrive at a conclusion faster.

**TIPS:**

When there is more than one condition to check and you need to:

1. Perform a different operation at each condition involving a single variable, you use an if-elif-else condition.
2. Just return a boolean functionality, i.e., Yes or No, you use logical operators in a single if-else construct.
3. Perform a different operation in each condition involving different variables, you use a nested if-else construct.

Now let's look at a <u>real-world example</u> of the if-else construct:

**VIDEO**

#### The If-Else Construct

Qn: What is the output of the following code?

```python
X = 12

if (X > 10 & X < 15):
print('YES')
else:
print('No')
```

- Yes

- No

- Error

- No output

Ans: C. *Indentation is very important in Python, and the code above throws an error saying expected indented block.*

![](https://i.ibb.co/WWrwJBM/Python-Indentation-Error.png)

#### Maximum of Three Numbers

Qn: Complete the piece of code to print a maximum of three variables, a, b and c.

```python
a=10
b=16
c=20

if( # missing part 1 # ):
 print("a")
elif( # missing part 2 #):
 print("b")
else:
 print("c")
```

- Missing Part 1: a > b,c           
  
  Missing Part 2: b > a,c

- Missing Part 1: a > b and a > c           
  
  Missing Part 2: b > a and b > c

- Missing Part 1: c < a and c < b
  
  Missing Part 2: a < b

- Missing Part 1: (b < a, a > c) 
  
  Missing Part 2: (b > a, c < b)

Ans: B. *In the first step of the if-statement, if you have observed a, it is being printed which means the condition should check whether a is highest among the three i.e both a>b and a>c under if condition has to be true. In order to join these two conditions, you need to use a logical and operator since you want both the conditions to be true. Similarly in the second condition, you want b to be printed; so, the condition to this would b > c and b > a.*

#### Reverse Engineering

Qn: Which of the following sequences of inputs would give the output 'C' 'A' 'D' 'B' over multiple iterations?

```python
# Given the code below, the output obtained in several runs is 'C' 'A' 'D' 'B'.
if score >= 90:
 print('A')
elif score >=80:
 print('B')
elif score >= 70:
 print('C')
elif score >= 60:
 print('D')
else:
 print('F')
```

- 74, 93 , 74, 88

- 72, 93, 70, 85

- 70, 91, 67, 88

- 78, 96, 35, 40

Ans: C. *For 'C', the obtained marks should be greater than or equal to 70. For 'A', the obtained marks should be greater than or equal to 90. For 'D', the obtained marks should be greater than or equal to 60. For 'B', the obtained marks should be greater than or equal to 80.*

#### Can You Guess the Output?

Qn: What will the following segment of code print? Try doing this verbally.

```python
if (10 < 0) and (0 < -10):
 print("A")
elif (10 > 0) or False:
 print("B")
else:
 print("C")
```

- A

- B

- C

- B and C

Ans: B. *10 > 0 returns True. True or False is True. Hence, 'B' gets printed.*

#### A Search for the Truth

What will the following segment of code print? Try solving it verbally.

```python
if True or True:
    if False and True or False:
        print('A')
    elif False and False or True and True:
        print('B')
    else:
        print('C')
else:
    print('D')
```

- A

- B

- C

- D

Ans: B. *T or T will be a T. The code will return the value that satisfies these statements. A will be returned for an F, as (F and T) = F, (F or F) = F. B will be returned for a T, as (F and F) = F, (T and T) = T, (F or T) = T.*

### If-Else

#### Problem

Description

Write a code to check if the string in input_str starts with a vowel or not. Print capital YES or NO.

For example, if input_str = 'analytics' then, your output should print 'YES'.

**Sample Input:**

alpha

**Sample Output:**

YES

#### Solution

```python
import ast,sys
input_str = sys.stdin.read()

#Write your code here
vowels = ['a', 'e', 'i', 'o', 'u']
if input_str.lower()[0] in vowels:
    print("YES")
else:
    print("NO")
#Use capital YES or NO
```

![Python figuring out which of the two conditions is true](https://i.ibb.co/wCwb62R/If-Else-Condition-Meme.jpg)

Python figuring out which of the two conditions is true

In the next segment, you will learn about the uses of looping constructs to automate tasks that require multiple iterations such as reading 1000+ records and adding them to a single file.
