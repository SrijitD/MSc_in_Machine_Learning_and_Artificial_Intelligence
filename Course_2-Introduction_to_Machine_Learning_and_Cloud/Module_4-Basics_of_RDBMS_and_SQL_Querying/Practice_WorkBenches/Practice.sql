use world;
show tables;

select * from countrylanguage;

-- Task1 : 
-- Table: countrylanguage (world)
-- Targets: Record Filteration
-- Objective: Find the details of languages which are spoken by 80 to 90 percent of people
-- and are only official language;


select * from countrylanguage 
	where isofficial='T' and percentage between 80 and 90;
-- rajan 

-- Task2 :
-- Table: Country (world)
-- Targets : Grouping+Aggregation
-- Objective: Find the Name and Total SurfaceArea of Each Continent  sort by Total Surface Area
-- in Descending Order


select continent, sum(surfacearea) as totalArea 
	from country 
	group by continent order by totalArea desc;


-- Task3:
-- Table: city(world)
-- Targets : subqueries
-- Objective: Find the complete details of most populated city from INDIA.
-- note: please do not use sorting(order by)
select * from city;

select * from city 
	where population= (select max(population) from city where countrycode='ind');

-- Task4:
-- Table: employees (employees) 
-- Targets: Data querying (analytics)
-- Objective: Find First_Name, and Count of People sharing the same first name,
-- sort the data by count in descending order
-- discard all those records where the count is < 250

use employees;
select* from employees;

select first_name, count(first_name) as count from employees group by first_name having count > 250 order by count desc, first_name asc;


-- Task 5:
-- Table: dept_manager, departments (employees)
-- Targets: Joins
-- Objective: Display dept_no, emp_no, dept_name from the given tables .
--  sort the data by dept no in asc order

select d.dept_no, emp_no, dept_name
	from departments d, dept_manager dm
	where d.dept_no = dm.dept_no
    order by d.dept_no;
    
    
-- Task6 
-- Table : city (world)
-- Targets: Advance SQL Functions(Analytics) 
-- Objective: Rank Cities based on Population (in descending order) for Each Country.

use world;
select * from city;

select *, 
	dense_rank() 
		over (partition by CountryCode 
			order by Population) as 'rank' 
	from city 
    order by 'rank';
