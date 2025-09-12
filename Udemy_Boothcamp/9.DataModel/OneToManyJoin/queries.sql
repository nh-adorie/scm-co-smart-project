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

-- Exercise

SELECT first_name, title, grade 
FROM papers
JOIN students ON papers.student_id = students.id
ORDER BY grade DESC;

SELECT students.first_name, papers.title, papers.grade 
FROM papers
JOIN students ON papers.student_id = students.id
ORDER BY papers.grade DESC;

SELECT s.first_name, p.title, p.grade
FROM papers p
JOIN students s ON p.student_id = s.id
ORDER BY p.grade DESC;

SELECT s.first_name, p.title, p.grade
FROM students AS s
LEFT JOIN papers AS p ON p.student_id = s.id;

SELECT 
    s.first_name,
    IFNULL(p.title, 'MISSING'),
    IFNULL(p.grade, 0)
FROM students AS s
LEFT JOIN papers AS p ON p.student_id = s.id;

SELECT 
    s.first_name,
    IFNULL(AVG(p.grade), 0) AS average,
    CASE 
        WHEN IFNULL(AVG(p.grade), 0) > 80 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM students AS s
LEFT JOIN papers AS p ON s.id = p.student_id
GROUP BY s.first_name
ORDER BY average DESC;