--Fin-- Business Question:
-- Find customers whose average order amount
-- is greater than the overall average order amount.

-- Key Concepts:
-- Multi-level aggregation
-- Subquery for overall average calculation
-- Group-level comparison using HAVING
-- Grain: one row per customer



SELECT c.customer_name,AVG(o.amount) as AVG_order_amount
FROM customers c
INNER JOIN orders o
on c.customer_id = o.customer_id
GROUP by c.customer_name
HAVING AVG(o.amount)>(
SELECT AVG(amount)
FROM orders
)