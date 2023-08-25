
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkison',
    birth_date = '1990-10-21',
    gender = 'F'
WHERE
    emp_no = 999901;
    
    
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

