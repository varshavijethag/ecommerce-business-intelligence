-- KPI Analysis

SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM orders;

SELECT
    SUM(price) AS total_product_sales,
    AVG(price) AS average_product_price
FROM order_items;

SELECT
    COUNT(*) AS total_items
FROM order_items;