-- Find the total sales revenue (quantity × price_per_unit) for each sales representative, considering discounts. Show only sales reps with total revenue above $3000.
-- Retrieve distinct product categories sold in Europe or Asia, but exclude those containing the letter "E" (case-insensitive).
-- Find the top 3 customers who have spent the most (after applying discounts) in total sales.
-- List sales transactions where the product name starts with "A" and the sale date is in February or March.
-- Find how many unique products were sold by each sales representative and order them in descending order of the count.
-- Find all sales transactions where customers bought more than one unit and received a discount of exactly 10%.
-- Retrieve the names of all customers who have purchased products from both the "Fashion" and "Electronics" categories.
-- Find the total number of sales transactions for each region but include only those regions where more than 3 transactions occurred.
-- Retrieve the names of products sold that contain the word "Pro" in their name but exclude "MacBook Pro".
-- Find the top 2 sales representatives who have sold the most distinct products in the "North America" region.

WITH revenue_agg AS (
	SELECT (quantity * (price - discount)) AS revenue, rep FROM sales_data
)
SELECT rep, SUM(revenue) FROM revenue_agg
GROUP by rep
HAVING SUM(revenue) > 3000;

SELECT DISTINCT category FROM sales_data
WHERE (region IN ('Europe', 'Asia')) AND 
(category NOT ILIKE '%e%');

WITH total_number AS (
	SELECT ((quantity * price) - discount) AS total, cname FROM sales_data
)
SELECT cname, SUM(total) AS total FROM total_number
GROUP BY cname
ORDER BY total DESC
LIMIT 3;

-- WITH total_number AS (
-- 	SELECT ((quantity * (price - (price * discount / 100)))) AS total, cname FROM sales_data
-- )
-- SELECT cname, SUM(total) AS total 
-- FROM total_number
-- GROUP BY cname
-- ORDER BY total DESC
-- LIMIT 3;


SELECT * FROM sales_data
WHERE (EXTRACT(MONTH FROM sale_date) IN (2, 3)) AND 
(pname ILIKE 'A%');


WITH unique_data AS (
	SELECT rep, pname AS prodname FROM sales_data
	GROUP BY rep, prodname
)
SELECT rep, COUNT(prodname) AS total FROM unique_data
GROUP BY rep
ORDER BY total DESC;


SELECT * FROM sales_data
WHERE (quantity > 1) AND 
(discount / (quantity * price)* 100) = 10;

-- SELECT * FROM sales_data
-- WHERE quantity > 1
-- AND discount = 10;

WITH filtered AS (
	SELECT cname, category FROM sales_data
	WHERE category IN ('Fashion', 'Electronics')
	GROUP BY category, cname
)
SELECT cname, COUNT(cname) FROM filtered
GROUP BY cname
HAVING COUNT(cname) > 1;

-- SELECT cname
-- FROM sales_data
-- WHERE category IN ('Fashion', 'Electronics')
-- GROUP BY cname
-- HAVING COUNT(DISTINCT category) > 1;


SELECT region, COUNT(region) AS transactions FROM sales_data
GROUP BY region
HAVING COUNT(region) > 3;

SELECT * FROM sales_data
WHERE (NOT UPPER(pname) = 'MACBOOK PRO') AND
(pname ILIKE '%Pro%');

WITH filtered_region AS (
	SELECT * FROM sales_data
	WHERE region = 'North America'
)
SELECT rep, COUNT(rep) AS total FROM filtered_region
GROUP BY rep
ORDER BY total DESC
LIMIT 2;

-- SELECT rep, COUNT(DISTINCT pname) AS total_unique_products
-- FROM sales_data
-- WHERE region = 'North America'
-- GROUP BY rep
-- ORDER BY total_unique_products DESC
-- LIMIT 2;


