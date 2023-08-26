
-- exercise 1
/*
If you currently have the ‘departments_dup’ table set up, use DROP COLUMN 
to remove the ‘dept_manager’ column from the ‘departments_dup’ table.

Then, use CHANGE COLUMN to change the ‘dept_no’ and ‘dept_name’ columns to NULL.

(If you don’t currently have the ‘departments_dup’ table set up, create it. 
Let it contain two columns: dept_no and dept_name. 
Let the data type of dept_no be CHAR of 4, and the data type of dept_name be VARCHAR of 40. 
Both columns are allowed to have null values. 
Finally, insert the information contained in ‘departments’ into ‘departments_dup’.)

Then, insert a record whose department name is “Public Relations”.

Delete the record(s) related to department number two.

Insert two new records in the “departments_dup” table. Let their values in the “dept_no” column be “d010” and “d011”.
*/

-- solution 1

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

ALTER TABLE departments_dup
DROP COLUMN dept_manager,
MODIFY COLUMN dept_no CHAR(4) NULL,
MODIFY COLUMN dept_name VARCHAR(255) NULL;

INSERT INTO departments_dup(dept_name)
VALUES('Public Relations');

DELETE FROM departments_dup 
WHERE
    dept_no = 'd0002';

INSERT INTO departments_dup(dept_no)
VALUES ('d010'),('d011');

-- exercise 2
/*
solution is the question
*/

-- solution 2

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    from_date DATE NOT NULL,
    to_date DATE NULL
);

INSERT INTO dept_manager_dup
SELECT * FROM dept_manager;

INSERT INTO dept_manager_dup (emp_no, from_date)
VALUES(999904, '2017-01-01'),
(999905, '2017-01-01'),
(999906, '2017-01-01'),
(999907, '2017-01-01');

DELETE FROM dept_manager_dup 
WHERE
    dept_no = 'd001';
    
SELECT 
    *
FROM
    dept_manager_dup;


