--  LEFT JOIN
-- ===========

use mydb;
show tables;

SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id;
    
SELECT 
    *
FROM
    orders
        LEFT JOIN
    customers ON customers.id = orders.customer_id;
    
    
-- RIGHT JOIN
-- =========


SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        RIGHT JOIN
    orders ON orders.customer_id = customers.id;
    
SELECT 
    *
FROM
    orders
        RIGHT JOIN
    customers ON customers.id = orders.customer_id;
    
-- Group by left or right join

SELECT 
    first_name, last_name, IFNULL(amount, 0) as Expense
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id;

    
