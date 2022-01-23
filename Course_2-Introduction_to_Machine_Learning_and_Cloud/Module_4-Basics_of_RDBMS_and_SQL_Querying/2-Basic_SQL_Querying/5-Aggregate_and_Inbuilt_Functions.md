# Aggregate and Inbuilt Functions

The aggregate and inbuilt functions play a crucial role in analysing the data or extracting relevant insights. Let’s learn some basic functions from Vishwa before we discuss the code demonstration.    

**VIDEO**    

In this video, Vishwa discussed the importance of aggregation, grouping and inbuilt functions.    

The aggregation functions are as follows:

1. **COUNT()**: Counts the total number of records specified by the given condition
2. **SUM()**: Returns the sum of all the non-NULL values
3. **AVG()**: Returns the average of all the non-NULL values
4. **MIN()**: Returns the minimum of the specified values (NULL is not included)
5. **MAX()**: Returns the maximum of the specified values (NULL is not included)

The data is grouped using the  **GROUP BY clause**. It groups rows that have the same values based on the specified condition and performs operations on the individual groups. Besides this, Vishwa also gave us a few examples of inbuilt functions, such as  **UPPER** and  **LOWER**  clauses (converting a string to uppercase and lowercase, respectively). We will cover strings and other functions in more detail in the coming segment. Let’s understand how to use these concepts in our case study to gain some more insights.    

**VIDEO**    

In the next video, you will learn a new clause known as the ‘**HAVING**’ clause.

**VIDEO**    

Qn: Find the number of orders that have been sold at a loss.    
Ans: `select count(Ord_id) as Loss_count from market_fact_full where Profit < 0;`

Qn: Find the total number of customers from Bihar in each segment.    
Ans: `select count(Customer_Name) as  Segment_Wise_Customers, Customer_Segment from cust_dimen where State= 'Bihar' group by Customer_Segment;`

In this video, you learned how to use the GROUP BY and the HAVING clause. Let’s revise these two clauses. The syntax is as follows:    

    SELECT column_names
        FROM table_name
        WHERE condition
        GROUP BY column_names
        HAVING condition

![SQL_Aggregation_Examples](https://i.ibb.co/TtQ7b1w/SQL-Aggregation-Examples.png)

In the next segment, we will add another condition known as the ORDER clause. As the name suggests, the ORDER clause allows us to sort values either numerically or alphabetically. Let’s see how.    

#### Aggregate Functions

Qn: Which of the following are not aggregate functions in MySQL?

- min()
- avg()
- median()
- mode()

Ans: C & D. _MySQL does not have built-in functions for calculating the median._    

#### Inbuilt Functions in SQL

Qn: Suppose you are given a table named 'Customers'. There are two columns in the table: 'firstName' and 'lastname'. Suppose one of the entries in the table is as follows:

![SQL_Inbuilt_Functions_Question_Sample_Table](https://i.ibb.co/DzDgN5F/SQL-Inbuilt-Functions-Question-Sample-Table.png)

What will the output of the following set of commands?

    select concat (reverse(firstName) , '  ', upper(lastName))
        from Customers
        where customer_id= ’C-05’;

- Diane MURPHY
- Enaid Murphy
- enaiD MURPHY
- enaiDMURPHY

Ans: C. _reverse() reverses the string and upper() converts the string to upper case._    

#### Math Functions

- **abs():**  Returns the absolute value of a number.    
- **ceil():**  Returns the smallest integer value greater than or equal to the input number.    
- **floor():**  Returns the largest integer value not greater than the argument.    
- **round():**  Rounds a number to a specified number of decimal places.    
- **rand():**  Returns a random floating-point value between 0 and 1.    
- **pow(a, b):**  Returns the value of a^b.    

Qn: Given the aforementioned math functions used in MySQL, what will this query return?  

    select ceil(rand() * 6);

- A random floating-point value from 0 to 6.
- A random floating-point value from 1 to 6.
- A random integer from 0 to 6.
- A random integer from 1 to 6.

Ans: The expression rand()* 6 will give the value between 0 to 6 and then the ceil() function will result into the following values:

- if rand()* 6 =0, the ceil() will result into 0.
- if 0< rand()* 6 < =1, the ceil() will result into 1.  
- if 1< rand()* 6 < =2, the ceil() will result into 2.  
- if 2< rand()* 6 < =3, the ceil() will result into 3.  
- if 3< rand()* 6 < =4, the ceil() will result into 4.  
- if 4< rand()* 6 <= 5, the ceil() will result into 5.  
- if 5< rand()* 6 < =6, the ceil() will result into 6.

#### Inbuilt Functions in SQL

Qn: What will be the output of the following query?

    select reverse(substring('Sachin Tendulkar', -7, 3));

- ndu
- udn
- Te
- eT
- Error

Ans: "udn". _The second parameter (-7) implies that you need to start from the seventh character as you traverse the string from the right. This is the character n. Now, the third parameter (3) means that you need to select n and two characters after that. This results in the substring ndu. Finally, applying the reverse function on this substring results in udn._    
