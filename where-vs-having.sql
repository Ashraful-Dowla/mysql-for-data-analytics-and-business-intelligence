
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING names_count < 200
ORDER BY first_name;

-- exercise
/*
Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.
Hint: To solve this exercise, use the “dept_emp” table
*/

-- solution
SELECT 
    emp_no, COUNT(emp_no) AS contract
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING contract > 1
ORDER BY emp_no;

SELECT 
    emp_no, COUNT(from_date) AS contract
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING contract > 1
ORDER BY emp_no;

