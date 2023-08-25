
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING names_count > 250
ORDER BY first_name;

-- exercise
/*
Select all employees whose average salary is higher than $120,000 per annum.
Hint: You should obtain 101 records.
*/

-- solution

SELECT 
    emp_no, AVG(salary) AS avg_salary
FROM
    salaries
GROUP BY emp_no
HAVING avg_salary > 120000
ORDER BY emp_no;

