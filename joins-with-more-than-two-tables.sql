
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    departments d ON dm.dept_no = d.dept_no;

-- exercise
/*
Select all managers’ first and last name, hire date, job title, start date, and department name.
*/
-- solution
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    dm.from_date,
    d.dept_name
FROM
    titles t
        JOIN
    employees e ON t.emp_no = e.emp_no
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    departments d ON dm.dept_no = d.dept_no
WHERE
    t.title = 'Manager'
ORDER BY e.emp_no;



