-- Business Question:
-- Show customers whose total order amount is greater than 1000.

-- Key Concepts:
-- INNER JOIN to include only customers with orders
-- Group-level filtering using HAVING
-- Aggregation with SUM
-- Understanding when LEFT JOIN is unnecessary



select c.customer_id,c.customer_name,SUM(o.amount) as Total_order_amount
FROM customers c
INNER JOIN orders o
on c.customer_id = o.customer_id
GROUP BY c.customer_name,c.customer_id
HAVING SUM(o.amount)>1000
