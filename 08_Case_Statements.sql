-- SQL Server Practice
-- Topic: CASE Statements

-- CASE Statement
-- CASE is used to apply conditional logic and return different
-- values based on specified conditions.

-- Example 1: Categorize products based on unit price

SELECT
    *,
    CASE
        WHEN unit_price <= 100 THEN 'Affordable'
        WHEN unit_price <= 200 THEN 'Normal'
        ELSE 'Expensive'
    END AS price_category
FROM dim_product;

-- Example 2: Categorize clothing products based on unit price

SELECT
    *,
    CASE
        WHEN unit_price <= 100 AND category = 'clothing' THEN 'Affordable'
        WHEN unit_price <= 200 AND category = 'clothing' THEN 'Normal'
        WHEN unit_price > 200 AND category = 'clothing' THEN 'Expensive'
        ELSE CONCAT('Not for ', category)
    END AS price_category
FROM dim_product;