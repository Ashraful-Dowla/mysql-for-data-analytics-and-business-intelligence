
SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

SELECT 
    *
FROM
    employees
ORDER BY first_name , last_name ASC;


-- exercise
/*
select all data from the “employees” table, ordering it by “hire date” in descending order.
*/

-- solution

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;