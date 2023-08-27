SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no)
ORDER BY e.emp_no;

-- exercise
/*
Select the entire information for all employees whose job title is “Assistant Engineer”. 
Hint: To solve this exercise, use the 'employees' table.
*/

-- solution

SELECT 
    e.*
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND t.title = 'Assistant Engineer');

SELECT 
    e.*
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            t.emp_no
        FROM
            titles t
        WHERE
            t.title = 'Assistant Engineer');


-- compare two results

(SELECT 
    e.*
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND t.title = 'Assistant Engineer')) UNION (SELECT 
    e.*
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            t.emp_no
        FROM
            titles t
        WHERE
            t.title = 'Assistant Engineer'));





