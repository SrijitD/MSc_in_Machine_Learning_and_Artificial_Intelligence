# Practice Exercise (Part I)

Before you get started with solving the practice exercise, here are some additional questions for which will help you revise all the concepts you have learnt in this session. Download the jupyter notebook provided below and get started:

Given below are the solutions to the ab0ve questions, download the notebook given below and take a look at the solution:

Now let us test our newly acquired python skills on some practice questions (**un-graded**)

Download the Python file given below; it includes an exercise to test your understanding of the concepts learnt in this session:

Based on your answers obtained in the notebook, attempt the following quiz:

#### Total Orders

Qn: Count the total number of orders [Orders include both processed and returned orders].

- 63

- 66

- 126

- 129

Ans: D. `len(processed_orders) + len(returned_orders)`

#### The Silver Order

Qn: In the total orders, identify the 50th order [Note: Assume the order IDs are being generated consecutively].

- 1152

- 1099

- 1154

- 1100

Ans: B *In order to identify the 50th order, you need to have the list of orders first; then, since it is mentioned that the order IDs are being generated consecutively, it is essential to sort the orders list. Finally, you have to identify the 50th order; it would be at index 49 since indexing starts from 0.*

```python
orders = processed_orders + returned_orders
orders.sort()
orders[49]
```

#### Was the Order Good Enough?

Qn: Is the 50th order a returned order or a processed order?

- Returned order

- Processed order

Ans: A. *To check whether an element is present in a list, you need to use the membership operator.*

`1099 in processed_orders`

#### 

#### Last Good Order!

Qn: What is the last order ID processed? [Note: Assume the order IDs are being generated consecutively]

- 1050

- 1178

- 1124

- 1177

Ans: B. *To identify the last processed order, the first step is to sort the list; then, using the negative indexing concept and passing index as -1, you can get the last element in the list.*

```python
processed_orders.sort()
processed_orders[-1]
```

#### 

#### Fantastic Four

Qn: Identify the first four orders that were processed. [Note: Assume the order IDs are being generated consecutively]

- 1152, 1154, 1155, 1156

- 1051, 1152, 1153, 1154

- 1050, 1051, 1052, 1054

- 1050, 1051, 1052, 1053

Ans: C. *In order to find the first four processed orders, you first need to sort the elements in the processed order; then, using the slicing concept, you have to pass the start and end indexes based on the element you require.*

`processed_orders[0:4]`
