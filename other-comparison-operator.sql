
SELECT 
    *
FROM
    employees
WHERE
    first_name <> 'Mark';
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date <= '1985-02-01';
    
-- exercise
/*
Retrieve a list with data about all female employees who were hired in the year 2000 or after.
Hint: If you solve the task correctly, SQL should return 7 rows.
Extract a list with all employees’ salaries higher than $150,000 per annum.
*/

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';

SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;