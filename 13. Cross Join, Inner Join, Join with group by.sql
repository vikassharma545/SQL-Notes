-- CROSS JOIN, INNER JOIN, INNER JOIN BY GROUP BY

show databases;

use mydb;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

DESC customers;
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

DESC orders;
 
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

-- CROSS JOIN

SELECT * FROM CUSTOMERS, ORDERS; -- > it combine every row data1 with every row of data2

-- INNER JOIN

SELECT 
    *
FROM
    CUSTOMERS
        JOIN
    ORDERS ON ORDERS.customer_id = CUSTOMERS.id;
    
SELECT 
	*
FROM
	ORDERS
		JOIN
	CUSTOMERS ON CUSTOMERS.id=ORDERS.customer_id;

-- join with group by

SELECT 
    first_name, last_name, SUM(amount)
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id
GROUP BY first_name , last_name;
