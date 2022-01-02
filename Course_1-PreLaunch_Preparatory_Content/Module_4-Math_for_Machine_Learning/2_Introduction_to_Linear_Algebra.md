# Introduction to Linear Algebra
# Vectors: The Basics

When you think about vectors, you can probably recall "magnitude and direction". In general, there are two main ways to think about vectors. People often prefer one over other according to their discipline of study.

## **Vectors: Two Different Views**

The first view of vectors is  **algebraic**, where you see **vectors as** **ordered lists**  **of objects**. For example, let's say there are 10 students whose marks you wish to store in a single object. You can express this in the form of a vector →m

→m=[78876574569085796270]

This is a vector with 10 values. These can be denoted by m1,m2,m3,... which are called the individual  **entities** (or elements) of the vector. This is typically the preferred view of computer scientists.

The second view of vectors is **geometric**, where you visualize **vectors as arrows in a 2D or a 3D plane.** This is the view you remember from your physics class - arrows which have  **magnitude and direction.** Examples of quantities having a magnitude and direction are velocity, gravitational force, magnetic field etc.

On the other hand, quantities such as mass, distance between two points, the volume of a liquid etc. do not have a direction but only magnitude. They are called  **scalars**.

## **Video**

​​​​​​[Here is a YouTube video courtesy 3Blue1Brown that helps you visualize the basic concepts of vectors.](https://www.youtube.com/watch?v=fNk_zzaMoSs)

Some basic terminologies related to vectors are summarized below. You should be able to recall these just by reading, though if you prefer a more detailed refresher, you can go through the  [first 5-6 videos of this Khan Academy playlist](https://www.youtube.com/watch?v=br7tS1t2SFE&list=PLRiaIeW3IkTUcrivMs8P955VSjTjHW5ot&index=1):

-   Vectors are usually represented in two ways - as ordered lists, such as a=[1,2,3], or using the 'hat' notation, such as a=^i + 2^j + 3^k. In this case, ^i ,^j, ^k represent the three perpendicular directions (or axes).
-   The number of elements in a vector is the  **dimensionality** of the vector. For e.g. a=[1,2] is a two-dimensional (2d) vector, a=[1,2,3] is a 3d vector and so on.
-   The  **magnitude** of a vector is the distance of its tip from the origin. For an n-dimensional vector a=[a1,a2,...,an], the magnitude is given by ||a||=√(a1^2 + a2\^2+...+an^2). For example, the magnitude of a=[1,2,3] is ||a||=√1+4+9=√14.
-   A  **unit vector**  is one whose distance from the origin is exactly 1 unit. For e.g. the vectors\^i,\^j; - \^i/√2+^j/√2 are unit vectors.

#### Magnitude of a Vector

The magnitude of the vector a=[1,0,2,−1] is:
The magnitude is √1+0+4+1=√6.

# Vector Operations - The Dot Product

You have already looked at two basic operations that can be performed on vectors - adding two vectors and multiplying a vector by a scalar. In this segment, you will learn a commonly used vector operation - the  **dot product** of two vectors.

## Multiplying Vectors: The Dot Product

## Video

[The following video](https://www.youtube.com/watch?v=WNuIhXo39_k&list=RDQMAXXUrRt9-Uw&start_radio=1) by Khan Academy explains the dot product operation. If you are familiar with the concept, you can skip the video and move ahead - the important ideas are summarized below.

The dot product of two vectors returns a  **scalar quantity**. For two vectors

X=[x1; x2]
Y=[y1; y2]

Note that we have represented the vectors vertically (as  **column vectors).** Though one can also represent them horizontally, conventionally they are represented as column vectors by default.

The dot product is defined as  **the element-wise product** of the two vectors, i.e.:

X.Y=x1∗y1+x2∗y2

For example, if we have the following two vectors:

A=[1; 2] 
B=[6; 15]

Then the dot product (A . B) is given by:

A.B=1∗6+2∗15=36

## **Geometric Interpretation of the Dot Product**

The dot product has a very nice geometric interpretation. To understand that, we'll need to shift our perspective to that of a 'physics student' and see vectors as arrows in 2D or 3D space.

Say you have two vectors  a and  b and the angle between them is  θ. The dot product between the vectors is given by the following expression where  ||a|| and  ||b|| represent the magnitudes of the two vectors:

dot(a,b)=||a||∗||b||∗cos(θ)

![Vector Dot Product](https://cdn.upgrad.com/UpGrad/temp/53d269ba-44ab-41d6-99cc-4870840e2f57/9.png)

Vector Dot Product

## Video

We'll not get into the details of proving the above expression, though you can  [go through this Khan Academy video](https://www.youtube.com/watch?v=5AWob_z74Ks)  if you want to understand this in detail.

## Example

The essential point for us is that the dot product can be used to compute the **angle between two vectors**. For example, if you have two vectors a=[1,1] and b=[1,0] , the angle between the vectors is:

cos(θ)=a.b||a||  ||b||=1.1+1.0√2√1=1√2

We know that cos(θ)=1√2  corresponds to θ=45 degrees. Similarly, you can calculate the angle between any two vectors. Note that although we have taken an example of 2D vectors, this is applicable to vectors in any n-dimensional space.

Using the above expression, you can also see that the dot product of vectors a, b is the same as the dot product of  b, a. In other words,

dot(A, B)=dot(B, A)

In algebra, this sort of property is called  **commutativity,** which means that the numbers in the operation can "commute" around. The dot product is also called "symmetric" since the order does not matter.

## Video - Optional

If you want to understand the  **geometric interpretation**  of the dot product (in a slightly deeper way), you can  **optionally**  go through [this 3Blue1Brown video.](https://www.youtube.com/watch?v=LyGKycYT2v0)

#### The Dot Product

Qn: The dot product between two vectors a=[1,0,3] and b=[−1,1,2]  is:
Ans: Do an element-wise multiplication and add the numbers. Hence, a.b = 5

#### Angle Between Vectors

Qn: The angle between two vectors a=[1,0] and b=[0,1] is:
Ans: You can also visualize that the angle is 90 degrees, though here's how you do it using the dot product. Since the dot product is zero, or cos(θ)=0, it means that the angle is 90 degrees.

#### The Dot Product of a Vector with Itself

Qn: Consider a vector a=[a1,a2]. Let's say that we compute the dot product of the vector with itself, i.e. compute a.a. The relationship between a.a and the magnitude of the vector ||a|| is:
Ans: a.a = ||a||  ||a||cos(θ) , where theta is the angle between the same vector, which is zero. Thus, ||a||  ||a||cos(θ) = ||a||  ||a||cos(0)=||a||  ||a||=||a||2

To summarize the important points, you saw that:

-   The dot product of two vectors is a  **scalar number**
-   The dot product between two vectors can be  **used to compute the angle**  between them
    -   The dot product of two perpendicular vectors (also called  **orthogonal vectors**) is 0

## **Dot Product in Numpy**

In Python, Numpy provides convenient functions to compute the dot products of vectors. Recall that in Numpy we use the term 'arrays' - so a vector in n-dimensional space is represented as an n-dimensional Numpy array.

The following code snippet demonstrates how to calculate the dot product in Numpy. Just create the arrays and observe the output.

### Calculating Dot Product

#### Description
Let's look at some code. Find the dot product between the following two vectors:  
a = (3, 4, 5)  
b = (1, 3, 5)  

    import numpy as np 
    
    a = np.array([3, 4, 5])
    b = np.array([1, 3, 5])
    
    print (np.dot(a,b))

# Dot Product - Example Application

You saw that the dot product can be used to compute the angle between two vectors. This simple property of the dot product is extensively used in data science applications. Here, we will discuss an example application and use the dot product to  **compare emails** with each other (in general, you can extend this technique to any set of text documents).

## Comprehension - Comparing Emails Using Dot Product

You would have noticed that your email inbox automatically separates (or at least tries to separate) spam emails from genuine emails (also called  **ham emails**). This task, called  **spam detection,** is a popular application of machine learning.  Spam detection algorithms make a decision based on the words in an email - if the email contains phrases such as 'easy money, free!!, hurry up' etc., it is likely to be a spam (example below). On the other hand, if it contains words such as 'meeting', 'powerpoint', 'client' etc. it is probably a genuine (or ham) email.

![Sample Spam Email](https://cdn.upgrad.com/UpGrad/temp/d3e7b587-209b-4866-8405-af942f237d59/Screen+Shot+2018-10-24+at+12.27.51+PM.png)

Sample Spam Email

We'll not build a spam classifier just yet, though let's discuss how we can quantify the  **similarity between emails**. For simplicity, let's assume that there are  **only four words**  (the 'keywords') in the vocabulary - 'money', 'hurry', 'meeting' and 'powerpoint'. That is, you ignore all other words in the emails apart from these four. Let's say you have a few hundred emails. You count the  **number of times** each of these four words occur in an email (i.e. count the **frequency of keywords**  per email) and store them in a table. In the table,  **each row represents an email**  and each column represents the frequency of a keyword (four sample emails shown).

![Table: Frequency of Keywords in Emails](https://i.ibb.co/fFwdJYx/Table-Frequency-of-Keywords-in-Emails.png)

Now, we can represent each email as a  **vector of 4 dimensions-** the first email is the vector [2,1,0,0], the second email is [0,0,1,1] etc. Each element of the vector represents the frequency of a particular word, so if you imagine a  **four-dimensional space**  with four axes (each representing the frequency of a word), each email will be a vector in this 4d space.

Now we can use the usual vector operations on emails. For example, the  **angle between two emails**  will be small if they are similar to each other and large otherwise. The dot product between the first two emails is [2,1,0,0]  . [0,0,1,1] =0, while that between emails 1 and 3 is [2,1,0,0].[1,1,0,0]=3. You know that the angle between two vectors  a,b is (taking the example of emails 1 and 3):

cos(θ)=a.b||a||  ||b||=3√5  √2

θ=cos−1(3√5√2)

The angle corresponding to this is  θ=18.430. Thus, the angle between emails 1 and 3 is 18.43 degrees.

You can compute cos inverse in Numpy using the function  **np.arccos()** (code shown below). It returns the angle in radians, so you can convert it to degrees by multiplying by 180π  . You can alternatively use  [this online calculator.](https://www.rapidtables.com/calc/math/Arccos_Calculator.html)

    # cos inverse
    pi = math.pi
    np.arccos(3/(np.sqrt(5)*np.sqrt(2)))*(180/pi) # returns 18.434948822922017

Computing angles between vectors which represent real-world things (such as emails, webpages, etc.) is an extremely useful technique. In fact, it is a very general technique used in a variety of machine learning techniques such as recommender systems, web and document search etc.

#### Angle Between Emails
Refer to the frequency table of words in four sample emails above. 

Qn: The angle between emails 1 and 2 is (the first two rows):
Ans: The dot product is zero, hence the angle should be 90 degrees.

Qn: You want to know whether email number 4 (the last row) is more similar to email 1 or email 3. Choose all the correct options.
Ans: 
- The angle between emails 1 and 4 is arccos(3/√5*√3) = 39.230.
- The angle between emails 3 and 4 is arccos(2/√2*√3) = 35.260.
- Email number 4 is 'more similar' to email 3 than email 1. The angle between emails 1 and 4 is arccos(3\√5*√3)=39.230 while that between 3 and 4 is arccos(2/√2*√3)=35.260 .

# Vector Spaces

Until now, we have discussed the basics of vectors and their operations. Let's now move on to some interesting ideas of vectors which form the core conceptual foundation of linear algebra. Specifically, you will study:

-   Linear combination of vectors
-   Basis and span
-   Vector spaces

## Video

To get a visual understanding of vector spaces, watch [this well-animated video on the concepts of vector spaces, basis and span, courtesy 3Blue1Brown](https://www.youtube.com/watch?v=k7RM-ot2NWY). We will summarise the concepts from this video in the section below - you can use them as a ready reference.  

To summarise, you saw that:

-   The vectors  ^i and ^j are chosen as the  **default basis vectors**, though you can choose to have a completely different, valid choice of basis vectors (we'll discuss basis vectors and these choices in detail shortly)
-   The  **linear combination** of two vectors is the sum of the scaled vectors
-   The  **span** of two or more vectors is the set of all possible vectors that you can get by changing the scalars and adding them
-   A set of vectors is called  **linearly dependent**  if any one or more of the vectors can be expressed as a linear combination of the other vectors. Geometrically, this means that if you remove some vectors from the set, you will still have the same span - some vectors are simply not adding anything to the span.
-   On the other hand, if none of the vectors in a set can be expressed as a linear combination of the other vectors, the vectors are called  **linearly independent**.

The following questions will help you verify your understanding of these concepts.

#### Vector Span

Qn: What will be the span of the vectors 3→i and −7→i
Ans: The two vectors lie on the same line (the x axis). In other words, the vectors are collinear, and thus any linear combination of them will result in a vector lying on the x axis.

#### 2D Vectors with a Line as Span

Qn: Which of the following vectors in 2D space have a single line as its span?  
Ans: (→i + →j),(−6→i − 6→j)
These two vectors are collinear. Hence, their span is a line.

#### Vector Span

Qn: What is the span of vectors  →i + →j and 7→i + 7→j  
Ans: A straight line.

Qn: What is the span of the vectors →i, 9→j and 10→k?  
Ans: These three vectors are linearly independent, i.e. none of the three vectors are collinear with each other. Hence, you can reach all possible points in the 3d space by adding and scaling these vectors.

Qn: What is the span of the vectors i, 4i, 8k?  
Ans: One of the two vectors i, 4i is redundant since both lie on the x-axis (are collinear). Now, if you take the linear combination of i and 8k, you will get all possible vectors lying on the x-z plane, but nothing apart from the x-z plane.

Qn: Consider the vectors u=[2; 3], v=[0; −1] and w=[2; 2].  
Ans: Correct options:
- The span of the vectors is the entire x-y plane. None of the three vectors are collinear, so the span is the entire 2d plane.
- The span of the vectors **wouldn't change** if you remove any one of the three vectors from the set. None of the three vectors are collinear, so the span is the entire 2d plane.
