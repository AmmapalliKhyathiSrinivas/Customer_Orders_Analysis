## Why this project matters
This project focuses on business-oriented SQL problems rather than puzzle-based queries.
Each question mirrors real Data Analyst tasks involving customer behavior, revenue analysis,
and inactivity detection.
📊 SQL Mini Project — Customer Orders Analysis
📌 Project Overview

This project analyzes customer purchasing behavior using SQL.
The goal is to answer common business-driven questions related to customer value, inactivity, and order patterns.

The project focuses on:

JOIN logic

Aggregations

Filtering with HAVING vs WHERE

NULL handling

Date-based analysis

All queries were written and executed using SQL Server Management Studio (SSMS).

🗂️ Dataset Description
customers

customer_id (PK)

customer_name

signup_date

orders

order_id (PK)

customer_id (FK)

order_date

amount

Relationship:

One customer can have multiple orders

Some customers may have no orders

📑 Business Questions Answered
Q1. Total order amount per customer (including customers with no orders)

Concepts: LEFT JOIN, aggregation, NULL handling
📄 q1_total_order_amount.sql

Q2. Customers whose total order amount is greater than 1000

Concepts: INNER JOIN, HAVING, group-level filtering
📄 q2_customers_above_1000.sql

Q3. Customers who never placed an order

Concepts: LEFT JOIN, HAVING, detecting missing relationships
📄 q3_customers_no_orders.sql

Q4. Customers whose average order amount is greater than the overall average

Concepts: subqueries, multi-level aggregation, business comparison
📄 q4_customer_avg_vs_overall_avg.sql

Q5. Customers who placed exactly one order and that order was in 2023

Concepts: date functions, MIN vs COUNT logic, HAVING with aggregates
📄 q5_customers_single_order_in_2023.sql

🔑 Key SQL Skills Demonstrated

Correct use of INNER vs LEFT JOIN

Understanding of query grain

Proper use of GROUP BY and HAVING

Handling NULL values using COALESCE

Writing business-aligned SQL, not puzzle-based queries

Applying date logic safely using MIN(order_date)

📈 Key Insights

Not all customers generate revenue — identifying inactive customers is critical.

High-value customers can be identified using aggregation and HAVING logic.

Average-based comparisons require careful multi-level aggregation.

“First” or “only” behaviors require correct use of MIN() and COUNT().

🛠️ Tools Used

SQL Server Management Studio (SSMS)

SQL (ANSI-compliant, SQL Server dialect)

✅ Outcome

This project demonstrates the ability to:

Translate business questions into SQL

Write clean, maintainable queries

Reason about data accurately

It serves as a portfolio-ready SQL project for entry-level Data Analyst roles.
