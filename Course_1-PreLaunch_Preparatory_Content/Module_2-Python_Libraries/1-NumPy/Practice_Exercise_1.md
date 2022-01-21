# Practice Exercise I

The following Python file consists of certain questions based on the concepts that you learnt in this session. You are expected to code in the Jupyter Notebook provided below to find correct solutions to the following questions.

#### Array Operations

Qn: How many different products are sold by the company in total?

- 99

- 100

- 101

- 102

Ans: D. _Since the lists have the details of all the products, you can find the number of products sold by calculating the number of elements in the list._

Qn: How many items were sold in total?

- 460

- 490

- 500

- 520

Ans: B. _The total number of items sold for each product will be the sum of the elements in the list ‘number’._

Qn: What is the average price of the products sold by the e-commerce company?

- 139

- 151

- 142

- 128

Ans: A. _The average price of products will be the mean of the elements in the list ‘price’.  
Syntax: price.mean() [For this command, the list has to be converted to array first]_

Qn: What is the price of the costliest item sold?

- 225

- 310

- 280

- 285

Ans: D. _The maximum value in the list ‘price’ will give you the price of the costliest product._

Qn: What is the total revenue of the company? [Revenue = Price*Quantity]

- 67,100

- 53,900

- 45,300

- 71,200

Ans: A. _The revenue of the company will be the sum of (price * quantity) for each product sold.  
Syntax: np.sum(price*number) [For this command, the lists have to be converted to array first.]_

Qn: Demand for the 20th product on the list is higher than that for the 50th product. [True/False]

- True  

- False

- Can't be calculated

Ans: A. _This can be checked through the conditional operator._

Qn: How many products fall under the category of expensive goods?  
An expensive good is one whose price is higher than the average price of the products sold by the company.

- 48

- 50

- 52

- 54

Ans: C. _You can subset the required entries and then take a count of them.  
Syntax: price[price > price.mean()].size  
[For this command, the list has to be converted to an array first]_
