USE saltdrio_db;

SELECT 
    s.id,
    p.name AS product_name,
    c.name AS customer_name,
    s.quantity,
    s.sale_date,
    s.amount
FROM sales s 
JOIN products p ON s.product_id = p.id
JOIN customers c ON s.customer_id = c.id;

SELECT 
    c.country,
    COUNT(s.id) AS orders,
    SUM(s.quantity) AS total_items,
    SUM(s.amount) AS total_revenue
FROM sales s 
JOIN customers c ON s.customer_id = c.id
GROUP BY c.country;


SELECT 
    p.name,
    p.category,
    SUM(s.quantity) AS total_sold,
    SUM(s.amount) AS revenue
FROM sales s 
JOIN products p ON s.product_id = p.id
GROUP BY p.id
ORDER BY total_sold DESC;


SELECT 
    p.category,
    SUM(s.amount) AS total_revenue,
    SUM(s.quantity) AS total_items_sold
FROM sales s 
JOIN products p ON s.product_id = p.id
GROUP BY p.category
ORDER BY total_revenue DESC;


SELECT 
    CASE 
        WHEN c.country = 'Bangladesh' THEN 'Local (BD)'
        WHEN c.country = 'China' THEN 'International (China)'
    END AS market,
    COUNT(s.id) AS orders,
    SUM(s.amount) AS revenue,
    ROUND(AVG(s.amount), 2) AS avg_order_value
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY market;


SELECT 
    sale_date,
    COUNT(*) AS orders,
    SUM(quantity) AS items_sold,
    SUM(amount) AS daily_revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;


SELECT 
    c.name,
    c.city,
    c.country,
    COUNT(s.id) AS order_count,
    SUM(s.amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.id
GROUP BY c.id
ORDER BY total_spent DESC;
