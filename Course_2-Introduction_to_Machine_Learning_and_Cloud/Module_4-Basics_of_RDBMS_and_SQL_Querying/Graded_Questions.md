# Graded Questions

In the previous sessions, you learnt that SQL is a querying language, which helps in drawing useful insights from the database. Now, let’s learn more about SQL with the help of a real-world example.

Suppose you are an analyst working in a company that sells toy replicas of branded vehicles such as cars, bikes, trucks, buses, etc.

First, let’s understand the process and structure of the database. You need to work with the following three sections in this database:

1. Employee section
2. Customer section
3. Product section

Download details about the attributes for each table from the file attached below.

1. **Employee Section:**  This section is divided into the following two tables:

   1. **employees**: This table contains information about a company’s employees. Each entry in this table is identified uniquely by the ‘**employeeNumber**’, which is the primary key of this table.

   2. **offices**: This contains information about the company’s offices that are located around the world. Each office is uniquely identified by the ‘**officeCode**’, which is the primary key of this table. Each employee must have only one office against their ID, in which they have to work.

2. **Customer Section:**  This section contains the following four tables:

   1. **customers**: This table contains information about the customers who buy the models from the company in bulk. They are retailers or shopkeepers who own firms or shops; they are not the final consumers. Each customer is uniquely identified by the ‘**customerNumber**’, which is the primary key of this table. A particular customer is either assigned an employee or not assigned any employee. The assigned employee is identified by the ‘**salesRepEmployeeNumber**’ column in this table. Multiple customers can be assigned to an employee.
   2. **orders**: This table contains information about the orders placed by the customers. Each order is uniquely identified by its ‘**orderNumber**’, which is the primary key of this table. Multiple orders can be placed by a particular customer, but each order should have a unique ‘orderNumber’.
   3. **orderdetails**: This table also contains details about the orders placed by the customers. However, both the '**orderNumber**’ and ‘**productCode**’ are part of the composite primary key here.
   4. **payments**: This table contains information about the payments made by the customers after placing the orders. Here, you will see a column named ‘**checkNumber**’, which refers to the unique number of the check through which the customer (customerNumber) has made the payment. Under this table, ‘checkNumber’ is the primary key.

3. **Product Section:**  This section has the following two tables:

   1. **products**: The products table contains information about the different products that are sold by the company. Each product is uniquely identified by the '**productCode**', which is the primary key of this table.
   2. **productlines**: This table is a broad categorization of the type of toy models that are sold by the company, including vintage cars, motorcycles, trains, ships etc. Each product in the ‘products’ table must have a single product line.

So, you will have the following eight tables:

1. employees
2. offices
3. customers
4. orders
5. orderdetails
6. payments
7. products
8. productlines

You need to prepare the entity relational diagram (ERD) for this case study after understanding the descriptions of the above-mentioned tables.

You have already been provided with the data set, so you do not have to create any table in the database. You are mainly required to write SQL queries to answer the graded questions.

You will find a blank MySQL workbench with inline comments attached below.

You must code each step that has been mentioned in the commented workbench. The questions are related to each other, so if you do not follow the steps diligently, then you will not be able to answer some of the following questions.

#### RDBMS & ERDs

Qn: The first step of every RDBMS activity is to create a star schema for a particular data set. You have a total of eight tables as described earlier, and it is essential for you to create an entity relational diagram (ERD) in order to relate the various tables. Based on the problem statement, select the most appropriate relation among ‘employees’, ‘customers’, ‘orders’ and ‘offices’.

- The ‘customers’ table has only one to many/zero relation with the 'orders' and 'employees' tables. Also, the 'offices' table has only one to many/zero relation with the 'employees' table.
- The 'customers' table has only one to many/zero relation with the 'orders' table. The 'employees' table has one/zero to many/zero relation with the 'customers' table. Also, the 'offices' table has only one to many/zero relation with the 'employees' table.
- The 'orders' table has only one to many/zero relation with the 'customers' table. The 'employees' table has one/zero to many/zero relation with the 'customers' table. Also, the 'employees' table has only one to many/zero relation with the 'offices' table.
- The 'orders' table has only one to many/zero relation with the 'customers' table. The 'employees' table has one/zero to many/zero relation with the 'customers' table. Also, the 'offices' table has only one to many/zero relation with the 'employees' table.

