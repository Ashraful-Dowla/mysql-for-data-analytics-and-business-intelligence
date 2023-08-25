
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no
LIMIT 10;

SET autocommit = 0;

COMMIT;

UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';

ROLLBACK;

COMMIT;

-- exercise
/*
Change the “Business Analysis” department name to “Data Analysis”.
Hint: To solve this exercise, use the “departments” table.
*/

-- solution
SELECT 
    *
FROM
    departments
ORDER BY dept_no DESC;

UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';
