-- Retrieve the top 10 most expensive products in each category, sorting by price in descending order. If multiple products have the same price, sort them alphabetically by product name.
-- Find all unique manufacturer-category pairs where the stock quantity is at least 100 units.
-- List all products from the 'Electronics' and 'Furniture' categories where the stock quantity is greater than 50 and the price is less than $500.
-- Find all products where the price is greater than the average price of all products in the database. Sort results in descending order by price.
-- Retrieve the 6th to 15th most recently added products (based on created_at). Display product name, category, and creation date.
-- Find all products manufactured by 'Sony', 'Samsung', or 'LG' and sort them by price (highest to lowest).
-- Retrieve all products with prices between 500 and 1000 (inclusive) and stock quantity between 10 and 100.
-- Select product names, manufacturer names, and categories, but rename the columns as Product, Brand, and Type. Sort results alphabetically by manufacturer.
-- Find all distinct product names from the products table and order them alphabetically in descending order.
-- Find the second most expensive product in the 'Appliances' category using LIMIT, OFFSET, and ORDER BY.

SELECT product_name, price FROM products
ORDER BY price DESC, product_name
LIMIT 10;

SELECT DISTINCT manufacturer, category FROM products
WHERE stock_quantity >= 100;

SELECT * FROM products
WHERE (category = 'Electronics' OR category = 'Furniture')
AND (stock_quantity > 50 AND price < 500);

SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products)
ORDER BY price DESC;

SELECT product_name, category, created_at
FROM products
ORDER BY created_at DESC
OFFSET 5 LIMIT 10;

SELECT * FROM products
WHERE manufacturer IN ('Sony', 'Samsung', 'LG')
ORDER BY price DESC;

SELECT * FROM products
WHERE (price BETWEEN 500 AND 1000) AND
(stock_quantity BETWEEN 10 AND 100);

SELECT product_name AS product, 
manufacturer AS brand,
category AS type FROM products
ORDER BY brand;

SELECT DISTINCT product_name FROM products
ORDER BY product_name DESC;

SELECT * FROM products
WHERE category = 'Appliances'
ORDER BY price DESC
OFFSET 1 LIMIT 1;

-- Indexes are crucial for optimizing search performance when filtering and sorting.
-- Avoid unnecessary subquery recalculations—use CTEs (WITH) to compute values once.
-- Use IN instead of multiple OR conditions for better query execution plans.
-- When using DISTINCT, consider GROUP BY as an alternative for better performance.