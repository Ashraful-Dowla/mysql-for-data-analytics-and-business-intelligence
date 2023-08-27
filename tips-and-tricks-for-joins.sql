
SELECT 
    d.dept_name, AVG(s.salary) AS average_salary
FROM
    departments d
        JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING average_salary > 60000
ORDER BY average_salary DESC;

-- exercise 
/*
How many male and how many female managers do we have in the ‘employees’ database?
*/

-- solution
SELECT 
    e.gender, COUNT(e.emp_no)
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title = 'Manager'
GROUP BY gender;

SELECT 
    e.gender, COUNT(dm.emp_no)
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;
