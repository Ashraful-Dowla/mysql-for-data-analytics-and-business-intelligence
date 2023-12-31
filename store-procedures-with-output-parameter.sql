
USE employees;
DROP PROCEDURE IF EXISTS emp_avg_salary_out;

DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out(IN p_emp_no INTEGER, OUT p_avg_salary DECIMAL(10,2))
BEGIN
	SELECT 
		AVG(s.salary) INTO p_avg_salary
	FROM
		employees e
			JOIN
		salaries s ON e.emp_no = s.emp_no
	WHERE
		e.emp_no = p_emp_no;
END$$
DELIMITER ;

-- exercise
/*
Create a procedure called ‘emp_info’ that uses 
as parameters the first and the last name of an individual, and returns their employee number.
*/

-- solution

DROP PROCEDURE IF EXISTS emp_info;

DELIMITER $$
CREATE PROCEDURE emp_info(IN p_first_name VARCHAR(14), IN p_last_name VARCHAR(16), OUT p_emp_no INTEGER)
BEGIN
	SELECT emp_no INTO p_emp_no
    FROM employees
    WHERE first_name = p_first_name AND last_name = p_last_name;
END$$
DELIMITER ;




