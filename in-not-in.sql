
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');
    
-- exercise 1
/*
Use the IN operator to select all individuals from the “employees” table,
whose first name is either “Denis”, or “Elvis”.
*/

-- solution 1

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');

-- exercise 2
/*
Extract all records from the ‘employees’ table, 
aside from those with employees named John, Mark, or Jacob.
*/

-- solution 2
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');