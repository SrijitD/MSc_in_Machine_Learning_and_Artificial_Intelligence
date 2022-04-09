# Running the Hive Queries

Now that your database is ready and fully loaded, you can now proceed to write some Hive queries and gain interesting insights from the data.  

Since you are already familiar with writing Hive queries, you will be tested on this as part of your graded questions component. Hence make sure you do not terminate the cluster until you have solved all the graded questions since they will be based on the current dataset. In this segment, we will demonstrate a few complex queries, which may be useful in SQL or Hive later.

In the following query, we will use the following features:

- Common table expressions (CTEs)
- Self joins

**CTE**  
As you learned before, in the case of nested queries, you can write a query on the result of another query. An easier and more commonly used approach is using Common Table Expressions (CTEs). CTEs enable you to create a temporary result on which you can run a further query, which is done using the ‘with’ clause. The common syntax for using CTEs is as follows:  

WITH CTE_Name  
AS  
(SELECT column_names from table)  
SELECT CTE_columns from CTE_Name

Please note that the scope of the CTEs is defined within the execution of the following SELECT (SELECT/INSERT/DELETE/CREATE VIEW) statement.

You can find additional examples [here](https://cwiki.apache.org/confluence/display/Hive/Common+Table+Expression).

Let’s look at a few examples.

```sql
WITH customer_brands AS
(SELECT msisdn, brand_name, model_name FROM device_stg)
SELECT msisdn, brand_name FROM customer_brands LIMIT 10;
```

The above code will give the following output

![Output 1](https://i.ibb.co/h2kkFMM/output1.png)

It is very similar to creating a view with the names of customer_brands categorized in columns by ID, brand and model.

Let’s look at another example.

```sql
WITH crm_preprocessed AS
(SELECT msisdn, UPPER(gender) as genderUpp, (YEAR(CURRENT_DATE)-year_of_birth) as age FROM crm_stg
WHERE UPPER(gender) IN ('MALE', 'FEMALE') AND YEAR(CURRENT_DATE)>year_of_birth)
SELECT genderUpp, COUNT(genderUpp) as gender_distribution FROM crm_preprocessed
GROUP BY genderUpp;
```

The output will be as follows:

![Output 2](https://i.ibb.co/xf2sNgc/output2.png)

**Self joins**

You are already familiar with the different types of JOIN statements. However, your understanding of joins has been limited to two or more tables. As the name suggests, a self-join is a Join operation that a table performs on itself. Let’s solve the following problem using these concepts.

**Question 1**

What is the weekly increase in revenue?

```sql
with weekly_sales 
as
(select week_number, sum(revenue_usd) as Weekly_Revenue from revenue_stg
group by week_number
order by week_number asc)
select succeeding_week.week_number as week_number, 
succeeding_week.Weekly_Revenue - current_week.Weekly_Revenue as revenue_increment 
from weekly_sales succeeding_week
inner join weekly_sales current_week
on succeeding_week.week_number = current_week.week_number + 1;
```

Let us look at this query in detail. Using the CTE, we have temporarily created a table called weekly_sales over which a self-join was performed to get a revenue difference between the present week and it’s succeeding week.

![Output 3](https://i.ibb.co/Y7dk9tq/output3.png)

**Output:-**

![Output 4](https://i.ibb.co/hyh1hTm/output4.png)

**Question 2**

Can you think of a way to perform analytics on different age groups? Suppose you want to create a table containing the number of customers and the most popular brand in each age group.

The first step is to join both the tables and extract each customer’s age. To do this, we will create a view with the name customer_brand.

```sql
create view customer_brand
as
select t.msisdn, (year(current_date)-year_of_birth) as age, brand_name from crm_stg t
inner join device_stg d
on t.msisdn = d.msisdn;
```

Here are the first five rows of this view will look like this:

![Output 5](https://i.ibb.co/LYRzbJF/output5.png)

Next, let’s use the UNION clause and calculate the number of customers and the most used brands in each age group.

```sql
(
select '20-30'as totalRange, count(msisdn) as num_customers, brand_name from customer_brand
where age between 20 and 30
group by brand_name
order by num_customers desc
limit 1
)
union
(
select '30-40'as totalRange, count(msisdn) as num_customers, brand_name from customer_brand
where age between 30 and 40
group by brand_name
order by num_customers desc
limit 1
)
union
(
select '40-50'as totalRange, count(msisdn) as num_customers, brand_name from customer_brand
where age between 40 and 50
group by brand_name
order by num_customers desc
limit 1
)
union
(
select '50-60'as totalRange, count(msisdn) as num_customers, brand_name from customer_brand
where age between 50 and 60
group by brand_name
order by num_customers desc
limit 1
);
```

The result of this query has been shown below:

![Output 6](https://i.ibb.co/VH5sWrP/output6.png)

The table shows us the most popular brand under each age group and their respective number of customers. Note that we have assumed a brand to be more popular if it has more customers. Using this table, we can infer that Samsung is popular among all the age groups and most of its customers lie within the age group of 30 - 40.  

With this, we have reached the end of this segment. In the next segment, you will learn about a new tool called Oozie, which allows you to combine different tools and create a data pipeline.
