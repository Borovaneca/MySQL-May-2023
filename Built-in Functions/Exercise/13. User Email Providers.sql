SELECT `user_name`, SUBSTRING_INDEX(`email`, '@', -1) AS `email provider` FROM users
ORDER BY `email provider`,`user_name`;


-------------------------------------

SELECT `user_name`, REGEXP_REPLACE(`email`, '.*@', '') AS `email provider` FROM users
ORDER BY `email provider`,`user_name`;
