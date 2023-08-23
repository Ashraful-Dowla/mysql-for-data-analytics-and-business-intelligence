
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;

-- exercise
/*
Select the names of all departments whose department number value is not null.
*/

-- solution
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;