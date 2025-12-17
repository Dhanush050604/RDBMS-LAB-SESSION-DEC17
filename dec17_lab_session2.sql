CREATE DATABASE lab2DB;
USE lab2DB;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'dhanush', 'dhanush@gmail.com', 'Chennai'),
(2, 'sakthi', 'sakthi@gmail.com', 'Bangalore'),
(3, 'siva', 'siva@gmail.com', 'Chennai'),
(4, 'Priya', 'priya@gmail.com', 'Hyderabad');

SELECT * FROM customers;

SELECT customer_name, email
FROM customers
WHERE city = 'Chennai';
