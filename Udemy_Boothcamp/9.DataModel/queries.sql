-- Relationship Basics
-- One to one relationship
-- One to Many ralationship
-- Many to Many relationship

SELECT id FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id = 1;
 
SELECT * FROM orders 
WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');

SELECT * FROM customers, orders;

SELECT * FROM customers
JOIN orders ON orders.customer_id = customers.id;
 
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON orders.customer_id = customers.id;

SELECT 
    first_name, last_name, SUM(amount) AS total
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id
GROUP BY first_name , last_name
ORDER BY total;

SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id;
  
SELECT 
    order_date, amount, first_name, last_name
FROM
    orders
        LEFT JOIN
    customers ON orders.customer_id = customers.id;

SELECT 
    first_name, 
    last_name, 
    IFNULL(SUM(amount), 0) AS money_spent
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id
GROUP BY first_name , last_name;

SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;


