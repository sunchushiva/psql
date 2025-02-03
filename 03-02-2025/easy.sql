-- Easy Questions (10):
-- List all products in the 'Electronics' category.
-- Find the names and prices of all products that cost more than $100.
-- Retrieve the names of all manufacturers.
-- List all products sorted by price in ascending order.
-- Find the names of all unique categories.
-- List the top 5 most expensive products.
-- Find all products with a stock quantity greater than 50.
-- List all products manufactured by 'Ikea'.
-- Find the names and prices of all products that cost between $20 and $50 (inclusive).
-- List the product names and categories, sorted first by category and then by price (highest to lowest within each category


SELECT * FROM products
WHERE category = 'Electronics';

SELECT product_name, price FROM products
WHERE price > 100;

SELECT manufacturer FROM products;

SELECT * FROM products
ORDER BY price;

SELECT DISTINCT category FROM products;

SELECT * FROM products
ORDER BY PRICE DESC
LIMIT 5;

SELECT * FROM products
WHERE stock_quantity > 50;

SELECT * FROM products
WHERE manufacturer = 'Ikea';

SELECT * FROM products
WHERE 20 <= price AND price <= 50;

SELECT product_name, category, price FROM products
ORDER BY category, price DESC;