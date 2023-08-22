
CREATE TABLE Sales (
    purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (purchase_number)
);

-- exercise
/*
Drop the “customers” table and re-create it using the following code:
CREATE TABLE customers                                                            
(
    customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
primary key (customer_id)
);
Then, create the “items” table
(columns - data types:
item_id – VARCHAR of 255,
item – VARCHAR of 255,
unit_price – NUMERIC of 10 and 2,
company­_id – VARCHAR of 255),
and the “companies” table
(company_id – VARCHAR of 255,
company_name – VARCHAR of 255,
headquarters_phone_number – integer of 12). 
*/

-- solution 
DROP TABLE customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

CREATE TABLE items (
    item_id VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10 , 2 ),
    company_id VARCHAR(255),
    PRIMARY KEY (item_id)
);

CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
    PRIMARY KEY (company_id)
);

