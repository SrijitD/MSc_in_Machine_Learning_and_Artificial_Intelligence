# Dot Product - Example Application

You saw that the dot product can be used to compute the angle between two vectors. This simple property of the dot product is extensively used in data science applications. Here, we will discuss an example application and use the dot product to **compare emails** with each other (in general, you can extend this technique to any set of text documents).

## **Comprehension - Comparing Emails Using Dot Product**

You would have noticed that your email inbox automatically separates (or at least tries to separate) spam emails from genuine emails (also called **ham emails**). This task, called **spam detection,** is a popular application of machine learning. Spam detection algorithms make a decision based on the words in an email - if the email contains phrases such as 'easy money, free!!, hurry up' etc., it is likely to be a spam (example below). On the other hand, if it contains words such as 'meeting', 'powerpoint', 'client' etc. it is probably a genuine (or ham) email.

![Sample Spam Email](https://i.ibb.co/zRrdyWL/Spam-Email.png)

We'll not build a spam classifier just yet, though let's discuss how we can quantify the **similarity between emails**. For simplicity, let's assume that there are **only four words** (the 'keywords') in the vocabulary - 'money', 'hurry', 'meeting' and 'powerpoint'. That is, you ignore all other words in the emails apart from these four. Let's say you have a few hundred emails. You count the **number of times** each of these four words occur in an email (i.e. count the **frequency of keywords** per email) and store them in a table. In the table, **each row represents an email** and each column represents the frequency of a keyword (four sample emails shown).

![Table-Frequency-of-Keywords-in-Emails](https://i.ibb.co/fFwdJYx/Table-Frequency-of-Keywords-in-Emails.png)

Now, we can represent each email as a **vector of 4 dimensions-** the first email is the vector [2,1,0,0], the second email is [0,0,1,1] etc. Each element of the vector represents the frequency of a particular word, so if you imagine a **four-dimensional space** with four axes (each representing the frequency of a word), each email will be a vector in this 4d space.

Now we can use the usual vector operations on emails. For example, the **angle between two emails** will be small if they are similar to each other and large otherwise. The dot product between the first two emails is [2,1,0,0] . [0,0,1,1]  =0, while that between emails 1 and 3 is [2,1,0,0].[1,1,0,0]=3. You know that the angle between two vectors a,b is (taking the example of emails 1 and 3):

cos(θ)=a.b||a|| ||b||=3√5 √2

θ=cos−1(3√5√2)

The angle corresponding to this is θ=18.430. Thus, the angle between emails 1 and 3 is 18.43 degrees.

You can compute cos inverse in Numpy using the function **np.arccos()** (code shown below). It returns the angle in radians, so you can convert it to degrees by multiplying by 180π . You can alternatively use [this online calculator.](https://www.rapidtables.com/calc/math/Arccos_Calculator.html)

## cos inverse

```python
pi = math.pi
np.arccos(3/(np.sqrt(5)*np.sqrt(2)))*(180/pi) # returns 18.434948822922017
```

Computing angles between vectors which represent real-world things (such as emails, webpages, etc.) is an extremely useful technique. In fact, it is a very general technique used in a variety of machine learning techniques such as recommender systems, web and document search etc.

#### Angle Between Emails

Qn: The frequency table of words in four sample emails is shown below. The angle between emails 1 and 2 is (the first two rows):

| money | hurry | meeting | powerpoint |
| ----- | ----- | ------- | ---------- |
| 2     | 1     | 0       | 0          |
| 0     | 0     | 1       | 1          |
| 1     | 1     | 0       | 0          |
| 1     | 1     | 1       | 0          |

- 0 degrees

- 90 degrees

- 45 degrees

- 60 degrees

Ans: B. *The dot product is zero, hence the angle should be 90 degrees.*

Qn: The frequency table of words in four sample emails is shown below. You want to know whether email number 4 (the last row) is more similar to email 1 or email 3. Choose all the correct options.

| money | hurry | meeting | powerpoint |
| ----- | ----- | ------- | ---------- |
| 2     | 1     | 0       | 0          |
| 0     | 0     | 1       | 1          |
| 1     | 1     | 0       | 0          |
| 1     | 1     | 1       | 0          |

- The angle between emails 1 and 4 is about 39 degrees

- The angle between emails 1 and 4 is about 35 degrees

- The angle between emails 3 and 4 is about 35 degrees

- Email number 4 is 'more similar' to email 3 than email 1

- Email number 4 is 'more similar' to email 1 than email 3

Ans: A, C & D

- *The angle between emails 1 and 4 is arccos(3/√5√3)=39.230.*

- *The angle between emails 3 and 4 is arccos(2/√2√3)=35.260.*

- *The angle between emails 1 and 4 is arccos(3/√5√3)=39.230 while that between 3 and 4 is arccos(2/√2√3)=35.260.*

Next, you will study **vector spaces.**
