-- ==========================================================
-- Project: Customer Churn Analysis
-- File: 01_Data_Quality_Checks.sql
-- Description: Initial data quality checks before analysis
-- ==========================================================

-- 1. Count Total Records
-- Business Question:
-- How many customer records are available in the dataset?

SELECT COUNT(*) AS total_records
FROM customer_churn;

-- 2. Preview the Dataset
-- Business Question:
-- What does the dataset look like?
-- Displays the first 10 rows for a quick inspection.

SELECT *
FROM customer_churn
LIMIT 10;

-- 3. Check Table Structure
-- Business Question:
-- What are the column names, data types,
-- and nullability of each column?

DESCRIBE customer_churn;

-- 4. Check for Duplicate Customer IDs
-- Business Question:
-- Is each customerID unique?
-- If this query returns zero rows,
-- there are no duplicate customers.

SELECT customerID,
       COUNT(*) AS duplicate_count
FROM customer_churn
GROUP BY customerID
HAVING COUNT(*) > 1;

-- 5. View Distinct Contract Types
-- Business Question:
-- What contract plans are offered?

SELECT DISTINCT Contract
FROM customer_churn;

-- 6. View Distinct Internet Service Types
-- Business Question:
-- What internet service options are available?

SELECT DISTINCT InternetService
FROM customer_churn;

-- 7. View Distinct Payment Methods
-- Business Question:
-- What payment methods do customers use?

SELECT DISTINCT PaymentMethod
FROM customer_churn;

-- 8. View Distinct Churn Categories
-- Business Question:
-- What are the possible churn values?

SELECT DISTINCT Churn
FROM customer_churn;
