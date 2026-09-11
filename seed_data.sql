USE Example;

-- Insert Customers
INSERT INTO Customers (first_name, last_name, email, join_date, country) VALUES
('Alice', 'Smith', 'alice@email.com', '2025-01-15', 'USA'),
('Bob', 'Jones', 'bob@email.com', '2025-02-20', 'Canada'),
('Charlie', 'Brown', 'charlie@email.com', '2025-03-10', 'USA'),
('Diana', 'Prince', 'diana@email.com', '2025-05-01', 'UK');

-- Insert Products
INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Wireless Mouse', 'Electronics', 25.00, 150),
('Mechanical Keyboard', 'Electronics', 85.00, 60),
('Water Bottle', 'Fitness', 15.00, 200),
('Yoga Mat', 'Fitness', 40.00, 80),
('Desk Lamp', 'Home Decor', 30.00, 45);

-- Insert Orders
INSERT INTO Orders (customer_id, order_date, total_amount, order_status) VALUES
(1, '2026-01-10', 110.00, 'Shipped'),
(2, '2026-02-15', 15.00, 'Shipped'),
(1, '2026-02-20', 40.00, 'Delivered'),
(3, '2026-03-05', 170.00, 'Delivered'),
(4, '2026-04-12', 30.00, 'Cancelled');

-- Insert OrderItems
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 25.00),
(1, 2, 1, 85.00),
(2, 3, 1, 15.00),
(3, 4, 1, 40.00),
(4, 2, 2, 85.00),
(5, 5, 1, 30.00);
