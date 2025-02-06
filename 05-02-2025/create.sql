CREATE TABLE sales_data (
    sale_id SERIAL PRIMARY KEY,
    cname VARCHAR(100),
    pname VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    sale_date DATE,
    region VARCHAR(50),
    rep VARCHAR(100),
    discount DECIMAL(5,2)
);

INSERT INTO sales_data (cname, pname, category, quantity, price, sale_date, region, rep, discount) VALUES
('John Doe', 'iPhone 14', 'Electronics', 2, 799, '2024-01-15', 'North America', 'Alice Johnson', 10),
('Jane Smith', 'MacBook Pro', 'Electronics', 1, 1299, '2024-01-18', 'Europe', 'Bob Williams', 5),
('Robert Brown', 'Samsung TV', 'Electronics', 3, 899, '2024-02-05', 'North America', 'Charlie White', 15),
('Emily Clark', 'Nike Air Max', 'Fashion', 2, 150, '2024-02-10', 'Asia', 'David Adams', 20),
('Michael Lee', 'iPad Air', 'Electronics', 1, 599, '2024-03-02', 'Europe', 'Alice Johnson', 0),
('Sarah Wilson', 'Adidas Ultraboost', 'Fashion', 2, 180, '2024-03-10', 'Asia', 'Charlie White', 10),
('John Doe', 'Bose Headphones', 'Electronics', 1, 299, '2024-03-15', 'North America', 'Bob Williams', 5),
('Jane Smith', 'Gucci Handbag', 'Fashion', 1, 1200, '2024-04-01', 'Europe', 'Alice Johnson', 10),
('Emily Clark', 'Apple Watch', 'Electronics', 2, 399, '2024-04-15', 'Asia', 'David Adams', 15),
('Robert Brown', 'Dell Monitor', 'Electronics', 1, 249, '2024-04-20', 'North America', 'Charlie White', 5);
