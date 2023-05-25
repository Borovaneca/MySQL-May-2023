SELECT `name` FROM towns
WHERE LENGTH(`name`) BETWEEN 5 AND 6
ORDER BY `name`;

------------------

SELECT `name` FROM towns
WHERE LENGTH(`name`) = 5 OR LENGTH(`name`) = 6
ORDER BY `name`;
