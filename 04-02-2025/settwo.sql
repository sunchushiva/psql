-- Find the third most recently added product from the ‘Furniture’ category.
-- Retrieve the distinct manufacturers who produce products in both the ‘Appliances’ and ‘Furniture’ categories.
-- Find all products that have a stock quantity between 30 and 80 and are priced above the average product price.
-- Retrieve the names and prices of products from 'Electronics' and 'Appliances' categories, sorted by category and then price (descending).
-- List the top 5 products with the highest stock quantity but exclude those that cost more than $200.
-- Find the manufacturers that have at least one product priced between $50 and $300.
-- Retrieve product names and categories for items that have the second and third highest stock quantity.
-- List all unique combinations of categories and manufacturers, sorted alphabetically by category and manufacturer.
-- Find all products that belong to manufacturers 'Apple', 'Dell', or 'HP' and were added in the last 10 days.
-- Retrieve the second most expensive product for each category.

SELECT * FROM products
WHERE category = 'Furniture'
ORDER BY created_at DESC
OFFSET 2 LIMIT 1;

SELECT * FROM products
WHERE category = 'Appliances' AND category = 'Furniture'
GROUP BY manufacturer, product_id;

-- SELECT manufacturer 
-- FROM products
-- WHERE category IN ('Appliances', 'Furniture')
-- GROUP BY manufacturer
-- HAVING COUNT(DISTINCT category) = 2;

WITH avg_price AS (
	SELECT AVG(price) as average FROM products
)
SELECT * FROM products
WHERE (stock_quantity BETWEEN 30 AND 80) AND
price > (SELECT average FROM avg_price);

SELECT product_name, price FROM products
WHERE category IN ('Electronics', 'Appliances')
ORDER BY category, price DESC;

SELECT * FROM products
WHERE price <= 200
ORDER BY stock_quantity DESC
LIMIT 5;

SELECT manufacturer FROM products
WHERE price BETWEEN 50 AND 300;

SELECT product_name, category, stock_quantity FROM products
ORDER BY stock_quantity DESC
OFFSET 1 LIMIT 2;

SELECT DISTINCT manufacturer, category FROM products
ORDER BY manufacturer, category;

SELECT * FROM products
WHERE (manufacturer IN ('Apple', 'Dell', 'HP')) AND
(created_at >= NOW() - INTERVAL '10 days');

SELECT * FROM products
-- WITH ranked_products AS (
--   SELECT *, DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS rank
--   FROM products
-- )
-- SELECT * FROM ranked_products WHERE rank = 2;
