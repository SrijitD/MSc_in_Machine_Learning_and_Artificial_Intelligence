# Basics of NumPy

NumPy, which stands for ‘Numerical Python’, is a library meant for scientific calculations. The basic data structure of NumPy is an array. A NumPy array is a collection of values stored together, similar to a list. 

In the following video, you will learn about the difference between lists and NumPy arrays. 

**VIDEO**

This video mentioned two different advantages that NumPy arrays have over lists. These include: 

1. Ability to operate on individual elements in the array without using loops or list comprehension, and
2. Speed of execution. 

The demonstration in the video provided above did not cover the aspect of speed, so for now, you can assume that a NumPy array is faster than a list. Later in this session, you will take a look at a detailed demonstration to compare the speed of NumPy arrays.

You can download the IPython notebook used in the lecture from the link given below. As mentioned in the introduction, you are expected to code along with the instructor in the notebook.

01 - Basics of NumPy

Download

Now, let’s continue exploring the properties of NumPy arrays. In the following video, you will learn how to use operators to perform operations on NumPy arrays.

**VIDEO**

In this video, you learnt that a NumPy array behaves differently with the ‘+’ operator. You also learnt that a NumPy array can be created using a pre-existing list. More details on the use of operators with arrays will be provided later in the session. For now, let’s discuss how to create arrays. 

## Creating NumPy Arrays

There are two ways to create NumPy arrays as mentioned below.

1. By converting the existing lists or tuples to arrays using an np.array
2. By initialising fixed-length arrays using the NumPy functions

In this session, you will learn about both these methods. 

The key advantage of using NumPy arrays over lists is that arrays allow you to operate over the entire data, unlike lists. However, in terms of structure, NumPy arrays are extremely similar to lists. If you try to run the print() command over a NumPy array, then you will get the following output:

*[element_1  element_2  element_3…]*

The only difference between a NumPy array and a list is that the elements in the NumPy array are separated by a space instead of a comma. Hence, this is an aesthetic feature that differentiates a list and a NumPy array.

An important point to note here is that the array given above is a one-dimensional array. You will learn about multidimensional arrays in the subsequent segments.

Another feature of NumPy arrays is that they are homogeneous in nature. By homogenous, we mean that all the elements in a NumPy array have to be of the same data type, which could be an integer, float, string, etc. The quiz given below will help you understand the homogeneity of NumPy arrays better. 

#### Creating an Array

Qn: Select the correct option to create a 1-d array using the following elements (1.0, 2, 3.5, 0.2, True).   
(Note that ‘True’ must be provided as a Boolean value, not as a string.)

- `np.array(1.0, 2, 3.5, 0.2, True) `

- `np.array( [1.0, 2, 3.5, 0.2, "True"] ) `

- `np.array( [1.0, 2, 3.5, 0.2, True] ) `

- `np.array[1.0, 2, 3.5, 0.2, True]`

Ans: C. _This is the correct answer. You have to provide the elements in the form of a list or a tuple to form an array. Also, a Boolean value is defined without the apostrophes._

#### NumPy Array

Qn: What is the default data type of each element in the array created in the previous question?

- String

- Integer

- Float

- Boolean

Ans: C. *Float can accommodate the integer values; hence, all the values are converted to float. Check the output in Jupyter notebook to confirm.*

#### Creating an array

Qn: Is it possible to create an array from a tuple?

- Yes

- No

Ans: Ans: Yes, *NumPy arrays can be created using a tuple. Any sequence that has an array-like structure can be passed to the np.array function.*
