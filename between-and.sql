

SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';
    
-- exercise
/*
Select all the information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars per year.
Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.
Select the names of all departments with numbers between ‘d003’ and ‘d006’.
*/

-- solution

SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 60000 AND 70000;

SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN 10004 AND 10012;

SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
