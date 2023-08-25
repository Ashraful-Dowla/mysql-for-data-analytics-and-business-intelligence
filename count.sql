
SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(salary)
FROM
    salaries;

SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries;
    
SELECT 
    COUNT(*)
FROM
    salaries;
    
-- exercise
/*
How many departments are there in the “employees” database? Use the ‘dept_emp’ table to answer the question
*/

-- solution
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;