-- Business Question:
-- Identify customers who have never placed an order.

-- Key Concepts:
-- LEFT JOIN to keep all customers
-- Detecting missing relationships
-- Aggregation with SUM
-- Filtering groups using HAVING
-- NULL handling using COALESCE


select c.customer_id,c.customer_name,COALESCE(SUM(amount),0) as order_amount
FROM customers c
LEFT JOIN orders o
on c.customer_id = o.customer_id
GROUP BY c.customer_id,c.customer_name
HAVING COALESCE(SUM(amount),0) = 0
