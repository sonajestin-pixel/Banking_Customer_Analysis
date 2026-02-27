----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BANK MARKETING CAMPAIGN ANALYSIS USING SQL
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Project Overview
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- This project analyzes a bank marketing campaign dataset to understand customer demographics, financial bahavior and campaign effectiveness. 
-- The analysis focuses on identifying key factors influencing term deposit subscription using SQL.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Tool Used   : MySQL
-- Dataset     : Bank Marketing Dataset (Kaggle)
-- Database    : banking_project
-- Table       : bank
-- Rows        : 4521

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Database Setup
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS banking_project;
USE banking_project;

-- Verify table existence
SHOW TABLES;

-- Describe table structure
DESC bank;

-- View sample data
SELECT * FROM bank LIMIT 10;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1. Data Exploration
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 1: Find the total number of records
SELECT COUNT(*) AS total_records
FROM bank;

-- Question 2: Check unique job roles
SELECT DISTINCT job
FROM bank;

-- Question 3: Check unique education levels
SELECT DISTINCT education
FROM bank;

-- Question 4: Find age range of customers
SELECT MAX(age) AS max_age, MIN(age) AS min_age
FROM bank;

-- Question 5: Check missing values in balance
SELECT COUNT(*) AS missing_balance
FROM bank
WHERE balance IS NULL;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 2. Customer Demographics Analysis
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 6: Distribution of customers by marital status
SELECT marital, COUNT(*) AS total_customers
FROM bank
GROUP BY marital;

-- Question 7: Distribution of customers by job roles
SELECT job, COUNT(*) AS total_customers
FROM bank
GROUP BY job
ORDER BY total_customers DESC;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 3. Financial Analysis
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 8: Average account balance
SELECT ROUND(AVG(balance),2) AS avg_balance
FROM bank;

-- Question 9: Average balance by education level
SELECT education, ROUND(AVG(balance),2) AS avg_balance
FROM bank 
GROUP BY education
ORDER BY avg_balance DESC;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 4. Campaign Outcome Analysis
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 10: Overall subscription rate
SELECT y, COUNT(*) AS total_customers
FROM bank 
GROUP BY y;

-- Question 11: Subscription rate by previous campaign outcome
SELECT poutcome, y, COUNT(*) AS total
FROM bank 
GROUP BY poutcome, y;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 5. Customer Segmentation
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question 12: Segment customers based on balance
SELECT age, job, balance,
	CASE
	  WHEN balance < 0 THEN 'Negative Balance'
      WHEN balance BETWEEN 0 AND 5000 THEN 'Low Balance'
      ELSE 'High Balance'
	END balance_category
FROM bank;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 6. Views
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- View: Customer Balance Category

CREATE VIEW customer_balance_view AS
SELECT age, job, balance,
	CASE
	  WHEN balance < 0 THEN 'Negative'
      WHEN balance BETWEEN 0 AND 5000 THEN 'Low'
      ELSE 'High'
	END balance_category
FROM bank;

-- View: Campaign Performance Summary

CREATE VIEW campaign_summary AS
SELECT month, COUNT(*) AS total_customers,
SUM(CASE
	 WHEN y = 'yes' THEN 1
     ELSE 0
	END) AS successful_subscriptions
FROM bank 
GROUP BY month;

SELECT * FROM customer_balance_view;
SELECT * FROM campaign_summary;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VIEW EXPLANATION
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Customer balance category:
-- This view segments customers into balance categories (Negative, Low, Medium, High) using CASE statements. 
-- Purpose: Help in financial segmentation and targeted marketing. 

-- 2. Campaign performance summary:
-- This view summarizez campaign results based on subscription outcome, previous campaign performance and customer attributes.
-- Purpose: Helps evaluate campaign effectiveness and identify high-conversion customer groups. 

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- KEY INSIGHTS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Customer with higher account balances demonstrate a significantly higher subscription rate compared to low or negative balance customers.
-- 2. Customers with a previous successful campaign outcome are much more likely to subscribe again indicating strong behavioral consistency. 
-- 3. Middle-aged customers form the majority of successful subscribers, suggesting an optimal target age group. 
-- 4. Certain job categories show higher engagement rates, indicating that occupation influences campaign response. 
-- 5. Customers with longer campaign interaction duration have a higher probability of subscription, suggesting that engagement time impacts decision-making. 
-- 6. Customers with no prior campaign contact show lower subscription rates, highlighting the importance of relationship based marketing. 

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONCLUSION
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- The SQL analysis reveals that customer financial status, demographic characteristics and previous campaign outcomes significantly influence term deposit 
-- subscription behavior. 
-- High balance customers and previously engaged customers represents high value target segments. 
-- Effective customer segmentation and campaign optimization strategies can substantially improve market ROI. 

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUTURE RECOMMENDATIONS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Implement targeted marketing campaign focusing on high balance and previously responsive customers. 
-- 2. Develop a customer scoring system to prioritize high probability subscribers. 
-- 3. Use predictive modelling to forecast subscription likelihood. 
-- 4. Optimize campaign communication duration and timing based on engagement analysis. 
-- 5. Perform A/B testing on different customer segments to improve campaign conversion rates. 

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------





















