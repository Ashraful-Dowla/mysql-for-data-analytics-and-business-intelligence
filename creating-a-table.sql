
CREATE TABLE Sales (
    purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

-- exercise
/*
Create the “customers” table in the “sales” database. 
Let it contain the following 5 columns: customer_id, first_name, last_name, email_address, 
and number_of_complaints.
Let the data types of customer_id and number_of_complaints be integer,
 while the data types of all other columns be VARCHAR of 255.
*/

-- solution
CREATE TABLE Customers (
    customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT
);