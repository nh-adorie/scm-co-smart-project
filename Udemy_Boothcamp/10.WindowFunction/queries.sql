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

SELECT 
    emp_no, 
    department, 
    salary, 
    AVG(salary) OVER(PARTITION BY department) AS department_avg,
    AVG(salary) OVER() AS company_avg
FROM employees;

SELECT
    department,
    COUNT(*) OVER(PARTITION BY department) AS total_department_employees,
    COUNT(*) OVER() AS total_company_employees
FROM employees;

SELECT 
    emp_no,
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department) AS department_payroll,
    SUM(salary) OVER() AS company_payroll
FROM employees;

SELECT 
    emp_no,
    CONCAT(ROUND(salary / SUM(salary) OVER(PARTITION BY department) * 100,2),"%") AS 'salary percentage'
FROM employees;

-- ORDER BY
-- inside the OVER() clause
-- to re-order rows within each window

SELECT 
    emp_no,
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary,
    SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_dept_salary
FROM employees;

SELECT 
    emp_no,
    department,
    salary,
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
FROM employees;

-- RANK()
-- rank of current row within its partition

SELECT 
    emp_no,
    department,
    salary,
    RANK() OVER(ORDER BY salary DESC) as overall_salary_rank,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_rank
FROM employees;