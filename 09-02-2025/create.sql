-- Create the sales table
CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    sale_date DATE
);

-- Insert sample data
INSERT INTO sales (product_name, category, price, quantity, sale_date) VALUES
-- Electronics Category
('iPhone 13', 'Electronics', 999.99, 5, '2024-01-15'),
('Samsung TV', 'Electronics', 799.99, 3, '2024-01-16'),
('AirPods Pro', 'Electronics', 249.99, 10, '2024-01-16'),
('MacBook Pro', 'Electronics', 1299.99, 2, '2024-01-17'),
('Gaming Mouse', 'Electronics', 59.99, 15, '2024-01-17'),
('Tablet', 'Electronics', 399.99, 7, '2024-01-18'),
('Smart Watch', 'Electronics', 199.99, 12, '2024-01-19'),
('Bluetooth Speaker', 'Electronics', 89.99, 8, '2024-01-20'),
('Laptop', 'Electronics', 899.99, 4, '2024-01-21'),
('Wireless Charger', 'Electronics', 29.99, 20, '2024-01-22'),

-- Clothing Category
('T-Shirt', 'Clothing', 19.99, 25, '2024-01-15'),
('Jeans', 'Clothing', 49.99, 15, '2024-01-16'),
('Dress', 'Clothing', 79.99, 10, '2024-01-17'),
('Sweater', 'Clothing', 39.99, 18, '2024-01-18'),
('Jacket', 'Clothing', 89.99, 8, '2024-01-19'),
('Socks', 'Clothing', 9.99, 30, '2024-01-20'),
('Shoes', 'Clothing', 69.99, 12, '2024-01-21'),
('Hat', 'Clothing', 14.99, 20, '2024-01-22'),
('Scarf', 'Clothing', 24.99, 15, '2024-01-23'),
('Gloves', 'Clothing', 19.99, 22, '2024-01-24'),

-- Books Category
('Fiction Novel', 'Books', 14.99, 35, '2024-01-15'),
('Cookbook', 'Books', 24.99, 20, '2024-01-16'),
('History Book', 'Books', 29.99, 15, '2024-01-17'),
('Children Book', 'Books', 9.99, 40, '2024-01-18'),
('Science Book', 'Books', 34.99, 18, '2024-01-19'),
('Poetry Collection', 'Books', 19.99, 25, '2024-01-20'),
('Biography', 'Books', 27.99, 22, '2024-01-21'),
('Self-Help Book', 'Books', 16.99, 30, '2024-01-22'),
('Art Book', 'Books', 39.99, 12, '2024-01-23'),
('Technical Manual', 'Books', 49.99, 8, '2024-01-24'),

-- Food & Beverages Category
('Coffee Beans', 'Food & Beverages', 12.99, 45, '2024-01-15'),
('Green Tea', 'Food & Beverages', 8.99, 50, '2024-01-16'),
('Chocolate Bar', 'Food & Beverages', 3.99, 100, '2024-01-17'),
('Pasta', 'Food & Beverages', 2.99, 80, '2024-01-18'),
('Olive Oil', 'Food & Beverages', 15.99, 30, '2024-01-19'),
('Energy Drink', 'Food & Beverages', 2.49, 120, '2024-01-20'),
('Chips', 'Food & Beverages', 3.49, 90, '2024-01-21'),
('Cookies', 'Food & Beverages', 4.99, 75, '2024-01-22'),
('Juice', 'Food & Beverages', 5.99, 60, '2024-01-23'),
('Bottled Water', 'Food & Beverages', 1.99, 150, '2024-01-24'),

-- Sports & Outdoors Category
('Yoga Mat', 'Sports & Outdoors', 29.99, 20, '2024-01-15'),
('Tennis Racket', 'Sports & Outdoors', 89.99, 8, '2024-01-16'),
('Basketball', 'Sports & Outdoors', 24.99, 15, '2024-01-17'),
('Dumbbells', 'Sports & Outdoors', 39.99, 25, '2024-01-18'),
('Running Shoes', 'Sports & Outdoors', 79.99, 12, '2024-01-19'),
('Backpack', 'Sports & Outdoors', 49.99, 18, '2024-01-20'),
('Water Bottle', 'Sports & Outdoors', 14.99, 35, '2024-01-21'),
('Fitness Tracker', 'Sports & Outdoors', 99.99, 10, '2024-01-22'),
('Camping Tent', 'Sports & Outdoors', 149.99, 5, '2024-01-23'),
('Hiking Poles', 'Sports & Outdoors', 34.99, 15, '2024-01-24'),

