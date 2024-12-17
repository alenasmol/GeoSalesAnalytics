-- 1. Total Sales by Region
SELECT r.region_name, SUM(s.sale_amount) AS total_sales
FROM Sales s
JOIN Regions r ON s.region_id = r.region_id
GROUP BY r.region_name
ORDER BY total_sales DESC;

-- 2. Top Products Sold by Quantity
SELECT product_name, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_name
ORDER BY total_quantity DESC;

-- 3. Average Sales Amount per Region
SELECT r.region_name, AVG(s.sale_amount) AS avg_sales
FROM Sales s
JOIN Regions r ON s.region_id = r.region_id
GROUP BY r.region_name;

-- 4. Total Quantity of Sales by Product Category
SELECT p.category, SUM(s.quantity) AS total_quantity
FROM Sales s
JOIN Products p ON s.product_name = p.product_name
GROUP BY p.category
ORDER BY total_quantity DESC;

-- 5. Monthly Sales Trend
SELECT strftime('%Y-%m', sale_date) AS sale_month, SUM(s.sale_amount) AS total_sales
FROM Sales s
GROUP BY sale_month
ORDER BY sale_month;
