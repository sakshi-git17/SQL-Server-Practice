-- SQL Server Practice
-- Topic: DDL - Create Tables
-- Database: Microsoft SQL Server

-- ==========================================
-- BOOK TABLE
-- ==========================================

CREATE TABLE BOOK (
    BOOK_ID INT PRIMARY KEY,
    BOOK_NAME VARCHAR(150) NOT NULL,
    BOOK_PRICE INT NOT NULL
);

-- ==========================================
-- DEPARTMENT TABLE
-- ==========================================

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- ==========================================
-- EMPLOYEE TABLE
-- ==========================================

CREATE TABLE Employ (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary INT
);

-- ==========================================
-- PROJECT TABLE
-- ==========================================

CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    DeptID INT
);

-- ==========================================
-- CUSTOMERS TABLE
-- ==========================================

CREATE TABLE customers (
    id INT,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- ==========================================
-- ORDERS TABLE
-- ==========================================

CREATE TABLE orders (
    o_id INT,
    cust_id INT,
    price INT
);

-- ==========================================
-- WEATHER TABLE
-- ==========================================

CREATE TABLE weather (
    id INT PRIMARY KEY,
    weather_date DATE,
    temp INT
);

-- ==========================================
-- DIM_DATE TABLE
-- ==========================================

CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    date DATE,
    day INT,
    month INT,
    month_name VARCHAR(20),
    quarter INT,
    year INT,
    is_weekend TINYINT
);

-- ==========================================
-- DIM_CUSTOMER TABLE
-- ==========================================

CREATE TABLE dim_customer (
    customer_key INT PRIMARY KEY,
    customer_id VARCHAR(20),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    email VARCHAR(100),
    phone VARCHAR(20),
    country VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    join_date DATE
);

-- ==========================================
-- DIM_PRODUCT TABLE
-- ==========================================

CREATE TABLE dim_product (
    product_key INT PRIMARY KEY,
    product_id VARCHAR(20),
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    unit_price DECIMAL(10,2),
    launch_date DATE
);

-- ==========================================
-- DIM_STORE TABLE
-- ==========================================

CREATE TABLE dim_store (
    store_key INT PRIMARY KEY,
    store_id VARCHAR(20),
    store_name VARCHAR(100),
    region VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50)
);

-- ==========================================
-- FACT_SALES TABLE
-- ==========================================

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_key INT,
    customer_key INT,
    product_key INT,
    store_key INT,
    quantity_sold INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key),
    FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    FOREIGN KEY (product_key) REFERENCES dim_product(product_key),
    FOREIGN KEY (store_key) REFERENCES dim_store(store_key)
);

-- ==========================================
-- SOURCE CUSTOMER TABLE
-- ==========================================

CREATE TABLE src_Customer (
    Cust_id VARCHAR(50),
    Full_name VARCHAR(100),
    Gender VARCHAR(20),
    email VARCHAR(50),
    phone VARCHAR(20),
    city VARCHAR(50),
    states VARCHAR(50),
    country VARCHAR(50),
    created_date DATE
);

-- ==========================================
-- STAGING CUSTOMER TABLE
-- ==========================================

CREATE TABLE stg_Cust (
    Cust_id VARCHAR(50),
    Full_name VARCHAR(100),
    Gender VARCHAR(20),
    email VARCHAR(50),
    phone VARCHAR(20),
    city VARCHAR(50),
    states VARCHAR(50),
    country VARCHAR(50),
    created_date DATE
);

-- ==========================================
-- ETL LOG TABLE
-- ==========================================

CREATE TABLE etl_Log (
    Load_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Table_Name VARCHAR(50),
    Load_Start DATETIME DEFAULT GETDATE(),
    Load_End DATETIME NULL,
    Rows_Inserted INT DEFAULT 0,
    Load_Status VARCHAR(20)
);