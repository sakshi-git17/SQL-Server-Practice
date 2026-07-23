-- SQL Server Practice
-- Topic: DML Commands
-- Database: Microsoft SQL Server

-- ==========================================
-- INSERT DATA INTO BOOK TABLE
-- ==========================================

INSERT INTO BOOK (BOOK_ID, BOOK_NAME, BOOK_PRICE)
VALUES
(101, 'ABC', 20),
(102, 'PQR', 30),
(103, 'XYZ', 40);

SELECT * FROM BOOK;

-- ==========================================
-- INSERT DATA INTO CUSTOMERS TABLE
-- ==========================================

INSERT INTO customers (id, name, email)
VALUES
(101, 'sai', 'aa'),
(201, 'ram', 'bb'),
(301, 'sham', 'cc');

SELECT * FROM customers;

-- ==========================================
-- INSERT DATA INTO ORDERS TABLE
-- ==========================================

INSERT INTO orders (o_id, cust_id, price)
VALUES
(1, 101, 1000),
(2, 201, 1100),
(3, 501, 1200);

SELECT * FROM orders;

-- ==========================================
-- UPDATE COMMAND
-- ==========================================

UPDATE customers
SET name = 'sakshi'
WHERE id = 101;

SELECT * FROM customers;

-- ==========================================
-- DELETE COMMAND
-- ==========================================

DELETE FROM customers
WHERE email = 'cc';

SELECT * FROM customers;

-- ==========================================
-- DELETE RECORDS FROM ORDER TABLE
-- ==========================================

DELETE FROM dbo.[order]
WHERE SUB_CATEGORY = 'PHONES';

SELECT * FROM dbo.[order];

-- ==========================================
-- TRUNCATE TABLE
-- ==========================================

TRUNCATE TABLE dbo.[order];

SELECT * FROM dbo.[order];
