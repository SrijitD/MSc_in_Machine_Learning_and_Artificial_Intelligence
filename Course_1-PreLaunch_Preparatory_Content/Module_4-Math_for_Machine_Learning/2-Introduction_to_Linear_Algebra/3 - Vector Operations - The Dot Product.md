# Vector Operations - The Dot Product

You have already looked at two basic operations that can be performed on vectors - adding two vectors and multiplying a vector by a scalar. In this segment, you will learn a commonly used vector operation - the **dot product** of two vectors.

## **Multiplying Vectors: The Dot Product**

## Video

[The following video](https://www.youtube.com/watch?v=WNuIhXo39_k&list=RDQMAXXUrRt9-Uw&start_radio=1) by Khan Academy explains the dot product operation. If you are familiar with the concept, you can skip the video and move ahead - the important ideas are summarised below.

The dot product of two vectors returns a **scalar quantity**. For two vectors

X=[x1x2],Y=[y1y2]

Note that we have represented the vectors vertically (as **column vectors).** Though one can also represent them horizontally, conventionally they are represented as column vectors by default. 

The dot product is defined as **the element-wise product** of the two vectors, i.e.:

X.Y=x1∗y1+x2∗y2

For example, if we have the following two vectors: 

A=[12],B=[615]

Then the dot product (A . B) is given by:

A.B=1∗6+2∗15=36

## **Geometric Interpretation of the Dot Product**

The dot product has a very nice geometric interpretation. To understand that, we'll need to shift our perspective to that of a 'physics student' and see vectors as arrows in 2D or 3D space.  

Say you have two vectors a and b and the angle between them is θ. The dot product between the vectors is given by the following expression where ||a|| and ||b|| represent the magnitudes of the two vectors:

dot(a,b)=||a||∗||b||∗cos(θ)

![Vector Dot Product](https://i.ibb.co/MBgDxkj/Vector-Dot-Product.png)

Vector Dot Product

## Video

We'll not get into the details of proving the above expression, though you can [go through this Khan Academy video](https://www.youtube.com/watch?v=5AWob_z74Ks) if you want to understand this in detail. 

## Example

The important point for us is that the dot product can be used to compute the **angle between two vectors**. For example, if you have two vectors a=[1,1] and b=[1,0] , the angle between the vectors is:

cos(θ)=a.b||a|| ||b||=1.1+1.0√2√1=1√2

We know that cos(θ)=1√2 corresponds to θ=45 degrees. Similarly, you can calculate the angle between any two vectors. Note that although we have taken an example of 2D vectors, this is applicable to vectors in any n-dimensional space.  

Using the above expression, you can also see that the dot product of vectors a,b is the same as the dot product of b,a. In other words, 

dot(A,B)=dot(B,A)

In algebra, this sort of property is called **commutativity** which means that the numbers in the operation can "commute" around. The dot product is also called "symmetric" since the order does not matter.

## Video - Optional

If you want to understand the **geometric interpretation** of the dot product (in a slightly deeper way), you can **optionally** go through [this 3Blue1Brown video.](https://www.youtube.com/watch?v=LyGKycYT2v0) 



#### The Dot Product

Qn: The dot product between two vectors a=[1,0,3] and b=[−1,1,2] is:

- [−1,0,6]

- 5

- 7

Ans: B. *Do an element-wise multiplication and add the numbers.*



#### Angle Between Vectors

Qn: The angle between two vectors a=[1,0] and b=[0,1] is:

- 30 degrees

- 45 degrees

- 60 degrees

- 90 degrees

Ans: D. *You can also visualise that the angle is 90 degrees, though here's how you do it using the dot product. Since the dot product is zero, or cos(θ)=0, it means that the angle is 90 degrees.*



#### The Dot Product of a Vector with Itself

Qn: Consider a vector a=[a1,a2]. Let's say that we compute the dot product of the vector with itself, i.e. compute a.a. The relationship between a.a and the magnitude of the vector ||a|| is:

- a.a = ||a||

- a.a = ||a||2

- a.a = √||a||

Ans: B. *a.a = ||a|| ||a||cos(θ) , where theta is the angle between the same vector, which is zero. Thus, ||a|| ||a||cos(θ) = ||a|| ||a||cos(0)=||a|| ||a||=||a||2.*





To summarise the important points, you saw that:

- The dot product of two vectors is a **scalar number**
- The dot product between two vectors can be **used to compute the angle** between them
  - The dot product of two perpendicular vectors (also called **orthogonal vectors**) is 0

## **Dot Product in Numpy**

In Python, Numpy provides convenient functions to compute the dot products of vectors. Recall that in Numpy we use the term 'arrays' - so a vector in n-dimensional space is represented as an n-dimensional Numpy array.

The following code snippet demonstrates how to calculate the dot product in Numpy. Just create the arrays and observe the output.



### Calculating Dot Product

#### Problem

Description

Let's look at some code. Find the dot product between the following two vectors:  
a = (3, 4, 5)  
b = (1, 3, 5)  

We've pre-written the code needed to calculate the dot product. You just need to type in these vectors (inside the square bracket), and hit Run.  

#### Solution

```python
import numpy as np 

a = np.array([3, 4, 5])# Type vector here
b = np.array([1, 3, 5])# Type vector here

print (np.dot(a,b))
```

Also, calculate this value by hand. Does the output of the code match your value?

In the next segment, you will study **vector spaces**.

## **Additional Study**

1. (Recommended) The **dot product** has a really nice **geometric interpretation** - it represents the projection of one vector onto another. You can go through [this 3Blue1Brown video](https://www.youtube.com/watch?v=LyGKycYT2v0) to understand this in detail.
2. (Purely optional) Apart from the dot product, there is another way of multiplying two vectors - the **cross product.** You can go through [the following Khan Academy video](https://www.youtube.com/watch?v=pJzmiywagfY) to study the cross-product, though it will not be used in this course (and is lesser commonly used in data sciences that the dot product), so this is purely optional.
