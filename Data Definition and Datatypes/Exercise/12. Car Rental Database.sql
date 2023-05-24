CREATE DATABASE car_rental;

USE car_rental;

CREATE TABLE categories (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`category` VARCHAR(50) NOT NULL,
`daily_rate` DOUBLE NOT NULL,
`weekly_rate` DOUBLE,
`monthly_rate` DOUBLE,
`weekend_rate` DOUBLE
);

insert into categories (category, daily_rate)
values ('Category One', 25.50),
       ('Category Two', 35.50),
       ('Category Three', 45.50);

CREATE TABLE cars (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`plate_number` VARCHAR(10) NOT NULL,
`make` VARCHAR(30) NOT NULL,
`model` VARCHAR(20) NOT NULL,
`car_year` YEAR,
`category_id` INT,
`doors` INT,
`picture` LONGBLOB,
`car_condition` VARCHAR(20),
`available` BOOLEAN,
FOREIGN KEY fk_cars_category (category_id)
REFERENCES categories(id)
);

insert into cars (plate_number, make, model, available)
values ('MMG 333', 'Mercedes', 'GT AMG', true),
       ('MMG 444', 'BMW', 'M5', true),
       ('MMG 555', 'Audi', 'RS6', true);

CREATE TABLE employees (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`first_name` VARCHAR(90) NOT NULL,
`last_name` VARCHAR(50),
`title` VARCHAR(100) NOT NULL,
`notes` TEXT
);

insert into employees (first_name, title)
values ('Bob', 'Dealer'),
       ('Charlie', 'Accountant'),
       ('Randy', 'CEO');

CREATE TABLE customers (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`driver_licence_number` INT NOT NULL,
`full_name` VARCHAR(255) NOT NULL,
`address` VARCHAR(255) NOT NULL,
`city` VARCHAR(50) NOT NULL,
`zip_code`INT,
`notes` TEXT
);

insert into customers (driver_licence_number, full_name, address, city)
values (555777999, 'Full Name One', 'Adress One', 'City One'),
       (555777999, 'Full Name Two', 'Adress Two', 'City Two'),
       (555777999, 'Full Name Three', 'Adress Three', 'City Three');

CREATE TABLE rental_orders (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`employee_id` INT NOT NULL,
`customer_id` INT NOT NULL,
`car_id` INT NOT NULL,
`car_condition` VARCHAR(20),
`tank_level` DOUBLE,
`kilometrage_start` DOUBLE,
`kilometrage_end` DOUBLE,
`total_kilometrage` DOUBLE,
`start_date` DATE,
`end_date` DATE,
`total_days` INT,
`rate_applied` DOUBLE,
`tax_rate` DOUBLE,
`order_status` VARCHAR(20),
`notes` TEXT
);

insert into rental_orders (employee_id, customer_id, car_id)
values (1, 1, 1),
       (2, 2, 2),
       (3, 3, 3);
