-- SQL Server Practice
-- Topic: Joins

-- Create Orders Table
CREATE TABLE orders (
    o_id INT,
    cust_id INT,
    price INT
);

-- Insert Records into Orders Table
INSERT INTO orders (o_id, cust_id, price)
VALUES
(1, 101, 1000),
(2, 201, 1100),
(3, 501, 1200);

SELECT * FROM orders;

-- Create Customers Table
CREATE TABLE customers (
    id INT,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert Records into Customers Table
INSERT INTO customers (id, name, email)
VALUES
(101, 'Sai', 'aa'),
(201, 'Ram', 'bb'),
(301, 'Sham', 'cc');

SELECT * FROM customers;

-- INNER JOIN
-- Returns only the matching records from both tables.
SELECT *
FROM orders AS o
INNER JOIN customers AS c
ON o.cust_id = c.id;

-- LEFT JOIN
-- Returns all records from the left table and matching records from the right table.
SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON o.cust_id = c.id;

-- RIGHT JOIN
-- Returns all records from the right table and matching records from the left table.
SELECT *
FROM orders AS o
RIGHT JOIN customers AS c
ON o.cust_id = c.id;

-- FULL JOIN
-- Returns all matching and non-matching records from both tables.
SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON o.cust_id = c.id;

-- UNION
-- Combines the result of two queries and removes duplicate rows.
SELECT *
FROM orders AS o
RIGHT JOIN customers AS c
ON o.cust_id = c.id

UNION

SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON o.cust_id = c.id;