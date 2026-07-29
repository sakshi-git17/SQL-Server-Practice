-- SQL Server Practice
-- Topic: Common Table Expressions (CTE)

-- Common Table Expression (CTE)
-- A CTE is a temporary result set that makes complex queries
-- easier to read and manage.

WITH cte_table AS
(
    SELECT *
    FROM dim_product
    WHERE unit_price > (
        SELECT AVG(unit_price)
        FROM dim_product
    )
),

cte_table_2 AS
(
    SELECT *
    FROM cte_table
    WHERE product_name IN ('Figure Method', 'Huge Change', 'Film Finally')
)

SELECT *
FROM cte_table_2
WHERE product_name = 'Figure Method';