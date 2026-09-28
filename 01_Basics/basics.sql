-- ==========================================
-- SQL BASICS
-- ==========================================

-- SELECT is used to retrieve data.
-- FROM tells SQL which table to retrieve it from.

SELECT *
FROM employees;

-- Selecting a specific column

SELECT name
FROM employees;

-- Selecting multiple columns

SELECT name, salary
FROM employees;