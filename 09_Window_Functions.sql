-- SQL Server Practice
-- Topic: Window Functions

-- SUM() OVER()
-- Calculates a running total without grouping the rows.

SELECT
    *,
    SUM(unit_price) OVER (ORDER BY launch_date) AS Running_Total
FROM dim_product;

-- ROWS BETWEEN
-- Defines the range of rows used for the window calculation.

-- Running Total
SELECT
    *,
    SUM(unit_price) OVER (
        ORDER BY launch_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS Running_Total
FROM dim_product;

-- Total Sum for All Rows
SELECT
    *,
    SUM(unit_price) OVER (
        ORDER BY launch_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS Total_Sum
FROM dim_product;

-- ROW_NUMBER(), RANK() and DENSE_RANK()
-- Assigns a rank or row number to each record.

SELECT
    unit_price,
    ROW_NUMBER() OVER (ORDER BY unit_price) AS Row_Number,
    RANK() OVER (ORDER BY unit_price) AS Rank_Value,
    DENSE_RANK() OVER (ORDER BY unit_price) AS Dense_Rank
FROM dim_product;

-- PARTITION BY
-- Divides data into groups before applying window functions.

SELECT
    category,
    unit_price,
    ROW_NUMBER() OVER (
        PARTITION BY category
        ORDER BY unit_price
    ) AS Row_Number,
    RANK() OVER (
        PARTITION BY category
        ORDER BY unit_price
    ) AS Rank_Value,
    DENSE_RANK() OVER (
        PARTITION BY category
        ORDER BY unit_price
    ) AS Dense_Rank
FROM dim_product;

-- LAG() and LEAD()
-- Accesses values from the previous and next rows.

SELECT
    *,
    LAG(temp, 1, 0) OVER (ORDER BY id) AS Previous_Day_Temp,
    LAG(temp, 2, 0) OVER (ORDER BY id) AS Previous_2_Days_Temp,
    LEAD(temp, 1, 0) OVER (ORDER BY id) AS Next_Day_Temp
FROM weather;