
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no DESC;

DELETE FROM departments_dup;

ROLLBACK;

-- exercise 
/*
Remove the department number 10 record from the “departments” table.
*/

DELETE FROM departments 
WHERE
    dept_no = 'd010';

SELECT 
    *
FROM
    departments;