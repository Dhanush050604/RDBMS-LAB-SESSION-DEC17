CREATE DATABASE lab3DB;
USE lab3DB;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_amount INT,
    order_date DATE
);

select * from orders;

START TRANSACTION;

INSERT INTO orders VALUES
(101, 'Arun', 5000, '2024-01-10');
SAVEPOINT sp1;

INSERT INTO orders VALUES
(102, 'Meena', 8000, '2024-01-11');
SAVEPOINT sp2;

INSERT INTO orders VALUES
(103, 'Ravi', 12000, '2024-01-12');
SAVEPOINT sp3;

ROLLBACK TO sp2;

COMMIT;

SELECT * FROM orders;