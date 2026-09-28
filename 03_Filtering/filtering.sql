-- ==========================================
-- SQL FILTERING
-- ==========================================

-- IN
-- Checks whether a value matches any value
-- in the given list.

SELECT name
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

-- NOT IN
-- Excludes the specified values.

SELECT name, salary
FROM employees
WHERE department NOT IN ('IT', 'HR');

-- BETWEEN
-- Includes both boundary values.

SELECT name, salary
FROM employees
WHERE salary BETWEEN 45000 AND 55000;

-- LIKE
-- Used for pattern matching.

-- Names starting with A

SELECT name
FROM employees
WHERE name LIKE 'A%';

-- Names ending with a

SELECT name
FROM employees
WHERE name LIKE '%a';

-- Names containing a

SELECT name
FROM employees
WHERE name LIKE '%a%';

-- Underscore (_) represents exactly one character.

-- Names with exactly 5 characters

SELECT name
FROM employees
WHERE name LIKE '_____';

-- Names starting with A and having exactly 5 characters

SELECT name
FROM employees
WHERE name LIKE 'A____';