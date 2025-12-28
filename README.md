# Banking Customer Analysis (SQL Project)

## Project Overview
This project focuses on analyzing banking customer and marketing campaign data using **SQL (MySQL)**.  
The goal of the project is to understand customer demographics, financial behavior and campaign outcomes and to derive meaningful business insights using structured SQL queries.

The dataset represents real-world bank marketing data, where customers were contacted during marketing campaigns to subscribe to a term deposit.

---

## Tools & Technologies Used
- **Database:** MySQL  
- **Language:** SQL  
- **Platform:** MySQL Workbench  
- **Version Control:** GitHub  

---

## Dataset Information
- **Dataset Name:** Bank Marketing Dataset  
- **Source:** Kaggle  
- **Total Records:** ~4500  
- **Table Used:** `bank`  
- **Type:** Real-world banking and marketing data  

---

## Project Objectives
- Explore and understand banking customer data
- Analyze customer demographics and financial behavior
- Evaluate marketing campaign performance
- Segment customers using conditional logic
- Create reusable SQL views for analysis

---

## Key SQL Concepts Used
- `SELECT`, `WHERE`
- `GROUP BY`, `ORDER BY`, `HAVING`
- Aggregate functions (`COUNT`, `AVG`, `SUM`)
- `CASE WHEN` for conditional logic
- Subqueries
- `CREATE VIEW`
- Data exploration and validation queries

---

## Analysis Performed
### 1. Data Exploration
- Total number of records
- Unique values for key categorical columns
- Age range of customers
- Basic structure and integrity checks

### 2. Customer Demographics Analysis
- Customer distribution by job, education, and marital status
- Age-based analysis of customers

### 3. Financial Analysis
- Average account balance
- Balance analysis by education and job role
- Customer segmentation based on balance levels

### 4. Campaign Outcome Analysis
- Overall subscription rate (`y` column)
- Campaign success based on previous outcomes (`poutcome`)
- Impact of previous contact history (`pdays`)

### 5. Customer Segmentation
- Customers categorized using `CASE WHEN`
- Balance-based customer grouping
- Campaign response behavior analysis

---

## Views Created
- **Customer Balance View**  
  Segments customers into balance categories (Negative, Low, High)

- **Campaign Summary View**  
  Provides month-wise campaign performance and successful subscriptions

These views help simplify repeated analysis and improve query reusability.

---

## Project Outcome
- Gained hands-on experience with real-world SQL analysis
- Improved understanding of business-oriented SQL queries
- Demonstrated ability to document and structure an SQL project professionally
- Built a resume-ready SQL project suitable for data analyst roles

---

## Author
 **Name:**Sona Jestin **LinkedIn:**www.linkedin.com/in/sonajestin
 

---



