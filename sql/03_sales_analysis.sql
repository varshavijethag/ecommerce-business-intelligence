-- Sales Analysis

-- Monthly sales
SELECT
    order_month,
    SUM(price) AS sales
FROM order_items
GROUP BY order_month
ORDER BY order_month;

-- Top product categories
SELECT
    product_category_name,
    SUM(price) AS sales
FROM order_items
GROUP BY product_category_name
ORDER BY sales DESC;

-- Top-selling products
SELECT
    product_id,
    SUM(price) AS sales
FROM order_items
GROUP BY product_id
ORDER BY sales DESC
LIMIT 10;