
SELECT 
    MAX(salary)
FROM
    salaries;

SELECT 
    MIN(salary)
FROM
    salaries;
    
-- exercise
/*
1. Which is the lowest employee number in the database?
2. Which is the highest employee number in the database?
*/

-- solution
#1
SELECT 
    MIN(emp_no)
FROM
    employees;
    
#2    
SELECT 
    MAX(emp_no)
FROM
    employees;