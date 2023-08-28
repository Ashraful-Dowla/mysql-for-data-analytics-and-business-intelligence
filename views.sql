
SELECT 
    *
FROM
    dept_emp;
    
SELECT 
    emp_no, from_date, to_date, COUNT(emp_no) AS num
FROM
    dept_emp
GROUP BY emp_no
HAVING num > 1;

CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MIN(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;



-- exercise
/*
Create a view that will extract the average salary of all managers registered in the database. 
Round this value to the nearest cent.

If you have worked correctly, after executing the view from the “Schemas” section in Workbench, 
you should obtain the value of 67047.29.
*/
CREATE OR REPLACE VIEW v_manager_avg_salary AS
    SELECT 
        AVG(ROUND(s.salary, 2)) AS salary
    FROM
        dept_manager dm
            JOIN
        salaries s ON dm.emp_no = s.emp_no;