-- E-Commerce Business Intelligence
-- Data Cleaning and Basic Exploration

-- Check delivered orders
SELECT
    order_status,
    COUNT(*) AS order_count
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;

-- Check total orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Check order date range
SELECT
    MIN(order_purchase_timestamp) AS first_order,
    MAX(order_purchase_timestamp) AS last_order
FROM orders;