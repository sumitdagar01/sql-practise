-- Intermediate SQL Practice Queries
SELECT name FROM employees WHERE salary BETWEEN 30000 AND 60000;
SELECT department, COUNT(*) FROM employees GROUP BY department;
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department;
SELECT name FROM employees WHERE name LIKE 'S%';
SELECT e.name, p.project_name FROM employees e INNER JOIN projects p ON e.emp_id = p.emp_id;
SELECT e.name, p.project_name FROM employees e LEFT JOIN projects p ON e.emp_id = p.emp_id;
SELECT p.project_name, COUNT(e.emp_id) FROM projects p LEFT JOIN employees e ON p.emp_id = e.emp_id GROUP BY p.project_name;
