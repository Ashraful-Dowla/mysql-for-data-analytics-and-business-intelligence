
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';

-- exercise 
/*
Retrieve a list with all female employees whose first name is Kellie. 
*/

-- solution 
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';