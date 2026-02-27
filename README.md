# Bank Marketing Campaign Analysis Using SQL

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
- **Customer Balance Category View**  
  This view segments customers into financial categories (Negative, Low, Medium, High) using SQL CASE statements. It enables financial profiling of customers and supports targeted marketing and customer value analysis.

- **Campaign Performance Summary View**  
  This view summarizes campaign subscription outcomes along with previous campaign results. It helps evaluate marketing effectiveness and identify high conversion customer segments.

These views help simplify repeated analysis and improve query reusability.

---

## Key Insights
1. Customers with higher account balances demonstrate significantly higher subscription rates.
2. Previous successful campaign outcomes strongly increase the likelihood of future subscription.
3. Middle-aged customers represent the majority of successful subscribers.
4. Longer campaign interaction duration positively influences subscription probability.
5. Customers with prior campaign engagement show higher trust and response rates.
6. Financial segmentation highlights high-balance customers as high-value marketing targets.
   
---

## Conclusion

The analysis demonstrates that customer financial status, demographic characteristics and historical campaign interactions significantly influence term deposit subscription behavior.

By leveraging structured SQL analysis and customer segmentation techniques, actionable insights were generated to improve campaign targeting and overall marketing effectiveness.

---

## Future Recommendations

- Implement targeted marketing strategies focusing on high-balance and previously responsive customers.
- Develop a customer scoring model to prioritize high-probability subscribers.
- Integrate predictive modeling techniques (Python / Machine Learning) to forecast subscription likelihood.
- Optimize campaign communication strategy based on engagement duration analysis.
- Conduct A/B testing across customer segments to improve conversion rates.

  ---
  
## Project Outcome

- Applied SQL techniques including aggregation, CASE statements, grouping and view creation on a real-world banking dataset.
- Developed structured and reusable analytical views for segmentation and campaign evaluation.
- Strengthened business-oriented data interpretation skills.
- Delivered a professionally documented, resume-ready SQL analytics project suitable for Data Analyst roles.

---

## Author
 **Name:**Sona Jestin **LinkedIn:**www.linkedin.com/in/sonajestin
 

---



