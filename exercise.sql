-- ----------------------- TOPIC NAME - BASIC SELECT -----------------------------
    -- dbName: Employees | tableName: employees
    -- question: List all the employees in the company
    SELECT * FROM employees;
    -- question: Concatenate the first & last name of the employees into a new column
    SELECT CONCAT(first_name, ' ', last_name) AS "Name" FROM employees;

    -- dbName: Employees | tableName: departments
    -- question: How many departments are there in the company ?
    SELECT COUNT(dept_no) FROM departments;

    -- dbName: Employees | tableName: salaries
    -- question: How many times has employee 1001 had a raise ?
    SELECT COUNT(emp_no) - 1 FROM salaries WHERE emp_no = 10001;

    -- dbName: Employees | tableName: titles
    -- question: What title does 10006 have ?
    SELECT title FROM titles WHERE emp_no = 10006;
    -- question: What title does 10005 have ?
    SELECT title FROM titles WHERE emp_no = 10005 ORDER BY from_date DESC LIMIT 1;

--
-- ----------------------- TOPIC NAME - FILTERING -----------------------------
    -- dbName: Employees | tableName: employees
    -- question: List all the female employees
    SELECT * FROM employees WHERE gender = 'F';

    -- dbName: Store | tableName: customers
    -- question: How many female customers do we have from the state of Oregon (OR) and New York (NY)?
    SELECT COUNT(firstName) FROM customers WHERE gender = 'F' AND (state = 'OR' OR state = 'NY');
    -- question: How many customers aren't 55 ?
    SELECT COUNT(firstName) FROM customers WHERE NOT age = 55

--
-- ----------------------- TOPIC NAME - AGGREGATE FUNCTIONS -----------------------
    -- dbName: Employees | tableName: salaries
    -- question: What is the highest salary paid to an employee ?
    SELECT MAX(salary) FROM salaries
    -- question: What is the total amount of salary paid to the employess ?
    SELECT SUM(salary) FROM salaries
    -- question: What is the average salary of the employees ?
    SELECT AVG(salary) FROM salaries;

    -- dbName: Employees | tableName: employees
    -- question: What is the birth date of the youngest person in the company?
    SELECT MAX(birth_date) FROM employees;

    -- dbName: France | tableName: towns
    -- question: How many towns are there in france?
    SELECT COUNT(id) FROM towns;

    -- dbName: World | tableName: countrylanguage
    -- question: How many official languages are there?
    SELECT COUNT(countrycode) FROM countrylanguage WHERE isofficial = true;

    -- dbName: World | tableName: country
    -- question: What is the average life expectancy in the world?
    SELECT AVG(lifeexpectancy) FROM country;

    -- dbName: World | tableName: city
    -- question: What is the average population for cities in the netherlands?
    SELECT AVG(population) FROM city WHERE countrycode = 'NLD';

--
-- ----------------------- TOPIC NAME - COMPARISON OPERATORS -----------------------
    -- dbName: Store | tableName: customers
    -- question: How many female customers do we have from the state of Oregon (OR)?
    SELECT COUNT(firstName) FROM customers WHERE gender = 'F' AND state = 'OR';
    -- question: Who over the age of 44 has an income of 100 000 or more? (excluding 44)
    SELECT * FROM customers WHERE age > 44 AND income >= 100000;
    -- question: Who between the ages of 30 and 50 has an income less than 50 000? (include 30 and 50 in the results)
    SELECT * FROM customers WHERE age >= 30 AND AGE <= 50 AND income < 50000;
    -- question: What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
    SELECT AVG(income) FROM customers WHERE age > 20 AND age < 50;

--
-- ----------------------- TOPIC NAME - OPERATOR PRECEDENCE -----------------------
    -- dbName: Store | tableName: customers
    -- question: Select people either under 30 or over 50 with an income above 50000, include people that are 50 that are from either Japan or Australia
    SELECT * FROM customers WHERE income > 50000 AND (age < 30 OR age >= 50) AND (country = 'Japan' OR country = 'Australia');

    -- dbName: Store | tableName: orders
    -- question: What was our total sales in June of 2004 for orders over 100 dollars?
    SELECT SUM(totalamount) FROM orders WHERE orderdate >= '2004-06-01' AND orderdate <='2004-06-30' AND totalamount > 100;

--
-- ----------------------- TOPIC NAME - NULL VALUES -----------------------
    -- dbName: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0 | tableName: student
    -- question: Assuming a students minimum age for the class is 15, what is the average age of a student?
    SELECT AVG(COALESCE(age, 15)) FROM "Student";
    -- question: Replace all empty first or last names with a default?
    SELECT id, COALESCE(name, 'fallback') AS newName, COALESCE(lastName, 'lastName') AS newLastName, age FROM "Student";

--
-- ----------------------- TOPIC NAME - 3 VALUED LOGIC -----------------------
    -- dbName: Store | tableName: customers
    -- question: adjust the following query to display the null values as "No Address"
    -- SELECT address2 FROM customers
    SELECT COALESCE(address2, 'No Address') FROM customers;
    -- question: Fix the following query to apply proper 3VL
    -- SELECT FROM customers WHERE COALESCE(address2, NULL) IS NOT NULL;
    SELECT * FROM customers WHERE address2 IS NOT NULL;
    -- question: Fix the following query to apply proper 3VL
    -- SELECT COALESCE(lastName, 'Empty'), * FROM customers WHERE (age = NULL);
    SELECT COALESCE(lastName, 'Empty'), * FROM customers WHERE (age IS NULL);

--
-- ----------------------- TOPIC NAME - BETWEEN OPERATOR -----------------------
    -- dbName: Store | tableName: customers
    -- question: Who between the ages of 30 and 50 has an income less than 50 000? (include 30 and 50 in the results)
    SELECT * FROM customers WHERE age BETWEEN 30 AND 50 AND income < 50000;
    -- question: What is the average income between the ages of 20 and 50? (Including 20 and 50)
    SELECT AVG(income) FROM customers WHERE age BETWEEN 20 AND 50;

--
-- ----------------------- TOPIC NAME - IN OPERATOR -----------------------
    -- dbName: Store | tableName: orders
    -- question: How many orders were made by customer 7888, 1082, 12808, 9623
    SELECT COUNT(orderid) FROM orders WHERE customerid IN (7888, 1082, 12808, 9623);

    -- dbName: World | tableName: city
    -- question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
    SELECT COUNT(id) FROM city WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht');

--
-- ----------------------- TOPIC NAME - LIKE OPERATOR -----------------------
    -- dbName: Employees | tableName: employees
    -- question: Find the age of all employees who's name starts with M. (Sample output: https://imgur.com/vXs4093)
    -- Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
    -- SELECT ..., EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees;
    SELECT emp_no, first_name, EXTRACT (YEAR FROM AGE(birth_date)) AS "age" FROM employees WHERE first_name ILIKE 'M%';
    -- question: How many people's name start with A and end with R?
    SELECT COUNT(emp_no) FROM employees WHERE first_name ILIKE 'A%R';

    -- dbName: Store | tableName: customers
    -- question: How many people's zipcode have a 2 in it?
    SELECT COUNT(customerid) FROM customers WHERE zip::TEXT LIKE '%2%';
    -- question: How many people's zipcode start with 2 with the 3rd character being a 1.
    SELECT COUNT(customerid) FROM customers WHERE zip::TEXT LIKE '2_1%';
    -- question: Which states have phone numbers starting with 302? (Replace null values with "No State". Expected output: https://imgur.com/AVe6G4c)
    SELECT COALESCE(state, 'No State') AS "State" FROM customers WHERE phone::TEXT LIKE '302%';

--