Ans: B. _Based on the problem statement the 'customers' table has only one to many/zero relation with the 'orders' table. Multiple customers may be assigned to a particular employee; hence, the 'employees' table has one/zero to many/zero relation with the 'customers' table. Only a single office is assigned to a particular employee; hence, the 'offices' table has only one to many/zero relation with the 'employees' table._

#### Self Referential Characteristics

Qn: Based on the descriptions of columns of each table given in the problem statement, select the table name that has a self-referential relationship.

- customers
- orders
- employees
- offices

Ans: C. *Since the 'employees' table has the ‘reportsTo’ column in it, it has a self-referential relationship.*

#### ERDs

Qn: As you can see in the figure below, one/zero to many/zero relation exists between the 'employees' and 'customers' tables,  identify the foreign key in the 'customers' table that relates this table with the 'employees' table.

![ERD-Employee-Customer-Product](https://i.ibb.co/f95wP75/ERD-Employee-Customer-Product.png)

- contactLastName

- contactFirstname

- country

- salesRepEmployeeNumber

Ans: D. *'salesRepEmployeeNumber' is the foreign key in the 'customers' table, which acts as a unique identification for a particular employee in the 'employees' table.*

#### SQL Commands

Match the following actions with the appropriate SQL commands.

| a   | Find all the employees from the ‘employees’ table | I   | ALTER  |
| --- | ------------------------------------------------- | --- | ------ |
| b   | Add information about a new employee              | II  | DROP   |
| c   | Change the structure of the employee table        | III | SELECT |
| d   | Remove the ‘employees’ table                      | IV  | INSERT |

- a-I, b-II, c-III, d-IV

- a-IV, b-III, c-II, d-I

- a-III, b-I, c-II, d-IV

- a-III, b-IV, c-I, d-II

Ans: D

#### SQL Query

Qn: Suppose you want to create a table named 'payments' in SQL with the two primary keys 'customerNumber' and 'checkNumber', as mentioned in the ERD, what will be the correct query to use?

- ```sql
  CREATE TABLE `payments` (
      `customerNumber` int(11) NOT NULL,
      `checkNumber` varchar(12) NOT NULL,
      `paymentDate` datetime DEFAULT NULL,
      `amount` decimal(12,2) DEFAULT NULL,
      PRIMARY KEY (`customerNumber`,`checkNumber`)
      CONSTRAINT `Check` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
  )
  ```

- ```sql
  CREATE TABLE `payments` (
      `customerNumber` int(11) NOT NULL,
      `checkNumber` varchar(12) NOT NULL,
      `paymentDate` datetime DEFAULT NULL,
      `amount` decimal(12,2) DEFAULT NULL,
      PRIMARY KEY (`customerNumber'),
      PRIMARY KEY ('checkNumber`)
  )
  ```

- ```sql
  CREATE TABLE `payments` (
      `customerNumber` int(11) NOT NULL,
      `checkNumber` varchar(12) NOT NULL,
      `paymentDate` datetime DEFAULT NULL,
      `amount` decimal(12,2) DEFAULT NULL,
      PRIMARY KEY (`checkNumber),
      CONSTRAINT `Check` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
  )
  ```

- ```sql
  CREATE TABLE `payments` (
      `customerNumber` int(11) NOT NULL,
      `checkNumber` varchar(12) NOT NULL,
      `paymentDate` datetime DEFAULT NULL,
      `amount` decimal(12,2) DEFAULT NULL,
      PRIMARY KEY (`checkNumber),
  )
  ```

Ans: A. *This is the correct query to create a new table with two primary keys in a table. Also, the 'customerNumber' column is defined as the foreign key in this table.*

#### Inserting the values in Tables

Qn: You need to enter the following entries in the 'customers' table to proceed further in this assignment.

(495,'Diecast Collectables','Franco','Valarie','Boston','MA','51003','USA','1188',85100),  
(496,'Kelly\'s Gift Shop','Snowden','Tony','Auckland  ','NULL','NULL','New Zealand','1612',110000)

Which of the following command can be used to enter the above two rows in the 'customers' table?

- INSERT

- UPDATE

- ALTER

- CREATE

Ans: A. *INSERT is the correct command to append the table.*

```sql
insert into customers 
    values
        (495,'Diecast Collectables','Franco','Valarie','Boston','MA','51003','USA','1188',85100),
        (496,'Kelly's Gift Shop','Snowden','Tony','Auckland ','NULL','NULL','New Zealand','1612',110000)
```

#### SQL Queries

Qn: Suppose you need to change the 'employees' table by inserting the job title 'Sales Rep' where office code is equal to 4. Which of the following queries will you use to perform this operation?

- ```sql
  modify employees
      set jobTitle = 'Sales Rep'
      where officeCode = 4;
  ```

- ```sql
  update employees
      set jobTitle = 'Sales Rep'
      where officeCode = 4;
  ```

- ```sql
  update employees
      set jobTitle = 'Sales Rep'
      where officeCode = ‘4’;
  ```

- ```sql
  modify employees
      set jobTitle = 'Sales Rep'
      where officeCode = ‘4’;
  ```

Ans: B. *This is the right query to update the job title in the 'employees' table.*

#### Deleting the Entries

Qn: Delete the entries where the ‘productLine’ column has a value that equals to ‘Boats’ from the 'productlines' table. Now, what is the number of rows the 'productlines' table contains?

- 8

- 7

- 6

- 5

Ans: B. *Let's first delete the 'boat' entry from 'productlines' and then print the rows.*

```sql
delete from productlines
    where productLine = 'Boats';
select count(*) from productlines;
```

#### Data Types Conversion

Qn: Suppose you want to convert the data type of the 'quantityOrdered' column of the 'orderdetails' table from varchar into an integer. Which of the following code will you use to convert the varchar data type into an integer?

- ```sql
  alter table orderdetails
      change quantityOrdered int;
  ```

- ```sql
  alter table orderdetails modify column quantityOrdered int;
  ```

- ```sql
  alter table orderdetails
      change quantityOrdered from varchar to int;
  ```

- ```sql
  alter table orderdetails modify column quantityOrdered from varchar to int;
  ```

Ans: B. *This is the correct query to use in order to change the datatype of any particular column.*

#### SQL Queries

Qn: You have tables named 'employees' and 'customers'. Code in the MySQL workbench that you have been provided and answer the following questions.

1. If you print the names of employees with the job title 'Sales Rep', what is the first name of the employee that appears first in this query?

2. Find the total number of employees from the ‘employees’ table. Also, alias it as 'Total_Employees'.

3. How many customers are based in Australia? Also, alias it as 'Australia_Customers'.

- Leslie, 5, 23

- Jennings, 23, 5

- Leslie, 23, 5

- Jennings, 24, 7

Ans: C. *Just code in the workbench using the ‘select’, ‘from’, ‘where’ and ‘count’ commands and you will get the required answers.*

- *Print the names of employees with the job title 'Sales Rep'. What is the first name that appears in this query?*
  
  ```sql
  select firstName, jobTitle
      from employees
      where jobTitle = 'Sales Rep';
  ```

- *Find the total number of employees from the ‘employees’ table. Also, you need to alias it as 'Total_Employees'.*
  
  ```sql
  select count(*) as Total_Employees
      from employees;
  ```

- *How many customers are based in Australia? Also, you need to alias it as 'Australia_Customers'.*
  
  ```sql
  select count(*) as Australia_Customers
      from customers
      where country = 'Australia';
  ```

You have tables named 'products' and 'orders'. Just code in the MySQL workbench that you have been provided and answer the following questions.

1. Using the 'products' table, calculate the sum of quantity in stock for the product vendor 'Red Start Diecast' and the product line 'Vintage Cars'?

2. Count the total number of orders that have not been shipped yet, from the 'orders' table.

- 22381, 303

- 8073, 23

- 22381, 23

- 8073, 303

Ans: B.

- *Using the 'products' table, the sum of quantity in stock for product vendor 'Red Start Diecast' and product line 'Vintage Cars' will be:*
  
  ```sql
  select quantityInStock, productVendor, productLine
      from products
      where productVendor = 'Red Start Diecast' and productLine = 'Vintage Cars';
  ```

- *Count the total number of orders that have not been shipped yet, from the 'orders' table.*
  
  ```sql
  select count(*)
      from orders
      where status != 'Shipped';
  ```

Qn: How many entries does the 'orderdetails' table contain for which the ‘productCode’ starts with S18 and the ‘priceEach’ is greater than 150?

- 23

- 24

- 25

- 26

Ans: D. *Use the ‘like’ command to get the required result.*

```sql
select count(*) productCode
    from orderdetails
    where productCode like 'S18%' and priceEach > 150;
```

Qn: Which of the following are the top three countries (in order) that have the maximum number of customers?

- Spain, Germany, France

- USA, Germany, France

- Germany, France, USA

- Germany, France, Spain

Ans: B. *Code in the MySQL workbench using the ‘groupby’ and ‘orderby’ commands.*

```sql
select country, count(customerNumber) as Country_Wise_Customers
    from customers
    group by country
    order by Country_Wise_Customers desc
    limit 3;
```

Qn: What is the average credit limit for Singapore from the 'customers' table?

- 67233

- 58600

- 58500

- 51700

Ans: A. *Use the ‘avg()’, ‘groupby’ command to get the correct answer.*

```sql
select country, avg(creditLimit) as credit_limit
    from customers
    where country= 'Singapore';
```

Qn: What is the total amount paid by the customer named 'Euro+ Shopping Channel'? You need to use the 'customers' and 'payments' tables to answer this question.

- 715738

- 715749

- 725750

- 725738

Ans: A. *You need to query the 'customer' table to find the customer number corresponding to the 'Euro+ Shopping Channel' and then find the sum of amount using the 'payment' table.*

- *Find the customer number using the 'customers' table.*
  
  ```sql
  select customerName, customerNumber
      from customers
      where customerName= 'Euro+ Shopping Channel';
  ```

- *Find the total amount for a particular customer using the 'payments' table.*
  
  ```sql
  select customerNumber, sum(amount) as total_amount
      from payments
      where customerNumber= '141';
  ```

Qn: Which month has received the maximum aggregate payments from the customers, along with the aggregated value of the payment of that month?

- November, 1551479

- December, 1645923

- January, 397887

- February, 503357

Ans: B. *You need to use the 'payment' table and apply the ‘sum’ function on the amount, and the  ‘month’ function to get the required month.*

```sql
select month(paymentDate) as payment_month, sum(amount) as amount_sum
    from payments
    group by payment_month
    order by amount_sum desc
```

Qn: What is the shipped date of the maximum quantity ordered for the product name '1968 Ford Mustang'?

Hint: Apply nested query in the 'products', 'orderdetails' and 'orders' tables.

- 07-12-2003

- 12-07-2003

- 09-09-2003

- 16-10-2003

Ans: C. *You need to apply a nested query in the 'products', 'orderdetails' and 'orders' tables.*

```sql
select shippedDate
    from orders 
    where orderNumber = (
        select orderNumber
            from(
                select quantityOrdered, orderNumber
                    from orderdetails 
                    where productCode = (
                        select productCode
                            from products
                            where productName = '1968 Ford Mustang'
                        )
                    ) max_order_no
            where quantityOrdered = (
                select max(quantityOrdered)
                    from orderdetails 
                    where productCode = (
                        select productCode
                            from products
                            where productName = '1968 Ford Mustang'
                        )
                )
    );
```

Qn: Multiple customers can be contacted by a single employee, as you can see in the schema below. You need to use the ‘inner join’ clause on the 'employees' and 'customers' tables.

![ERD-Employee-Customer-Product](https://i.ibb.co/f95wP75/ERD-Employee-Customer-Product.png)

After using the ‘inner join’ clause on these two tables, what is the average value of credit limit that corresponds to the customers who have been contacted by the employees from the 'Tokyo' office? Hint: you need to apply the nested query also.

- 80900

- 81900

- 82900

- 83900

Ans: D.  *You need to use  the ‘inner join’ clause on the 'customers' and 'employees' tables and apply the nested query to get the office code from the 'offices' table*

```sql
select avg(creditLimit)
    from customers c inner join employees e
    on c.salesRepEmployeeNumber = e.employeeNumber
    where officeCode = (
        select officeCode
            from offices
            where office_city = 'Tokyo'
        )
```

Qn: How will you find the name of the customer who paid the lowest amount for the product?. You need to use the ‘outer join’ clause on the 'customers' and 'payments' tables and the ‘sum’ clause on the attribute ‘amount’ to answer this question.

- Boards & Toy Co.

- Auto-Moto Classics Inc.

- Euro + Shopping Channel

- Mini Gift Distributors Ltd.

Ans: A. *You need to apply the ‘left outer join’ clause on the 'payments' and 'customers' tables and the 'sum' function to get the sum of the amount.*

```sql
select customerName, customerNumber, sum(amount) as sum_amount
    from payments p left join customers c
    using(customerNumber)
    group by customerNumber
    order by sum_amount asc
    limit 5;
```

Qn: In which office does the employee with the job title 'VP Marketing' work?

- Boston

- Tokyo

- San Francisco

- Sydney

Ans: C. *You need to apply the ‘outer join’ clause on the 'offices' and 'employees' tables.*

```sql

```
