-- ==========================================
-- WHERE CONDITIONS
-- ==========================================

-- WHERE is used to filter rows.

SELECT *
FROM employees
WHERE salary > 50000;

-- Equal to

SELECT name
FROM employees
WHERE department = 'IT';

-- Less than or equal to

SELECT name
FROM employees
WHERE salary <= 50000;

-- AND
-- Both conditions must be TRUE.

SELECT name
FROM employees
WHERE department = 'IT'
  AND salary > 50000;

-- OR
-- At least one condition must be TRUE.

SELECT name
FROM employees
WHERE department = 'IT'
   OR department = 'HR';

-- Not equal to

SELECT name, salary
FROM employees
WHERE department != 'HR';

-- Combining AND and OR

SELECT *
FROM employees
WHERE (department = 'IT' OR department = 'Finance')
  AND salary > 50000;