-- Add more variations of the same products with different dates and quantities
('iPhone 13', 'Electronics', 999.99, 3, '2024-02-01'),
('Samsung TV', 'Electronics', 799.99, 2, '2024-02-02'),
('T-Shirt', 'Clothing', 19.99, 30, '2024-02-03'),
('Fiction Novel', 'Books', 14.99, 25, '2024-02-04'),
('Coffee Beans', 'Food & Beverages', 12.99, 40, '2024-02-05'),
('Yoga Mat', 'Sports & Outdoors', 29.99, 15, '2024-02-06'),
('AirPods Pro', 'Electronics', 249.99, 8, '2024-02-07'),
('Jeans', 'Clothing', 49.99, 12, '2024-02-08'),
('Cookbook', 'Books', 24.99, 18, '2024-02-09'),
('Green Tea', 'Food & Beverages', 8.99, 45, '2024-02-10'),

-- Add more recent dates
('MacBook Pro', 'Electronics', 1299.99, 1, '2024-02-11'),
('Dress', 'Clothing', 79.99, 7, '2024-02-12'),
('History Book', 'Books', 29.99, 20, '2024-02-13'),
('Chocolate Bar', 'Food & Beverages', 3.99, 85, '2024-02-14'),
('Tennis Racket', 'Sports & Outdoors', 89.99, 6, '2024-02-15'),
('Gaming Mouse', 'Electronics', 59.99, 18, '2024-02-16'),
('Sweater', 'Clothing', 39.99, 15, '2024-02-17'),
('Children Book', 'Books', 9.99, 35, '2024-02-18'),
('Pasta', 'Food & Beverages', 2.99, 70, '2024-02-19'),
('Basketball', 'Sports & Outdoors', 24.99, 12, '2024-02-20'),

-- Even more variations
('Tablet', 'Electronics', 399.99, 5, '2024-02-21'),
('Jacket', 'Clothing', 89.99, 6, '2024-02-22'),
('Science Book', 'Books', 34.99, 15, '2024-02-23'),
('Olive Oil', 'Food & Beverages', 15.99, 25, '2024-02-24'),
('Dumbbells', 'Sports & Outdoors', 39.99, 20, '2024-02-25'),
('Smart Watch', 'Electronics', 199.99, 9, '2024-02-26'),
('Socks', 'Clothing', 9.99, 40, '2024-02-27'),
('Poetry Collection', 'Books', 19.99, 22, '2024-02-28'),
('Energy Drink', 'Food & Beverages', 2.49, 110, '2024-02-29'),
('Running Shoes', 'Sports & Outdoors', 79.99, 8, '2024-03-01'),

-- Final batch of variations
('Bluetooth Speaker', 'Electronics', 89.99, 7, '2024-03-02'),
('Shoes', 'Clothing', 69.99, 10, '2024-03-03'),
('Biography', 'Books', 27.99, 18, '2024-03-04'),
('Chips', 'Food & Beverages', 3.49, 95, '2024-03-05'),
('Backpack', 'Sports & Outdoors', 49.99, 15, '2024-03-06'),
('Laptop', 'Electronics', 899.99, 2, '2024-03-07'),
('Hat', 'Clothing', 14.99, 25, '2024-03-08'),
('Self-Help Book', 'Books', 16.99, 28, '2024-03-09'),
('Cookies', 'Food & Beverages', 4.99, 80, '2024-03-10'),
('Water Bottle', 'Sports & Outdoors', 14.99, 30, '2024-03-11'),
('Wireless Charger', 'Electronics', 29.99, 22, '2024-03-12'),
('Scarf', 'Clothing', 24.99, 18, '2024-03-13'),
('Art Book', 'Books', 39.99, 10, '2024-03-14'),
('Juice', 'Food & Beverages', 5.99, 55, '2024-03-15'),
('Fitness Tracker', 'Sports & Outdoors', 99.99, 7, '2024-03-16'),
('iPhone 13', 'Electronics', 999.99, 4, '2024-03-17'),
('Gloves', 'Clothing', 19.99, 20, '2024-03-18'),
('Technical Manual', 'Books', 49.99, 6, '2024-03-19'),
('Bottled Water', 'Food & Beverages', 1.99, 140, '2024-03-20'),
('Camping Tent', 'Sports & Outdoors', 149.99, 3, '2024-03-21');