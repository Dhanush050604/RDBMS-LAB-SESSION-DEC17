CREATE DATABASE funcDB;
USE funcDB;

CREATE TABLE employees 
( emp_id INT,
emp_name VARCHAR(50),
salary INT, join_date DATE,
dept VARCHAR(20) );

INSERT INTO employees VALUES 
(1, 'Amit', 30000, '2021-05-10', 'HR'),
(2, 'Ravi', 50000, '2020-03-15', 'IT'),
(3, 'Neha', 70000, '2019-07-20', 'Finance'),
(4, 'Meena', 60000, '2022-01-12', 'IT');

-- scalar
-- 1
SELECT UPPER(emp_name) AS ucase
FROM employees;
-- 2
SELECT emp_name, LENGTH(emp_name) AS namelen
FROM employees;
-- 3
SELECT CURDATE();
-- 4
SELECT emp_name,
       TIMESTAMPDIFF(YEAR, join_date, CURDATE()) AS exp
FROM employees;

-- aggregate
-- 1
SELECT COUNT(*) AS total
FROM employees;
-- 2
SELECT AVG(salary) AS average
FROM employees;
-- 3
SELECT dept, SUM(salary) AS total
FROM employees
GROUP BY dept;
-- 4
SELECT MAX(salary) AS max_itsalary
FROM employees
WHERE dept = 'IT';

-- case
-- 1
SELECT emp_name, salary,
CASE
    WHEN salary < 40000 THEN 'Low'
    WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium'
    ELSE 'High'
END AS salary_category
FROM employees;
-- 2
SELECT emp_name, salary,
CASE
    WHEN salary >= 60000 THEN salary * 0.10
    ELSE salary * 0.05
END AS bonus_amount
FROM employees;