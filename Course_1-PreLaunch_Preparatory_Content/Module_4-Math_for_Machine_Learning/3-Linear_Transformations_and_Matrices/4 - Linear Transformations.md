# Linear Transformations

Let's now study one of the most important ideas in linear algebra - **linear transformations.**

## **Matrices as Linear Transformations**

To study linear transformations, [watch this well-animated video courtesy 3Blue1Brown](https://www.youtube.com/watch?v=kYB8IZa5AuE). The text below summarises the key points in the video.

Geometrically, a transformation can be visualised as the **distortion of the n-dimensional space -** squishing, stretching, rotating etc. The distortion of space can be visualised as a distortion of the grid lines that make up the coordinate system. Space can be distorted in several different ways. A **linear transformation**, however, is a special distortion with two distinct properties:

1. Straight lines remain straight and parallel to each other
2. The origin remains fixed

Let's consider a linear transformation where the original basis vectors ^i, ^j move to the following points: ![Example](https://i.ibb.co/4jPzY5t/Matrix-14.png) This means that ^i moves to (2, 0) (from (1, 0) earlier) and ^j stays at (0, 1) in the linear transformation. Try visualising this transformation and see what kind of distortion this involves - does it involve rotation of the 2d space, 'stretching' space in some direction, etc? This transformation simply stretches the space in the x-direction by two units.

Now, here is the most important idea of this section - we can combine the two vectors where ^i and ^j land and write them as a single matrix. Each of these vectors forms one column of the matrix (and hence are often called **column vectors**). ![enter image description here](https://i.ibb.co/84jLDyb/Matrix-15.png) This matrix fully represents the linear transformation. If you want to find where *any* given vector v lands after this transformation, you simply multiply the vector with the matrix: ![enter image description here](https://i.ibb.co/7G6fw4B/Matrix-16.png) It is convenient to **think of this matrix as a function** which describes the transformation - it takes the original vector v as the input and returns the new vector vnew.

Now that we have looked at linear transformations intuitively, it will be easy to study them formally. Formally, a transformation is linear if satisfies two properties. If L is a linear transformation (i.e. a matrix), and v and w are two vectors, then: ![Linear Transformations](https://i.ibb.co/wN9SY0s/Matrix-17.png) Using the intuition of linear transformations that you now have, think about (i.e. visualise) why these two properties should be true.

Matrix Multiplication: Composition of Linear Transforms**

Now that you know that a matrix represents a linear transformation, let's understand what multiplication of two or more matrices represents geometrically. Watch this [video from 3Blue1Brown on matrix multiplication as composition](https://www.youtube.com/watch?v=XkY2DOUCWMU).

#### 

#### Vector Positions from Describing Rotation

Qn: Consider a linear transformation. In this transformation, the coordinate system is rotated counter-clockwise by 90°. What are the new locations of basis vectors ^i and ^j?
Ans: Try visualising a 90 degree counter-clockwise rotation, and imagine the points at which ^inew and ^jnew will fall. ![enter image description here](https://i.ibb.co/b6XYdNm/Matrix-18.png)

#### 

#### Describing Rotation from Vector Positions

Qn: Now let's try the reverse of the previous question. Consider the following positions of basis vectors: ![enter image description here](https://i.ibb.co/5G5fkHj/Matrix-19.png) Which of the following rotations do these positions represent?
Ans: 135° clockwise. ^i is at 45° in the 3rd quadrant, and ^j is at 45° in the 4th quadrant. This requires 90° + 45° of rotation.

#### 

#### Shearing

Qn: You saw the transformation "shearing" in the video. Which of these matrices describe shearing?  
Ans: The →j vector moves to (1,1). Imagine the rectangle described by the basis vectors "sheared", that is, the top of it moves while its base remains the same. ![enter image description here](https://i.ibb.co/mRj0fk3/Matrix-20.png)

#### 

#### Composite Transformation

Qn: We can also apply multiple linear transformations one after the other. For example, you can rotate the space 90 degrees counter-clockwise, then apply 'positive shear', and then rotate it back again 90 degrees clock-wise. Let's say these matrices are called A, B and C respectively.

Mathematically, if you imagine these transformations being applied to a vector v, then the final vector would be:

vfinal=CBAv. That is, you apply A to v to get the matrix Av, then apply B to Av, and so on to get CBAv.

Now, you can write the matrix product CBA as another matrix L, i.e. L=CBA. L represents the three transformations done one after the other. In other words, the matrix L=CBA is the **composite transformation matrix** - doing the three consecutive transformations is equivalent to the single transformation L.

You already know the matrices corresponding to the operations described above: rotate the space 90 degrees counter-clockwise (A), then 'shear' it in positive direction (B), and then rotate it back again 90 degrees clock-wise (C). What is the composite matrix L? Hint: The shear matrix is: ![Shear matrix](https://i.ibb.co/tqqqGGJ/Matrix-21.png)

Ans: The product ![enter image description here](https://i.ibb.co/Fqm4bKR/Matrix-23.png) You can also imagine the transformations in sequence and see that the vectors ^i and ^j end up at (1, -1) and (0, 1) respectively. ![enter image description here](https://i.ibb.co/2WSFmTP/Matrix-22.png)

### Linear Transformation - Shearing Matrix

#### Problem

Description

One of the more common linear transformation is shearing. This name comes from the effect this transformation has when it distorts space. The matrix of shearing is:

S = [[1, 1], [0, 1]]

This is referred to as positive shearing. Negative shearing is also possible.  
Now, let's imagine a rectangle of height 1 and length 2. The four corner points of the rectangle are:  
a = (0, 0)  
b = (2, 0)  
c = (2, 1)  
d = (0, 1)

Now, think about applying the shearing transformation to these four points. Can you imagine the rectangle turning into a parallelogram, with its vertical sides getting stretched? Let's try applying the transformation on the points. What do we get?

#### Solution

```python
# Import libraries
import numpy as np 

# Declare the positive shearing transformation

S = np.matrix([[1,1], [0,1]])

# Declare the vectors that define the corners of the rectangle.

a = np.matrix([[0],[0]])
b = np.matrix([[2],[0]])
c = np.matrix([[2],[1]])
d = np.matrix([[0],[1]])

# Apply the shear transformation to the vectors

a_sheared = S * a
b_sheared = S * b 
c_sheared = S * c
d_sheared = S * d 

# Print the new vectors after the transformation has been applied
print ("Point 'a' is at \n",a_sheared)
print ("Point 'b' is at \n",b_sheared)
print ("Point 'c' is at \n",c_sheared)
print ("Point 'd' is at \n",d_sheared)
```



In the next section, you will study **determinants**.

## **Additional Study**

You can optionally watch [this video on 3d linear transformations by 3Blue1Brown](https://www.youtube.com/watch?v=rHLEWRxRGiM). This is exactly analogous to the 2d setting, though visualising transformations in 3d is a little more fun!
