-- Create the products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    created_at DATE DEFAULT NOW()
);

-- Insert sample data
INSERT INTO products (product_name, category, manufacturer, price, stock_quantity, created_at) VALUES
('Smartphone', 'Electronics', 'Samsung', 800, 45, '2025-01-01'),
('Laptop', 'Electronics', 'Dell', 1200, 20, '2025-01-02'),
('Tablet', 'Electronics', 'Apple', 600, 70, '2025-01-03'),
('Refrigerator', 'Appliances', 'LG', 1500, 10, '2025-01-04'),
('Sofa', 'Furniture', 'Ikea', 750, 15, '2025-01-05'),
('Desk Chair', 'Furniture', 'Herman Miller', 1200, 25, '2025-01-06'),
('Blender', 'Appliances', 'Philips', 200, 100, '2025-01-07'),
('LED TV', 'Electronics', 'Sony', 950, 30, '2025-01-08'),
('Headphones', 'Electronics', 'Bose', 250, 150, '2025-01-09'),
('Coffee Maker', 'Appliances', 'Breville', 300, 60, '2025-01-10'),
('Dining Table', 'Furniture', 'Ikea', 900, 5, '2025-01-11'),
('Washing Machine', 'Appliances', 'Samsung', 700, 40, '2025-01-12'),
('Camera', 'Electronics', 'Canon', 1200, 18, '2025-01-13'),
('Bookcase', 'Furniture', 'Ikea', 150, 120, '2025-01-14'),
('Smartwatch', 'Electronics', 'Fitbit', 180, 200, '2025-01-15'),
('Microwave', 'Appliances', 'Panasonic', 350, 80, '2025-01-16'),
('Fan', 'Appliances', 'Usha', 100, 150, '2025-01-17'),
('Gaming Console', 'Electronics', 'Sony', 400, 50, '2025-01-18'),
('Air Purifier', 'Appliances', 'Dyson', 600, 25, '2025-01-19'),
('Desk Lamp', 'Furniture', 'Philips', 50, 90, '2025-01-20');

