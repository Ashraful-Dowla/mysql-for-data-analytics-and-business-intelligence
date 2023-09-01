/*
Create an SQL stored procedure that will allow you to obtain the average male and female salary per 
department within a certain salary range. 
Let this range be defined by two values the user can insert when calling the procedure.
Finally, visualize the obtained result-set in Tableau as a double bar chart. 
*/

DROP PROCEDURE IF EXISTS filter_salary;

DELIMITER $$
CREATE PROCEDURE filter_salary(IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
		SELECT 
		d.dept_name, e.gender, ROUND(AVG(s.salary), 2) AS avg_salary
	FROM
		t_employees e
			JOIN
		t_salaries s ON e.emp_no = s.emp_no
			JOIN
		t_dept_emp de ON e.emp_no = de.emp_no
			JOIN
		t_departments d ON de.dept_no = d.dept_no
	WHERE
		s.salary >= p_min_salary AND s.salary <= p_max_salary
	GROUP BY d.dept_no , e.gender
	ORDER BY d.dept_no;
END$$
DELIMITER ;

call employees_mod.filter_salary(50000,90000);

	

