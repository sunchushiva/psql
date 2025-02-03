-- Medium Questions (10):

-- Find the top 3 most expensive products in the 'Electronics' category.
-- List all products with a stock quantity between 20 and 75 (inclusive) and a price less than $300.
-- Retrieve the names of all manufacturers who produce products in both the 'Electronics' and 'Furniture' categories.
-- List all products sorted by manufacturer, then by price (descending) within each manufacturer.
-- Find the 5th to 10th most expensive products (using OFFSET and LIMIT or FETCH).
-- Find all unique combinations of manufacturer and category.
-- List all products whose names contain the word "book" (case-insensitive).
-- Find the products with the highest stock quantity.
-- List all products created in the last 7 days.
-- Find the product name and price for all products that are either in the 'Electronics' category or cost less than $50.


SELECT product_name, price FROM products
WHERE category = 'Electronics'
ORDER BY price DESC
LIMIT 3;

SELECT product_name, price, stock_quantity FROM products
WHERE (price < 300) AND (stock_quantity BETWEEN 20 AND 75);

SELECT DISTINCT manufacturer FROM products
WHERE category IN ('Electronics', 'Furniture');

-- SELECT manufacturer
-- FROM products
-- WHERE category = 'Electronics'
-- INTERSECT
-- SELECT manufacturer
-- FROM products
-- WHERE category = 'Furniture';

SELECT * FROM products
ORDER BY manufacturer, price DESC;

SELECT * FROM products
ORDER BY price DESC
OFFSET 4 LIMIT 5;

SELECT DISTINCT category, manufacturer FROM products

SELECT product_name FROM products
WHERE product_name ILIKE '%book%';

SELECT * FROM products 
ORDER BY stock_quantity DESC
LIMIT 1;

SELECT * FROM products
WHERE created_at >= NOW() - INTERVAL '7 days';

SELECT product_name, price FROM products
WHERE category = 'Electronics' OR price < 50;
