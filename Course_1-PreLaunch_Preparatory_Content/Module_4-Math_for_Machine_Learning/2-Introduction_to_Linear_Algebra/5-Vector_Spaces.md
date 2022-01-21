# Vector Spaces

Until now, we have discussed the basics of vectors and their operations. Let's now move on to some interesting ideas of vectors which form the core conceptual foundation of linear algebra.  Specifically, you will study:

- Linear combination of vectors
- Basis and span
- Vector spaces

## Video

To get a visual understanding of vector spaces, watch [this well-animated video on the concepts of vector spaces, basis and span, courtesy 3Blue1Brown](https://www.youtube.com/watch?v=k7RM-ot2NWY). We will summarise the concepts from this video in the section below - you can use them as a ready reference.  

To summarise, you saw that:

- The vectors ^i and ^j are chosen as the **default basis vectors**, though you can choose to have a completely different, valid choice of basis vectors (we'll discuss basis vectors and these choices in detail shortly)
- The **linear combination** of two vectors is the sum of the scaled vectors
- The **span** of two or more vectors is the set of all possible vectors that you can get by changing the scalars and adding them
- A set of vectors is called **linearly dependent** if any one or more of the vectors can be expressed as a linear combination of the other vectors. Geometrically, this means that if you remove some vectors from the set, you will still have the same span - some vectors are simply not adding anything to the span.
- On the other hand, if none of the vectors in a set can be expressed as a linear combination of the other vectors, the vectors are called **linearly independent**.

The following questions will help you verify your understanding of these concepts.

#### Vector Span

Qn: What will be the span of the vectors 3→i and −7→i

- The x -y plane

- The y-axis

- The x-axis

- The entire 3D space

Ans: C. *The two vectors lie on the same line (the x axis). In other words, the vectors are collinear, and thus any linear combination of them will result in a vector lying on the x axis.*

#### 2D Vectors with a Line as Span

Qn: Which of the following vectors in 2D space have a single line as its span?

- (→i−→j),(−6→i−6→j)

- (→i−→j),(6→i+6→j)

- (→i+→j),(−6→i−6→j)

- (2→i−4→j),(−4→i−2→j)

Ans: C. *These two vectors are collinear. Hence, their span is a line.*

#### Vector Span

Qn: What is the span of vectors →i+→jand 7→i+7→j

- x-y plane

- x-axis

- y-axis

- A straight line

Ans: D

Qn: What is the span of the vectors →i,9→j and 10→k?

- A 2d plane

- The entire 3D space

- z-axis

- None of these

Ans: B. *These three vectors are linearly independent, i.e. none of the three vectors are collinear with each other. Hence, you can reach all possible points in the 3d space by adding and scaling these vectors.*

Qn: What is the span of the vectors i,4i,8k?

- The entire 3d space

- The x-y plane

- The y-z plane

- The x-z plane

Ans: D. *One of the two vectors i,4i is redundant since both lie on the x-axis (are collinear). Now, if you take the linear combination of i and 8k, you will get all possible vectors lying on the x-z plane, but nothing apart from the x-z plane.*

Qn: Consider the vectors u=[2;3], v=[0;−1] and w=[2;2] . Mark all the correct options.

- The span of the vectors is the entire x-y plane

- The span of the vectors is the entire 3d space

- None of the three vectors are collinear, so the span is the entire 2d plane.

- The span of the vectors **would change** if you remove any one of the three vectors from the set

Ans: A & C. *None of the three vectors are collinear, so the span is the entire 2d plane.*

**Recommended Study - A Formal View of Linear Combinations**

In the discussions above, we have focused on understanding the concepts of vector spaces intuitively. In some books and texts, you may come across more formal definitions and terminologies related to linear combinations, vector spaces etc. To study the same, we **highly recommend** going through this [Khan Academy video on linear combinations and span.](https://www.youtube.com/watch?v=Qm_OS-8COwU)

This brings us to the end of this session. In the next session, you will study one of the most important concepts in linear algebra - **linear transformations and matrices**.

Report an error
