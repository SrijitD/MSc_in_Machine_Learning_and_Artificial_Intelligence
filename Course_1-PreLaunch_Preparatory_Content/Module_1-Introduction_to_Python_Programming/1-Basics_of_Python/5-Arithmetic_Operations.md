# Arithmetic Operations

In the previous segment, you learned about various data types in Python, next let's learn about Arithmetic operations. Arithmetic operations are an integral part of every programming language. Let's understand how you perform them in Python from the following video:

**VIDEO**

To do some mathematical operation which involves one or more than one operator, we did follow some rules. The same is the case in Python, where if multiple operations have to be done in a single problem, then we make use of [operator precedence rule](https://docs.python.org/3.7/reference/expressions.html#operator-precedence). 

Let us understand Operator precedence using an example.

` a = 4 + (8 ** 2) - 3 ** 2 % 1 `

To find the value of the variable 'a' the following steps have to be followed.

**Step 1**: The first step is to deal with brackets as it holds the highest precedence among all operators in the given expression. The expression inside these brackets [(8**2)] will get executed first to return 64.

**Updated Expression: 4 + 64 − 3 \*\* 2 % 1** 

**Step 2**: Moving on, you deal with the exponentiation operator [3**2] as it has the next highest precedence when compared to other operators in the expression.

**Updated Expression: 4 + 64 − 9 % 1**

**Step 3**: Now, you deal with the remainder operator as it has higher precedence over substraction and addition. This means the value 9%1 gets evaluated to return 0.

**Updated Expression: 4 + 64 − 0**

**Step 4**: In the next step, the addition operator gets executed as it holds higher precedence over substraction. 

**Updated Expression: 68 − 0**

**Step 5**: The final step would be to perform substraction

**Answer: 68**

And this is how operator precedence rule plays an essential part while doing arithmetic operations in Python. Based on the concepts learnt so far, let's check our understanding of the concepts using the quiz given below:

#### Will this Run?

Qn: What would be the output of the following code?

```python
x = 3
y = 2.5
z = 5
print(X + y / z)
```

- 5.5

- 1.1

- 3.5

- Error

Ans: D. *The above code throws an error since variable 'X' is not defined in the code but is being used in the final print statement. Note: Be careful with these type of errors while practising Python coding.*

#### Operator No. 1

Qn: Follow the operator precedence rule in Python and provide the output of the following expression:

[Operator_Precedence](https://docs.python.org/3.7/reference/expressions.html#operator-precedence)

`4 % (1 + 9)**2 - 60 // (7 + 2)`

- 10

- 75

- -2

- Error

Ans: C. *Operator precedence rule: ()>∗∗>//>%>+>−*

A meme to help you remember the operator precedence rule. :)

![Operator-Precendece-Meme](https://i.ibb.co/GpCjbvg/Operator-Precendece-Meme.png)

## Additional Resources

You can also go through this [video tutorial](https://www.youtube.com/watch?v=QC_Wpj_cJKM) to understand the Arithmetic operators precedence via a different example.
