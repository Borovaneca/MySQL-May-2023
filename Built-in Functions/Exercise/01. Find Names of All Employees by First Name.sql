SELECT `first_name`,`last_name` FROM employees AS e
WHERE LOWER(SUBSTRING(`first_name`, 1, 2)) = 'sa';