-- ==========================================
-- GROUP BY AND HAVING
-- ==========================================

-- Average salary for each department
SELECT department, AVG(salary)
FROM employees
GROUP BY department;


-- Number of employees in each department
SELECT department, COUNT(*)
FROM employees
GROUP BY department;


-- Average salary for each department
-- considering only employees with salary > 45000
SELECT department, AVG(salary)
FROM employees
WHERE salary > 45000
GROUP BY department;


-- Show departments whose average salary is > 50000
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;


-- Departments having more than 1 employee
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;


-- Total salary for each department
-- only departments with total salary > 50000
SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 50000
ORDER BY SUM(salary) DESC;


-- Highest salary in each department
SELECT department, MAX(salary)
FROM employees
GROUP BY department
ORDER BY department;


-- Minimum salary in each department
-- only departments with minimum salary >= 45000
SELECT department, MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) >= 45000
ORDER BY MIN(salary) DESC;


-- Total salary for departments with at least 2 employees
SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY SUM(salary) DESC;