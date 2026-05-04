-- =====================================
-- SALES ANALYSIS QUERIES
-- =====================================

# Total Sales
SELECT SUM(f.quantity * p.price) AS total_sales 
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id;

# Sales by Product
SELECT p.product_name,SUM(f.quantity * p.price) AS revenue
FROM fact_sales f
JOIN dim_product p 
ON p.product_id = f.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

# Sales by city
SELECT c.city, SUM(f.quantity * p.price) AS revenue
FROM fact_sales f
JOIN dim_product p ON p.product_id = f.product_id
JOIN dim_customer c ON c.customer_id = f.customer_id
GROUP BY c.city
ORDER BY revenue DESC
LIMIT 5;

#Monthly Sales Trend
SELECT d.month AS Month,SUM(f.quantity * p.price) AS revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
JOIN dim_date d ON d.date_id = f.date_id
GROUP BY d.month;

-- Top Selling Product
SELECT p.product_name, SUM(f.quantity * p.price) AS revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 1;
