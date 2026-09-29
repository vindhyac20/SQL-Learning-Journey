-- ==========================================
-- SQL AGGREGATE FUNCTIONS
-- ==========================================

-- MAX() - highest value
SELECT MAX(salary)
FROM employees;

-- MIN() - lowest value
SELECT MIN(salary)
FROM employees;

-- AVG() - average value
SELECT AVG(salary)
FROM employees;

-- SUM() - total value
SELECT SUM(salary)
FROM employees;

-- COUNT(*) - number of rows
SELECT COUNT(*)
FROM employees;


-- Aggregate function with WHERE

-- Highest salary in IT
SELECT MAX(salary)
FROM employees
WHERE department = 'IT';

-- Average salary where salary is greater than 50000
SELECT AVG(salary)
FROM employees
WHERE salary > 50000;

-- Total salary of IT and Finance employees
SELECT SUM(salary)
FROM employees
WHERE department IN ('IT', 'Finance');