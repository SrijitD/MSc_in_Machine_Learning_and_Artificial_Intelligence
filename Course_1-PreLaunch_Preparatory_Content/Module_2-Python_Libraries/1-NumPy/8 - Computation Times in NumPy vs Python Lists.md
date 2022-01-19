# Computation Times in NumPy vs Python Lists

You will often work with extremely large data sets; thus, it is important for you to understand how much computation time (and memory) you can save using NumPy as compared with the use of standard Python lists.

To compare both these data structures, it is recommended that you code along with us and experiment with the different types of data to see the difference in real time.

Now, let's compare the computation times of arrays and lists through a simple task of calculating the element-wise product of numbers.

**VIDEO**

As you saw in this video, there is a huge difference in the time taken to perform the same operation using lists and NumPy arrays. Now, let’s try to find the ratio of the speed of NumPy arrays as compared with lists.

**VIDEO**

In the example discussed in this video, NumPy is an order of magnitude faster than lists. This is with arrays of sizes in millions, but you may work on much larger arrays with sizes in billions. Then, the difference may be even larger.  
Some reasons for such a difference in speed are as follows: 

- NumPy is written in C, which is basically being executed behind the scenes.
- NumPy arrays are more compact than lists, i.e., they take less storage space than lists.

The following discussions demonstrate the differences in the speeds of NumPy and standard Python lists.

- [Why are NumPy arrays so fast?](https://stackoverflow.com/questions/8385602/why-are-numpy-arrays-so-fast)

- [Why NumPy instead of Python lists?](https://stackoverflow.com/questions/993984/why-numpy-instead-of-python-lists)
