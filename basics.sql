-- Basic SQL Practice Queries
SELECT * FROM employees;
SELECT name, salary FROM employees;
SELECT name FROM employees WHERE salary > 50000;
SELECT name, salary FROM employees ORDER BY salary DESC;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT DISTINCT department FROM employees;
SELECT name FROM employees WHERE department = 'IT';
SELECT name FROM employees WHERE join_date > '2022-01-01';
