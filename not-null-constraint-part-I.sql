
CREATE TABLE companies (
    company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (company_id)
);

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

INSERT INTO companies(headquarters_phone_number, company_name)
VALUES ('+122334', 'Company A');

-- exercise 
/*
Using ALTER TABLE, first add the NULL constraint to the headquarters_phone_number 
field in the “companies” table, and then drop that same constraint.
*/

-- solution

ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NOT NULL; 






