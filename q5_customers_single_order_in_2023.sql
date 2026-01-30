--Find customers who placed their first order in 2023
--AND never placed another order after that


SELECT c.customer_id,c.customer_name,MIN(o.order_date) as Earliest_order
FROM customers c
INNER JOIN orders o
on c.customer_id = o.customer_id
GROUP BY c.customer_id,c.customer_name
HAVING COUNT(o.order_id) =1 and YEAR(MIN(o.order_date)) = 2023