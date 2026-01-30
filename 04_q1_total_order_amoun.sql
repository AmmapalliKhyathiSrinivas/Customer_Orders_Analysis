-- Business Question:
-- Show each customer and their total order amount.
-- Include customers who have never placed an order.

-- Key Concepts:
-- LEFT JOIN to preserve all customers
-- Aggregation using SUM
-- NULL handling using COALESCE
-- grain: one row per customer

select c.customer_name,c.customer_id,COALESCE(SUM(o.amount),0) as total_order_amount
from customers c
LEFT JOIN orders o
on c.customer_id = o.customer_id
group by c.customer_name,c.customer_id




