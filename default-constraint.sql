DROP TABLE customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers(first_name, last_name, gender)
VALUES('Peter', 'Figaro','M'); 

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;


-- exercise
/*
Recreate the “companies” table
(company_id – VARCHAR of 255,
company_name – VARCHAR of 255,
headquarters_phone_number – integer of 12),

This time setting the “headquarters phone number” to be the unique key, 
and default value of the “companies” to be “X”.
After you execute the code properly, drop the “companies” table.
*/

-- solution

CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
    PRIMARY KEY (company_id)
);

ALTER TABLE companies
ADD UNIQUE KEY(headquarters_phone_number),
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) DEFAULT 'X';

DROP TABLE companies;


