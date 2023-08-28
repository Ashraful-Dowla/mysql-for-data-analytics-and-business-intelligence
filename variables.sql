
SET @v_avg_salary = 0;
CALL employees.emp_avg_salary_out(11300, @v_avg_salary);
SELECT @v_avg_salary;

-- exercise
/*
Create a variable, called ‘v_emp_no’, where you will store the output of the procedure you created in the last exercise.
Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as a first and last name respectively.
Finally, select the obtained output.
*/

SET @v_emp_no = 0;
CALL employees.emp_info('Parto','Bamford', @v_emp_no);
SELECT @v_emp_no;