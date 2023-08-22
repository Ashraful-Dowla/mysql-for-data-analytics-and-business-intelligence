
DROP TABLE sales;

CREATE TABLE sales (
    purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (purchase_number)
);

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

-- sales_ibfk_1 taken from DDL of the sales table
ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;


-- exercise
/*
Looking to the next few lectures of the course, drop all tables from the “Sales” database in the following order: 
first drop “sales”, then “customers”, “items”, and finally “companies”.
*/

-- solution 
DROP TABLE sales;
DROP TABLE customers;
DROP TABLE items;
DROP TABLE companies;