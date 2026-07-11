-- ==========================================================
-- Project: Customer Churn Analysis
-- File: 03_Business_Analysis.sql
-- Description: Business Analysis using SQL
-- ==========================================================

-- 1. Churn Analysis by Gender
-- Business Question:
-- Does customer churn vary by gender?

SELECT
    Gender,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Gender
ORDER BY churn_rate DESC;

-- 2. Churn Analysis by Senior Citizen
-- Business Question:
-- Are senior citizens more likely to churn?

SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY SeniorCitizen
ORDER BY churn_rate DESC;

-- 3. Churn Analysis by Partner Status
-- Business Question:
-- Does having a partner influence customer churn?

SELECT
    Partner,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Partner
ORDER BY churn_rate DESC;

-- 4. Churn Analysis by Dependents
-- Business Question:
-- Do customers with dependents churn less?

SELECT
    Dependents,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Dependents
ORDER BY churn_rate DESC;

-- 5. Churn Analysis by Contract Type
-- Business Question:
-- Which contract type has the highest churn rate?

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Contract
ORDER BY churn_rate DESC;

-- 6. Churn Analysis by Payment Method
-- Business Question:
-- Which payment method experiences the highest churn?

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

-- 7. Churn Analysis by Internet Service
-- Business Question:
-- Does the type of internet service affect churn?

SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY InternetService
ORDER BY churn_rate DESC;

-- 8. Churn Analysis by Phone Service
-- Business Question:
-- Is churn different for customers with phone service?

SELECT
    PhoneService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PhoneService;

-- 9. Churn Analysis by Paperless Billing
-- Business Question:
-- Does paperless billing influence churn?

SELECT
    PaperlessBilling,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PaperlessBilling
ORDER BY churn_rate DESC;

-- 10. Average Monthly Charges by Churn Status
-- Business Question:
-- Do churned customers pay higher monthly charges?

SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS average_monthly_charges
FROM customer_churn
GROUP BY Churn;

-- 11. Average Total Charges by Churn Status
-- Business Question:
-- How much have churned and retained customers paid in total?

SELECT
    Churn,
    ROUND(AVG(TotalCharges),2) AS average_total_charges
FROM customer_churn
GROUP BY Churn;

-- 12. Average Tenure by Churn Status
-- Business Question:
-- How long do churned customers stay compared to retained customers?

SELECT
    Churn,
    ROUND(AVG(tenure),2) AS average_tenure
FROM customer_churn
GROUP BY Churn;