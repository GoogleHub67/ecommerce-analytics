USE Example;

-- Query A: Customer Lifetime Value (CLV)
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_status IN ('Shipped', 'Delivered')
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC;

-- Query B: Category Performance & Magnitude Analysis
SELECT 
    p.category,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Orders o ON oi.order_id = o.order_id
WHERE o.order_status != 'Cancelled'
GROUP BY p.category
ORDER BY total_revenue DESC;

-- Query C: Advanced Window Ranking (Top Selling Products)
WITH ProductRevenueCTE AS (
    SELECT 
        p.category,
        p.product_name,
        SUM(oi.quantity * oi.unit_price) AS product_revenue
    FROM OrderItems oi
    JOIN Products p ON oi.product_id = p.product_id
    JOIN Orders o ON oi.order_id = o.order_id
    WHERE o.order_status != 'Cancelled'
    GROUP BY p.category, p.product_name
)
SELECT 
    category,
    product_name,
    product_revenue,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY product_revenue DESC) AS category_rank
FROM ProductRevenueCTE;

-- Query D: Operational Risk (Stock Alert Monitor)
SELECT 
    product_id,
    product_name,
    category,
    stock_quantity
FROM Products
WHERE stock_quantity < 50
ORDER BY stock_quantity ASC;
