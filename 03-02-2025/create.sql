CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    manufacturer TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample Data (you can add more)
INSERT INTO products (product_name, category, price, stock_quantity, manufacturer) VALUES
('Laptop', 'Electronics', 1200.00, 50, 'Dell'),
('Mouse', 'Electronics', 25.00, 100, 'Logitech'),
('Keyboard', 'Electronics', 75.00, 75, 'Corsair'),
('Monitor', 'Electronics', 300.00, 40, 'Samsung'),
('Tablet', 'Electronics', 400.00, 60, 'Apple'),
('Chair', 'Furniture', 150.00, 30, 'Ikea'),
('Table', 'Furniture', 250.00, 20, 'Ikea'),
('Sofa', 'Furniture', 500.00, 15, 'Ashley'),
('Bed', 'Furniture', 400.00, 25, 'SleepNumber'),
('Book', 'Books', 20.00, 80, 'Penguin'),
('Notebook', 'Stationery', 5.00, 150, 'Muji'),
('Pen', 'Stationery', 2.00, 200, 'Bic'),
('Pencil', 'Stationery', 1.00, 250, 'Faber-Castell'),
('Eraser', 'Stationery', 0.50, 300, 'Staedtler');