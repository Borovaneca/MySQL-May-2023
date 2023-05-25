SELECT 
p.peak_name, 
r.river_name, 
LOWER(CONCAT(LEFT(p.peak_name, LENGTH(p.peak_name) - 1), r.river_name)) AS 'mix' 
FROM 
rivers AS r, peaks AS p
WHERE LOWER(LEFT(r.river_name, 1) = LOWER(RIGHT(p.peak_name, 1)))
ORDER BY `mix`;
