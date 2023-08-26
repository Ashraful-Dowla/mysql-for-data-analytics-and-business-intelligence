
-- exercise
/*
Extract a list containing information about all managers’ 
employee number, first and last name, department number, and hire date. 
Use the old type of join syntax to obtain the result.
*/
-- solution

#old
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees e,
    dept_manager dm
WHERE
    e.emp_no = dm.emp_no;

#new
SELECT 
    e.emp_no, e.first_name, e.last_name, m.dept_no, m.from_date
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
ORDER BY m.dept_no DESC , e.emp_no;