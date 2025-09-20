USE testing;

WITH orders_rank AS (
	-- Ranking de pedidos ordenados por fecha
	SELECT customer_id, order_date, order_amount, 
	ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date DESC) AS rnk
	FROM orders)

-- El importe del último pedido de cada cliente junto con el importe del segundo último pedido
SELECT customer_id, 
MAX(CASE WHEN rnk = 1 THEN order_amount END) AS last_order,
MAX(CASE WHEN rnk = 2 THEN order_amount END) AS second_last_order
FROM orders_rank
GROUP BY customer_id
ORDER BY customer_id;