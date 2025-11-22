-- Advanced SQL Practice Queries
SELECT name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
SELECT name FROM employees WHERE emp_id IN (
    SELECT emp_id FROM projects GROUP BY emp_id HAVING COUNT(*) > 1
);
SELECT MAX(salary) AS second_highest_salary FROM employees WHERE salary < (SELECT MAX(salary) FROM employees);
SELECT name, salary, department FROM employees e1 WHERE salary = (
    SELECT MAX(salary) FROM employees e2 WHERE e1.department = e2.department
);
SELECT name, salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank FROM employees;
