
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- exercise
/*
Extract a list containing information about all managers’ employee number,
first and last name, department number, and hire date. 
*/

-- solution

SELECT 
    e.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    employees e
        INNER JOIN
    dept_manager_dup m ON e.emp_no = m.emp_no
ORDER BY e.emp_no;