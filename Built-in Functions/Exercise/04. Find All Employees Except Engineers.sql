SELECT `first_name`,`last_name` FROM employees
WHERE LOWER(`job_title`) NOT LIKE '%engineer%'
ORDER BY `employee_id`;
