-- SQL Server Practice
-- Topic: Aggregate Functions

-- Display all records
-- Retrieves all records from the Order table.
SELECT * FROM dbo.[order];

-- MIN()
-- Returns the smallest value from a column.
SELECT MIN(Quantity) AS Lowest_Quantity
FROM dbo.[order];

-- MAX()
-- Returns the largest value from a column.
SELECT MAX(Quantity) AS Largest_Quantity
FROM dbo.[order];

-- COUNT()
-- Returns the total number of non-NULL values.
SELECT COUNT(Quantity) AS Total_Quantity
FROM dbo.[order];

-- SUM()
-- Returns the total sum of all values.
SELECT SUM(Quantity) AS Total_Quantity_Sum
FROM dbo.[order];

-- AVG()
-- Returns the average value of a column.
SELECT AVG(Quantity) AS Average_Quantity
FROM dbo.[order];