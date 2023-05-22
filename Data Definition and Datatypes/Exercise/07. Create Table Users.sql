CREATE TABLE `users` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`username` VARCHAR(30) NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB,
`last_login_time` TIME,
`is_deleted` BOOLEAN
);
INSERT INTO `users` (`username`, `password`)
VALUES ("gencho", "gencho123"),
		("pesho1", "pesho10"),
		("pesho2", "pesho10"),
		("pesho3", "pesho10"),
		("pesho4", "pesho10");
