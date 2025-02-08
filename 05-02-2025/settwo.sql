-- Retrieve the names of sales representatives who generated more than $5000 in revenue after discounts.
-- Identify unique product categories where no product name contains the word 'Smart'.
-- Find the top 5 customers who purchased the highest total quantity of items.
-- List all transactions from March to June where the product name starts with 'S' and the discount is greater than $20.
-- Determine the number of unique products sold by each sales representative, sorted in descending order.
-- Find customers who have made purchases in both the 'Electronics' and 'Home Appliances' categories.
-- Retrieve all products that contain 'Pro' in their name but exclude those that contain 'MacBook'.
-- Identify regions where the total number of transactions is more than 10 but less than 50.
-- List the top 3 sales representatives from 'North America' based on the total revenue they generated.
-- Find all transactions where the discount is exactly 10% of the original price before discounting.

SELECT rep, SUM((price * quantity) - discount) AS total  FROM sales_data
GROUP BY rep
HAVING SUM((price * quantity) - discount) > 5000;

WITH filtering_category AS (
	SELECT category FROM sales_data
	WHERE pname ILIKE '%smart%'
)
SELECT DISTINCT category FROM sales_data
WHERE category NOT IN (SELECT category FROM filtering_category);

SELECT cname, SUM(quantity) AS total_quantity FROM sales_data
GROUP BY cname
ORDER BY total_quantity DESC
LIMIT 5;

-- incorrect query
SELECT * FROM sales_data
WHERE DATE '14-03-2025';  

WITH distinct_prods AS (
	SELECT DISTINCT pname, rep FROM sales_data
)
SELECT rep, COUNT(pname) AS total FROM distinct_prods
GROUP BY rep
ORDER BY total DESC, rep


WITH removing_dups AS (
	SELECT DISTINCT cname, category FROM sales_data
	WHERE category IN ('Electronics', 'Home Appliances')
	ORDER BY cname
)
SELECT cname FROM removing_dups
GROUP BY cname
HAVING COUNT(cname) > 1;

SELECT * FROM sales_data
WHERE (pname ILIKE '%pro%') AND (NOT pname ILIKE '%macbook%');

SELECT region, COUNT(region) AS transactions FROM sales_data
GROUP BY region
HAVING (COUNT(region) > 10) AND (COUNT(region) < 50)

SELECT rep, SUM((price * quantity) - discount) AS total FROM sales_data
WHERE region ILIKE 'north america'
GROUP BY rep
ORDER BY total DESC
LIMIT 3;

-- incorrect query
SELECT * FROM sales_data
WHERE ((discount / price) * 100) = 10;