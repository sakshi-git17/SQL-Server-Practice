-- SQL Server Practice
-- Topic: Basic SQL Queries

-- SELECT
-- Used to retrieve data from a table.
SELECT * FROM dbo.dim_customer;

-- TOP
-- Returns the specified number of rows.
SELECT TOP (10)
    customer_id,
    email
FROM dbo.dim_customer;

-- WHERE
-- Filters records based on a condition.
SELECT *
FROM dbo.dim_customer
WHERE (gender = 'F' AND country = 'FRANCE')
   OR join_date = '2022-01-01';

-- DISTINCT
-- Returns only unique values.
SELECT DISTINCT city
FROM dbo.[order];

-- LIKE
-- Searches for a specific pattern.
SELECT *
FROM dbo.dim_customer
WHERE first_name LIKE 'S%'
   OR last_name LIKE '%S';

-- ORDER BY
-- Sorts data in ascending or descending order.
SELECT *
FROM dbo.dim_product
ORDER BY unit_price ASC;

-- ALIAS
-- Gives a temporary name to a column or table.
SELECT
    product_key,
    product_name,
    product_id AS Product_ID
FROM dbo.dim_product; 

-- GROUP BY
-- Groups rows having the same values into summary groups.
SELECT
    category,
    AVG(unit_price) AS Average_Price,
    SUM(unit_price) AS Total_Price
FROM dbo.dim_product
GROUP BY category;

-- HAVING
-- Filters grouped records after the GROUP BY clause.
SELECT
    category,
    AVG(unit_price) AS Average_Price,
    SUM(unit_price) AS Total_Price
FROM dbo.dim_product
GROUP BY category
HAVING AVG(unit_price) > 500;

-- IN
-- Checks whether a value exists in a specified list.
SELECT *
FROM dbo.[order]
WHERE city IN ('LOS ANGELES', 'CONCORD');

-- BETWEEN
-- Selects values within a specified range.
SELECT *
FROM dbo.[order]
WHERE quantity BETWEEN 5 AND 14;