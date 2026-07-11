-- ==========================================================
-- Project: Customer Churn Analysis
-- File: 02_Basic_KPIs.sql
-- Description: Key Performance Indicators (KPIs)
-- ==========================================================

-- 1. Total Customers
-- Business Question:
-- How many customers are present in the dataset?

SELECT COUNT(*) AS total_customers
FROM customer_churn;

-- 2. Total Churned Customers
-- Business Question:
-- How many customers have left the company?

SELECT COUNT(*) AS churned_customers
FROM customer_churn
WHERE Churn = 'Yes';

-- 3. Total Active Customers
-- Business Question:
-- How many customers are still active?

SELECT COUNT(*) AS active_customers
FROM customer_churn
WHERE Churn = 'No';

-- 4. Overall Churn Rate
-- Business Question:
-- What percentage of customers have churned?

SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn;

-- 5. Average Customer Tenure
-- Business Question:
-- On average, how long do customers stay with the company?

SELECT
    ROUND(AVG(tenure), 2) AS average_tenure_months
FROM customer_churn;

-- 6. Average Monthly Charges
-- Business Question:
-- What is the average monthly amount charged to customers?

SELECT
    ROUND(AVG(MonthlyCharges), 2) AS average_monthly_charges
FROM customer_churn;

-- 7. Average Total Charges
-- Business Question:
-- What is the average total amount paid by customers?

SELECT
    ROUND(AVG(TotalCharges), 2) AS average_total_charges
FROM customer_churn;

-- 8. Total Revenue
-- Business Question:
-- What is the total revenue generated from all customers?

SELECT
    ROUND(SUM(TotalCharges), 2) AS total_revenue
FROM customer_churn;

-- 9. Minimum and Maximum Monthly Charges
-- Business Question:
-- What is the range of monthly charges?

SELECT
    MIN(MonthlyCharges) AS minimum_monthly_charge,
    MAX(MonthlyCharges) AS maximum_monthly_charge
FROM customer_churn;

-- 10. Minimum and Maximum Customer Tenure
-- Business Question:
-- What is the shortest and longest customer tenure?

SELECT
    MIN(tenure) AS minimum_tenure,
    MAX(tenure) AS maximum_tenure
FROM customer_churn;