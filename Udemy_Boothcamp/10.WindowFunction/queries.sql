-- WINDOW FUNCTIONS
-- Window functions perform aggregate operations on groups of rows,
-- but the produce a result FOR EACH ROW

-- OVER()
-- The OVER() clause constructs a window.
-- When it's empty, the window will include all record

SELECT department, AVG(salary) 
FROM employees
GROUP BY department;

SELECT AVG(salary) FROM employees;

SELECT AVG(salary) OVER() FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    AVG(salary) OVER(),
    MIN(salary) OVER(),
    MAX(salary) OVER() 
FROM employees;

-- PARTITION BY
-- Inside of the OVER()
-- use PARTITION BY to form rows into window ~ groups of rows

SELECT 
    emp_no, 
    department, 
    salary, 
    AVG(salary) OVER(PARTITION BY department),
    MIN(salary) OVER(PARTITION BY department),
    MAX(salary) OVER(PARTITION BY department) 
FROM employees;