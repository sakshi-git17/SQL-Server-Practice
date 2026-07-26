-- SQL Server Practice
-- Topic: Subqueries


-- Subquery
-- A subquery is a query written inside another query.

-- Find products whose unit price is greater than the average unit price.
SELECT *
FROM dim_product
WHERE unit_price > (
    SELECT AVG(unit_price)
    FROM dim_product
);

-- Nested Subquery
-- A nested subquery uses the result of one query inside another query.

SELECT *
FROM (
    SELECT *
    FROM dim_product
    WHERE unit_price > (
        SELECT AVG(unit_price)
        FROM dim_product
    )
) AS subquery_table
WHERE product_name = 'Figure Method';