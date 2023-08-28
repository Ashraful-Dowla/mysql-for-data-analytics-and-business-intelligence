
USE employees;

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
	SELECT 
		*
	FROM
		employees
	LIMIT 100;
END$$
DELIMITER ;

call employees.select_employees();

call select_employees();

-- exercise
/*
Create a procedure that will provide the average salary of all employees.
Then, call the procedure.
*/
-- solution
DELIMITER $$
CREATE PROCEDURE employee_avg_salary()
BEGIN
	SELECT 
		AVG(salary) AS salary
	FROM
		salaries;
END$$
DELIMITER ;

call employees.employee_avg_salary();

DROP PROCEDURE employees.select_employees;
