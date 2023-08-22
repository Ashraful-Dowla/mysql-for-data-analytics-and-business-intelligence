
-- exercise
/*
Use the same SELECT statement structure as the one shown in the lecture 
to select all records from the “sales” table. Do it twice – once specifying 
the name of the database explicitly in the SELECT statement, and once, without that specification.
*/

-- solution
USE Sales;
SELECT * FROM sales;

SELECT * FROM Sales.sales;

