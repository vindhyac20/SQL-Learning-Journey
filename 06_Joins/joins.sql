-- ==========================================
-- SQL JOINS - NOTES
-- ==========================================

-- What is a JOIN?
-- A JOIN combines rows from two or more tables
-- using a related column.

-- Example tables:
--
-- employees
-- employee_id | name  | department_id
--
-- departments
-- department_id | department_name
--
-- The common column is department_id.


-- ==========================================
-- 1. INNER JOIN
-- ==========================================
-- Returns only rows where there is a match
-- in BOTH tables.

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


-- ==========================================
-- 2. LEFT JOIN
-- ==========================================
-- Returns ALL rows from the LEFT table
-- and matching rows from the RIGHT table.
--
-- If there is no match, the right-side
-- columns contain NULL.

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;


-- ==========================================
-- 3. RIGHT JOIN
-- ==========================================
-- Returns ALL rows from the RIGHT table
-- and matching rows from the LEFT table.
--
-- If there is no match, the left-side
-- columns contain NULL.

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;


-- ==========================================
-- 4. FULL OUTER JOIN
-- ==========================================
-- Returns ALL rows from BOTH tables.
--
-- Matching rows are combined.
-- Unmatched rows contain NULL values
-- for the other table.
--
-- IMPORTANT:
-- MySQL does NOT directly support
-- FULL OUTER JOIN.


-- ==========================================
-- 5. CROSS JOIN
-- ==========================================
-- Returns every possible combination
-- of rows from both tables.
--
-- If table A has 4 rows and table B
-- has 3 rows:
--
-- 4 × 3 = 12 rows

SELECT employees.name, departments.department_name
FROM employees
CROSS JOIN departments;


-- ==========================================
-- 6. SELF JOIN
-- ==========================================
-- A SELF JOIN joins a table with itself.
--
-- Useful when rows in the same table
-- are related to each other.
--
-- Example:
-- manager_id refers to another employee's
-- employee_id.

SELECT e.name AS employee,
       m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;


-- ==========================================
-- JOIN SUMMARY
-- ==========================================
--
-- INNER JOIN
-- → Matching rows from both tables
--
-- LEFT JOIN
-- → All rows from left + matching right
--
-- RIGHT JOIN
-- → All rows from right + matching left
--
-- FULL OUTER JOIN
-- → All rows from both tables
--
-- CROSS JOIN
-- → Every possible combination
--
-- SELF JOIN
-- → A table joined with itself


-- ==========================================
-- IMPORTANT
-- ==========================================
--
-- ON specifies how the tables are related.
--
-- Example:
--
-- ON employees.department_id =
--    departments.department_id
--
-- This matches rows where department_id
-- is the same in both tables.