USE testing;

DROP TABLE IF EXISTS orders;

IF OBJECT_ID(N'dbo.orders', N'U') IS NULL
BEGIN
	CREATE TABLE orders (
		order_id INT,
		customer_id INT,
		order_date DATE,
		order_amount DECIMAL(10, 2))
END;